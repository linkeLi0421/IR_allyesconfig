; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon = type { ptr, ptr, ptr }
%struct.dss_pll = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dss_pll_clock_info }
%struct.dss_pll_clock_info = type { i32, i32, [4 x i32], i16, i16, i32, [4 x i16], i16 }
%struct.dss_pll_ops = type { ptr, ptr, ptr }
%struct.dss_pll_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsi0\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"video0\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsi1\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"video1\00", [25 x i8] zeroinitializer }, align 32
@dss_pll_calc_b.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dss_pll_calc_b\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/omapdrm/dss/pll.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clkin %lu, target clkout %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PLL: clkin %lu, target clkout %lu\0A\00", [61 x i8] zeroinitializer }, align 32
@dss_pll_calc_b.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, i8 0, i8 78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"N = %u, M = %u, M.f = %u, M2 = %u, SD = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PLL: N = %u, M = %u, M.f = %u, M2 = %u, SD = %u\0A\00", [47 x i8] zeroinitializer }, align 32
@dss_pll_calc_b.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.12, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fint %lu, clkdco %lu, clkout %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PLL: Fint %lu, clkdco %lu, clkout %lu\0A\00", [57 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013PLL: omapdss PLL error: cannot lock PLL\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dss_pll_write_config_type_a\00", [36 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_a._entry_ptr = internal global ptr @dss_pll_write_config_type_a._entry, section ".printk_index", align 4
@dss_pll_write_config_type_a._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.7, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013PLL: omapdss PLL error: DSS DPLL GO bit not going down.\0A\00", [37 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_a._entry_ptr.18 = internal global ptr @dss_pll_write_config_type_a._entry.16, section ".printk_index", align 4
@dss_pll_write_config_type_a._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.7, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013PLL: omapdss PLL error: cannot lock DSS DPLL\0A\00", [48 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_a._entry_ptr.21 = internal global ptr @dss_pll_write_config_type_a._entry.19, section ".printk_index", align 4
@dss_pll_write_config_type_a._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.7, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013PLL: omapdss PLL error: failed to enable HSDIV clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_a._entry_ptr.24 = internal global ptr @dss_pll_write_config_type_a._entry.22, section ".printk_index", align 4
@dss_pll_write_config_type_b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.25, ptr @.str.7, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dss_pll_write_config_type_b\00", [36 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_b._entry_ptr = internal global ptr @dss_pll_write_config_type_b._entry, section ".printk_index", align 4
@dss_pll_write_config_type_b._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.7, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dss_pll_write_config_type_b._entry_ptr.27 = internal global ptr @dss_pll_write_config_type_b._entry.26, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@switch.table.dss_pll_get_clkout_idx_for_src = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 0, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 80, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 85, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 93, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 95, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 281, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 312, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 314, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 481, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 489, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 495, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 516, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 562, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private constant [37 x i8] c"../drivers/gpu/drm/omapdrm/dss/pll.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 567, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [44 x i8] c"switch.table.dss_pll_get_clkout_idx_for_src\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @dss_pll_write_config_type_a._entry, ptr @dss_pll_write_config_type_a._entry.16, ptr @dss_pll_write_config_type_a._entry.19, ptr @dss_pll_write_config_type_a._entry.22, ptr @dss_pll_write_config_type_a._entry_ptr, ptr @dss_pll_write_config_type_a._entry_ptr.18, ptr @dss_pll_write_config_type_a._entry_ptr.21, ptr @dss_pll_write_config_type_a._entry_ptr.24, ptr @dss_pll_write_config_type_b._entry, ptr @dss_pll_write_config_type_b._entry.26, ptr @dss_pll_write_config_type_b._entry_ptr, ptr @dss_pll_write_config_type_b._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @switch.table.dss_pll_get_clkout_idx_for_src], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pll_write_config_type_a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pll_write_config_type_a._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pll_write_config_type_a._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pll_write_config_type_a._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pll_write_config_type_b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pll_write_config_type_b._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dss_pll_get_clkout_idx_for_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_pll_register(ptr noundef %dss, ptr noundef %pll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.cond.2.if.then_crit_edge, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.cond.if.then_crit_edge ], [ %arrayidx.2, %for.cond.1.if.then_crit_edge ], [ %arrayidx.3, %for.cond.2.if.then_crit_edge ]
  %8 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pll, ptr %arrayidx.lcssa, align 4
  %dss3 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 2
  %9 = ptrtoint ptr %dss3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dss, ptr %dss3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -16, %for.cond.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_pll_unregister(ptr noundef %pll) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dss1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %dss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss1, align 4
  %arrayidx = getelementptr %struct.dss_device, ptr %1, i32 0, i32 18, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %3, %pll
  br i1 %cmp2, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.dss_device, ptr %1, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %5, %pll
  br i1 %cmp2.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.dss_device, ptr %1, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %7, %pll
  br i1 %cmp2.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.dss_device, ptr %1, i32 0, i32 18, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %9, %pll
  br i1 %cmp2.3, label %for.cond.2.if.then_crit_edge, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.cond.if.then_crit_edge ], [ %arrayidx.2, %for.cond.1.if.then_crit_edge ], [ %arrayidx.3, %for.cond.2.if.then_crit_edge ]
  %10 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.lcssa, align 4
  %11 = ptrtoint ptr %dss1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dss1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.2.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dss_pll_find(ptr nocapture noundef readonly %dss, ptr nocapture noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.1 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp4.1 = icmp eq i32 %call.1, 0
  br i1 %cmp4.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.2 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp4.2 = icmp eq i32 %call.2, 0
  br i1 %cmp4.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 18, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.3 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp4.3 = icmp eq i32 %call.3, 0
  br i1 %cmp4.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %land.lhs.true.cleanup_crit_edge ], [ %5, %land.lhs.true.1.cleanup_crit_edge ], [ %9, %land.lhs.true.2.cleanup_crit_edge ], [ %13, %land.lhs.true.3.cleanup_crit_edge ], [ null, %for.inc.3 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dss_pll_find_by_src(ptr nocapture noundef readonly %dss, i32 noundef %src) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src, label %entry.cleanup_crit_edge [
    i32 6, label %entry.sw.bb5_crit_edge
    i32 7, label %entry.cleanup.sink.split_crit_edge
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge18
    i32 3, label %entry.sw.bb2_crit_edge19
    i32 4, label %entry.sw.bb5_crit_edge20
    i32 5, label %entry.sw.bb5_crit_edge21
  ]

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge18, %entry.sw.bb2_crit_edge19
  %call3 = tail call ptr @dss_pll_find(ptr noundef %dss, ptr noundef nonnull @.str.1)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %sw.bb2.cleanup.sink.split_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2.cleanup.sink.split_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge20, %entry.sw.bb5_crit_edge21
  %call6 = tail call ptr @dss_pll_find(ptr noundef %dss, ptr noundef nonnull @.str.3)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %sw.bb5.cleanup.sink.split_crit_edge, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb5.cleanup.sink.split_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5.cleanup.sink.split_crit_edge, %sw.bb2.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.2, %sw.bb2.cleanup.sink.split_crit_edge ], [ @.str.4, %sw.bb5.cleanup.sink.split_crit_edge ]
  %call9 = tail call ptr @dss_pll_find(ptr noundef %dss, ptr noundef nonnull %.str.4.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb5.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ %call9, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dss_pll_get_clkout_idx_for_src(i32 noundef %src) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %src, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dss_pll_get_clkout_idx_for_src, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_pll_enable(ptr noundef %pll) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clkin = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 3
  %0 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkin, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %regulator = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 4
  %2 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.err_reg_crit_edge

if.then2.err_reg_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_reg

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ops = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call9 = tail call i32 %7(ptr noundef %pll) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %err_enable

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_enable:                                       ; preds = %if.end8
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %err_enable.err_reg_crit_edge, label %if.then15

err_enable.err_reg_crit_edge:                     ; preds = %err_enable
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_reg

if.then15:                                        ; preds = %err_enable
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #11
  br label %err_reg

err_reg:                                          ; preds = %if.then15, %err_enable.err_reg_crit_edge, %if.then2.err_reg_crit_edge
  %r.0 = phi i32 [ %call4, %if.then2.err_reg_crit_edge ], [ %call9, %if.then15 ], [ %call9, %err_enable.err_reg_crit_edge ]
  %10 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clkin, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_reg, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %11, %err_reg ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %r.0, %err_reg ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_pll_disable(ptr noundef %pll) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %disable = getelementptr inbounds %struct.dss_pll_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  tail call void %3(ptr noundef %pll) #11
  %regulator = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 4
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clkin = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 3
  %6 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clkin, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %cinfo = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 8
  %8 = call ptr @memset(ptr %cinfo, i32 0, i32 44)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_pll_set_config(ptr noundef %pll, ptr noundef %cinfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %set_config = getelementptr inbounds %struct.dss_pll_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_config, align 4
  %call = tail call i32 %3(ptr noundef %pll, ptr noundef %cinfo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cinfo1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %cinfo1, ptr %cinfo, i32 44)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dss_pll_hsdiv_calc_a(ptr nocapture noundef readonly %pll, i32 noundef %clkdco, i32 noundef %out_min, i32 noundef %out_max, ptr nocapture noundef readonly %func, ptr noundef %data) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_min)
  %tobool.not = icmp eq i32 %out_min, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %out_min
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_max)
  %tobool2.not = icmp eq i32 %out_max, 0
  %cond6 = select i1 %tobool2.not, i32 -1, i32 %out_max
  %add = add i32 %clkdco, -1
  %sub = add i32 %add, %cond6
  %div = udiv i32 %sub, %cond6
  %2 = tail call i32 @llvm.umax.i32(i32 %div, i32 1)
  %div11 = udiv i32 %clkdco, %spec.select
  %mX_max = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mX_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mX_max, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %div11, i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp18.not38 = icmp sgt i32 %2, %5
  br i1 %cmp18.not38, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %m.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %div19 = udiv i32 %clkdco, %m.039
  %call = tail call zeroext i1 %func(i32 noundef %m.039, i32 noundef %div19, ptr noundef %data) #11
  %inc = add i32 %m.039, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %5)
  %cmp18.not = icmp sgt i32 %inc, %5
  %or.cond = select i1 %call, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp18.not.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i1 %cmp18.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dss_pll_calc_a(ptr nocapture noundef readonly %pll, i32 noundef %clkin, i32 noundef %pll_min, i32 noundef %pll_max, ptr nocapture noundef readonly %func, ptr noundef %data) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %clkdco_max = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clkdco_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clkdco_max, align 4
  %fint_min = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fint_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fint_min, align 4
  %fint_max = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fint_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fint_max, align 4
  %add = add i32 %clkin, -1
  %sub = add i32 %add, %7
  %div = udiv i32 %sub, %7
  %8 = tail call i32 @llvm.umax.i32(i32 %div, i32 1)
  %div2 = udiv i32 %clkin, %5
  %n_max = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %n_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_max, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %div2, i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp9 = icmp sgt i32 %8, %11
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %errata_i886 = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %errata_i886 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %errata_i886, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %n_inc.0 = select i1 %tobool.not, i32 1, i32 -1
  %n_stop.0 = select i1 %tobool.not, i32 %11, i32 %8
  %n_start.0 = select i1 %tobool.not, i32 %8, i32 %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pll_max)
  %tobool12.not = icmp eq i32 %pll_max, 0
  %cond16 = select i1 %tobool12.not, i32 -1, i32 %pll_max
  call void @__sanitizer_cov_trace_cmp4(i32 %n_start.0, i32 %n_stop.0)
  %cmp17.not128 = icmp eq i32 %n_start.0, %n_stop.0
  br i1 %cmp17.not128, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %add19 = add i32 %pll_min, -1
  %m_max = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %for.body.lr.ph
  %n.0129 = phi i32 [ %n_start.0, %for.body.lr.ph ], [ %add66, %for.inc65.for.body_crit_edge ]
  %div18 = udiv i32 %clkin, %n.0129
  %sub20 = add i32 %add19, %div18
  %div21 = udiv i32 %sub20, %div18
  %sub23 = add i32 %div21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub23)
  %cmp26 = icmp ugt i32 %sub23, 3
  %div24122 = lshr i32 %sub23, 1
  %cond30 = select i1 %cmp26, i32 %div24122, i32 1
  %div31 = udiv i32 %cond16, %div18
  %div32123 = lshr i32 %div31, 1
  %div33 = udiv i32 %3, %div18
  %div34124 = lshr i32 %div33, 1
  %14 = tail call i32 @llvm.umin.i32(i32 %div32123, i32 %div34124)
  %15 = ptrtoint ptr %m_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_max, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond30, i32 %17)
  %cmp47 = icmp ugt i32 %cond30, %17
  br i1 %cmp47, label %for.body.for.inc65_crit_edge, label %if.end49

for.body.for.inc65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

if.end49:                                         ; preds = %for.body
  %18 = ptrtoint ptr %errata_i886 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %errata_i886, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool51.not = icmp eq i8 %19, 0
  %m_start.0 = select i1 %tobool51.not, i32 %cond30, i32 %17
  %m_stop.0 = select i1 %tobool51.not, i32 %17, i32 %cond30
  %m_inc.0 = select i1 %tobool51.not, i32 1, i32 -1
  call void @__sanitizer_cov_trace_cmp4(i32 %m_start.0, i32 %m_stop.0)
  %cmp59.not126 = icmp eq i32 %m_start.0, %m_stop.0
  br i1 %cmp59.not126, label %if.end49.for.inc65_crit_edge, label %for.body60.lr.ph

if.end49.for.inc65_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

for.body60.lr.ph:                                 ; preds = %if.end49
  %mul = shl i32 %div18, 1
  br label %for.body60

for.cond58:                                       ; preds = %for.body60
  %add64 = add i32 %m.0127, %m_inc.0
  %cmp59.not = icmp eq i32 %add64, %m_stop.0
  br i1 %cmp59.not, label %for.cond58.for.inc65_crit_edge, label %for.cond58.for.body60_crit_edge

for.cond58.for.body60_crit_edge:                  ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60

for.cond58.for.inc65_crit_edge:                   ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc65

for.body60:                                       ; preds = %for.cond58.for.body60_crit_edge, %for.body60.lr.ph
  %m.0127 = phi i32 [ %m_start.0, %for.body60.lr.ph ], [ %add64, %for.cond58.for.body60_crit_edge ]
  %mul61 = mul i32 %mul, %m.0127
  %call = tail call zeroext i1 %func(i32 noundef %n.0129, i32 noundef %m.0127, i32 noundef %div18, i32 noundef %mul61, ptr noundef %data) #11
  br i1 %call, label %for.body60.cleanup_crit_edge, label %for.cond58

for.body60.cleanup_crit_edge:                     ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc65:                                        ; preds = %for.cond58.for.inc65_crit_edge, %if.end49.for.inc65_crit_edge, %for.body.for.inc65_crit_edge
  %add66 = add i32 %n.0129, %n_inc.0
  %cmp17.not = icmp eq i32 %add66, %n_stop.0
  br i1 %cmp17.not, label %for.inc65.cleanup_crit_edge, label %for.inc65.for.body_crit_edge

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc65.cleanup_crit_edge:                      ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc65.cleanup_crit_edge, %for.body60.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %for.body60.cleanup_crit_edge ], [ false, %for.inc65.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dss_pll_calc_b(ptr nocapture noundef readonly %pll, i32 noundef %clkin, i32 noundef %target_clkout, ptr nocapture noundef writeonly %cinfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_pll_calc_b.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_pll_calc_b, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_pll_calc_b.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.9, i32 noundef %clkin, i32 noundef %target_clkout) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fint_max = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fint_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fint_max, align 4
  %add = add i32 %clkin, -1
  %sub = add i32 %add, %3
  %div = udiv i32 %sub, %3
  %div6 = udiv i32 %clkin, %div
  %clkdco_min = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %clkdco_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clkdco_min, align 4
  %sub8 = add i32 %div6, -1
  %add9 = add i32 %sub8, %5
  %6 = urem i32 %add9, %div6
  %7 = xor i32 %6, -1
  %add11 = add i32 %7, %target_clkout
  %sub12 = add i32 %add11, %add9
  %div13 = udiv i32 %sub12, %target_clkout
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %target_clkout)
  %cmp = icmp ult i32 %sub12, %target_clkout
  %spec.store.select = select i1 %cmp, i32 1, i32 %div13
  %mul16 = mul i32 %spec.store.select, %target_clkout
  %div17 = udiv i32 %mul16, %div6
  %mul18 = mul i32 %div17, %div6
  %sub19 = sub i32 %mul16, %mul18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %div6)
  %cmp20 = icmp ugt i32 %sub19, %div6
  br i1 %cmp20, label %if.end56.thread, label %if.else, !prof !63

if.end56.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 299, i32 noundef 9, ptr noundef null) #11
  br label %if.end66

if.else:                                          ; preds = %do.end
  %conv = zext i32 %sub19 to i64
  %mul53 = shl nuw nsw i64 %conv, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub19)
  %cmp164.i.i = icmp ult i32 %sub19, 16384
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !64

if.then168.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i = trunc i64 %mul53 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div6
  br label %if.end56

if.else174.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div6, i64 %mul53) #15, !srcloc !65
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t184 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end56

if.end56:                                         ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t184, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i.off0)
  %cmp57.not = icmp eq i32 %dividend.addr.0.i.i.off0, 0
  br i1 %cmp57.not, label %if.end56.if.end66_crit_edge, label %if.then59

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %conv60 = zext i32 %dividend.addr.0.i.i.off0 to i64
  %conv61 = zext i32 %div6 to i64
  %mul62 = mul nuw i64 %conv60, %conv61
  %shr.i.i173 = lshr i64 %mul62, 18
  %conv64 = trunc i64 %shr.i.i173 to i32
  %add65 = add i32 %mul18, %conv64
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.end56.if.end66_crit_edge, %if.end56.thread
  %mf.0179 = phi i32 [ %dividend.addr.0.i.i.off0, %if.then59 ], [ 0, %if.end56.if.end66_crit_edge ], [ 0, %if.end56.thread ]
  %clkdco.0 = phi i32 [ %add65, %if.then59 ], [ %mul18, %if.end56.if.end66_crit_edge ], [ %mul18, %if.end56.thread ]
  %div67 = udiv i32 %clkdco.0, %spec.store.select
  %sub70 = add i32 %mul18, 249999999
  %div71 = udiv i32 %sub70, 250000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_pll_calc_b.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_pll_calc_b, %do.body90)) #11
          to label %if.then86 [label %do.body90], !srcloc !62

if.then86:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_pll_calc_b.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.11, i32 noundef %div, i32 noundef %div17, i32 noundef %mf.0179, i32 noundef %spec.store.select, i32 noundef %div71) #11
  br label %do.body90

do.body90:                                        ; preds = %if.then86, %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_pll_calc_b.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_pll_calc_b, %do.end107)) #11
          to label %if.then104 [label %do.end107], !srcloc !62

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_pll_calc_b.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.13, i32 noundef %div6, i32 noundef %clkdco.0, i32 noundef %div67) #11
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %do.body90
  %conv108 = trunc i32 %div to i16
  %n109 = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 3
  %9 = ptrtoint ptr %n109 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv108, ptr %n109, align 4
  %conv110 = trunc i32 %div17 to i16
  %m111 = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 4
  %10 = ptrtoint ptr %m111 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv110, ptr %m111, align 2
  %mf112 = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 5
  %11 = ptrtoint ptr %mf112 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mf.0179, ptr %mf112, align 4
  %conv113 = trunc i32 %spec.store.select to i16
  %mX = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 6
  %12 = ptrtoint ptr %mX to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv113, ptr %mX, align 4
  %conv114 = trunc i32 %div71 to i16
  %sd115 = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 7
  %13 = ptrtoint ptr %sd115 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv114, ptr %sd115, align 4
  %14 = ptrtoint ptr %cinfo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div6, ptr %cinfo, align 4
  %clkdco117 = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 1
  %15 = ptrtoint ptr %clkdco117 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %clkdco.0, ptr %clkdco117, align 4
  %clkout118 = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 2
  %16 = ptrtoint ptr %clkout118 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div67, ptr %clkout118, align 4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_pll_wait_reset_done(ptr nocapture noundef readonly %pll) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 5
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %call = tail call fastcc i32 @wait_for_bit_change(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  %. = select i1 %cmp.not, i32 0, i32 -110
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_bit_change(ptr noundef %reg, i32 noundef %bitnum, i32 noundef %value) #6 align 64 {
entry:
  %wait = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wait) #11
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wait, align 8, !annotation !66
  %shl2 = shl nuw i32 1, %bitnum
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %t.0 = phi i32 [ 100, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0)
  %cmp.not = icmp eq i32 %t.0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %t.0, -1
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #11, !srcloc !67
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, %shl2
  %shr = lshr i32 %and, %bitnum
  %cmp3 = icmp eq i32 %shr, %value
  br i1 %cmp3, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add5.neg = sub i32 -50, %3
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub7109 = add i32 %add5.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7109)
  %cmp8110 = icmp slt i32 %sub7109, 0
  br i1 %cmp8110, label %while.end.while.body9_crit_edge, label %while.end.while.end88_crit_edge

while.end.while.end88_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end88

while.end.while.body9_crit_edge:                  ; preds = %while.end
  br label %while.body9

while.body9:                                      ; preds = %__here.while.body9_crit_edge, %while.end.while.body9_crit_edge
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #11, !srcloc !67
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %and18 = and i32 %6, %shl2
  %shr19 = lshr i32 %and18, %bitnum
  call void @__sanitizer_cov_trace_cmp4(i32 %shr19, i32 %value)
  %cmp20 = icmp eq i32 %shr19, %value
  br i1 %cmp20, label %while.body9.cleanup_crit_edge, label %if.end22

while.body9.cleanup_crit_edge:                    ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %while.body9
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1000000, ptr %wait, align 8
  br label %__here

__here:                                           ; preds = %if.end22
  %8 = call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@wait_for_bit_change, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 2, ptr %13, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %call87 = call i32 @schedule_hrtimeout(ptr noundef nonnull %wait, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub7 = add i32 %add5.neg, %15
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %__here.while.body9_crit_edge, label %__here.while.end88_crit_edge

__here.while.end88_crit_edge:                     ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end88

__here.while.body9_crit_edge:                     ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body9

while.end88:                                      ; preds = %__here.while.end88_crit_edge, %while.end.while.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool89.not = icmp eq i32 %value, 0
  %lnot.ext91 = zext i1 %tobool89.not to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end88, %while.body9.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext91, %while.end88 ], [ %value, %while.body9.cleanup_crit_edge ], [ %value, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wait) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_pll_write_config_type_a(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %cinfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %base2 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 5
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 4
  %has_stopmode = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %has_stopmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_stopmode, align 4, !range !61
  %6 = zext i8 %5 to i32
  %n_msb = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %n_msb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %n_msb, align 4
  %conv = zext i8 %8 to i32
  %n_lsb = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %n_lsb to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %n_lsb, align 1
  %conv3 = zext i8 %10 to i32
  %sub = add nuw nsw i32 %conv, 1
  %add = sub nsw i32 %sub, %conv3
  %notmask = shl nsw i32 -1, %add
  %sub4 = xor i32 %notmask, -1
  %shl7 = shl i32 %sub4, %conv3
  %neg = xor i32 %shl7, -1
  %and8 = and i32 %neg, %6
  %n = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 3
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %n, align 4
  %conv9 = zext i16 %12 to i32
  %sub10 = add nsw i32 %conv9, -1
  %shl13 = shl i32 %sub10, %conv3
  %and25 = and i32 %shl13, %shl7
  %or26 = or i32 %and8, %and25
  %m_msb = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %m_msb to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_msb, align 2
  %conv27 = zext i8 %14 to i32
  %m_lsb = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %m_lsb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %m_lsb, align 1
  %conv28 = zext i8 %16 to i32
  %sub29 = add nuw nsw i32 %conv27, 1
  %add30 = sub nsw i32 %sub29, %conv28
  %notmask560 = shl nsw i32 -1, %add30
  %sub32 = xor i32 %notmask560, -1
  %shl35 = shl i32 %sub32, %conv28
  %neg36 = xor i32 %shl35, -1
  %and37 = and i32 %or26, %neg36
  %m = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 4
  %17 = ptrtoint ptr %m to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %m, align 2
  %conv38 = zext i16 %18 to i32
  %shl41 = shl i32 %conv38, %conv28
  %and53 = and i32 %shl35, %shl41
  %or54 = or i32 %and37, %and53
  %mX_msb = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %mX_msb to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mX_msb, align 4
  %conv55 = zext i8 %20 to i32
  %mX_lsb = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %mX_lsb to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mX_lsb, align 4
  %conv57 = zext i8 %22 to i32
  %sub58 = add nuw nsw i32 %conv55, 1
  %add59 = sub nsw i32 %sub58, %conv57
  %notmask561 = shl nsw i32 -1, %add59
  %sub61 = xor i32 %notmask561, -1
  %shl65 = shl i32 %sub61, %conv57
  %neg66 = xor i32 %shl65, -1
  %and67 = and i32 %or54, %neg66
  %mX = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 6
  %23 = ptrtoint ptr %mX to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mX, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool70.not = icmp eq i16 %24, 0
  %conv69 = zext i16 %24 to i32
  %sub74 = add nsw i32 %conv69, -1
  %cond = select i1 %tobool70.not, i32 0, i32 %sub74
  %shl78563 = and i32 %cond, %sub61
  %and93 = shl i32 %shl78563, %conv57
  %or94 = or i32 %and93, %and67
  %arrayidx96 = getelementptr %struct.dss_pll_hw, ptr %1, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %26 to i32
  %arrayidx99 = getelementptr %struct.dss_pll_hw, ptr %1, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %28 to i32
  %sub101 = add nuw nsw i32 %conv97, 1
  %add102 = sub nsw i32 %sub101, %conv100
  %notmask564 = shl nsw i32 -1, %add102
  %sub104 = xor i32 %notmask564, -1
  %shl108 = shl i32 %sub104, %conv100
  %neg109 = xor i32 %shl108, -1
  %and110 = and i32 %or94, %neg109
  %arrayidx112 = getelementptr %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool114.not = icmp eq i16 %30, 0
  %conv113 = zext i16 %30 to i32
  %sub119 = add nsw i32 %conv113, -1
  %cond122 = select i1 %tobool114.not, i32 0, i32 %sub119
  %shl126566 = and i32 %cond122, %sub104
  %and141 = shl i32 %shl126566, %conv100
  %or142 = or i32 %and141, %and110
  %31 = tail call i32 @llvm.bswap.i32(i32 %or142)
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #11, !srcloc !69
  %arrayidx144 = getelementptr %struct.dss_pll_hw, ptr %1, i32 0, i32 14, i32 2
  %arrayidx147 = getelementptr %struct.dss_pll_hw, ptr %1, i32 0, i32 15, i32 2
  %arrayidx160 = getelementptr %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool162.not = icmp eq i16 %33, 0
  %conv161 = zext i16 %33 to i32
  %sub167 = add nsw i32 %conv161, -1
  %cond170 = select i1 %tobool162.not, i32 0, i32 %sub167
  %34 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx147, align 2
  %conv173 = zext i8 %35 to i32
  %36 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx144, align 2
  %conv177 = zext i8 %37 to i32
  %sub181 = sub nsw i32 1, %conv173
  %add182 = add nsw i32 %sub181, %conv177
  %notmask567 = shl nsw i32 -1, %add182
  %sub184 = xor i32 %notmask567, -1
  %shl174568 = and i32 %cond170, %sub184
  %and189 = shl i32 %shl174568, %conv173
  %arrayidx192 = getelementptr %struct.dss_pll_hw, ptr %1, i32 0, i32 14, i32 3
  %38 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %39 to i32
  %arrayidx195 = getelementptr %struct.dss_pll_hw, ptr %1, i32 0, i32 15, i32 3
  %40 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %41 to i32
  %sub197 = add nuw nsw i32 %conv193, 1
  %add198 = sub nsw i32 %sub197, %conv196
  %notmask569 = shl nsw i32 -1, %add198
  %sub200 = xor i32 %notmask569, -1
  %shl204 = shl i32 %sub200, %conv196
  %neg205 = xor i32 %shl204, -1
  %and206 = and i32 %and189, %neg205
  %arrayidx208 = getelementptr %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 6, i32 3
  %42 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx208, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool210.not = icmp eq i16 %43, 0
  %conv209 = zext i16 %43 to i32
  %sub215 = add nsw i32 %conv209, -1
  %cond218 = select i1 %tobool210.not, i32 0, i32 %sub215
  %shl222571 = and i32 %cond218, %sub200
  %and237 = shl i32 %shl222571, %conv196
  %or238 = or i32 %and237, %and206
  %44 = tail call i32 @llvm.bswap.i32(i32 %or238)
  %add.ptr239 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 %44) #11, !srcloc !69
  %add.ptr240 = getelementptr i8, ptr %3, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr240) #11, !srcloc !67
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %has_freqsel = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 17
  %47 = ptrtoint ptr %has_freqsel to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %has_freqsel, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool241.not = icmp eq i8 %48, 0
  br i1 %tobool241.not, label %if.else, label %if.then242

if.then242:                                       ; preds = %entry
  %49 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %50)
  %cmp = icmp ult i32 %50, 1000000
  br i1 %cmp, label %if.then242.cond.end264_crit_edge, label %cond.false245

if.then242.cond.end264_crit_edge:                 ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end264

cond.false245:                                    ; preds = %if.then242
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %50)
  %cmp247 = icmp ult i32 %50, 1250000
  br i1 %cmp247, label %cond.false245.cond.end264_crit_edge, label %cond.false250

cond.false245.cond.end264_crit_edge:              ; preds = %cond.false245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end264

cond.false250:                                    ; preds = %cond.false245
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %50)
  %cmp252 = icmp ult i32 %50, 1500000
  br i1 %cmp252, label %cond.false250.cond.end264_crit_edge, label %cond.false255

cond.false250.cond.end264_crit_edge:              ; preds = %cond.false250
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end264

cond.false255:                                    ; preds = %cond.false250
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1750000, i32 %50)
  %cmp257 = icmp ult i32 %50, 1750000
  %cond259 = select i1 %cmp257, i32 12, i32 14
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false255, %cond.false250.cond.end264_crit_edge, %cond.false245.cond.end264_crit_edge, %if.then242.cond.end264_crit_edge
  %cond265 = phi i32 [ 6, %if.then242.cond.end264_crit_edge ], [ 8, %cond.false245.cond.end264_crit_edge ], [ %cond259, %cond.false255 ], [ 10, %cond.false250.cond.end264_crit_edge ]
  %and266 = and i32 %46, -31
  %or269 = or i32 %cond265, %and266
  br label %if.end281

if.else:                                          ; preds = %entry
  %has_selfreqdco = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 18
  %51 = ptrtoint ptr %has_selfreqdco to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_selfreqdco, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool270.not = icmp eq i8 %52, 0
  br i1 %tobool270.not, label %if.else.if.end281_crit_edge, label %if.then271

if.else.if.end281_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end281

if.then271:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %clkdco = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 1
  %53 = ptrtoint ptr %clkdco to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clkdco, align 4
  %clkdco_low = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %clkdco_low to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clkdco_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp273 = icmp ult i32 %54, %56
  %cond275 = select i1 %cmp273, i32 4, i32 8
  %and276 = and i32 %46, -15
  %or279 = or i32 %cond275, %and276
  br label %if.end281

if.end281:                                        ; preds = %if.then271, %if.else.if.end281_crit_edge, %cond.end264
  %l.1 = phi i32 [ %or269, %cond.end264 ], [ %or279, %if.then271 ], [ %46, %if.else.if.end281_crit_edge ]
  %or283 = and i32 %l.1, -43343873
  %has_refsel = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 19
  %57 = ptrtoint ptr %has_refsel to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_refsel, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool292.not = icmp eq i8 %58, 0
  %spec.select572.v = select i1 %tobool292.not, i32 1056768, i32 7348224
  %spec.select572 = or i32 %spec.select572.v, %or283
  %59 = tail call i32 @llvm.bswap.i32(i32 %spec.select572)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %59) #11, !srcloc !69
  %errata_i932 = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 21
  %60 = ptrtoint ptr %errata_i932 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %errata_i932, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool302.not = icmp eq i8 %61, 0
  br i1 %tobool302.not, label %if.else338, label %if.then303

if.then303:                                       ; preds = %if.end281
  %62 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cinfo, align 4
  %sub306 = add i32 %63, 999999999
  %div = udiv i32 %sub306, %63
  %add.ptr310 = getelementptr i8, ptr %3, i32 8
  %add315 = add i32 %div, 5
  %add.ptr317 = getelementptr i8, ptr %3, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then303
  %cnt.0582 = phi i32 [ 0, %if.then303 ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 16777216) #11, !srcloc !69
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr310) #11, !srcloc !67
  tail call void @usleep_range_state(i32 noundef %div, i32 noundef %add315, i32 noundef 2) #11
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr317) #11, !srcloc !67
  %66 = and i32 %65, 1862270976
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %66)
  %cmp.i = icmp eq i32 %66, 50331648
  br i1 %cmp.i, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr310) #11, !srcloc !67
  %68 = and i32 %67, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool327.not = icmp eq i32 %68, 0
  br i1 %tobool327.not, label %land.lhs.true.if.end362_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end362_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end362

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0582, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.inc.cleanup440.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup440.sink.split_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup440.sink.split

if.else338:                                       ; preds = %if.end281
  %add.ptr339 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 16777216) #11, !srcloc !69
  %call341 = tail call fastcc i32 @wait_for_bit_change(ptr noundef %add.ptr339, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %cmp342.not = icmp eq i32 %call341, 0
  br i1 %cmp342.not, label %if.end350, label %if.else338.cleanup440.sink.split_crit_edge

if.else338.cleanup440.sink.split_crit_edge:       ; preds = %if.else338
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup440.sink.split

if.end350:                                        ; preds = %if.else338
  %add.ptr351 = getelementptr i8, ptr %3, i32 4
  %call352 = tail call fastcc i32 @wait_for_bit_change(ptr noundef %add.ptr351, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call352)
  %cmp353.not = icmp eq i32 %call352, 1
  br i1 %cmp353.not, label %if.end350.if.end362_crit_edge, label %if.end350.cleanup440.sink.split_crit_edge

if.end350.cleanup440.sink.split_crit_edge:        ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup440.sink.split

if.end350.if.end362_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end362

if.end362:                                        ; preds = %if.end350.if.end362_crit_edge, %land.lhs.true.if.end362_crit_edge
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr240) #11, !srcloc !67
  %70 = ptrtoint ptr %mX to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mX, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool373.not.not = icmp eq i16 %71, 0
  %shl375 = select i1 %tobool373.not.not, i32 0, i32 65536
  %72 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool382.not.not = icmp eq i16 %73, 0
  %shl384 = select i1 %tobool382.not.not, i32 0, i32 262144
  %74 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool393.not.not = icmp eq i16 %75, 0
  %shl395 = select i1 %tobool393.not.not, i32 0, i32 8388608
  %76 = and i32 %69, -4232451
  %77 = or i32 %76, 4194304
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %and378.masked.masked.masked = or i32 %78, %shl375
  %and389.masked = or i32 %and378.masked.masked.masked, %shl384
  %and398 = or i32 %and389.masked, %shl395
  %79 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx208, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool402.not.not = icmp eq i16 %80, 0
  %shl404 = select i1 %tobool402.not.not, i32 0, i32 33554432
  %or406 = or i32 %and398, %shl404
  %81 = tail call i32 @llvm.bswap.i32(i32 %or406)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %81) #11, !srcloc !69
  %82 = ptrtoint ptr %mX to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mX, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool411.not = icmp eq i16 %83, 0
  %cond412 = select i1 %tobool411.not, i32 0, i32 128
  %84 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool416.not = icmp eq i16 %85, 0
  %cond417 = select i1 %tobool416.not, i32 0, i32 256
  %or418 = or i32 %cond417, %cond412
  %86 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool422.not = icmp eq i16 %87, 0
  %cond423 = select i1 %tobool422.not, i32 0, i32 1024
  %or424 = or i32 %or418, %cond423
  %88 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx208, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool428.not = icmp eq i16 %89, 0
  %cond429 = select i1 %tobool428.not, i32 0, i32 2048
  %or430 = or i32 %or424, %cond429
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end362
  %t.0.i = phi i32 [ 100, %if.end362 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i)
  %cmp.not.i = icmp eq i32 %t.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.cleanup440.sink.split_crit_edge, label %while.body.i

while.cond.i.cleanup440.sink.split_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup440.sink.split

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %t.0.i, -1
  %90 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base2, align 4
  %add.ptr.i = getelementptr i8, ptr %91, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !67
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #11
  %and.i574 = and i32 %93, %or430
  %cmp1.i = icmp eq i32 %and.i574, %or430
  br i1 %cmp1.i, label %while.body.i.cleanup440_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.cleanup440_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup440

cleanup440.sink.split:                            ; preds = %while.cond.i.cleanup440.sink.split_crit_edge, %if.end350.cleanup440.sink.split_crit_edge, %if.else338.cleanup440.sink.split_crit_edge, %for.inc.cleanup440.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.17, %if.else338.cleanup440.sink.split_crit_edge ], [ @.str.20, %if.end350.cleanup440.sink.split_crit_edge ], [ @.str.23, %while.cond.i.cleanup440.sink.split_crit_edge ], [ @.str.14, %for.inc.cleanup440.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %if.else338.cleanup440.sink.split_crit_edge ], [ -5, %if.end350.cleanup440.sink.split_crit_edge ], [ -110, %while.cond.i.cleanup440.sink.split_crit_edge ], [ -5, %for.inc.cleanup440.sink.split_crit_edge ]
  %call334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink) #16
  br label %cleanup440

cleanup440:                                       ; preds = %cleanup440.sink.split, %while.body.i.cleanup440_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup440.sink.split ], [ 0, %while.body.i.cleanup440_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_pll_write_config_type_b(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %cinfo) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %base2 = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 5
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 4
  %m = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 4
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %m, align 2
  %conv = zext i16 %5 to i32
  %shl = shl nuw nsw i32 %conv, 9
  %and3 = and i32 %shl, 2096640
  %n = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 3
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %n, align 4
  %conv5 = zext i16 %7 to i32
  %sub = shl nuw nsw i32 %conv5, 1
  %shl6 = add nuw nsw i32 %sub, 510
  %and7 = and i32 %shl6, 510
  %or8 = or i32 %and7, %and3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #11, !srcloc !69
  %add.ptr9 = getelementptr i8, ptr %3, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !67
  %10 = and i32 %9, -7340033
  %11 = or i32 %10, 2097152
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %has_refsel = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %has_refsel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_refsel, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %or17 = or i32 %12, 6291456
  %spec.select = select i1 %tobool.not, i32 %12, i32 %or17
  %clkdco = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 1
  %15 = ptrtoint ptr %clkdco to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clkdco, align 4
  %clkdco_low = getelementptr inbounds %struct.dss_pll_hw, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %clkdco_low to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clkdco_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp ugt i32 %16, %18
  %and20 = and i32 %spec.select, -20495
  %l.1.v = select i1 %cmp, i32 8, i32 4
  %l.1 = or i32 %and20, %l.1.v
  %19 = tail call i32 @llvm.bswap.i32(i32 %l.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %19) #11, !srcloc !69
  %add.ptr27 = getelementptr i8, ptr %3, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #11, !srcloc !67
  %21 = and i32 %20, -16515841
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %sd = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 7
  %23 = ptrtoint ptr %sd to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sd, align 4
  %conv31 = zext i16 %24 to i32
  %shl32 = shl nuw nsw i32 %conv31, 10
  %and33 = and i32 %shl32, 261120
  %or34 = or i32 %and33, %22
  %25 = tail call i32 @llvm.bswap.i32(i32 %or34)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %25) #11, !srcloc !69
  %add.ptr37 = getelementptr i8, ptr %3, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #11, !srcloc !67
  %27 = shl i32 %26, 24
  %28 = and i32 %27, -33554432
  %mX = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 6
  %29 = ptrtoint ptr %mX to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mX, align 4
  %conv41 = zext i16 %30 to i32
  %shl42 = shl i32 %conv41, 18
  %and43 = and i32 %shl42, 33292288
  %mf = getelementptr inbounds %struct.dss_pll_clock_info, ptr %cinfo, i32 0, i32 5
  %31 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mf, align 4
  %and47 = and i32 %32, 262143
  %and45 = or i32 %and47, %28
  %or48 = or i32 %and45, %and43
  %33 = tail call i32 @llvm.bswap.i32(i32 %or48)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %33) #11, !srcloc !69
  %add.ptr50 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 16777216) #11, !srcloc !69
  %call52 = tail call fastcc i32 @wait_for_bit_change(ptr noundef %add.ptr50, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %if.end58, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end58:                                         ; preds = %entry
  %add.ptr59 = getelementptr i8, ptr %3, i32 4
  %call60 = tail call fastcc i32 @wait_for_bit_change(ptr noundef %add.ptr59, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61.not = icmp eq i32 %call60, 1
  br i1 %cmp61.not, label %if.end58.cleanup_crit_edge, label %if.end58.cleanup.sink.split_crit_edge

if.end58.cleanup.sink.split_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end58.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %entry.cleanup.sink.split_crit_edge ], [ @.str.20, %if.end58.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %entry.cleanup.sink.split_crit_edge ], [ -110, %if.end58.cleanup.sink.split_crit_edge ]
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end58.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 80, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 85, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 87, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 93, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 95, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 281, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dss_pll_calc_b.__UNIQUE_ID_ddebug320, !11, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!16 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 312, i32 2}
!19 = !{ptr @dss_pll_calc_b.__UNIQUE_ID_ddebug321, !18, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 314, i32 2}
!23 = !{ptr @dss_pll_calc_b.__UNIQUE_ID_ddebug322, !22, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 481, i32 4}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dss_pll_write_config_type_a._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @dss_pll_write_config_type_a._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 489, i32 4}
!32 = !{ptr @dss_pll_write_config_type_a._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dss_pll_write_config_type_a._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 495, i32 4}
!36 = !{ptr @dss_pll_write_config_type_a._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dss_pll_write_config_type_a._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 516, i32 3}
!40 = !{ptr @dss_pll_write_config_type_a._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dss_pll_write_config_type_a._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 562, i32 3}
!44 = !{ptr @dss_pll_write_config_type_b._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dss_pll_write_config_type_b._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @dss_pll_write_config_type_b._entry.26, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 567, i32 3}
!48 = !{ptr @dss_pll_write_config_type_b._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/omapdrm/dss/pll.c", i32 349, i32 3}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2148767691, i64 2148767696, i64 2148767709, i64 2148767753, i64 2148767787, i64 2148767808}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2147993364, i64 2147993644, i64 2147993978, i64 2147994312}
!66 = !{!"auto-init"}
!67 = !{i64 3080864}
!68 = !{i64 2156468659}
!69 = !{i64 3080446}
