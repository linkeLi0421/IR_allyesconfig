; ModuleID = '/llk/IR_all_yes/kernel/time/tick-sched.c_pt.bc'
source_filename = "../kernel/time/tick-sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+get_cpu_idle_time_us\22, \22a\22\09"
module asm "\09.weak\09__crc_get_cpu_idle_time_us\09\09\09\09"
module asm "\09.long\09__crc_get_cpu_idle_time_us\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cpu_idle_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cpu_idle_time_us\22\09\09\09\09\09"
module asm "__kstrtabns_get_cpu_idle_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_cpu_iowait_time_us\22, \22a\22\09"
module asm "\09.weak\09__crc_get_cpu_iowait_time_us\09\09\09\09"
module asm "\09.long\09__crc_get_cpu_iowait_time_us\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cpu_iowait_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cpu_iowait_time_us\22\09\09\09\09\09"
module asm "__kstrtabns_get_cpu_iowait_time_us:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tick_sched = type { %struct.hrtimer, i32, i32, i8, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tick_device = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.irq_cpustat_t = type { i32, [124 x i8] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }

@tick_cpu_sched = weak dso_local global %struct.tick_sched zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tick_nohz_enabled = dso_local global i8 1, section ".data..read_mostly", align 1
@__setup_str_setup_tick_nohz = internal constant [6 x i8] c"nohz=\00", section ".init.rodata", align 1
@__setup_setup_tick_nohz = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_tick_nohz, ptr @setup_tick_nohz, i32 0 }, section ".init.setup", align 4
@tick_nohz_active = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_get_cpu_idle_time_us = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cpu_idle_time_us = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cpu_idle_time_us = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cpu_idle_time_us to i32), ptr @__kstrtab_get_cpu_idle_time_us, ptr @__kstrtabns_get_cpu_idle_time_us }, section "___ksymtab_gpl+get_cpu_idle_time_us", align 4
@__kstrtab_get_cpu_iowait_time_us = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cpu_iowait_time_us = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cpu_iowait_time_us = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cpu_iowait_time_us to i32), ptr @__kstrtab_get_cpu_iowait_time_us, ptr @__kstrtabns_get_cpu_iowait_time_us }, section "___ksymtab_gpl+get_cpu_iowait_time_us", align 4
@tick_nohz_idle_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/time/tick-sched.c\00", [39 x i8] zeroinitializer }, align 32
@tick_nohz_idle_enter.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@tick_nohz_get_sleep_length.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_idle_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_idle_exit.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__setup_str_skew_tick = internal constant [10 x i8] c"skew_tick\00", section ".init.rodata", align 1
@__setup_skew_tick = internal global %struct.obs_kernel_param { ptr @__setup_str_skew_tick, ptr @skew_tick, i32 1 }, section ".init.setup", align 4
@sched_skew_tick = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__pcpu_unique_tick_cpu_sched = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@tick_do_timer_cpu = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@tick_nohz_stop_tick.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_stop_tick.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_stop_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"basemono: %llu ts->next_tick: %llu dev->next_event: %llu timer->active: %d timer->expires: %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tick_nohz_stop_tick\00", [44 x i8] zeroinitializer }, align 32
@tick_nohz_stop_tick._entry_ptr = internal global ptr @tick_nohz_stop_tick._entry, section ".printk_index", align 4
@__tracepoint_tick_stop = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/timer.h\00", [35 x i8] zeroinitializer }, align 32
@trace_tick_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 128
@can_stop_idle_tick.ratelimit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@can_stop_idle_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014NOHZ tick-stop error: Non-RCU local softirq work is pending, handler #%02x!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can_stop_idle_tick\00", [45 x i8] zeroinitializer }, align 32
@can_stop_idle_tick._entry_ptr = internal global ptr @can_stop_idle_tick._entry, section ".printk_index", align 4
@jiffies_seq = external dso_local global %struct.seqcount_raw_spinlock, align 4
@last_jiffies_update = internal global { i64, [24 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tick_next_period = external dso_local local_unnamed_addr global i64, align 8
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1105, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"sched_skew_tick\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1441, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 886, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [32 x i8] c"../include/trace/events/timer.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 398, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 108, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1014, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1018, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"last_jiffies_update\00", align 1
@___asan_gen_.51 = private constant [28 x i8] c"../kernel/time/tick-sched.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 52, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 276, i32 1 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_get_cpu_idle_time_us, ptr @__ksymtab_get_cpu_iowait_time_us, ptr @__setup_setup_tick_nohz, ptr @__setup_skew_tick, ptr @can_stop_idle_tick._entry, ptr @can_stop_idle_tick._entry_ptr, ptr @tick_nohz_stop_tick._entry, ptr @tick_nohz_stop_tick._entry_ptr, ptr @.str, ptr @sched_skew_tick, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @can_stop_idle_tick.ratelimit, ptr @.str.10, ptr @.str.11, ptr @last_jiffies_update, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_skew_tick to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_nohz_stop_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_stop_idle_tick.ratelimit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_stop_idle_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_jiffies_update to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_tick_sched(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tick_cpu_sched to i32)
  %2 = inttoptr i32 %add to ptr
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_tick_nohz(ptr noundef %str) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @tick_nohz_enabled) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %tick_stopped = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tick_stopped to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %tick_stopped, align 8
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool = icmp ne i8 %8, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_nohz_tick_stopped_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tick_cpu_sched to i32)
  %2 = inttoptr i32 %add to ptr
  %tick_stopped = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %tick_stopped to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %tick_stopped, align 8
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool = icmp ne i8 %4, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @get_cpu_idle_time_us(i32 noundef %cpu, ptr noundef writeonly %last_update_time) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tick_cpu_sched to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = load i32, ptr @tick_nohz_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ktime_get() #13
  %tobool2.not = icmp eq ptr %last_update_time, null
  %idle_active = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %idle_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %idle_active, align 8
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool4.not, label %if.then3.update_ts_time_stats.exit_crit_edge, label %if.then.i

if.then3.update_ts_time_stats.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ts_time_stats.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %idle_entrytime.i = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 9
  %6 = ptrtoint ptr %idle_entrytime.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idle_entrytime.i, align 8
  %sub.i = sub i64 %call, %7
  %call.i = tail call i32 @nr_iowait_cpu(i32 noundef %cpu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  %idle_sleeptime.i = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 12
  %iowait_sleeptime.i = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 13
  %idle_sleeptime.sink21.i = select i1 %cmp.not.i, ptr %idle_sleeptime.i, ptr %iowait_sleeptime.i
  %8 = ptrtoint ptr %idle_sleeptime.sink21.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %idle_sleeptime.sink21.i, align 8
  %add3.i = add i64 %sub.i, %9
  store i64 %add3.i, ptr %idle_sleeptime.sink21.i, align 8
  %10 = ptrtoint ptr %idle_entrytime.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call, ptr %idle_entrytime.i, align 8
  br label %update_ts_time_stats.exit

update_ts_time_stats.exit:                        ; preds = %if.then.i, %if.then3.update_ts_time_stats.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i.i = icmp slt i64 %call, 0
  %11 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #13
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #16, !srcloc !73
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #16, !srcloc !74
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %14 = ptrtoint ptr %last_update_time to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %spec.select.i.i.i, ptr %last_update_time, align 8
  %idle_sleeptime = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 12
  %15 = ptrtoint ptr %idle_sleeptime to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %idle_sleeptime, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  br i1 %tobool4.not, label %if.else.if.else10_crit_edge, label %land.lhs.true

if.else.if.else10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %call5 = tail call i32 @nr_iowait_cpu(i32 noundef %cpu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.else10_crit_edge

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %idle_entrytime = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 9
  %17 = ptrtoint ptr %idle_entrytime to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %idle_entrytime, align 8
  %sub = sub i64 %call, %18
  %idle_sleeptime8 = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 12
  %19 = ptrtoint ptr %idle_sleeptime8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %idle_sleeptime8, align 8
  %add9 = add i64 %sub, %20
  br label %if.end13

if.else10:                                        ; preds = %land.lhs.true.if.else10_crit_edge, %if.else.if.else10_crit_edge
  %idle_sleeptime11 = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 12
  %21 = ptrtoint ptr %idle_sleeptime11 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %idle_sleeptime11, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then7, %update_ts_time_stats.exit
  %idle.0 = phi i64 [ %16, %update_ts_time_stats.exit ], [ %22, %if.else10 ], [ %add9, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %idle.0)
  %cmp8.i.i = icmp slt i64 %idle.0, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %idle.0, i1 false) #13
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #16, !srcloc !73
  %asmresult.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #16, !srcloc !74
  %asmresult10.i.i.i = extractvalue { i64, i32 } %25, 0
  %div181.i1.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div181.i1.i
  %spec.select.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div181.i1.i
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %spec.select.i.i, %if.end13 ], [ -1, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait_cpu(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @get_cpu_iowait_time_us(i32 noundef %cpu, ptr noundef writeonly %last_update_time) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tick_cpu_sched to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = load i32, ptr @tick_nohz_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ktime_get() #13
  %tobool2.not = icmp eq ptr %last_update_time, null
  %idle_active = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %idle_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %idle_active, align 8
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool4.not, label %if.then3.update_ts_time_stats.exit_crit_edge, label %if.then.i

if.then3.update_ts_time_stats.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ts_time_stats.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %idle_entrytime.i = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 9
  %6 = ptrtoint ptr %idle_entrytime.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idle_entrytime.i, align 8
  %sub.i = sub i64 %call, %7
  %call.i = tail call i32 @nr_iowait_cpu(i32 noundef %cpu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  %idle_sleeptime.i = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 12
  %iowait_sleeptime.i = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 13
  %idle_sleeptime.sink21.i = select i1 %cmp.not.i, ptr %idle_sleeptime.i, ptr %iowait_sleeptime.i
  %8 = ptrtoint ptr %idle_sleeptime.sink21.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %idle_sleeptime.sink21.i, align 8
  %add3.i = add i64 %sub.i, %9
  store i64 %add3.i, ptr %idle_sleeptime.sink21.i, align 8
  %10 = ptrtoint ptr %idle_entrytime.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call, ptr %idle_entrytime.i, align 8
  br label %update_ts_time_stats.exit

update_ts_time_stats.exit:                        ; preds = %if.then.i, %if.then3.update_ts_time_stats.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i.i = icmp slt i64 %call, 0
  %11 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #13
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #16, !srcloc !73
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #16, !srcloc !74
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %14 = ptrtoint ptr %last_update_time to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %spec.select.i.i.i, ptr %last_update_time, align 8
  %iowait_sleeptime = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 13
  %15 = ptrtoint ptr %iowait_sleeptime to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iowait_sleeptime, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  br i1 %tobool4.not, label %if.else.if.else9_crit_edge, label %land.lhs.true

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else9

land.lhs.true:                                    ; preds = %if.else
  %call5 = tail call i32 @nr_iowait_cpu(i32 noundef %cpu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %land.lhs.true.if.else9_crit_edge, label %if.then6

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %idle_entrytime = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 9
  %17 = ptrtoint ptr %idle_entrytime to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %idle_entrytime, align 8
  %sub = sub i64 %call, %18
  %iowait_sleeptime7 = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 13
  %19 = ptrtoint ptr %iowait_sleeptime7 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %iowait_sleeptime7, align 8
  %add8 = add i64 %sub, %20
  br label %if.end12

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %if.else.if.else9_crit_edge
  %iowait_sleeptime10 = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 13
  %21 = ptrtoint ptr %iowait_sleeptime10 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %iowait_sleeptime10, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %update_ts_time_stats.exit
  %iowait.0 = phi i64 [ %16, %update_ts_time_stats.exit ], [ %add8, %if.then6 ], [ %22, %if.else9 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %iowait.0)
  %cmp8.i.i = icmp slt i64 %iowait.0, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %iowait.0, i1 false) #13
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #16, !srcloc !73
  %asmresult.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #16, !srcloc !74
  %asmresult10.i.i.i = extractvalue { i64, i32 } %25, 0
  %div181.i1.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div181.i1.i
  %spec.select.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div181.i1.i
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %spec.select.i.i, %if.end12 ], [ -1, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_stop_tick() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %timer_expires_base.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %timer_expires_base.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timer_expires_base.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %timer_expires.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 15
  %9 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timer_expires.i, align 8
  br label %if.end6.i

if.else.i:                                        ; preds = %entry
  %call2.i = tail call fastcc zeroext i1 @can_stop_idle_tick(i32 noundef %3, ptr noundef %6) #13
  br i1 %call2.i, label %if.then3.i, label %if.else.i.__tick_nohz_idle_stop_tick.exit_crit_edge

if.else.i.__tick_nohz_idle_stop_tick.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__tick_nohz_idle_stop_tick.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call fastcc i64 @tick_nohz_next_event(ptr noundef %6, i32 noundef %3) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then.i
  %expires.0.i = phi i64 [ %10, %if.then.i ], [ %call4.i, %if.then3.i ]
  %idle_calls.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %idle_calls.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idle_calls.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %idle_calls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %expires.0.i)
  %cmp.i = icmp sgt i64 %expires.0.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.else18.i

if.then7.i:                                       ; preds = %if.end6.i
  %tick_stopped.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %tick_stopped.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %tick_stopped.i, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu8.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, ptrtoint (ptr @tick_cpu_device to i32)
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %timer_expires_base.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %timer_expires_base.i, align 8
  %timer_expires.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 15
  %25 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %timer_expires.i.i, align 8
  store i64 0, ptr %timer_expires_base.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %27 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %3)
  %cmp.i.i = icmp eq i32 %27, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  store i32 -1, ptr @tick_do_timer_cpu, align 4
  %bf.set.i.i = or i8 %bf.load.i, 16
  br label %if.end17.i.sink.split.i

if.else.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp11.not.i.i = icmp eq i32 %27, -1
  br i1 %cmp11.not.i.i, label %if.else.i.i.if.end17.i.i_crit_edge, label %if.then12.i.i

if.else.i.i.if.end17.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear15.i.i = and i8 %bf.load.i, -17
  br label %if.end17.i.sink.split.i

if.end17.i.sink.split.i:                          ; preds = %if.then12.i.i, %if.then.i.i
  %bf.clear15.i.sink.i = phi i8 [ %bf.clear15.i.i, %if.then12.i.i ], [ %bf.set.i.i, %if.then.i.i ]
  %28 = ptrtoint ptr %tick_stopped.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.clear15.i.sink.i, ptr %tick_stopped.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end17.i.sink.split.i, %if.else.i.i.if.end17.i.i_crit_edge
  %29 = ptrtoint ptr %tick_stopped.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load18.i.i = load i8, ptr %tick_stopped.i, align 8
  %30 = and i8 %bf.load18.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.end17.i.i.if.end99.i.i_crit_edge, label %land.lhs.true.i.i

if.end17.i.i.if.end99.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i.i

land.lhs.true.i.i:                                ; preds = %if.end17.i.i
  %next_tick.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 5
  %31 = ptrtoint ptr %next_tick.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %next_tick.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %32)
  %cmp20.i.i = icmp eq i64 %26, %32
  br i1 %cmp20.i.i, label %if.then21.i.i, label %land.lhs.true.i.i.if.end99.i.i_crit_edge

land.lhs.true.i.i.if.end99.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i.i

if.then21.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %26)
  %cmp22.i.i = icmp eq i64 %26, 9223372036854775807
  br i1 %cmp22.i.i, label %if.then21.i.i.tick_nohz_stop_tick.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then21.i.i.tick_nohz_stop_tick.exit.i_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_stop_tick.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then21.i.i
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %33 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %expires.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %34)
  %cmp25.i.i = icmp eq i64 %26, %34
  br i1 %cmp25.i.i, label %lor.lhs.false.i.i.tick_nohz_stop_tick.exit.i_crit_edge, label %land.end.i.i

lor.lhs.false.i.i.tick_nohz_stop_tick.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_stop_tick.exit.i

land.end.i.i:                                     ; preds = %lor.lhs.false.i.i
  %.b176.i.i = load i1, ptr @tick_nohz_stop_tick.__already_done, align 1
  br i1 %.b176.i.i, label %land.end.i.i.land.end73.i.i_crit_edge, label %if.then33.i.i, !prof !75

land.end.i.i.land.end73.i.i_crit_edge:            ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end73.i.i

if.then33.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_stop_tick.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef null) #13
  br label %land.end73.i.i

land.end73.i.i:                                   ; preds = %if.then33.i.i, %land.end.i.i.land.end73.i.i_crit_edge
  %.b175177.i.i = load i1, ptr @tick_nohz_stop_tick.__already_done.4, align 1
  br i1 %.b175177.i.i, label %land.end73.i.i.if.end99.i.i_crit_edge, label %if.then80.i.i, !prof !75

land.end73.i.i.if.end99.i.i_crit_edge:            ; preds = %land.end73.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i.i

if.then80.i.i:                                    ; preds = %land.end73.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_stop_tick.__already_done.4, align 1
  %35 = ptrtoint ptr %next_tick.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %next_tick.i.i, align 8
  %next_event.i.i = getelementptr inbounds %struct.clock_event_device, ptr %22, i32 0, i32 3
  %37 = ptrtoint ptr %next_event.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %next_event.i.i, align 16
  %call87.i.i = tail call zeroext i1 @hrtimer_active(ptr noundef %6) #13
  %conv.i.i = zext i1 %call87.i.i to i32
  %39 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %expires.i.i.i, align 8
  %call90.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i64 noundef %24, i64 noundef %36, i64 noundef %38, i32 noundef %conv.i.i, i64 noundef %40) #17
  br label %if.end99.i.i

if.end99.i.i:                                     ; preds = %if.then80.i.i, %land.end73.i.i.if.end99.i.i_crit_edge, %land.lhs.true.i.i.if.end99.i.i_crit_edge, %if.end17.i.i.if.end99.i.i_crit_edge
  %41 = ptrtoint ptr %tick_stopped.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load101.i.i = load i8, ptr %tick_stopped.i, align 8
  %42 = and i8 %bf.load101.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool105.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool105.not.i.i, label %if.then106.i.i, label %if.end99.i.i.if.end113.i.i_crit_edge

if.end99.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113.i.i

if.then106.i.i:                                   ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @calc_load_nohz_start() #13
  tail call void @quiet_vmstat() #13
  %expires.i179.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %43 = ptrtoint ptr %expires.i179.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %expires.i179.i.i, align 8
  %last_tick.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 4
  %45 = ptrtoint ptr %last_tick.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %last_tick.i.i, align 8
  %46 = ptrtoint ptr %tick_stopped.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load110.i.i = load i8, ptr %tick_stopped.i, align 8
  %bf.set112.i.i = or i8 %bf.load110.i.i, 64
  store i8 %bf.set112.i.i, ptr %tick_stopped.i, align 8
  tail call fastcc void @trace_tick_stop() #13
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %if.then106.i.i, %if.end99.i.i.if.end113.i.i_crit_edge
  %next_tick114.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 5
  %47 = ptrtoint ptr %next_tick114.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %26, ptr %next_tick114.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %26)
  %cmp115.i.i = icmp eq i64 %26, 9223372036854775807
  %nohz_mode.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 2
  %48 = ptrtoint ptr %nohz_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nohz_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp124.i.i = icmp eq i32 %49, 2
  br i1 %cmp115.i.i, label %if.then123.i.i, label %if.end130.i.i, !prof !76

if.then123.i.i:                                   ; preds = %if.end113.i.i
  br i1 %cmp124.i.i, label %if.then126.i.i, label %if.then123.i.i.tick_nohz_stop_tick.exit.i_crit_edge

if.then123.i.i.tick_nohz_stop_tick.exit.i_crit_edge: ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_stop_tick.exit.i

if.then126.i.i:                                   ; preds = %if.then123.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call128.i.i = tail call i32 @hrtimer_cancel(ptr noundef %6) #13
  br label %tick_nohz_stop_tick.exit.i

if.end130.i.i:                                    ; preds = %if.end113.i.i
  br i1 %cmp124.i.i, label %if.then134.i.i, label %if.else136.i.i

if.then134.i.i:                                   ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hrtimer_start_range_ns(ptr noundef %6, i64 noundef %26, i64 noundef 0, i32 noundef 10) #13
  br label %tick_nohz_stop_tick.exit.i

if.else136.i.i:                                   ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %expires.i180.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %50 = ptrtoint ptr %expires.i180.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %26, ptr %expires.i180.i.i, align 8
  %_softexpires.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %6, i32 0, i32 1
  %51 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %26, ptr %_softexpires.i.i.i, align 8
  %call138.i.i = tail call i32 @tick_program_event(i64 noundef %26, i32 noundef 1) #13
  br label %tick_nohz_stop_tick.exit.i

tick_nohz_stop_tick.exit.i:                       ; preds = %if.else136.i.i, %if.then134.i.i, %if.then126.i.i, %if.then123.i.i.tick_nohz_stop_tick.exit.i_crit_edge, %lor.lhs.false.i.i.tick_nohz_stop_tick.exit.i_crit_edge, %if.then21.i.i.tick_nohz_stop_tick.exit.i_crit_edge
  %idle_sleeps.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 8
  %52 = ptrtoint ptr %idle_sleeps.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idle_sleeps.i, align 8
  %inc8.i = add i32 %53, 1
  store i32 %inc8.i, ptr %idle_sleeps.i, align 8
  %idle_expires.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 18
  %54 = ptrtoint ptr %idle_expires.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %expires.0.i, ptr %idle_expires.i, align 8
  %55 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool9.not.i = icmp eq i8 %55, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %tick_nohz_stop_tick.exit.i.__tick_nohz_idle_stop_tick.exit_crit_edge

tick_nohz_stop_tick.exit.i.__tick_nohz_idle_stop_tick.exit_crit_edge: ; preds = %tick_nohz_stop_tick.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__tick_nohz_idle_stop_tick.exit

land.lhs.true.i:                                  ; preds = %tick_nohz_stop_tick.exit.i
  %56 = ptrtoint ptr %tick_stopped.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load11.i = load i8, ptr %tick_stopped.i, align 8
  %57 = and i8 %bf.load11.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool15.not.i = icmp eq i8 %57, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.__tick_nohz_idle_stop_tick.exit_crit_edge, label %if.then16.i

land.lhs.true.i.__tick_nohz_idle_stop_tick.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__tick_nohz_idle_stop_tick.exit

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %last_jiffies.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 14
  %58 = ptrtoint ptr %last_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_jiffies.i, align 8
  %idle_jiffies.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 6
  %60 = ptrtoint ptr %idle_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %idle_jiffies.i, align 8
  tail call void @nohz_balance_enter_idle(i32 noundef %3) #13
  br label %__tick_nohz_idle_stop_tick.exit

if.else18.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %timer_expires_base.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %timer_expires_base.i, align 8
  br label %__tick_nohz_idle_stop_tick.exit

__tick_nohz_idle_stop_tick.exit:                  ; preds = %if.else18.i, %if.then16.i, %land.lhs.true.i.__tick_nohz_idle_stop_tick.exit_crit_edge, %tick_nohz_stop_tick.exit.i.__tick_nohz_idle_stop_tick.exit_crit_edge, %if.else.i.__tick_nohz_idle_stop_tick.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_retain_tick() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %timer_expires_base.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %timer_expires_base.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %timer_expires_base.i, align 8
  tail call void @timer_clear_idle() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_clear_idle() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_enter() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !77
  %5 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !78
  %14 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i186 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i186 to ptr
  %preempt_count.i.i187 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i187 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i187, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i188 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i188 to ptr
  %preempt_count.i.i189 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i189 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i189, align 4
  %add.i190 = add i32 %21, 1
  store volatile i32 %add.i190, ptr %preempt_count.i.i189, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !79
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !80
  %29 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i191 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i191 to ptr
  %preempt_count.i.i192 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i192 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i192, align 4
  %sub.i193 = add i32 %32, -1
  store volatile i32 %sub.i193, ptr %preempt_count.i.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %land.rhs56, label %land.rhs.if.end87_crit_edge

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

land.rhs56:                                       ; preds = %land.rhs
  %.b182 = load i1, ptr @tick_nohz_idle_enter.__already_done, align 1
  br i1 %.b182, label %land.rhs56.if.end87_crit_edge, label %if.then, !prof !75

land.rhs56.if.end87_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then:                                          ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_idle_enter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1105, i32 noundef 9, ptr noundef null) #13
  br label %if.end87

if.end87:                                         ; preds = %if.then, %land.rhs56.if.end87_crit_edge, %land.rhs.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !81
  %and.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool99.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !82
  br i1 %tobool99.not, label %if.then102, label %if.end87.if.end103_crit_edge

if.end87.if.end103_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then102:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end87.if.end103_crit_edge
  %34 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i194 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i194 to ptr
  %cpu114 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu114, align 4
  %arrayidx115 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %39, ptrtoint (ptr @tick_cpu_sched to i32)
  %40 = inttoptr i32 %add116 to ptr
  %timer_expires_base = getelementptr inbounds %struct.tick_sched, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %timer_expires_base to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %timer_expires_base, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool118.not = icmp eq i64 %42, 0
  br i1 %tobool118.not, label %if.end103.if.end163_crit_edge, label %land.rhs125

if.end103.if.end163_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

land.rhs125:                                      ; preds = %if.end103
  %.b180181 = load i1, ptr @tick_nohz_idle_enter.__already_done.1, align 1
  br i1 %.b180181, label %land.rhs125.if.end163_crit_edge, label %if.then136, !prof !75

land.rhs125.if.end163_crit_edge:                  ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

if.then136:                                       ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_idle_enter.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1111, i32 noundef 9, ptr noundef null) #13
  br label %if.end163

if.end163:                                        ; preds = %if.then136, %land.rhs125.if.end163_crit_edge, %if.end103.if.end163_crit_edge
  %inidle = getelementptr inbounds %struct.tick_sched, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %inidle, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %inidle, align 8
  %call.i = tail call i64 @ktime_get() #13
  %idle_entrytime.i = getelementptr inbounds %struct.tick_sched, ptr %40, i32 0, i32 9
  %44 = ptrtoint ptr %idle_entrytime.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i, ptr %idle_entrytime.i, align 8
  %45 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %inidle, align 8
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %inidle, align 8
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_nohz_irq_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %inidle = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %inidle, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i64 @ktime_get() #13
  %idle_entrytime.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %8 = ptrtoint ptr %idle_entrytime.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %idle_entrytime.i, align 8
  %9 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %inidle, align 8
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %inidle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_nohz_idle_got_tick() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %got_idle_tick = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %got_idle_tick to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %got_idle_tick, align 8
  %8 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear4 = and i8 %bf.load, -9
  %9 = ptrtoint ptr %got_idle_tick to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear4, ptr %got_idle_tick, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %10 = xor i1 %tobool.not, true
  ret i1 %10
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @tick_nohz_get_next_hrtimer() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %next_event to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %next_event, align 16
  ret i64 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @tick_nohz_get_sleep_length(ptr nocapture noundef %delta_next) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add19 = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %9 = inttoptr i32 %add19 to ptr
  %idle_entrytime = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %idle_entrytime to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %idle_entrytime, align 8
  %inidle = getelementptr inbounds %struct.tick_sched, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %inidle, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %land.rhs, label %entry.if.end55_crit_edge

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.rhs:                                         ; preds = %entry
  %.b92 = load i1, ptr @tick_nohz_get_sleep_length.__already_done, align 1
  br i1 %.b92, label %land.rhs.if.end55_crit_edge, label %if.then, !prof !75

land.rhs.if.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_get_sleep_length.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1185, i32 noundef 9, ptr noundef null) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then, %land.rhs.if.end55_crit_edge, %entry.if.end55_crit_edge
  %next_event63 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %next_event63 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %next_event63, align 16
  %sub = sub i64 %14, %11
  %15 = ptrtoint ptr %delta_next to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %sub, ptr %delta_next, align 8
  %call64 = tail call fastcc zeroext i1 @can_stop_idle_tick(i32 noundef %3, ptr noundef %9)
  br i1 %call64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %delta_next to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %delta_next, align 8
  br label %cleanup

if.end66:                                         ; preds = %if.end55
  %call67 = tail call fastcc i64 @tick_nohz_next_event(ptr noundef %9, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call67)
  %tobool68.not = icmp eq i64 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %delta_next to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %delta_next, align 8
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %call71 = tail call i64 @hrtimer_next_event_without(ptr noundef %9) #13
  %20 = tail call i64 @llvm.umin.i64(i64 %call67, i64 %call71)
  %sub73 = sub i64 %20, %11
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then69, %if.then65
  %retval.0 = phi i64 [ %sub73, %if.end70 ], [ %19, %if.then69 ], [ %17, %if.then65 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @can_stop_idle_tick(i32 noundef %cpu, ptr nocapture noundef %ts) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i148.not = icmp eq i32 %4, 0
  br i1 %tobool.i148.not, label %if.then, label %if.end4, !prof !76

if.then:                                          ; preds = %cpu_online.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %5 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cpu)
  %cmp = icmp eq i32 %5, %cpu
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  store i32 -1, ptr @tick_do_timer_cpu, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %next_tick = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 5
  %6 = ptrtoint ptr %next_tick to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %next_tick, align 8
  br label %return

if.end4:                                          ; preds = %cpu_online.exit
  %nohz_mode = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 2
  %7 = ptrtoint ptr %nohz_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nohz_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.end4.return_crit_edge, label %if.end13, !prof !76

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end13:                                         ; preds = %if.end4
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 16384
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end16, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end16:                                         ; preds = %if.end13
  %14 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu25 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu25, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @irq_stat to i32)
  %20 = inttoptr i32 %add to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %if.end16.return_crit_edge, label %if.then34, !prof !75

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then34:                                        ; preds = %if.end16
  %23 = load i32, ptr @can_stop_idle_tick.ratelimit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %cmp35 = icmp sgt i32 %23, 9
  %and = and i32 %22, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp35, i1 true, i1 %tobool57.not
  br i1 %or.cond, label %if.then34.return_crit_edge, label %do.end61

if.then34.return_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end61:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %22) #17
  %24 = load i32, ptr @can_stop_idle_tick.ratelimit, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr @can_stop_idle_tick.ratelimit, align 4
  br label %return

return:                                           ; preds = %do.end61, %if.then34.return_crit_edge, %if.end16.return_crit_edge, %if.end13.return_crit_edge, %if.end4.return_crit_edge, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ false, %if.end4.return_crit_edge ], [ false, %if.end13.return_crit_edge ], [ false, %do.end61 ], [ false, %if.then34.return_crit_edge ], [ true, %if.end16.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @tick_nohz_next_event(ptr nocapture noundef %ts, i32 noundef %cpu) unnamed_addr #4 align 64 {
entry:
  %next_rcu = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_rcu) #13
  %0 = ptrtoint ptr %next_rcu to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %next_rcu, align 8, !annotation !84
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %1 = load volatile i32, ptr @jiffies_seq, align 4
  %and83 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool.not84 = icmp eq i32 %and83, 0
  br i1 %tobool.not84, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !85
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %2 = load volatile i32, ptr @jiffies_seq, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body.while.end_crit_edge ], [ %2, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !87
  %3 = load i64, ptr @last_jiffies_update, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %5 = load volatile i32, ptr @jiffies_seq, align 4
  %cmp.i.i.not = icmp eq i32 %5, %.lcssa
  br i1 %cmp.i.i.not, label %do.end21, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end21:                                         ; preds = %while.end
  %last_jiffies = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 14
  %6 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %last_jiffies, align 8
  %timer_expires_base = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 16
  %7 = ptrtoint ptr %timer_expires_base to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %3, ptr %timer_expires_base, align 8
  %call22 = call i32 @rcu_needs_cpu(i64 noundef %3, ptr noundef nonnull %next_rcu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %do.end21.if.then_crit_edge

do.end21.if.then_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %do.end21
  %call24 = call zeroext i1 @irq_work_needs_cpu() #13
  br i1 %call24, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false25

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %8 = call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @irq_stat to i32)
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %lor.lhs.false25.if.then_crit_edge

lor.lhs.false25.if.then_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false25.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %do.end21.if.then_crit_edge
  %add = add i64 %3, 10000000
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = call i64 @get_next_timer_interrupt(i32 noundef %4, i64 noundef %3) #13
  %next_timer = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 17
  %17 = ptrtoint ptr %next_timer to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call27, ptr %next_timer, align 8
  %18 = ptrtoint ptr %next_rcu to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %next_rcu, align 8
  %20 = call i64 @llvm.umin.i64(i64 %19, i64 %call27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next_tick.0 = phi i64 [ %add, %if.then ], [ %20, %if.else ]
  %sub = sub i64 %next_tick.0, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000001, i64 %sub)
  %cmp28 = icmp ult i64 %sub, 10000001
  br i1 %cmp28, label %if.then29, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then29:                                        ; preds = %if.end
  call void @timer_clear_idle() #13
  %tick_stopped = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 3
  %21 = ptrtoint ptr %tick_stopped to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %tick_stopped, align 8
  %22 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool30.not = icmp eq i8 %22, 0
  br i1 %tobool30.not, label %if.then29.out_crit_edge, label %if.then29.if.end33_crit_edge

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end33:                                         ; preds = %if.then29.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %call34 = call i64 @timekeeping_max_deferment() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %23 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cpu)
  %cmp35.not = icmp eq i32 %23, %cpu
  br i1 %cmp35.not, label %if.end33.if.end44_crit_edge, label %land.lhs.true

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp36.not = icmp eq i32 %23, -1
  br i1 %cmp36.not, label %lor.lhs.false37, label %land.lhs.true.if.then43_crit_edge

land.lhs.true.if.then43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

lor.lhs.false37:                                  ; preds = %land.lhs.true
  %do_timer_last = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 3
  %24 = ptrtoint ptr %do_timer_last to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load38 = load i8, ptr %do_timer_last, align 8
  %25 = and i8 %bf.load38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool42.not = icmp eq i8 %25, 0
  br i1 %tobool42.not, label %lor.lhs.false37.if.then43_crit_edge, label %lor.lhs.false37.if.end44_crit_edge

lor.lhs.false37.if.end44_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

lor.lhs.false37.if.then43_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false37.if.then43_crit_edge, %land.lhs.true.if.then43_crit_edge
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %lor.lhs.false37.if.end44_crit_edge, %if.end33.if.end44_crit_edge
  %delta.0 = phi i64 [ 9223372036854775807, %if.then43 ], [ %call34, %lor.lhs.false37.if.end44_crit_edge ], [ %call34, %if.end33.if.end44_crit_edge ]
  %sub45 = sub i64 9223372036854775807, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %delta.0, i64 %sub45)
  %cmp46 = icmp ult i64 %delta.0, %sub45
  %add48 = add i64 %delta.0, %3
  %expires.0 = select i1 %cmp46, i64 %add48, i64 9223372036854775807
  %26 = call i64 @llvm.umin.i64(i64 %expires.0, i64 %next_tick.0)
  br label %out

out:                                              ; preds = %if.end44, %if.then29.out_crit_edge
  %.sink = phi i64 [ %26, %if.end44 ], [ 0, %if.then29.out_crit_edge ]
  %timer_expires57 = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 15
  %27 = ptrtoint ptr %timer_expires57 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %.sink, ptr %timer_expires57, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_rcu) #13
  ret i64 %.sink
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_next_event_without(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_nohz_get_idle_calls_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @tick_cpu_sched to i32)
  %2 = inttoptr i32 %add.i to ptr
  %idle_calls = getelementptr inbounds %struct.tick_sched, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %idle_calls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idle_calls, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_nohz_get_idle_calls() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %idle_calls = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %idle_calls to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idle_calls, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_restart_tick() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %tick_stopped = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tick_stopped to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %tick_stopped, align 8
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i64 @ktime_get() #13
  tail call fastcc void @tick_nohz_restart_sched_tick(ptr noundef %6, i64 noundef %call2)
  %idle_exittime.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %idle_exittime.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call2, ptr %idle_exittime.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %idle_jiffies.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %idle_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idle_jiffies.i, align 8
  %sub.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %tobool.not.i = icmp ne i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 2147483647
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then1.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @account_idle_ticks(i32 noundef %sub.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tick_nohz_restart_sched_tick(ptr noundef %ts, i64 noundef %now) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %now)
  tail call void @timer_clear_idle() #13
  tail call void @calc_load_nohz_stop() #13
  tail call void @touch_softlockup_watchdog_sched() #13
  %tick_stopped = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 3
  %0 = ptrtoint ptr %tick_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %tick_stopped, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %tick_stopped, align 8
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %ts) #13
  %last_tick.i = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 4
  %1 = ptrtoint ptr %last_tick.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %last_tick.i, align 8
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %ts, i32 0, i32 1
  %3 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %expires.i.i, align 8
  %_softexpires.i.i = getelementptr inbounds %struct.hrtimer, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %2, ptr %_softexpires.i.i, align 8
  %call3.i = tail call i64 @hrtimer_forward(ptr noundef %ts, i64 noundef %now, i64 noundef 10000000) #13
  %nohz_mode.i = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 2
  %5 = ptrtoint ptr %nohz_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nohz_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %_softexpires.i.i, align 8
  %9 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %expires.i.i, align 8
  %sub.i.i = sub i64 %10, %8
  tail call void @hrtimer_start_range_ns(ptr noundef %ts, i64 noundef %8, i64 noundef %sub.i.i, i32 noundef 10) #13
  br label %tick_nohz_restart.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %expires.i.i, align 8
  %call7.i = tail call i32 @tick_program_event(i64 noundef %12, i32 noundef 1) #13
  br label %tick_nohz_restart.exit

tick_nohz_restart.exit:                           ; preds = %if.else.i, %if.then.i
  %next_tick.i = getelementptr inbounds %struct.tick_sched, ptr %ts, i32 0, i32 5
  %13 = ptrtoint ptr %next_tick.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %next_tick.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_nohz_idle_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !81
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !82
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inidle = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %inidle, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %land.rhs, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.rhs:                                         ; preds = %if.end
  %.b150 = load i1, ptr @tick_nohz_idle_exit.__already_done, align 1
  br i1 %.b150, label %land.rhs.if.end43_crit_edge, label %if.then17, !prof !75

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_idle_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1289, i32 noundef 9, ptr noundef null) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then17, %land.rhs.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %timer_expires_base = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 16
  %9 = ptrtoint ptr %timer_expires_base to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timer_expires_base, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool52.not = icmp eq i64 %10, 0
  br i1 %tobool52.not, label %if.end43.if.end97_crit_edge, label %land.rhs59

if.end43.if.end97_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

land.rhs59:                                       ; preds = %if.end43
  %.b148149 = load i1, ptr @tick_nohz_idle_exit.__already_done.3, align 1
  br i1 %.b148149, label %land.rhs59.if.end97_crit_edge, label %if.then70, !prof !75

land.rhs59.if.end97_crit_edge:                    ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then70:                                        ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tick_nohz_idle_exit.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1290, i32 noundef 9, ptr noundef null) #13
  br label %if.end97

if.end97:                                         ; preds = %if.then70, %land.rhs59.if.end97_crit_edge, %if.end43.if.end97_crit_edge
  %11 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load106 = load i8, ptr %inidle, align 8
  %bf.clear = and i8 %bf.load106, 127
  store i8 %bf.clear, ptr %inidle, align 8
  %12 = and i8 %bf.load106, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool112.not = icmp eq i8 %12, 0
  %13 = and i8 %bf.load106, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool119.not = icmp eq i8 %13, 0
  %14 = and i8 %bf.load106, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %.not = icmp eq i8 %14, 0
  br i1 %.not, label %if.end97.if.end125_crit_edge, label %if.then123

if.end97.if.end125_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then123:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %call124 = tail call i64 @ktime_get() #13
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end97.if.end125_crit_edge
  %now.0 = phi i64 [ %call124, %if.then123 ], [ -1, %if.end97.if.end125_crit_edge ]
  br i1 %tobool112.not, label %if.end125.if.end128_crit_edge, label %if.then127

if.end125.if.end128_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128

if.then127:                                       ; preds = %if.end125
  %15 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %inidle, align 8
  %16 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.then127.tick_nohz_stop_idle.exit_crit_edge, label %if.then.i.i

if.then127.tick_nohz_stop_idle.exit_crit_edge:    ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_stop_idle.exit

if.then.i.i:                                      ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  %17 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i151 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i151 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %idle_entrytime.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %21 = ptrtoint ptr %idle_entrytime.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %idle_entrytime.i.i, align 8
  %sub.i.i = sub i64 %now.0, %22
  %call.i.i = tail call i32 @nr_iowait_cpu(i32 noundef %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  %idle_sleeptime.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %iowait_sleeptime.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %idle_sleeptime.sink21.i.i = select i1 %cmp.not.i.i, ptr %idle_sleeptime.i.i, ptr %iowait_sleeptime.i.i
  %23 = ptrtoint ptr %idle_sleeptime.sink21.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %idle_sleeptime.sink21.i.i, align 8
  %add3.i.i = add i64 %sub.i.i, %24
  store i64 %add3.i.i, ptr %idle_sleeptime.sink21.i.i, align 8
  %25 = ptrtoint ptr %idle_entrytime.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %now.0, ptr %idle_entrytime.i.i, align 8
  br label %tick_nohz_stop_idle.exit

tick_nohz_stop_idle.exit:                         ; preds = %if.then.i.i, %if.then127.tick_nohz_stop_idle.exit_crit_edge
  %26 = ptrtoint ptr %inidle to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %inidle, align 8
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %inidle, align 8
  br label %if.end128

if.end128:                                        ; preds = %tick_nohz_stop_idle.exit, %if.end125.if.end128_crit_edge
  br i1 %tobool119.not, label %if.end128.do.body132_crit_edge, label %if.then130

if.end128.do.body132_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body132

if.then130:                                       ; preds = %if.end128
  tail call fastcc void @tick_nohz_restart_sched_tick(ptr noundef %6, i64 noundef %now.0) #13
  %idle_exittime.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 11
  %27 = ptrtoint ptr %idle_exittime.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %now.0, ptr %idle_exittime.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %idle_jiffies.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 6
  %29 = ptrtoint ptr %idle_jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idle_jiffies.i.i, align 8
  %sub.i.i152 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %tobool.not.i.i153 = icmp ne i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub.i.i152)
  %cmp.i.i = icmp ult i32 %sub.i.i152, 2147483647
  %or.cond.i.i = and i1 %tobool.not.i.i153, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then1.i.i, label %if.then130.do.body132_crit_edge

if.then130.do.body132_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body132

if.then1.i.i:                                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @account_idle_ticks(i32 noundef %sub.i.i152) #13
  br label %do.body132

do.body132:                                       ; preds = %if.then1.i.i, %if.then130.do.body132_crit_edge, %if.end128.do.body132_crit_edge
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_irq_enter() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tick_check_oneshot_broadcast_this_cpu() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add.i to ptr
  %idle_active.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %idle_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %idle_active.i, align 8
  %8 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %entry.tick_nohz_irq_enter.exit_crit_edge, label %if.end.i

entry.tick_nohz_irq_enter.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %call7.i = tail call i64 @ktime_get() #13
  %10 = ptrtoint ptr %idle_active.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load9.i = load i8, ptr %idle_active.i, align 8
  %11 = and i8 %bf.load9.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.i = icmp eq i8 %11, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end15.i_crit_edge, label %tick_nohz_stop_idle.exit.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

tick_nohz_stop_idle.exit.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %idle_entrytime.i.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 9
  %16 = ptrtoint ptr %idle_entrytime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %idle_entrytime.i.i.i, align 8
  %sub.i.i.i = sub i64 %call7.i, %17
  %call.i.i.i = tail call i32 @nr_iowait_cpu(i32 noundef %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %idle_sleeptime.i.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 12
  %iowait_sleeptime.i.i.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 13
  %idle_sleeptime.sink21.i.i.i = select i1 %cmp.not.i.i.i, ptr %idle_sleeptime.i.i.i, ptr %iowait_sleeptime.i.i.i
  %18 = ptrtoint ptr %idle_sleeptime.sink21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %idle_sleeptime.sink21.i.i.i, align 8
  %add3.i.i.i = add i64 %sub.i.i.i, %19
  store i64 %add3.i.i.i, ptr %idle_sleeptime.sink21.i.i.i, align 8
  %20 = ptrtoint ptr %idle_entrytime.i.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call7.i, ptr %idle_entrytime.i.i.i, align 8
  %21 = ptrtoint ptr %idle_active.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %idle_active.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i, -33
  store i8 %bf.clear.i.i, ptr %idle_active.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %tick_nohz_stop_idle.exit.i, %if.end.i.if.end15.i_crit_edge
  %22 = ptrtoint ptr %idle_active.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load17.i = load i8, ptr %idle_active.i, align 8
  %23 = and i8 %bf.load17.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not.i = icmp eq i8 %23, 0
  br i1 %tobool21.not.i, label %if.end15.i.tick_nohz_irq_enter.exit_crit_edge, label %if.then22.i

if.end15.i.tick_nohz_irq_enter.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_irq_enter.exit

if.then22.i:                                      ; preds = %if.end15.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i30.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i30.i to ptr
  %cpu.i31.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i31.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i31.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %29, ptrtoint (ptr getelementptr inbounds (%struct.tick_sched, ptr @tick_cpu_sched, i32 0, i32 10) to i32)
  %30 = inttoptr i32 %add.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call7.i, ptr %30, align 8
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !89
  %and.i61.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i61.i.i, 0
  br i1 %tobool.not.i.i, label %if.then36.i.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %call7.i) #13
  br label %do.body38.i.i

if.then36.i.i:                                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %call7.i) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body38.i.i

do.body38.i.i:                                    ; preds = %if.then36.i.i, %do.end26.i.i
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !81
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool46.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool46.not.i.i, label %if.then50.i.i, label %do.body38.i.i.tick_nohz_update_jiffies.exit.i_crit_edge, !prof !76

do.body38.i.i.tick_nohz_update_jiffies.exit.i_crit_edge: ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_update_jiffies.exit.i

if.then50.i.i:                                    ; preds = %do.body38.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %tick_nohz_update_jiffies.exit.i

tick_nohz_update_jiffies.exit.i:                  ; preds = %if.then50.i.i, %do.body38.i.i.tick_nohz_update_jiffies.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #13, !srcloc !90
  tail call void @touch_softlockup_watchdog_sched() #13
  br label %tick_nohz_irq_enter.exit

tick_nohz_irq_enter.exit:                         ; preds = %tick_nohz_update_jiffies.exit.i, %if.end15.i.tick_nohz_irq_enter.exit_crit_edge, %entry.tick_nohz_irq_enter.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_check_oneshot_broadcast_this_cpu() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skew_tick(ptr noundef %str) #2 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @sched_skew_tick) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_setup_sched_timer() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %call2 = tail call i64 @ktime_get() #13
  tail call void @hrtimer_init(ptr noundef %6, i32 noundef 1, i32 noundef 8) #13
  %function = getelementptr inbounds %struct.hrtimer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tick_sched_timer, ptr %function, align 8
  %call5 = tail call fastcc i64 @tick_init_jiffy_update()
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call5, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call5, ptr %_softexpires.i, align 8
  %10 = load i32, ptr @sched_skew_tick, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end196_crit_edge, label %if.end.i.i

entry.if.end196_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %11) #13
  %div183 = udiv i32 5000000, %call4.i.i
  %conv184 = zext i32 %div183 to i64
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %conv193 = zext i32 %13 to i64
  %mul194 = mul nuw nsw i64 %conv184, %conv193
  %14 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %expires.i, align 8
  %add.i = add i64 %mul194, %15
  store i64 %add.i, ptr %expires.i, align 8
  %16 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %_softexpires.i, align 8
  %add3.i = add i64 %17, %mul194
  store i64 %add3.i, ptr %_softexpires.i, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.end.i.i, %entry.if.end196_crit_edge
  %call198 = tail call i64 @hrtimer_forward(ptr noundef %6, i64 noundef %call2, i64 noundef 10000000) #13
  %18 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %_softexpires.i, align 8
  %20 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %expires.i, align 8
  %sub.i290 = sub i64 %21, %19
  tail call void @hrtimer_start_range_ns(ptr noundef %6, i64 noundef %19, i64 noundef %sub.i290, i32 noundef 10) #13
  %22 = load i8, ptr @tick_nohz_enabled, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end196.tick_nohz_activate.exit_crit_edge, label %if.end.i

if.end196.tick_nohz_activate.exit_crit_edge:      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_activate.exit

if.end.i:                                         ; preds = %if.end196
  %nohz_mode.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %nohz_mode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %nohz_mode.i, align 4
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @tick_nohz_active) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i291 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i291, label %if.then2.i, label %if.end.i.tick_nohz_activate.exit_crit_edge

if.end.i.tick_nohz_activate.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_nohz_activate.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @timers_update_nohz() #13
  br label %tick_nohz_activate.exit

tick_nohz_activate.exit:                          ; preds = %if.then2.i, %if.end.i.tick_nohz_activate.exit_crit_edge, %if.end196.tick_nohz_activate.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tick_sched_timer(ptr noundef %timer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call1 = tail call i64 @ktime_get() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i16 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i16 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %13 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp eq i32 %13, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge, !prof !76

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  store i32 %12, ptr @tick_do_timer_cpu, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %14 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp3.i = icmp eq i32 %14, %12
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %call1) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %inidle.i = getelementptr inbounds %struct.tick_sched, ptr %timer, i32 0, i32 3
  %15 = ptrtoint ptr %inidle.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %inidle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool6.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool6.not.i, label %if.end5.i.tick_sched_do_timer.exit_crit_edge, label %if.then7.i

if.end5.i.tick_sched_do_timer.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_sched_do_timer.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i = or i8 %bf.load.i, 8
  %16 = ptrtoint ptr %inidle.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set.i, ptr %inidle.i, align 8
  br label %tick_sched_do_timer.exit

tick_sched_do_timer.exit:                         ; preds = %if.then7.i, %if.end5.i.tick_sched_do_timer.exit_crit_edge
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %tick_sched_do_timer.exit
  %17 = ptrtoint ptr %inidle.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i17 = load i8, ptr %inidle.i, align 8
  %18 = and i8 %bf.load.i17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.tick_sched_handle.exit_crit_edge, label %if.then.i19

if.then.tick_sched_handle.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_sched_handle.exit

if.then.i19:                                      ; preds = %if.then
  tail call void @touch_softlockup_watchdog_sched() #13
  %19 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i6.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i6.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i18 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.i.not.i = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.i.not.i, label %if.then.i19.if.end.i20_crit_edge, label %if.then2.i

if.then.i19.if.end.i20_crit_edge:                 ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i20

if.then2.i:                                       ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #15
  %idle_jiffies.i = getelementptr inbounds %struct.tick_sched, ptr %timer, i32 0, i32 6
  %25 = ptrtoint ptr %idle_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idle_jiffies.i, align 8
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %idle_jiffies.i, align 8
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then2.i, %if.then.i19.if.end.i20_crit_edge
  %next_tick.i = getelementptr inbounds %struct.tick_sched, ptr %timer, i32 0, i32 5
  %27 = ptrtoint ptr %next_tick.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %next_tick.i, align 8
  br label %tick_sched_handle.exit

tick_sched_handle.exit:                           ; preds = %if.end.i20, %if.then.tick_sched_handle.exit_crit_edge
  %arrayidx.i21 = getelementptr [18 x i32], ptr %8, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i21, align 4
  %and.i = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i22 = icmp eq i32 %and.i, 0
  %conv.i = zext i1 %cmp.i22 to i32
  tail call void @update_process_times(i32 noundef %conv.i) #13
  tail call void @profile_tick(i32 noundef 1) #13
  br label %if.end

if.else:                                          ; preds = %tick_sched_do_timer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %next_tick = getelementptr inbounds %struct.tick_sched, ptr %timer, i32 0, i32 5
  %30 = ptrtoint ptr %next_tick to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %next_tick, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %tick_sched_handle.exit
  %31 = ptrtoint ptr %inidle.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %inidle.i, align 8
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool2.not = icmp eq i8 %32, 0
  br i1 %tobool2.not, label %if.end6, label %if.end.cleanup_crit_edge, !prof !75

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call1, i64 noundef 10000000) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @tick_init_jiffy_update() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 1), align 4
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !76

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 276, i32 noundef 9, ptr noundef null) #13
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %entry.__seqprop_raw_spinlock_assert.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %2 = load i32, ptr @jiffies_seq, align 4
  %inc.i.i.i = add i32 %2, 1
  store i32 %inc.i.i.i, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !92
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  %5 = load i64, ptr @last_jiffies_update, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then5, label %__seqprop_raw_spinlock_assert.exit.if.end6_crit_edge

__seqprop_raw_spinlock_assert.exit.if.end6_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @tick_next_period to i32))
  %6 = load i64, ptr @tick_next_period, align 8
  store i64 %6, ptr @last_jiffies_update, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %__seqprop_raw_spinlock_assert.exit.if.end6_crit_edge
  %7 = load i64, ptr @last_jiffies_update, align 8
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %8 = load i32, ptr @jiffies_seq, align 4
  %inc.i.i = add i32 %8, 1
  store i32 %inc.i.i, ptr @jiffies_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jiffies_lock) #13
  ret i64 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_cancel_sched_timer(i32 noundef %cpu) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tick_cpu_sched to i32)
  %2 = inttoptr i32 %add to ptr
  %base = getelementptr inbounds %struct.hrtimer, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @hrtimer_cancel(ptr noundef %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = call ptr @memset(ptr %2, i32 0, i32 184)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_clock_notify() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %0)
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call6 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call4, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @tick_cpu_sched to i32)
  %3 = inttoptr i32 %add to ptr
  %check_clocks = getelementptr inbounds %struct.tick_sched, ptr %3, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %check_clocks) #13
  %call = tail call i32 @cpumask_next(i32 noundef %call6, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tick_oneshot_notify() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %check_clocks = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %check_clocks) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tick_check_oneshot_change(i32 noundef %allow_nohz) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %check_clocks = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 1
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %check_clocks) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nohz_mode = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nohz_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nohz_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @timekeeping_valid_for_hres() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %call7 = tail call i32 @tick_is_oneshot_available() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allow_nohz)
  %tobool11.not = icmp eq i32 %allow_nohz, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @tick_cpu_sched to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = load i8, ptr @tick_nohz_enabled, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end13.cleanup_crit_edge, label %if.end.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %call2.i = tail call i32 @tick_switch_to_oneshot(ptr noundef nonnull @tick_nohz_handler) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  tail call void @hrtimer_init(ptr noundef %15, i32 noundef 1, i32 noundef 8) #13
  %call6.i = tail call fastcc i64 @tick_init_jiffy_update() #13
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call6.i, ptr %expires.i.i, align 8
  %_softexpires.i.i = getelementptr inbounds %struct.hrtimer, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call6.i, ptr %_softexpires.i.i, align 8
  %base.i.i = getelementptr inbounds %struct.hrtimer, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %get_time.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %get_time.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_time.i.i, align 4
  %call.i.i = tail call i64 %22() #13
  %call1.i.i = tail call i64 @hrtimer_forward(ptr noundef %15, i64 noundef %call.i.i, i64 noundef 10000000) #13
  %23 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %expires.i.i, align 8
  %call12.i = tail call i32 @tick_program_event(i64 noundef %24, i32 noundef 1) #13
  %25 = load i8, ptr @tick_nohz_enabled, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.end5.i.cleanup_crit_edge, label %if.end.i.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5.i
  %nohz_mode.i.i = getelementptr inbounds %struct.tick_sched, ptr %15, i32 0, i32 2
  %26 = ptrtoint ptr %nohz_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %nohz_mode.i.i, align 4
  %call.i19.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @tick_nohz_active) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool1.not.i.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @timers_update_nohz() #13
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i.i, %if.end.i.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_is_oneshot_available() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nohz_balance_enter_idle(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_load_nohz_start() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @quiet_vmstat() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tick_stop() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tick_stop, i32 0, i32 1), ptr blockaddress(@trace_tick_stop, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !94

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %call42 = tail call i32 @__traceiter_tick_stop(ptr noundef null, i32 noundef 1, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !75

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tick_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tick_stop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_tick_stop.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_tick_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 416, ptr noundef nonnull @.str.8) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  %31 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_program_event(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tick_stop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access() unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !89
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef %4) #13
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !81
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !76

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_needs_cpu(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_needs_cpu() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_next_timer_interrupt(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timekeeping_max_deferment() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tick_do_update_jiffies64(i64 noundef %now) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %0 = load volatile i32, ptr @jiffies_seq, align 4
  %and74 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool.not75 = icmp eq i32 %and74, 0
  br i1 %tobool.not75, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %1 = load volatile i32, ptr @jiffies_seq, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !101
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @tick_next_period to i32))
  %2 = load i64, ptr @tick_next_period, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %3 = load volatile i32, ptr @jiffies_seq, align 4
  %cmp.i.i.not = icmp eq i32 %3, %.lcssa
  br i1 %cmp.i.i.not, label %do.end21, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end21:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %now)
  %cmp.i.i70 = icmp sgt i64 %2, %now
  br i1 %cmp.i.i70, label %do.end21.cleanup58_crit_edge, label %cleanup.cont

do.end21.cleanup58_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

cleanup.cont:                                     ; preds = %do.end21
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @tick_next_period to i32))
  %4 = load i64, ptr @tick_next_period, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %now)
  %cmp.i.i71 = icmp sgt i64 %4, %now
  br i1 %cmp.i.i71, label %if.then24, label %do.body26

if.then24:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jiffies_lock) #13
  br label %cleanup58

do.body26:                                        ; preds = %cleanup.cont
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body26.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

do.body26.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %do.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 1), align 4
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !76

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 276, i32 noundef 9, ptr noundef null) #13
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %do.body26.__seqprop_raw_spinlock_assert.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %7 = load i32, ptr @jiffies_seq, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !92
  %8 = tail call ptr @llvm.returnaddress(i32 0) #13
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %9) #13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @tick_next_period to i32))
  %10 = load i64, ptr @tick_next_period, align 8
  %sub = sub i64 %now, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %sub)
  %cmp = icmp sgt i64 %sub, 9999999
  br i1 %cmp, label %if.then38, label %if.else, !prof !76

if.then38:                                        ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub) #16, !srcloc !102
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub, i64 %11, i32 0) #16, !srcloc !74
  %asmresult10.i.i = extractvalue { i64, i32 } %12, 0
  %div181.i72 = lshr i64 %asmresult10.i.i, 23
  %13 = trunc i64 %div181.i72 to i32
  %conv40 = add i32 %13, 1
  %14 = load i64, ptr @last_jiffies_update, align 8
  %conv41 = zext i32 %conv40 to i64
  %mul = mul nuw nsw i64 %conv41, 10000000
  %add42 = add i64 %mul, %14
  br label %if.end44

if.else:                                          ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #15
  %15 = load i64, ptr @last_jiffies_update, align 8
  %add43 = add i64 %15, 10000000
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then38
  %storemerge = phi i64 [ %add43, %if.else ], [ %add42, %if.then38 ]
  %ticks.0 = phi i32 [ 1, %if.else ], [ %conv40, %if.then38 ]
  store i64 %storemerge, ptr @last_jiffies_update, align 8
  %conv45 = zext i32 %ticks.0 to i64
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %16 = load i64, ptr @jiffies_64, align 128
  %add46 = add i64 %16, %conv45
  store i64 %add46, ptr @jiffies_64, align 128
  %add47 = add i64 %storemerge, 10000000
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @tick_next_period to i32))
  store i64 %add47, ptr @tick_next_period, align 8
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies_seq to i32))
  %17 = load i32, ptr @jiffies_seq, align 4
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr @jiffies_seq, align 4
  tail call void @calc_global_load() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @jiffies_lock) #13
  tail call void @update_wall_time() #13
  br label %cleanup58

cleanup58:                                        ; preds = %if.end44, %if.then24, %do.end21.cleanup58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_load_nohz_stop() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog_sched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_wall_time() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @account_idle_ticks(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_process_times(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @profile_tick(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @timers_update_nohz() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_switch_to_oneshot(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tick_nohz_handler(ptr nocapture noundef writeonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tick_cpu_sched to i32)
  %6 = inttoptr i32 %add to ptr
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call3 = tail call i64 @ktime_get() #13
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %next_event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 9223372036854775807, ptr %next_event, align 16
  %11 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i.i17 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i17 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %15 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i = icmp eq i32 %15, -1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge, !prof !76

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  store i32 %14, ptr @tick_do_timer_cpu, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_do_timer_cpu to i32))
  %16 = load i32, ptr @tick_do_timer_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp3.i = icmp eq i32 %16, %14
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tick_do_update_jiffies64(i64 noundef %call3) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %inidle.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 3
  %17 = ptrtoint ptr %inidle.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %inidle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool6.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool6.not.i, label %if.end5.i.tick_sched_do_timer.exit_crit_edge, label %if.then7.i

if.end5.i.tick_sched_do_timer.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_sched_do_timer.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i = or i8 %bf.load.i, 8
  %18 = ptrtoint ptr %inidle.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set.i, ptr %inidle.i, align 8
  br label %tick_sched_do_timer.exit

tick_sched_do_timer.exit:                         ; preds = %if.then7.i, %if.end5.i.tick_sched_do_timer.exit_crit_edge
  %19 = ptrtoint ptr %inidle.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i18 = load i8, ptr %inidle.i, align 8
  %20 = and i8 %bf.load.i18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %tick_sched_do_timer.exit.tick_sched_handle.exit_crit_edge, label %if.then.i20

tick_sched_do_timer.exit.tick_sched_handle.exit_crit_edge: ; preds = %tick_sched_do_timer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %tick_sched_handle.exit

if.then.i20:                                      ; preds = %tick_sched_do_timer.exit
  tail call void @touch_softlockup_watchdog_sched() #13
  %21 = tail call i32 @llvm.read_register.i32(metadata !63) #13
  %and.i6.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i6.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.i, align 4
  %and.i.i19 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.i.not.i = icmp eq i32 %and.i.i19, 0
  br i1 %tobool.i.not.i, label %if.then.i20.if.end.i21_crit_edge, label %if.then2.i

if.then.i20.if.end.i21_crit_edge:                 ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i21

if.then2.i:                                       ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #15
  %idle_jiffies.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 6
  %27 = ptrtoint ptr %idle_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idle_jiffies.i, align 8
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %idle_jiffies.i, align 8
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then2.i, %if.then.i20.if.end.i21_crit_edge
  %next_tick.i = getelementptr inbounds %struct.tick_sched, ptr %6, i32 0, i32 5
  %29 = ptrtoint ptr %next_tick.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %next_tick.i, align 8
  br label %tick_sched_handle.exit

tick_sched_handle.exit:                           ; preds = %if.end.i21, %tick_sched_do_timer.exit.tick_sched_handle.exit_crit_edge
  %arrayidx.i22 = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i22, align 4
  %and.i23 = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %cmp.i24 = icmp eq i32 %and.i23, 0
  %conv.i = zext i1 %cmp.i24 to i32
  tail call void @update_process_times(i32 noundef %conv.i) #13
  tail call void @profile_tick(i32 noundef 1) #13
  %32 = ptrtoint ptr %inidle.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %inidle.i, align 8
  %33 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %if.end, label %tick_sched_handle.exit.cleanup_crit_edge, !prof !75

tick_sched_handle.exit.cleanup_crit_edge:         ; preds = %tick_sched_handle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %tick_sched_handle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i64 @hrtimer_forward(ptr noundef %6, i64 noundef %call3, i64 noundef 10000000) #13
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %34 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %expires.i, align 8
  %call9 = tail call i32 @tick_program_event(i64 noundef %35, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tick_sched_handle.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @tick_nohz_enabled, !1, !"tick_nohz_enabled", i1 false, i1 false}
!1 = !{!"../kernel/time/tick-sched.c", i32 575, i32 6}
!2 = !{ptr @__setup_setup_tick_nohz, !3, !"__setup_setup_tick_nohz", i1 false, i1 false}
!3 = !{!"../kernel/time/tick-sched.c", i32 585, i32 1}
!4 = !{ptr @__ksymtab_get_cpu_idle_time_us, !5, !"__ksymtab_get_cpu_idle_time_us", i1 false, i1 false}
!5 = !{!"../kernel/time/tick-sched.c", i32 700, i32 1}
!6 = !{ptr @__ksymtab_get_cpu_iowait_time_us, !7, !"__ksymtab_get_cpu_iowait_time_us", i1 false, i1 false}
!7 = !{!"../kernel/time/tick-sched.c", i32 740, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/time/tick-sched.c", i32 1105, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/time/tick-sched.c", i32 1111, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/time/tick-sched.c", i32 1160, i32 9}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../kernel/time/tick-sched.c", i32 1185, i32 2}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/time/tick-sched.c", i32 1289, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../kernel/time/tick-sched.c", i32 1290, i32 2}
!21 = !{ptr @__setup_skew_tick, !22, !"__setup_skew_tick", i1 false, i1 false}
!22 = !{!"../kernel/time/tick-sched.c", i32 1449, i32 1}
!23 = !{ptr @__pcpu_unique_tick_cpu_sched, !24, !"__pcpu_unique_tick_cpu_sched", i1 false, i1 false}
!24 = !{!"../kernel/time/tick-sched.c", i32 39, i32 8}
!25 = !{ptr @tick_cpu_sched, !24, !"tick_cpu_sched", i1 false, i1 false}
!26 = !{ptr @tick_nohz_active, !27, !"tick_nohz_active", i1 false, i1 false}
!27 = !{!"../kernel/time/tick-sched.c", i32 576, i32 15}
!28 = !{ptr @sched_skew_tick, !29, !"sched_skew_tick", i1 false, i1 false}
!29 = !{!"../kernel/time/tick-sched.c", i32 1441, i32 12}
!30 = !{ptr @__setup_str_setup_tick_nohz, !3, !"__setup_str_setup_tick_nohz", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../kernel/time/tick-sched.c", i32 885, i32 3}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/time/tick-sched.c", i32 886, i32 3}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tick_nohz_stop_tick._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @tick_nohz_stop_tick._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/trace/events/timer.h", i32 398, i32 1}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!43 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @can_stop_idle_tick.ratelimit, !48, !"ratelimit", i1 false, i1 false}
!48 = !{!"../kernel/time/tick-sched.c", i32 1014, i32 14}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/time/tick-sched.c", i32 1018, i32 4}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @can_stop_idle_tick._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @can_stop_idle_tick._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/time/tick-sched.c", i32 1034, i32 7}
!56 = !{ptr @last_jiffies_update, !57, !"last_jiffies_update", i1 false, i1 false}
!57 = !{!"../kernel/time/tick-sched.c", i32 52, i32 16}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/seqlock.h", i32 276, i32 1}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/time/tick-sched.c", i32 615, i32 2}
!62 = !{ptr @__setup_str_skew_tick, !22, !"__setup_str_skew_tick", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 866678, i64 866705, i64 866727, i64 866755}
!74 = !{i64 867086, i64 867113, i64 867146, i64 867167, i64 867194, i64 867220}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2154919023}
!78 = !{i64 2154923957}
!79 = !{i64 2154945641}
!80 = !{i64 2154950535}
!81 = !{i64 910632}
!82 = !{i64 908335}
!83 = !{i64 908145}
!84 = !{!"auto-init"}
!85 = !{i64 2154649447}
!86 = !{i64 2154649289}
!87 = !{i64 2154649617}
!88 = !{i64 2150268687}
!89 = !{i64 907900, i64 907961}
!90 = !{i64 910917}
!91 = !{i8 0, i8 2}
!92 = !{i64 2150269012}
!93 = !{i64 2150269337}
!94 = !{i64 2148327035, i64 2148327040, i64 2148327053, i64 2148327097, i64 2148327131, i64 2148327152}
!95 = !{i64 2154569637}
!96 = !{i64 2154569856}
!97 = !{i64 2149349715}
!98 = !{i64 2149350751}
!99 = !{i64 2154595151}
!100 = !{i64 2154594993}
!101 = !{i64 2154595321}
!102 = !{i64 866391, i64 866418}
