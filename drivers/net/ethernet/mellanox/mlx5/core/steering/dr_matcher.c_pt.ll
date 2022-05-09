; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_matcher_rx_tx = type { ptr, ptr, ptr, [2 x [2 x [18 x %struct.mlx5dr_ste_build]]], i8, [2 x [2 x i8]], i64, ptr, i32, %struct.list_head, i32 }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5dr_htbl_connect_info = type { i32, %union.anon.177 }
%union.anon.177 = type { i64 }
%struct.mlx5dr_table_rx_tx = type { ptr, ptr, i64, %struct.list_head }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
%struct.mlx5dr_ste = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.mlx5dr_table = type { ptr, %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx, i32, i32, i32, i32, %struct.list_head, ptr, %struct.refcount_struct, %struct.list_head }
%struct.mlx5dr_matcher = type <{ ptr, [4 x i8], %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx, %struct.list_head, i32, %struct.mlx5dr_match_param, i8, [3 x i8], %struct.refcount_struct, %struct.list_head, [4 x i8] }>
%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc2, %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc4, %struct.mlx5dr_match_misc5 }
%struct.mlx5dr_match_misc = type { [44 x i8], i32, i32, [3 x i32] }
%struct.mlx5dr_match_spec = type { i32, i32, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc2 = type { i128, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc4 = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5dr_match_misc5 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_parameters = type { i32, ptr }

@mlx5dr_matcher_select_builders.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5dr_matcher_select_builders\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): Rule not supported on this matcher due to IP related fields\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5dr_matcher_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_matcher_copy_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 896, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Invalid match criteria attribute\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dr_matcher_copy_param\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_matcher_copy_param._entry_ptr = internal global ptr @dr_matcher_copy_param._entry, section ".printk_index", align 4
@dr_matcher_copy_param._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 902, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Invalid match size attribute\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_matcher_copy_param._entry_ptr.10 = internal global ptr @dr_matcher_copy_param._entry.8, section ".printk_index", align 4
@dr_matcher_copy_param.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.11, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Match param mask contains unsupported parameters\0A\00", [62 x i8] zeroinitializer }, align 32
@dr_matcher_set_all_ste_builders._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 822, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Cannot generate IPv4 or IPv6 rules with given mask\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dr_matcher_set_all_ste_builders\00", [32 x i8] zeroinitializer }, align 32
@dr_matcher_set_all_ste_builders._entry_ptr = internal global ptr @dr_matcher_set_all_ste_builders._entry, section ".printk_index", align 4
@dr_matcher_set_ste_builders._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 656, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Cannot generate any valid rules from mask\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dr_matcher_set_ste_builders\00", [36 x i8] zeroinitializer }, align 32
@dr_matcher_set_ste_builders._entry_ptr = internal global ptr @dr_matcher_set_ste_builders._entry, section ".printk_index", align 4
@dr_matcher_set_ste_builders.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Mask contains unsupported parameters\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 389, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 896, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 902, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 920, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 822, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 656, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [65 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 663, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @dr_matcher_copy_param._entry, ptr @dr_matcher_copy_param._entry.8, ptr @dr_matcher_copy_param._entry_ptr, ptr @dr_matcher_copy_param._entry_ptr.10, ptr @dr_matcher_set_all_ste_builders._entry, ptr @dr_matcher_set_all_ste_builders._entry_ptr, ptr @dr_matcher_set_ste_builders._entry, ptr @dr_matcher_set_ste_builders._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_matcher_copy_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_matcher_copy_param._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_matcher_set_all_ste_builders._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_matcher_set_ste_builders._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_matcher_select_builders(ptr nocapture noundef readonly %matcher, ptr noundef %nic_matcher, i32 noundef %outer_ipv, i32 noundef %inner_ipv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 3, i32 %outer_ipv, i32 %inner_ipv
  %ste_builder = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 2
  %0 = ptrtoint ptr %ste_builder to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx1, ptr %ste_builder, align 8
  %arrayidx3 = getelementptr %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 5, i32 %outer_ipv, i32 %inner_ipv
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx3, align 1
  %num_of_builders = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 4
  %3 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %num_of_builders, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_matcher_select_builders.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_matcher_select_builders, %if.then8)) #8
          to label %return [label %if.then8], !srcloc !45

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %matcher, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_matcher_select_builders.__UNIQUE_ID_ddebug544, ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 390, i32 noundef %17) #8
  br label %return

return:                                           ; preds = %if.then8, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ 0, %entry.return_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_matcher_add_to_tbl_nic(ptr noundef %dmn, ptr noundef %nic_matcher) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.mlx5dr_htbl_connect_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_tbl1 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 7
  %0 = ptrtoint ptr %nic_tbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_tbl1, align 8
  %list_node = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9
  %2 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list_node, align 4
  %cmp.i.not = icmp eq ptr %3, %list_node
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_matcher_list = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 3
  %prio4 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %first.0.off0 = phi i1 [ true, %if.end ], [ false, %for.body.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %nic_matcher_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn, %nic_matcher_list
  br i1 %cmp.not, label %if.else.thread, label %for.body

for.body:                                         ; preds = %for.cond
  %prio = getelementptr i8, ptr %.pn, i32 -4
  %5 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio, align 4
  %7 = ptrtoint ptr %prio4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prio4, align 4
  %cmp5.not = icmp ult i32 %6, %8
  br i1 %cmp5.not, label %for.body.for.cond_crit_edge, label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tmp_nic_matcher.0.le = getelementptr i8, ptr %.pn, i32 -2632
  %tobool13.not = icmp eq ptr %tmp_nic_matcher.0.le, null
  %brmerge = or i1 %first.0.off0, %tobool13.not
  br i1 %brmerge, label %if.else, label %if.then15

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev = getelementptr i8, ptr %.pn, i32 4
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %add.ptr19 = getelementptr i8, ptr %10, i32 -2632
  %nic_dmn2.i100 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %nic_dmn2.i100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nic_dmn2.i100, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #8
  %13 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  br label %if.then.i

if.else:                                          ; preds = %for.end
  br i1 %first.0.off0, label %if.end28, label %if.then21

if.else.thread:                                   ; preds = %for.cond
  br i1 %first.0.off0, label %if.end28.thread, label %if.then21.thread

if.end28.thread:                                  ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  %nic_dmn2.i117 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %nic_dmn2.i117 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nic_dmn2.i117, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #8
  br label %if.else.i.sink.split

if.then21.thread:                                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  %prev24111 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev24111 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev24111, align 4
  %add.ptr26112 = getelementptr i8, ptr %17, i32 -2632
  %nic_dmn2.i90113 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %nic_dmn2.i90113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nic_dmn2.i90113, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #8
  br label %if.else.i.sink.split

if.then21:                                        ; preds = %if.else
  %prev24 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev24, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 -2632
  %nic_dmn2.i90 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %nic_dmn2.i90 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nic_dmn2.i90, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #8
  %24 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  br i1 %tobool13.not, label %if.then21.if.else.i_crit_edge, label %if.then21.if.then.i_crit_edge

if.then21.if.then.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then21.if.else.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end28:                                         ; preds = %if.else
  %nic_dmn2.i = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %nic_dmn2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nic_dmn2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #8
  %27 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  br i1 %tobool13.not, label %if.end28.if.else.i_crit_edge, label %if.end28.if.then.i_crit_edge

if.end28.if.then.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end28.if.else.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %if.end28.if.then.i_crit_edge, %if.then21.if.then.i_crit_edge, %if.then15
  %28 = phi ptr [ %23, %if.then21.if.then.i_crit_edge ], [ %26, %if.end28.if.then.i_crit_edge ], [ %12, %if.then15 ]
  %prev_nic_matcher.098 = phi ptr [ %add.ptr26, %if.then21.if.then.i_crit_edge ], [ null, %if.end28.if.then.i_crit_edge ], [ %add.ptr19, %if.then15 ]
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %info.i, align 8
  %30 = ptrtoint ptr %tmp_nic_matcher.0.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tmp_nic_matcher.0.le, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %32, align 8
  br label %if.end.i

if.else.i.sink.split:                             ; preds = %if.then21.thread, %if.end28.thread
  %.ph = phi ptr [ %15, %if.end28.thread ], [ %19, %if.then21.thread ]
  %prev_nic_matcher.099.ph = phi ptr [ null, %if.end28.thread ], [ %add.ptr26112, %if.then21.thread ]
  %34 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i.sink.split, %if.end28.if.else.i_crit_edge, %if.then21.if.else.i_crit_edge
  %35 = phi ptr [ %23, %if.then21.if.else.i_crit_edge ], [ %26, %if.end28.if.else.i_crit_edge ], [ %.ph, %if.else.i.sink.split ]
  %prev_nic_matcher.099 = phi ptr [ %add.ptr26, %if.then21.if.else.i_crit_edge ], [ null, %if.end28.if.else.i_crit_edge ], [ %prev_nic_matcher.099.ph, %if.else.i.sink.split ]
  %36 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %info.i, align 8
  %default_icm_addr.i = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %default_icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %default_icm_addr.i, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %38, ptr %39, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %41 = phi ptr [ %35, %if.else.i ], [ %28, %if.then.i ]
  %prev_nic_matcher.097 = phi ptr [ %prev_nic_matcher.099, %if.else.i ], [ %prev_nic_matcher.098, %if.then.i ]
  %next_nic_matcher.08694 = phi ptr [ null, %if.else.i ], [ %tmp_nic_matcher.0.le, %if.then.i ]
  %tobool13.not8891 = phi i1 [ true, %if.else.i ], [ false, %if.then.i ]
  %e_anchor.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %42 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %e_anchor.i, align 4
  %44 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i74 = icmp eq i32 %45, 1
  %call.i = call i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr noundef %41, ptr noundef %43, ptr noundef nonnull %info.i, i1 noundef zeroext %cmp.i74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.dr_nic_matcher_connect.exit.thread_crit_edge

if.end.i.dr_nic_matcher_connect.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_nic_matcher_connect.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %46 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %info.i, align 8
  %47 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %e_anchor.i, align 4
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chunk.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %icm_addr.i, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %52, ptr %53, align 8
  %55 = ptrtoint ptr %nic_matcher to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nic_matcher, align 8
  %call11.i = call i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr noundef %41, ptr noundef %56, ptr noundef nonnull %info.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.dr_nic_matcher_connect.exit.thread_crit_edge

if.end7.i.dr_nic_matcher_connect.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_nic_matcher_connect.exit.thread

if.end14.i:                                       ; preds = %if.end7.i
  %tobool15.not.i = icmp eq ptr %prev_nic_matcher.097, null
  %e_anchor17.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %prev_nic_matcher.097, i32 0, i32 1
  %prev_htbl.0.in.i = select i1 %tobool15.not.i, ptr %1, ptr %e_anchor17.i
  %57 = ptrtoint ptr %prev_htbl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %prev_htbl.0.i = load ptr, ptr %prev_htbl.0.in.i, align 4
  %58 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %info.i, align 8
  %59 = ptrtoint ptr %nic_matcher to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nic_matcher, align 8
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %53, align 8
  %call22.i = call i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr noundef %41, ptr noundef %prev_htbl.0.i, ptr noundef nonnull %info.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end14.i.dr_nic_matcher_connect.exit.thread_crit_edge

if.end14.i.dr_nic_matcher_connect.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_nic_matcher_connect.exit.thread

if.end25.i:                                       ; preds = %if.end14.i
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %prev_htbl.0.i, i32 0, i32 4
  %62 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ste_arr.i, align 4
  %64 = ptrtoint ptr %nic_matcher to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nic_matcher, align 8
  %pointing_ste.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %pointing_ste.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %pointing_ste.i, align 4
  %67 = load ptr, ptr %nic_matcher, align 8
  %68 = load ptr, ptr %ste_arr.i, align 4
  %next_htbl.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %next_htbl.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %next_htbl.i, align 4
  br i1 %tobool13.not8891, label %if.end32, label %if.end32.thread

dr_nic_matcher_connect.exit.thread:               ; preds = %if.end14.i.dr_nic_matcher_connect.exit.thread_crit_edge, %if.end7.i.dr_nic_matcher_connect.exit.thread_crit_edge, %if.end.i.dr_nic_matcher_connect.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call22.i, %if.end14.i.dr_nic_matcher_connect.exit.thread_crit_edge ], [ %call11.i, %if.end7.i.dr_nic_matcher_connect.exit.thread_crit_edge ], [ %call.i, %if.end.i.dr_nic_matcher_connect.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end25.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #8
  br i1 %tobool15.not.i, label %if.else42, label %if.end32.if.then34_crit_edge

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end32.thread:                                  ; preds = %if.end25.i
  %70 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %e_anchor.i, align 4
  %ste_arr32.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ste_arr32.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ste_arr32.i, align 4
  %74 = ptrtoint ptr %next_nic_matcher.08694 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %next_nic_matcher.08694, align 8
  %pointing_ste34.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %pointing_ste34.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %pointing_ste34.i, align 4
  %77 = load ptr, ptr %next_nic_matcher.08694, align 8
  %78 = load ptr, ptr %e_anchor.i, align 4
  %ste_arr37.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ste_arr37.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ste_arr37.i, align 4
  %next_htbl39.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %next_htbl39.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %77, ptr %next_htbl39.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #8
  br i1 %tobool15.not.i, label %if.then39, label %if.end32.thread.if.then34_crit_edge

if.end32.thread.if.then34_crit_edge:              ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %if.end32.thread.if.then34_crit_edge, %if.end32.if.then34_crit_edge
  %list_node36 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %prev_nic_matcher.097, i32 0, i32 9
  %82 = ptrtoint ptr %list_node36 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %list_node36, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %list_node36, ptr noundef %83) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %list_node, ptr %prev1.i.i, align 4
  %85 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %83, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list_node36, ptr %prev3.i.i, align 4
  %87 = ptrtoint ptr %list_node36 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %list_node, ptr %list_node36, align 4
  br label %cleanup

if.then39:                                        ; preds = %if.end32.thread
  %list_node41 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %next_nic_matcher.08694, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %next_nic_matcher.08694, i32 0, i32 9, i32 1
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i, align 4
  %call.i.i75 = call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %89, ptr noundef %list_node41) #8
  br i1 %call.i.i75, label %if.end.i.i77, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i77:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %list_node, ptr %prev.i, align 4
  %91 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %list_node41, ptr %list_node, align 4
  %prev3.i.i76 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9, i32 1
  %92 = ptrtoint ptr %prev3.i.i76 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i76, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %list_node, ptr %89, align 4
  br label %cleanup

if.else42:                                        ; preds = %if.end32
  %94 = ptrtoint ptr %nic_tbl1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nic_tbl1, align 8
  %nic_matcher_list45 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %nic_matcher_list45 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nic_matcher_list45, align 4
  %call.i.i78 = call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %nic_matcher_list45, ptr noundef %97) #8
  br i1 %call.i.i78, label %if.end.i.i81, label %if.else42.cleanup_crit_edge

if.else42.cleanup_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i81:                                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i79 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i79 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %list_node, ptr %prev1.i.i79, align 4
  %99 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %97, ptr %list_node, align 4
  %prev3.i.i80 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9, i32 1
  %100 = ptrtoint ptr %prev3.i.i80 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %nic_matcher_list45, ptr %prev3.i.i80, align 4
  %101 = ptrtoint ptr %nic_matcher_list45 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %list_node, ptr %nic_matcher_list45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i81, %if.else42.cleanup_crit_edge, %if.end.i.i77, %if.then39.cleanup_crit_edge, %if.end.i.i, %if.then34.cleanup_crit_edge, %dr_nic_matcher_connect.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %dr_nic_matcher_connect.exit.thread ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.then39.cleanup_crit_edge ], [ 0, %if.end.i.i77 ], [ 0, %if.else42.cleanup_crit_edge ], [ 0, %if.end.i.i81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_matcher_create(ptr noundef %tbl, i32 noundef %priority, i8 noundef zeroext %match_criteria_enable, ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !46
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !47

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !48

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 5752) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %refcount_inc.exit.dec_ref_crit_edge, label %if.end

refcount_inc.exit.dec_ref_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_ref

if.end:                                           ; preds = %refcount_inc.exit
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tbl, ptr %call7.i.i, align 8
  %prio = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %priority, ptr %prio, align 8
  %match_criteria = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %match_criteria to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %match_criteria_enable, ptr %match_criteria, align 4
  %refcount2 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount2, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcount2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcount2, align 8
  %list_node = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_node, ptr %list_node, align 8
  %prev.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list_node, ptr %prev.i, align 4
  %dbg_rule_list = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %dbg_rule_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %dbg_rule_list, ptr %dbg_rule_list, align 4
  %prev.i26 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dbg_rule_list, ptr %prev.i26, align 8
  %11 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tbl, align 8
  %mutex.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  %mutex.i3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i, i32 noundef 0) #8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call.i = tail call fastcc i32 @dr_matcher_copy_param(ptr noundef nonnull %call7.i.i, ptr noundef %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.free_matcher_crit_edge

if.end.free_matcher_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_matcher

if.end.i:                                         ; preds = %if.end
  %type.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx.i = getelementptr inbounds %struct.mlx5dr_table, ptr %14, i32 0, i32 1
  %rx3.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 2
  %nic_tbl.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %nic_tbl.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx.i, ptr %nic_tbl.i, align 8
  br label %dr_matcher_init.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx.i = getelementptr inbounds %struct.mlx5dr_table, ptr %14, i32 0, i32 2
  %tx7.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 3
  %nic_tbl8.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %nic_tbl8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tx.i, ptr %nic_tbl8.i, align 8
  br label %dr_matcher_init.exit

sw.bb11.i:                                        ; preds = %if.end.i
  %rx12.i = getelementptr inbounds %struct.mlx5dr_table, ptr %14, i32 0, i32 1
  %nic_tbl14.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %nic_tbl14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx12.i, ptr %nic_tbl14.i, align 8
  %tx15.i = getelementptr inbounds %struct.mlx5dr_table, ptr %14, i32 0, i32 2
  %nic_tbl17.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %nic_tbl17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx15.i, ptr %nic_tbl17.i, align 8
  %rx.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call fastcc i32 @dr_matcher_init_nic(ptr noundef nonnull %call7.i.i, ptr noundef %rx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb11.i.free_matcher_crit_edge

sw.bb11.i.free_matcher_crit_edge:                 ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_matcher

if.end.i.i:                                       ; preds = %sw.bb11.i
  %tx.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 3
  %call1.i.i = tail call fastcc i32 @dr_matcher_init_nic(ptr noundef nonnull %call7.i.i, ptr noundef %tx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6_crit_edge, label %uninit_nic_rx.i.i

if.end.i.i.if.end6_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

uninit_nic_rx.i.i:                                ; preds = %if.end.i.i
  %24 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx.i.i, align 8
  %refcount.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcount.i.i.i.i, align 4
  %dec.i.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i.i, ptr %refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %uninit_nic_rx.i.i.mlx5dr_htbl_put.exit.i.i.i_crit_edge

uninit_nic_rx.i.i.mlx5dr_htbl_put.exit.i.i.i_crit_edge: ; preds = %uninit_nic_rx.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_htbl_put.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %uninit_nic_rx.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %25) #8
  br label %mlx5dr_htbl_put.exit.i.i.i

mlx5dr_htbl_put.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %uninit_nic_rx.i.i.mlx5dr_htbl_put.exit.i.i.i_crit_edge
  %e_anchor.i.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %call7.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %e_anchor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %e_anchor.i.i.i, align 4
  %refcount.i2.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %refcount.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %refcount.i2.i.i.i, align 4
  %dec.i3.i.i.i = add i32 %31, -1
  store i32 %dec.i3.i.i.i, ptr %refcount.i2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %dec.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %if.then.i6.i.i.i, label %mlx5dr_htbl_put.exit.i.i.i.free_matcher_crit_edge

mlx5dr_htbl_put.exit.i.i.i.free_matcher_crit_edge: ; preds = %mlx5dr_htbl_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_matcher

if.then.i6.i.i.i:                                 ; preds = %mlx5dr_htbl_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i5.i.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %29) #8
  br label %free_matcher

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 958, i32 noundef 9, ptr noundef null) #8
  br label %free_matcher

dr_matcher_init.exit:                             ; preds = %sw.bb6.i, %sw.bb.i
  %rx3.i.sink = phi ptr [ %rx3.i, %sw.bb.i ], [ %tx7.i, %sw.bb6.i ]
  %call5.i = tail call fastcc i32 @dr_matcher_init_nic(ptr noundef nonnull %call7.i.i, ptr noundef %rx3.i.sink) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool4.not = icmp eq i32 %call5.i, 0
  br i1 %tobool4.not, label %dr_matcher_init.exit.if.end6_crit_edge, label %dr_matcher_init.exit.free_matcher_crit_edge

dr_matcher_init.exit.free_matcher_crit_edge:      ; preds = %dr_matcher_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_matcher

dr_matcher_init.exit.if.end6_crit_edge:           ; preds = %dr_matcher_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %dr_matcher_init.exit.if.end6_crit_edge, %if.end.i.i.if.end6_crit_edge
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dump_info.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %35, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info.i, i32 noundef 0) #8
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %matcher_list.i = getelementptr inbounds %struct.mlx5dr_table, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %matcher_list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %matcher_list.i, align 4
  %call.i.i.i27 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %matcher_list.i, ptr noundef %39) #8
  br i1 %call.i.i.i27, label %if.end.i.i.i, label %if.end6.dr_matcher_add_to_dbg_list.exit_crit_edge

if.end6.dr_matcher_add_to_dbg_list.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_matcher_add_to_dbg_list.exit

if.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list_node, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %list_node, align 8
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %matcher_list.i, ptr %prev.i, align 4
  %43 = ptrtoint ptr %matcher_list.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list_node, ptr %matcher_list.i, align 4
  br label %dr_matcher_add_to_dbg_list.exit

dr_matcher_add_to_dbg_list.exit:                  ; preds = %if.end.i.i.i, %if.end6.dr_matcher_add_to_dbg_list.exit_crit_edge
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %dump_info4.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %47, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %dump_info4.i) #8
  %48 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tbl, align 8
  %mutex.i.i28 = getelementptr inbounds %struct.mlx5dr_domain, ptr %49, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i.i28) #8
  %mutex.i3.i29 = getelementptr inbounds %struct.mlx5dr_domain, ptr %49, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i29) #8
  br label %cleanup

free_matcher:                                     ; preds = %dr_matcher_init.exit.free_matcher_crit_edge, %do.end.i, %if.then.i6.i.i.i, %mlx5dr_htbl_put.exit.i.i.i.free_matcher_crit_edge, %sw.bb11.i.free_matcher_crit_edge, %if.end.free_matcher_crit_edge
  %50 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tbl, align 8
  %mutex.i.i30 = getelementptr inbounds %struct.mlx5dr_domain, ptr %51, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i.i30) #8
  %mutex.i3.i31 = getelementptr inbounds %struct.mlx5dr_domain, ptr %51, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i31) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %dec_ref

dec_ref:                                          ; preds = %free_matcher, %refcount_inc.exit.dec_ref_crit_edge
  %call.i.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !50
  %asmresult.i.i.i.i.i33 = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i33)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i33, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %dec_ref.cleanup_crit_edge, !prof !47

dec_ref.cleanup_crit_edge:                        ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i.i:                                     ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %dec_ref.cleanup_crit_edge, %dr_matcher_add_to_dbg_list.exit
  %retval.0 = phi ptr [ %call7.i.i, %dr_matcher_add_to_dbg_list.exit ], [ null, %dec_ref.cleanup_crit_edge ], [ null, %if.then3.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_matcher_remove_from_tbl_nic(ptr noundef %dmn, ptr noundef %nic_matcher) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.mlx5dr_htbl_connect_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_tbl1 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 7
  %0 = ptrtoint ptr %nic_tbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_tbl1, align 8
  %list_node = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9
  %2 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list_node, align 4
  %cmp.i.not = icmp eq ptr %3, %list_node
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_matcher_list = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 3
  %cmp.i35.not = icmp eq ptr %3, %nic_matcher_list
  %add.ptr = getelementptr i8, ptr %3, i32 -2632
  %prev = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %cmp = icmp eq ptr %5, %nic_matcher_list
  %add.ptr16 = getelementptr i8, ptr %5, i32 -2632
  %prev_nic_matcher.0 = select i1 %cmp, ptr null, ptr %add.ptr16
  %nic_dmn1.i = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nic_dmn1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_dmn1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #8
  %8 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  %tobool.not.i = icmp eq ptr %prev_nic_matcher.0, null
  %e_anchor.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %prev_nic_matcher.0, i32 0, i32 1
  %prev_anchor.0.in.i = select i1 %tobool.not.i, ptr %1, ptr %e_anchor.i
  %9 = ptrtoint ptr %prev_anchor.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %prev_anchor.0.i = load ptr, ptr %prev_anchor.0.in.i, align 4
  %tobool2.not.i37 = icmp eq ptr %add.ptr, null
  %tobool2.not.i = or i1 %cmp.i35.not, %tobool2.not.i37
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %info.i, align 8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %13, align 8
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %prev_anchor.0.i, i32 0, i32 4
  %15 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ste_arr.i, align 4
  %pointing_ste.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %12, i32 0, i32 8
  %17 = ptrtoint ptr %pointing_ste.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %pointing_ste.i, align 4
  %18 = load ptr, ptr %add.ptr, align 8
  br label %dr_matcher_disconnect_nic.exit

if.else7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %info.i, align 8
  %default_icm_addr.i = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %default_icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %default_icm_addr.i, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %21, ptr %22, align 8
  %ste_arr9.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %prev_anchor.0.i, i32 0, i32 4
  br label %dr_matcher_disconnect_nic.exit

dr_matcher_disconnect_nic.exit:                   ; preds = %if.else7.i, %if.then3.i
  %ste_arr9.sink.i = phi ptr [ %ste_arr9.i, %if.else7.i ], [ %ste_arr.i, %if.then3.i ]
  %.sink.i = phi ptr [ null, %if.else7.i ], [ %18, %if.then3.i ]
  %24 = ptrtoint ptr %ste_arr9.sink.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ste_arr9.sink.i, align 4
  %next_htbl11.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %next_htbl11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.sink.i, ptr %next_htbl11.i, align 4
  %call.i = call i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr noundef %7, ptr noundef %prev_anchor.0.i, ptr noundef nonnull %info.i, i1 noundef zeroext true) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %dr_matcher_disconnect_nic.exit.cleanup_crit_edge

dr_matcher_disconnect_nic.exit.cleanup_crit_edge: ; preds = %dr_matcher_disconnect_nic.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %dr_matcher_disconnect_nic.exit
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_del_init.exit_crit_edge

if.end21.list_del_init.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev, align 4
  %29 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end21.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list_node, ptr %list_node, align 4
  %34 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list_node, ptr %prev, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %dr_matcher_disconnect_nic.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_init.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %dr_matcher_disconnect_nic.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_matcher_destroy(ptr noundef %matcher) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %refcount = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b50 = load i1, ptr @mlx5dr_matcher_destroy.__already_done, align 1
  br i1 %.b50, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !48

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5dr_matcher_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1086, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end38:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %mutex.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  %mutex.i3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i, i32 noundef 0) #8
  %6 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %matcher, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dump_info.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info.i, i32 noundef 0) #8
  %list_node.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 4
  %call.i.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.i) #8
  br i1 %call.i.i.i52, label %if.end.i.i.i, label %if.end38.dr_matcher_remove_from_dbg_list.exit_crit_edge

if.end38.dr_matcher_remove_from_dbg_list.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_matcher_remove_from_dbg_list.exit

if.end.i.i.i:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %list_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %dr_matcher_remove_from_dbg_list.exit

dr_matcher_remove_from_dbg_list.exit:             ; preds = %if.end.i.i.i, %if.end38.dr_matcher_remove_from_dbg_list.exit_crit_edge
  %16 = ptrtoint ptr %list_node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %matcher, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %dump_info3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %21, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %dump_info3.i) #8
  %22 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %matcher, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %type.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %27, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %dr_matcher_remove_from_dbg_list.exit
  %rx.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 2
  %29 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx.i, align 8
  %refcount.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %refcount.i.i.i, align 4
  %dec.i.i.i = add i32 %32, -1
  store i32 %dec.i.i.i, ptr %refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %sw.bb.i.mlx5dr_htbl_put.exit.i.i_crit_edge

sw.bb.i.mlx5dr_htbl_put.exit.i.i_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_htbl_put.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i53 = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %30) #8
  br label %mlx5dr_htbl_put.exit.i.i

mlx5dr_htbl_put.exit.i.i:                         ; preds = %if.then.i.i.i, %sw.bb.i.mlx5dr_htbl_put.exit.i.i_crit_edge
  %e_anchor.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %e_anchor.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %e_anchor.i.i, align 4
  %refcount.i2.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %refcount.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %refcount.i2.i.i, align 4
  %dec.i3.i.i = add i32 %36, -1
  store i32 %dec.i3.i.i, ptr %refcount.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %dec.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %if.then.i6.i.i, label %mlx5dr_htbl_put.exit.i.i.dr_matcher_uninit.exit_crit_edge

mlx5dr_htbl_put.exit.i.i.dr_matcher_uninit.exit_crit_edge: ; preds = %mlx5dr_htbl_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_matcher_uninit.exit

if.then.i6.i.i:                                   ; preds = %mlx5dr_htbl_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i5.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %34) #8
  br label %dr_matcher_uninit.exit

sw.bb2.i:                                         ; preds = %dr_matcher_remove_from_dbg_list.exit
  %tx.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 3
  %37 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx.i, align 8
  %refcount.i.i22.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %refcount.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %refcount.i.i22.i, align 4
  %dec.i.i23.i = add i32 %40, -1
  store i32 %dec.i.i23.i, ptr %refcount.i.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i23.i)
  %tobool.not.i.i24.i = icmp eq i32 %dec.i.i23.i, 0
  br i1 %tobool.not.i.i24.i, label %if.then.i.i26.i, label %sw.bb2.i.mlx5dr_htbl_put.exit.i31.i_crit_edge

sw.bb2.i.mlx5dr_htbl_put.exit.i31.i_crit_edge:    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_htbl_put.exit.i31.i

if.then.i.i26.i:                                  ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i25.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %38) #8
  br label %mlx5dr_htbl_put.exit.i31.i

mlx5dr_htbl_put.exit.i31.i:                       ; preds = %if.then.i.i26.i, %sw.bb2.i.mlx5dr_htbl_put.exit.i31.i_crit_edge
  %e_anchor.i27.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %e_anchor.i27.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %e_anchor.i27.i, align 4
  %refcount.i2.i28.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %refcount.i2.i28.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %refcount.i2.i28.i, align 4
  %dec.i3.i29.i = add i32 %44, -1
  store i32 %dec.i3.i29.i, ptr %refcount.i2.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i3.i29.i)
  %tobool.not.i4.i30.i = icmp eq i32 %dec.i3.i29.i, 0
  br i1 %tobool.not.i4.i30.i, label %if.then.i6.i33.i, label %mlx5dr_htbl_put.exit.i31.i.dr_matcher_uninit.exit_crit_edge

mlx5dr_htbl_put.exit.i31.i.dr_matcher_uninit.exit_crit_edge: ; preds = %mlx5dr_htbl_put.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_matcher_uninit.exit

if.then.i6.i33.i:                                 ; preds = %mlx5dr_htbl_put.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i5.i32.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %42) #8
  br label %dr_matcher_uninit.exit

sw.bb3.i:                                         ; preds = %dr_matcher_remove_from_dbg_list.exit
  %rx.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 2
  %45 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx.i.i, align 8
  %refcount.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %refcount.i.i.i.i, align 4
  %dec.i.i.i.i = add i32 %48, -1
  store i32 %dec.i.i.i.i, ptr %refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %sw.bb3.i.mlx5dr_htbl_put.exit.i.i.i_crit_edge

sw.bb3.i.mlx5dr_htbl_put.exit.i.i.i_crit_edge:    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_htbl_put.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %46) #8
  br label %mlx5dr_htbl_put.exit.i.i.i

mlx5dr_htbl_put.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %sw.bb3.i.mlx5dr_htbl_put.exit.i.i.i_crit_edge
  %e_anchor.i.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %e_anchor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %e_anchor.i.i.i, align 4
  %refcount.i2.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %refcount.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %refcount.i2.i.i.i, align 4
  %dec.i3.i.i.i = add i32 %52, -1
  store i32 %dec.i3.i.i.i, ptr %refcount.i2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %dec.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %if.then.i6.i.i.i, label %mlx5dr_htbl_put.exit.i.i.i.dr_matcher_uninit_nic.exit.i.i_crit_edge

mlx5dr_htbl_put.exit.i.i.i.dr_matcher_uninit_nic.exit.i.i_crit_edge: ; preds = %mlx5dr_htbl_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_matcher_uninit_nic.exit.i.i

if.then.i6.i.i.i:                                 ; preds = %mlx5dr_htbl_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i5.i.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %50) #8
  br label %dr_matcher_uninit_nic.exit.i.i

dr_matcher_uninit_nic.exit.i.i:                   ; preds = %if.then.i6.i.i.i, %mlx5dr_htbl_put.exit.i.i.i.dr_matcher_uninit_nic.exit.i.i_crit_edge
  %tx.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 3
  %53 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx.i.i, align 8
  %refcount.i.i2.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %refcount.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refcount.i.i2.i.i, align 4
  %dec.i.i3.i.i = add i32 %56, -1
  store i32 %dec.i.i3.i.i, ptr %refcount.i.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i3.i.i)
  %tobool.not.i.i4.i.i = icmp eq i32 %dec.i.i3.i.i, 0
  br i1 %tobool.not.i.i4.i.i, label %if.then.i.i6.i.i, label %dr_matcher_uninit_nic.exit.i.i.mlx5dr_htbl_put.exit.i11.i.i_crit_edge

dr_matcher_uninit_nic.exit.i.i.mlx5dr_htbl_put.exit.i11.i.i_crit_edge: ; preds = %dr_matcher_uninit_nic.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_htbl_put.exit.i11.i.i

if.then.i.i6.i.i:                                 ; preds = %dr_matcher_uninit_nic.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i5.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %54) #8
  br label %mlx5dr_htbl_put.exit.i11.i.i

mlx5dr_htbl_put.exit.i11.i.i:                     ; preds = %if.then.i.i6.i.i, %dr_matcher_uninit_nic.exit.i.i.mlx5dr_htbl_put.exit.i11.i.i_crit_edge
  %e_anchor.i7.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %e_anchor.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %e_anchor.i7.i.i, align 4
  %refcount.i2.i8.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %refcount.i2.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %refcount.i2.i8.i.i, align 4
  %dec.i3.i9.i.i = add i32 %60, -1
  store i32 %dec.i3.i9.i.i, ptr %refcount.i2.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i3.i9.i.i)
  %tobool.not.i4.i10.i.i = icmp eq i32 %dec.i3.i9.i.i, 0
  br i1 %tobool.not.i4.i10.i.i, label %if.then.i6.i13.i.i, label %mlx5dr_htbl_put.exit.i11.i.i.dr_matcher_uninit.exit_crit_edge

mlx5dr_htbl_put.exit.i11.i.i.dr_matcher_uninit.exit_crit_edge: ; preds = %mlx5dr_htbl_put.exit.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_matcher_uninit.exit

if.then.i6.i13.i.i:                               ; preds = %mlx5dr_htbl_put.exit.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i5.i12.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %58) #8
  br label %dr_matcher_uninit.exit

do.end.i:                                         ; preds = %dr_matcher_remove_from_dbg_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 806, i32 noundef 9, ptr noundef null) #8
  br label %dr_matcher_uninit.exit

dr_matcher_uninit.exit:                           ; preds = %do.end.i, %if.then.i6.i13.i.i, %mlx5dr_htbl_put.exit.i11.i.i.dr_matcher_uninit.exit_crit_edge, %if.then.i6.i33.i, %mlx5dr_htbl_put.exit.i31.i.dr_matcher_uninit.exit_crit_edge, %if.then.i6.i.i, %mlx5dr_htbl_put.exit.i.i.dr_matcher_uninit.exit_crit_edge
  %61 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %matcher, align 8
  %refcount40 = getelementptr inbounds %struct.mlx5dr_table, ptr %62, i32 0, i32 9
  %call.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount40, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %refcount40, i32 1, i32 3, i32 1) #8
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount40, ptr %refcount40, i32 1, ptr elementtype(i32) %refcount40) #8, !srcloc !50
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %dr_matcher_uninit.exit.refcount_dec.exit_crit_edge, !prof !47

dr_matcher_uninit.exit.refcount_dec.exit_crit_edge: ; preds = %dr_matcher_uninit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %dr_matcher_uninit.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount40, i32 noundef 4) #8
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %dr_matcher_uninit.exit.refcount_dec.exit_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %mutex.i.i55 = getelementptr inbounds %struct.mlx5dr_domain, ptr %65, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i.i55) #8
  %mutex.i3.i56 = getelementptr inbounds %struct.mlx5dr_domain, ptr %65, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i56) #8
  tail call void @kfree(ptr noundef %matcher) #8
  br label %cleanup

cleanup:                                          ; preds = %refcount_dec.exit, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %refcount_dec.exit ], [ -16, %if.then ], [ -16, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_matcher_copy_param(ptr noundef %matcher, ptr noundef readonly %mask) unnamed_addr #0 align 64 {
entry:
  %consumed_mask = alloca %struct.mlx5dr_match_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %consumed_mask) #8
  %4 = getelementptr inbounds %struct.mlx5dr_match_parameters, ptr %consumed_mask, i32 0, i32 1
  %match_criteria = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 7
  %5 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %match_criteria, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp slt i8 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 896, i32 noundef %16) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %mask, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %18)
  %cmp4 = icmp ugt i32 %18, 448
  br i1 %cmp4, label %do.end9, label %if.end8.i.i

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %mdev10 = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %mdev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev10, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i67 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i67 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task13, align 8
  %pid14 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 902, i32 noundef %28) #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.then3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #13
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %4, align 4
  %tobool19.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool19.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end21

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end8.i.i
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %32 = ptrtoint ptr %consumed_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %consumed_mask, align 4
  %match_buf25 = getelementptr inbounds %struct.mlx5dr_match_parameters, ptr %mask, i32 0, i32 1
  %33 = ptrtoint ptr %match_buf25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %match_buf25, align 4
  %35 = call ptr @memcpy(ptr %call9.i.i, ptr %34, i32 %31)
  %36 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %match_criteria, align 4
  %mask28 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6
  call void @mlx5dr_ste_copy_param(i8 noundef zeroext %37, ptr noundef %mask28, ptr noundef nonnull %consumed_mask, i1 noundef zeroext true) #8
  %38 = ptrtoint ptr %consumed_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %consumed_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp3073.not = icmp eq i32 %39, 0
  br i1 %cmp3073.not, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %39
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %41, i32 %i.074
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool33.not = icmp eq i8 %43, 0
  br i1 %tobool33.not, label %for.cond, label %do.body36

do.body36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_matcher_copy_param.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_matcher_copy_param, %if.then41)) #8
          to label %for.end [label %if.then41], !srcloc !45

if.then41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %mdev42 = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %mdev42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev42, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %48 = call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i68 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i68 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task45, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid46, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_matcher_copy_param.__UNIQUE_ID_ddebug546, ptr noundef %47, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef 921, i32 noundef %53) #8
  br label %for.end

for.end:                                          ; preds = %if.then41, %do.body36, %for.cond.for.end_crit_edge, %if.end21.for.end_crit_edge
  %ret.0 = phi i32 [ -95, %if.then41 ], [ -95, %do.body36 ], [ 0, %if.end21.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %55) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.i.i.cleanup_crit_edge, %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %ret.0, %for.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %consumed_mask) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_matcher_init_nic(ptr noundef %matcher, ptr noundef %nic_matcher) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %prio = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 5
  %4 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio, align 8
  %prio2 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 8
  %6 = ptrtoint ptr %prio2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %prio2, align 4
  %list_node = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9
  %7 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_node, ptr %list_node, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list_node, ptr %prev.i, align 4
  %9 = load ptr, ptr %matcher, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call fastcc void @dr_matcher_set_ste_builders(ptr noundef %matcher, ptr noundef %nic_matcher, i32 noundef 0, i32 noundef 0) #8
  tail call fastcc void @dr_matcher_set_ste_builders(ptr noundef %matcher, ptr noundef %nic_matcher, i32 noundef 0, i32 noundef 1) #8
  tail call fastcc void @dr_matcher_set_ste_builders(ptr noundef %matcher, ptr noundef %nic_matcher, i32 noundef 1, i32 noundef 0) #8
  tail call fastcc void @dr_matcher_set_ste_builders(ptr noundef %matcher, ptr noundef %nic_matcher, i32 noundef 1, i32 noundef 1) #8
  %ste_builder.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 2
  %12 = ptrtoint ptr %ste_builder.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ste_builder.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %dr_matcher_set_all_ste_builders.exit, label %if.end

dr_matcher_set_all_ste_builders.exit:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 822, i32 noundef %23) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ste_icm_pool = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %ste_icm_pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ste_icm_pool, align 8
  %call3 = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %25, i32 noundef 0, i16 noundef zeroext 15, i16 noundef zeroext 0) #8
  %e_anchor = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %26 = ptrtoint ptr %e_anchor to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call3, ptr %e_anchor, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %27 = ptrtoint ptr %ste_icm_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ste_icm_pool, align 8
  %29 = ptrtoint ptr %ste_builder.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ste_builder.i, align 8
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %lu_type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lu_type, align 4
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %byte_mask to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %byte_mask, align 2
  %call11 = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %28, i32 noundef 0, i16 noundef zeroext %32, i16 noundef zeroext %34) #8
  %35 = ptrtoint ptr %nic_matcher to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call11, ptr %nic_matcher, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %e_anchor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %e_anchor, align 4
  %call19 = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %37) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call11, i32 0, i32 2
  %38 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  %40 = ptrtoint ptr %e_anchor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %e_anchor, align 4
  %refcount.i37 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %refcount.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %refcount.i37, align 4
  %inc.i38 = add i32 %43, 1
  store i32 %inc.i38, ptr %refcount.i37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end.cleanup_crit_edge, %dr_matcher_set_all_ste_builders.exit
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.then14 ], [ -22, %dr_matcher_set_all_ste_builders.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_copy_param(i8 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_ste_htbl_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_htbl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_matcher_set_ste_builders(ptr noundef %matcher, ptr noundef %nic_matcher, i32 noundef %outer_ipv, i32 noundef %inner_ipv) unnamed_addr #0 align 64 {
entry:
  %mask = alloca %struct.mlx5dr_match_param, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_tbl = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 7
  %0 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_tbl, align 8
  %nic_dmn1 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nic_dmn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_dmn1, align 4
  %4 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %matcher, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ste_ctx3 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %ste_ctx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ste_ctx3, align 4
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %mask) #8
  %10 = call ptr @memset(ptr %mask, i32 0, i32 416)
  %arrayidx4 = getelementptr %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 3, i32 %outer_ipv, i32 %inner_ipv
  %type = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %match_criteria = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 7
  %13 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %match_criteria, align 4
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mask5 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %mask, ptr %mask5, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %misc13 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 1
  %18 = call ptr @memcpy(ptr %misc, ptr %misc13, i32 64)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %19 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.end14.if.end23_crit_edge, label %if.then19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %inner20 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %inner22 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 2
  %20 = call ptr @memcpy(ptr %inner20, ptr %inner22, i32 64)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  %21 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not = icmp eq i8 %21, 0
  br i1 %tobool27.not, label %if.end23.if.end31_crit_edge, label %if.then28

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %misc2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %misc230 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 3
  %22 = call ptr @memcpy(ptr %misc2, ptr %misc230, i32 64)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end23.if.end31_crit_edge
  %23 = and i8 %14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool35.not = icmp eq i8 %23, 0
  br i1 %tobool35.not, label %if.end31.if.end39_crit_edge, label %if.then36

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %misc3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4
  %misc338 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 4
  %24 = call ptr @memcpy(ptr %misc3, ptr %misc338, i32 64)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end31.if.end39_crit_edge
  %25 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool43.not = icmp eq i8 %25, 0
  br i1 %tobool43.not, label %if.end39.if.end47_crit_edge, label %if.then44

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %misc4 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5
  %misc446 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 5
  %26 = call ptr @memcpy(ptr %misc4, ptr %misc446, i32 64)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge
  %27 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51.not = icmp eq i8 %27, 0
  br i1 %tobool51.not, label %if.end47.if.end55_crit_edge, label %if.then52

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %misc5 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6
  %misc554 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 6
  %28 = call ptr @memcpy(ptr %misc5, ptr %misc554, i32 32)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end47.if.end55_crit_edge
  %mask57 = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6
  %call = tail call i32 @mlx5dr_ste_build_pre_check(ptr noundef %7, i8 noundef zeroext %14, ptr noundef %mask57, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool58.not = icmp eq i32 %call, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %type61 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 4
  %29 = ptrtoint ptr %type61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp62 = icmp ne i32 %30, 2
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp62, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.end60.if.end77_crit_edge, label %land.lhs.true66

if.end60.if.end77_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true66:                                  ; preds = %if.end60
  %misc67 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %31 = ptrtoint ptr %misc67 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 44)
  %bf.load = load i352, ptr %misc67, align 4
  %32 = and i352 %bf.load, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  %tobool68.not = icmp eq i352 %32, 0
  br i1 %tobool68.not, label %land.lhs.true66.if.end77_crit_edge, label %if.then69

land.lhs.true66.if.end77_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear75 = and i352 %bf.load, -2135987035423586845985235064014169866455883682256196619149693890381755748887481053010428711403521
  %33 = ptrtoint ptr %misc67 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 44)
  store i352 %bf.clear75, ptr %misc67, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %land.lhs.true66.if.end77_crit_edge, %if.end60.if.end77_crit_edge
  %allow_empty_match.0.off0 = phi i1 [ false, %if.then69 ], [ true, %land.lhs.true66.if.end77_crit_edge ], [ true, %if.end60.if.end77_crit_edge ]
  %34 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %match_criteria, align 4
  %36 = and i8 %35, 91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool81.not = icmp eq i8 %36, 0
  br i1 %tobool81.not, label %if.end77.if.end468_crit_edge, label %if.then82

if.end77.if.end468_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

if.then82:                                        ; preds = %if.end77
  %misc283 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %metadata_reg_a.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 9
  %37 = ptrtoint ptr %metadata_reg_a.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %metadata_reg_a.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %if.then82.if.end89_crit_edge, label %if.then85

if.then82.if.end89_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then85:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  call void @mlx5dr_ste_build_general_purpose(ptr noundef %9, ptr noundef %arrayidx4, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.then82.if.end89_crit_edge
  %idx.0 = phi i32 [ 1, %if.then85 ], [ 0, %if.then82.if.end89_crit_edge ]
  %metadata_reg_c_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %metadata_reg_c_0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %metadata_reg_c_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end89.if.then92_crit_edge

if.end89.if.then92_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

lor.lhs.false.i:                                  ; preds = %if.end89
  %metadata_reg_c_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 7
  %41 = ptrtoint ptr %metadata_reg_c_1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %metadata_reg_c_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.not.i = icmp eq i32 %42, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then92_crit_edge

lor.lhs.false.i.if.then92_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %metadata_reg_c_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 6
  %43 = ptrtoint ptr %metadata_reg_c_2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %metadata_reg_c_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.i = icmp eq i32 %44, 0
  br i1 %tobool3.not.i, label %dr_mask_is_reg_c_0_3_set.exit, label %lor.lhs.false2.i.if.then92_crit_edge

lor.lhs.false2.i.if.then92_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

dr_mask_is_reg_c_0_3_set.exit:                    ; preds = %lor.lhs.false2.i
  %metadata_reg_c_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 5
  %45 = ptrtoint ptr %metadata_reg_c_3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %metadata_reg_c_3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.i.not = icmp eq i32 %46, 0
  br i1 %tobool4.i.not, label %dr_mask_is_reg_c_0_3_set.exit.if.end97_crit_edge, label %dr_mask_is_reg_c_0_3_set.exit.if.then92_crit_edge

dr_mask_is_reg_c_0_3_set.exit.if.then92_crit_edge: ; preds = %dr_mask_is_reg_c_0_3_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

dr_mask_is_reg_c_0_3_set.exit.if.end97_crit_edge: ; preds = %dr_mask_is_reg_c_0_3_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then92:                                        ; preds = %dr_mask_is_reg_c_0_3_set.exit.if.then92_crit_edge, %lor.lhs.false2.i.if.then92_crit_edge, %lor.lhs.false.i.if.then92_crit_edge, %if.end89.if.then92_crit_edge
  %inc93 = add nuw nsw i32 %idx.0, 1
  %arrayidx94 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.0
  call void @mlx5dr_ste_build_register_0(ptr noundef %9, ptr noundef %arrayidx94, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %dr_mask_is_reg_c_0_3_set.exit.if.end97_crit_edge
  %idx.1 = phi i32 [ %inc93, %if.then92 ], [ %idx.0, %dr_mask_is_reg_c_0_3_set.exit.if.end97_crit_edge ]
  %metadata_reg_c_4.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %metadata_reg_c_4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %metadata_reg_c_4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i59 = icmp eq i32 %48, 0
  br i1 %tobool.not.i59, label %lor.lhs.false.i61, label %if.end97.if.then100_crit_edge

if.end97.if.then100_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

lor.lhs.false.i61:                                ; preds = %if.end97
  %metadata_reg_c_5.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %metadata_reg_c_5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %metadata_reg_c_5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not.i60 = icmp eq i32 %50, 0
  br i1 %tobool1.not.i60, label %lor.lhs.false2.i63, label %lor.lhs.false.i61.if.then100_crit_edge

lor.lhs.false.i61.if.then100_crit_edge:           ; preds = %lor.lhs.false.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

lor.lhs.false2.i63:                               ; preds = %lor.lhs.false.i61
  %metadata_reg_c_6.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %metadata_reg_c_6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %metadata_reg_c_6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool3.not.i62 = icmp eq i32 %52, 0
  br i1 %tobool3.not.i62, label %dr_mask_is_reg_c_4_7_set.exit, label %lor.lhs.false2.i63.if.then100_crit_edge

lor.lhs.false2.i63.if.then100_crit_edge:          ; preds = %lor.lhs.false2.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

dr_mask_is_reg_c_4_7_set.exit:                    ; preds = %lor.lhs.false2.i63
  %metadata_reg_c_7.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %metadata_reg_c_7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %metadata_reg_c_7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool4.i64.not = icmp eq i32 %54, 0
  br i1 %tobool4.i64.not, label %dr_mask_is_reg_c_4_7_set.exit.if.end105_crit_edge, label %dr_mask_is_reg_c_4_7_set.exit.if.then100_crit_edge

dr_mask_is_reg_c_4_7_set.exit.if.then100_crit_edge: ; preds = %dr_mask_is_reg_c_4_7_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

dr_mask_is_reg_c_4_7_set.exit.if.end105_crit_edge: ; preds = %dr_mask_is_reg_c_4_7_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then100:                                       ; preds = %dr_mask_is_reg_c_4_7_set.exit.if.then100_crit_edge, %lor.lhs.false2.i63.if.then100_crit_edge, %lor.lhs.false.i61.if.then100_crit_edge, %if.end97.if.then100_crit_edge
  %inc101 = add nuw nsw i32 %idx.1, 1
  %arrayidx102 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.1
  call void @mlx5dr_ste_build_register_1(ptr noundef %9, ptr noundef %arrayidx102, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %dr_mask_is_reg_c_4_7_set.exit.if.end105_crit_edge
  %idx.2 = phi i32 [ %inc101, %if.then100 ], [ %idx.1, %dr_mask_is_reg_c_4_7_set.exit.if.end105_crit_edge ]
  %misc106 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %55 = ptrtoint ptr %misc106 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 44)
  %bf.load.i = load i352, ptr %misc106, align 4
  %56 = and i352 %bf.load.i, 35835913738890423526307109461667055256026515256805853595589559851041522923388542553090206244149185740800
  %.not = icmp eq i352 %56, 0
  br i1 %.not, label %if.end105.if.end121_crit_edge, label %land.lhs.true109

if.end105.if.end121_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

land.lhs.true109:                                 ; preds = %if.end105
  %57 = ptrtoint ptr %type61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type61, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %58, label %land.lhs.true109.if.end121_crit_edge [
    i32 2, label %land.lhs.true109.if.then116_crit_edge
    i32 0, label %land.lhs.true109.if.then116_crit_edge299
  ]

land.lhs.true109.if.then116_crit_edge299:         ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then116

land.lhs.true109.if.then116_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then116

land.lhs.true109.if.end121_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then116:                                       ; preds = %land.lhs.true109.if.then116_crit_edge, %land.lhs.true109.if.then116_crit_edge299
  %inc117 = add nuw nsw i32 %idx.2, 1
  %arrayidx118 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.2
  call void @mlx5dr_ste_build_src_gvmi_qpn(ptr noundef %9, ptr noundef %arrayidx118, ptr noundef nonnull %mask, ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %land.lhs.true109.if.end121_crit_edge, %if.end105.if.end121_crit_edge
  %idx.3 = phi i32 [ %inc117, %if.then116 ], [ %idx.2, %land.lhs.true109.if.end121_crit_edge ], [ %idx.2, %if.end105.if.end121_crit_edge ]
  %60 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i68 = icmp eq i32 %61, 0
  br i1 %tobool.not.i68, label %dr_mask_is_smac_set.exit, label %if.end121.land.lhs.true125_crit_edge

if.end121.land.lhs.true125_crit_edge:             ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true125

dr_mask_is_smac_set.exit:                         ; preds = %if.end121
  %smac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 1
  %62 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i69 = load i32, ptr %smac_15_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i69)
  %tobool1.i = icmp ugt i32 %bf.load.i69, 65535
  br i1 %tobool1.i, label %dr_mask_is_smac_set.exit.land.lhs.true125_crit_edge, label %dr_mask_is_smac_set.exit.if.end134_crit_edge

dr_mask_is_smac_set.exit.if.end134_crit_edge:     ; preds = %dr_mask_is_smac_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

dr_mask_is_smac_set.exit.land.lhs.true125_crit_edge: ; preds = %dr_mask_is_smac_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true125

land.lhs.true125:                                 ; preds = %dr_mask_is_smac_set.exit.land.lhs.true125_crit_edge, %if.end121.land.lhs.true125_crit_edge
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 2
  %63 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i71 = icmp eq i32 %64, 0
  br i1 %tobool.not.i71, label %dr_mask_is_dmac_set.exit, label %land.lhs.true125.if.then129_crit_edge

land.lhs.true125.if.then129_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

dr_mask_is_dmac_set.exit:                         ; preds = %land.lhs.true125
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 3
  %65 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 20)
  %bf.load.i72 = load i160, ptr %dmac_15_0.i, align 4
  %tobool1.i73 = icmp ugt i160 %bf.load.i72, 22300745198530623141535718272648361505980415
  br i1 %tobool1.i73, label %dr_mask_is_dmac_set.exit.if.then129_crit_edge, label %dr_mask_is_dmac_set.exit.if.end134_crit_edge

dr_mask_is_dmac_set.exit.if.end134_crit_edge:     ; preds = %dr_mask_is_dmac_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

dr_mask_is_dmac_set.exit.if.then129_crit_edge:    ; preds = %dr_mask_is_dmac_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

if.then129:                                       ; preds = %dr_mask_is_dmac_set.exit.if.then129_crit_edge, %land.lhs.true125.if.then129_crit_edge
  %inc130 = add nuw nsw i32 %idx.3, 1
  %arrayidx131 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.3
  call void @mlx5dr_ste_build_eth_l2_src_dst(ptr noundef %9, ptr noundef %arrayidx131, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %dr_mask_is_dmac_set.exit.if.end134_crit_edge, %dr_mask_is_smac_set.exit.if.end134_crit_edge
  %idx.4 = phi i32 [ %inc130, %if.then129 ], [ %idx.3, %dr_mask_is_dmac_set.exit.if.end134_crit_edge ], [ %idx.3, %dr_mask_is_smac_set.exit.if.end134_crit_edge ]
  %66 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i75 = icmp eq i32 %67, 0
  br i1 %tobool.not.i75, label %dr_mask_is_smac_set.exit80, label %if.end134.if.then137_crit_edge

if.end134.if.then137_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

dr_mask_is_smac_set.exit80:                       ; preds = %if.end134
  %smac_15_0.i76 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 1
  %68 = ptrtoint ptr %smac_15_0.i76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.i77 = load i32, ptr %smac_15_0.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i77)
  %tobool1.i78 = icmp ugt i32 %bf.load.i77, 65535
  br i1 %tobool1.i78, label %dr_mask_is_smac_set.exit80.if.then137_crit_edge, label %dr_mask_is_smac_set.exit80.if.end142_crit_edge

dr_mask_is_smac_set.exit80.if.end142_crit_edge:   ; preds = %dr_mask_is_smac_set.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

dr_mask_is_smac_set.exit80.if.then137_crit_edge:  ; preds = %dr_mask_is_smac_set.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

if.then137:                                       ; preds = %dr_mask_is_smac_set.exit80.if.then137_crit_edge, %if.end134.if.then137_crit_edge
  %inc138 = add nuw nsw i32 %idx.4, 1
  %arrayidx139 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.4
  call void @mlx5dr_ste_build_eth_l2_src(ptr noundef %9, ptr noundef %arrayidx139, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end142

if.end142:                                        ; preds = %if.then137, %dr_mask_is_smac_set.exit80.if.end142_crit_edge
  %idx.5 = phi i32 [ %inc138, %if.then137 ], [ %idx.4, %dr_mask_is_smac_set.exit80.if.end142_crit_edge ]
  %first_vid = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 3
  %69 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %69, i32 20)
  %bf.load144 = load i160, ptr %first_vid, align 4
  %70 = and i160 %bf.load144, 22300404920057924846973375619438801984684032
  %71 = icmp eq i160 %70, 0
  br i1 %71, label %lor.lhs.false177, label %if.end142.if.then233_crit_edge

if.end142.if.then233_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then233

lor.lhs.false177:                                 ; preds = %if.end142
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 2
  %72 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool179.not = icmp eq i32 %73, 0
  %tobool185.not = icmp ult i160 %bf.load144, 22300745198530623141535718272648361505980416
  %or.cond36 = select i1 %tobool179.not, i1 %tobool185.not, i1 false
  br i1 %or.cond36, label %lor.lhs.false186, label %lor.lhs.false177.if.then233_crit_edge

lor.lhs.false177.if.then233_crit_edge:            ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then233

lor.lhs.false186:                                 ; preds = %lor.lhs.false177
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 1
  %74 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load188 = load i32, ptr %ethertype, align 4
  %bf.clear189 = and i32 %bf.load188, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear189)
  %tobool190.not = icmp eq i32 %bf.clear189, 0
  %75 = and i160 %bf.load144, 608472288109550112718417538580480
  %tobool197.not = icmp eq i160 %75, 0
  %or.cond37 = select i1 %tobool190.not, i1 %tobool197.not, i1 false
  br i1 %or.cond37, label %lor.lhs.false198, label %lor.lhs.false186.if.then233_crit_edge

lor.lhs.false186.if.then233_crit_edge:            ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then233

lor.lhs.false198:                                 ; preds = %lor.lhs.false186
  %76 = ptrtoint ptr %misc106 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 44)
  %bf.load200 = load i352, ptr %misc106, align 4
  %77 = and i352 %bf.load200, 497315647931796441174521591138479176360157021303926410436484439525594944422614998712320
  %78 = icmp eq i352 %77, 0
  br i1 %78, label %lor.lhs.false198.if.end238_crit_edge, label %lor.lhs.false198.if.then233_crit_edge

lor.lhs.false198.if.then233_crit_edge:            ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then233

lor.lhs.false198.if.end238_crit_edge:             ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.then233:                                       ; preds = %lor.lhs.false198.if.then233_crit_edge, %lor.lhs.false186.if.then233_crit_edge, %lor.lhs.false177.if.then233_crit_edge, %if.end142.if.then233_crit_edge
  %inc234 = add nuw nsw i32 %idx.5, 1
  %arrayidx235 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.5
  call void @mlx5dr_ste_build_eth_l2_dst(ptr noundef %9, ptr noundef %arrayidx235, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end238

if.end238:                                        ; preds = %if.then233, %lor.lhs.false198.if.end238_crit_edge
  %idx.6 = phi i32 [ %inc234, %if.then233 ], [ %idx.5, %lor.lhs.false198.if.end238_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %outer_ipv)
  %cmp239 = icmp eq i32 %outer_ipv, 1
  br i1 %cmp239, label %if.then241, label %if.else

if.then241:                                       ; preds = %if.end238
  %dst_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 8
  %79 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dst_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool243.not = icmp eq i32 %80, 0
  br i1 %tobool243.not, label %lor.lhs.false244, label %if.then241.if.then253_crit_edge

if.then241.if.then253_crit_edge:                  ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then253

lor.lhs.false244:                                 ; preds = %if.then241
  %dst_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 9
  %81 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dst_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool246.not = icmp eq i32 %82, 0
  br i1 %tobool246.not, label %lor.lhs.false247, label %lor.lhs.false244.if.then253_crit_edge

lor.lhs.false244.if.then253_crit_edge:            ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then253

lor.lhs.false247:                                 ; preds = %lor.lhs.false244
  %dst_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 10
  %83 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dst_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool249.not = icmp eq i32 %84, 0
  br i1 %tobool249.not, label %lor.lhs.false250, label %lor.lhs.false247.if.then253_crit_edge

lor.lhs.false247.if.then253_crit_edge:            ; preds = %lor.lhs.false247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then253

lor.lhs.false250:                                 ; preds = %lor.lhs.false247
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 11
  %85 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dst_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool252.not = icmp eq i32 %86, 0
  br i1 %tobool252.not, label %lor.lhs.false250.if.end258_crit_edge, label %lor.lhs.false250.if.then253_crit_edge

lor.lhs.false250.if.then253_crit_edge:            ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then253

lor.lhs.false250.if.end258_crit_edge:             ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258

if.then253:                                       ; preds = %lor.lhs.false250.if.then253_crit_edge, %lor.lhs.false247.if.then253_crit_edge, %lor.lhs.false244.if.then253_crit_edge, %if.then241.if.then253_crit_edge
  %inc254 = add nuw nsw i32 %idx.6, 1
  %arrayidx255 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.6
  call void @mlx5dr_ste_build_eth_l3_ipv6_dst(ptr noundef %9, ptr noundef %arrayidx255, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end258

if.end258:                                        ; preds = %if.then253, %lor.lhs.false250.if.end258_crit_edge
  %idx.7 = phi i32 [ %inc254, %if.then253 ], [ %idx.6, %lor.lhs.false250.if.end258_crit_edge ]
  %src_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 4
  %87 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %src_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool260.not = icmp eq i32 %88, 0
  br i1 %tobool260.not, label %lor.lhs.false261, label %if.end258.if.then270_crit_edge

if.end258.if.then270_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then270

lor.lhs.false261:                                 ; preds = %if.end258
  %src_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 5
  %89 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %src_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool263.not = icmp eq i32 %90, 0
  br i1 %tobool263.not, label %lor.lhs.false264, label %lor.lhs.false261.if.then270_crit_edge

lor.lhs.false261.if.then270_crit_edge:            ; preds = %lor.lhs.false261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then270

lor.lhs.false264:                                 ; preds = %lor.lhs.false261
  %src_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 6
  %91 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %src_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool266.not = icmp eq i32 %92, 0
  br i1 %tobool266.not, label %lor.lhs.false267, label %lor.lhs.false264.if.then270_crit_edge

lor.lhs.false264.if.then270_crit_edge:            ; preds = %lor.lhs.false264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then270

lor.lhs.false267:                                 ; preds = %lor.lhs.false264
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 7
  %93 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %src_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool269.not = icmp eq i32 %94, 0
  br i1 %tobool269.not, label %lor.lhs.false267.if.end275_crit_edge, label %lor.lhs.false267.if.then270_crit_edge

lor.lhs.false267.if.then270_crit_edge:            ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then270

lor.lhs.false267.if.end275_crit_edge:             ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.then270:                                       ; preds = %lor.lhs.false267.if.then270_crit_edge, %lor.lhs.false264.if.then270_crit_edge, %lor.lhs.false261.if.then270_crit_edge, %if.end258.if.then270_crit_edge
  %inc271 = add nuw nsw i32 %idx.7, 1
  %arrayidx272 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.7
  call void @mlx5dr_ste_build_eth_l3_ipv6_src(ptr noundef %9, ptr noundef %arrayidx272, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end275

if.end275:                                        ; preds = %if.then270, %lor.lhs.false267.if.end275_crit_edge
  %idx.8 = phi i32 [ %inc271, %if.then270 ], [ %idx.7, %lor.lhs.false267.if.end275_crit_edge ]
  %95 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %95, i32 20)
  %bf.load.i81 = load i160, ptr %first_vid, align 4
  %96 = and i160 %bf.load.i81, 340277864226006452774093748167784792063
  %.not289 = icmp eq i160 %96, 0
  br i1 %.not289, label %lor.lhs.false287, label %if.end275.if.then294_crit_edge

if.end275.if.then294_crit_edge:                   ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then294

lor.lhs.false287:                                 ; preds = %if.end275
  %97 = ptrtoint ptr %misc106 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 44)
  %bf.load289 = load i352, ptr %misc106, align 4
  %98 = and i352 %bf.load289, 83076670508394727792150347723571200
  %tobool293.not = icmp eq i352 %98, 0
  br i1 %tobool293.not, label %lor.lhs.false287.if.end316_crit_edge, label %lor.lhs.false287.if.then294_crit_edge

lor.lhs.false287.if.then294_crit_edge:            ; preds = %lor.lhs.false287
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then294

lor.lhs.false287.if.end316_crit_edge:             ; preds = %lor.lhs.false287
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316

if.then294:                                       ; preds = %lor.lhs.false287.if.then294_crit_edge, %if.end275.if.then294_crit_edge
  %inc295 = add nuw nsw i32 %idx.8, 1
  %arrayidx296 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.8
  call void @mlx5dr_ste_build_eth_ipv6_l3_l4(ptr noundef %9, ptr noundef %arrayidx296, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end316

if.else:                                          ; preds = %if.end238
  %99 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %99, i32 20)
  %bf.load.i.i = load i160, ptr %first_vid, align 4
  %100 = and i160 %bf.load.i.i, 340277864226006452774093747072568131583
  %.not.i = icmp eq i160 %100, 0
  br i1 %.not.i, label %lor.rhs.i87, label %if.else.if.then302_crit_edge

if.else.if.then302_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then302

lor.rhs.i87:                                      ; preds = %if.else
  %dst_ip_31_0.i.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 11
  %101 = ptrtoint ptr %dst_ip_31_0.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dst_ip_31_0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i.i = icmp eq i32 %102, 0
  br i1 %tobool.not.i.i, label %dr_mask_is_ipv4_5_tuple_set.exit, label %lor.rhs.i87.if.then302_crit_edge

lor.rhs.i87.if.then302_crit_edge:                 ; preds = %lor.rhs.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then302

dr_mask_is_ipv4_5_tuple_set.exit:                 ; preds = %lor.rhs.i87
  %src_ip_31_0.i.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %mask, i32 0, i32 7
  %103 = ptrtoint ptr %src_ip_31_0.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %src_ip_31_0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool1.i.i.not = icmp eq i32 %104, 0
  br i1 %tobool1.i.i.not, label %dr_mask_is_ipv4_5_tuple_set.exit.if.end307_crit_edge, label %dr_mask_is_ipv4_5_tuple_set.exit.if.then302_crit_edge

dr_mask_is_ipv4_5_tuple_set.exit.if.then302_crit_edge: ; preds = %dr_mask_is_ipv4_5_tuple_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then302

dr_mask_is_ipv4_5_tuple_set.exit.if.end307_crit_edge: ; preds = %dr_mask_is_ipv4_5_tuple_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end307

if.then302:                                       ; preds = %dr_mask_is_ipv4_5_tuple_set.exit.if.then302_crit_edge, %lor.rhs.i87.if.then302_crit_edge, %if.else.if.then302_crit_edge
  %inc303 = add nuw nsw i32 %idx.6, 1
  %arrayidx304 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.6
  call void @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(ptr noundef %9, ptr noundef %arrayidx304, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end307

if.end307:                                        ; preds = %if.then302, %dr_mask_is_ipv4_5_tuple_set.exit.if.end307_crit_edge
  %idx.9 = phi i32 [ %inc303, %if.then302 ], [ %idx.6, %dr_mask_is_ipv4_5_tuple_set.exit.if.end307_crit_edge ]
  %105 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %105, i32 20)
  %bf.load.i89 = load i160, ptr %first_vid, align 4
  %106 = and i160 %bf.load.i89, 1095216660480
  %tobool.i90.not = icmp eq i160 %106, 0
  br i1 %tobool.i90.not, label %if.end307.if.end316_crit_edge, label %if.then310

if.end307.if.end316_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316

if.then310:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #10
  %inc311 = add nuw nsw i32 %idx.9, 1
  %arrayidx312 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.9
  call void @mlx5dr_ste_build_eth_l3_ipv4_misc(ptr noundef %9, ptr noundef %arrayidx312, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end316

if.end316:                                        ; preds = %if.then310, %if.end307.if.end316_crit_edge, %if.then294, %lor.lhs.false287.if.end316_crit_edge
  %idx.10 = phi i32 [ %inc295, %if.then294 ], [ %idx.8, %lor.lhs.false287.if.end316_crit_edge ], [ %inc311, %if.then310 ], [ %idx.9, %if.end307.if.end316_crit_edge ]
  %outer_vxlan_gpe_vni.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 4
  %107 = ptrtoint ptr %outer_vxlan_gpe_vni.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %bf.load.i.i91 = load i64, ptr %outer_vxlan_gpe_vni.i.i, align 4
  %108 = and i64 %bf.load.i.i91, 72057594037862400
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %.not.i92 = icmp eq i64 %108, 0
  br i1 %.not.i92, label %if.end316.if.else323_crit_edge, label %land.rhs.i

if.end316.if.else323_crit_edge:                   ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else323

land.rhs.i:                                       ; preds = %if.end316
  %sw_format_ver.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 23
  %109 = ptrtoint ptr %sw_format_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sw_format_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp.i.i = icmp eq i8 %110, 1
  br i1 %cmp.i.i, label %land.rhs.i.if.then318_crit_edge, label %dr_mask_is_tnl_vxlan_gpe.exit

land.rhs.i.if.then318_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then318

dr_mask_is_tnl_vxlan_gpe.exit:                    ; preds = %land.rhs.i
  %flex_protocols.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %111 = ptrtoint ptr %flex_protocols.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flex_protocols.i.i, align 8
  %and.i.i = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %dr_mask_is_tnl_vxlan_gpe.exit.if.else323_crit_edge, label %dr_mask_is_tnl_vxlan_gpe.exit.if.then318_crit_edge

dr_mask_is_tnl_vxlan_gpe.exit.if.then318_crit_edge: ; preds = %dr_mask_is_tnl_vxlan_gpe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then318

dr_mask_is_tnl_vxlan_gpe.exit.if.else323_crit_edge: ; preds = %dr_mask_is_tnl_vxlan_gpe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else323

if.then318:                                       ; preds = %dr_mask_is_tnl_vxlan_gpe.exit.if.then318_crit_edge, %land.rhs.i.if.then318_crit_edge
  %inc319 = add nuw nsw i32 %idx.10, 1
  %arrayidx320 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.10
  call void @mlx5dr_ste_build_tnl_vxlan_gpe(ptr noundef %9, ptr noundef %arrayidx320, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end388

if.else323:                                       ; preds = %dr_mask_is_tnl_vxlan_gpe.exit.if.else323_crit_edge, %if.end316.if.else323_crit_edge
  %113 = ptrtoint ptr %misc106 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 44)
  %bf.load.i.i93 = load i352, ptr %misc106, align 4
  %114 = and i352 %bf.load.i.i93, 1461501550558899353364376649555776138949253136384
  %.not.i94 = icmp eq i352 %114, 0
  br i1 %.not.i94, label %if.else323.if.else349_crit_edge, label %land.rhs.i97

if.else323.if.else349_crit_edge:                  ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else349

land.rhs.i97:                                     ; preds = %if.else323
  %sw_format_ver.i.i95 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 23
  %115 = ptrtoint ptr %sw_format_ver.i.i95 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %sw_format_ver.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp.i.i96 = icmp eq i8 %116, 1
  br i1 %cmp.i.i96, label %land.rhs.i97.if.then325_crit_edge, label %dr_mask_is_tnl_geneve.exit

land.rhs.i97.if.then325_crit_edge:                ; preds = %land.rhs.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then325

dr_mask_is_tnl_geneve.exit:                       ; preds = %land.rhs.i97
  %flex_protocols.i.i98 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %117 = ptrtoint ptr %flex_protocols.i.i98 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flex_protocols.i.i98, align 8
  %and.i.i99 = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i99)
  %tobool.i.i100.not = icmp eq i32 %and.i.i99, 0
  br i1 %tobool.i.i100.not, label %dr_mask_is_tnl_geneve.exit.if.else349_crit_edge, label %dr_mask_is_tnl_geneve.exit.if.then325_crit_edge

dr_mask_is_tnl_geneve.exit.if.then325_crit_edge:  ; preds = %dr_mask_is_tnl_geneve.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then325

dr_mask_is_tnl_geneve.exit.if.else349_crit_edge:  ; preds = %dr_mask_is_tnl_geneve.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else349

if.then325:                                       ; preds = %dr_mask_is_tnl_geneve.exit.if.then325_crit_edge, %land.rhs.i97.if.then325_crit_edge
  %inc326 = add nuw nsw i32 %idx.10, 1
  %arrayidx327 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.10
  call void @mlx5dr_ste_build_tnl_geneve(ptr noundef %9, ptr noundef %arrayidx327, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  %geneve_tlv_option_0_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 11
  %119 = ptrtoint ptr %geneve_tlv_option_0_data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %geneve_tlv_option_0_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i101.not = icmp eq i32 %120, 0
  br i1 %tobool.i101.not, label %if.then325.if.end337_crit_edge, label %if.then332

if.then325.if.end337_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end337

if.then332:                                       ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #10
  %inc333 = add nuw nsw i32 %idx.10, 2
  %arrayidx334 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %inc326
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_geneve_tlv_opt(ptr noundef %9, ptr noundef %arrayidx334, ptr noundef nonnull %mask, ptr noundef %caps, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end337

if.end337:                                        ; preds = %if.then332, %if.then325.if.end337_crit_edge
  %idx.11 = phi i32 [ %inc333, %if.then332 ], [ %inc326, %if.then325.if.end337_crit_edge ]
  %flex_parser_ok_bits_supp.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 20
  %121 = ptrtoint ptr %flex_parser_ok_bits_supp.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %flex_parser_ok_bits_supp.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.i.not.i = icmp eq i8 %122, 0
  br i1 %tobool.i.not.i, label %if.end337.if.end388_crit_edge, label %dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit

if.end337.if.end388_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end388

dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit:     ; preds = %if.end337
  %123 = ptrtoint ptr %misc106 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 44)
  %bf.load.i102 = load i352, ptr %misc106, align 4
  %124 = and i352 %bf.load.i102, 680564733841876926926749214863536422912
  %tobool.i103.not = icmp eq i352 %124, 0
  br i1 %tobool.i103.not, label %dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit.if.end388_crit_edge, label %if.then341

dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit.if.end388_crit_edge: ; preds = %dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end388

if.then341:                                       ; preds = %dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc342 = add nuw nsw i32 %idx.11, 1
  %arrayidx343 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.11
  %caps345 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_geneve_tlv_opt_exist(ptr noundef %9, ptr noundef %arrayidx343, ptr noundef nonnull %mask, ptr noundef %caps345, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end388

if.else349:                                       ; preds = %dr_mask_is_tnl_geneve.exit.if.else349_crit_edge, %if.else323.if.else349_crit_edge
  %flex_parser_id_gtpu_dw_0.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 16
  %125 = ptrtoint ptr %flex_parser_id_gtpu_dw_0.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %flex_parser_id_gtpu_dw_0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %126)
  %cmp.i.i.i = icmp ult i8 %126, 4
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %if.else349.lor.lhs.false.i.i_crit_edge

if.else349.lor.lhs.false.i.i_crit_edge:           ; preds = %if.else349
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %if.else349
  %gtpu_dw_0.i.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %127 = ptrtoint ptr %gtpu_dw_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %gtpu_dw_0.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i.i.i = icmp eq i32 %128, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i.i

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.i

dr_mask_is_tnl_gtpu_dw_0.exit.i.i:                ; preds = %land.lhs.true.i.i
  %flex_protocols.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %129 = ptrtoint ptr %flex_protocols.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flex_protocols.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %130, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool1.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool1.i.not.i.i, label %dr_mask_is_tnl_gtpu_dw_0.exit.i.i.lor.lhs.false.i.i_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i.i.land.lhs.true.i_crit_edge

dr_mask_is_tnl_gtpu_dw_0.exit.i.i.land.lhs.true.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

dr_mask_is_tnl_gtpu_dw_0.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %if.else349.lor.lhs.false.i.i_crit_edge
  %flex_parser_id_gtpu_teid.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 17
  %131 = ptrtoint ptr %flex_parser_id_gtpu_teid.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %flex_parser_id_gtpu_teid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %132)
  %cmp.i22.i.i = icmp ult i8 %132, 4
  br i1 %cmp.i22.i.i, label %land.lhs.true4.i.i, label %lor.lhs.false.i.i.lor.lhs.false6.i.i_crit_edge

lor.lhs.false.i.i.lor.lhs.false6.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i.i

land.lhs.true4.i.i:                               ; preds = %lor.lhs.false.i.i
  %gtpu_teid.i.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %133 = ptrtoint ptr %gtpu_teid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %gtpu_teid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i23.i.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i23.i.i, label %land.lhs.true4.i.i.lor.lhs.false6.i.i_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i.i

land.lhs.true4.i.i.lor.lhs.false6.i.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i.i

dr_mask_is_tnl_gtpu_teid.exit.i.i:                ; preds = %land.lhs.true4.i.i
  %flex_protocols.i.i24.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %135 = ptrtoint ptr %flex_protocols.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flex_protocols.i.i24.i.i, align 8
  %and.i.i25.i.i = and i32 %136, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25.i.i)
  %tobool1.i26.not.i.i = icmp eq i32 %and.i.i25.i.i, 0
  br i1 %tobool1.i26.not.i.i, label %dr_mask_is_tnl_gtpu_teid.exit.i.i.lor.lhs.false6.i.i_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_teid.exit.i.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_teid.exit.i.i.lor.lhs.false6.i.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i.i

lor.lhs.false6.i.i:                               ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i.i.lor.lhs.false6.i.i_crit_edge, %land.lhs.true4.i.i.lor.lhs.false6.i.i_crit_edge, %lor.lhs.false.i.i.lor.lhs.false6.i.i_crit_edge
  %flex_parser_id_gtpu_dw_2.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 18
  %137 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %flex_parser_id_gtpu_dw_2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %138)
  %cmp.i28.i.i = icmp ult i8 %138, 4
  br i1 %cmp.i28.i.i, label %land.lhs.true8.i.i, label %lor.lhs.false6.i.i.lor.rhs.i.i105_crit_edge

lor.lhs.false6.i.i.lor.rhs.i.i105_crit_edge:      ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i.i105

land.lhs.true8.i.i:                               ; preds = %lor.lhs.false6.i.i
  %gtpu_dw_2.i.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %139 = ptrtoint ptr %gtpu_dw_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %gtpu_dw_2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i29.i.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i29.i.i, label %land.lhs.true8.i.i.lor.rhs.i.i105_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i.i

land.lhs.true8.i.i.lor.rhs.i.i105_crit_edge:      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i.i105

dr_mask_is_tnl_gtpu_dw_2.exit.i.i:                ; preds = %land.lhs.true8.i.i
  %flex_protocols.i.i30.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %141 = ptrtoint ptr %flex_protocols.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flex_protocols.i.i30.i.i, align 8
  %and.i.i31.i.i = and i32 %142, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31.i.i)
  %tobool1.i32.not.i.i = icmp eq i32 %and.i.i31.i.i, 0
  br i1 %tobool1.i32.not.i.i, label %dr_mask_is_tnl_gtpu_dw_2.exit.i.i.lor.rhs.i.i105_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_dw_2.exit.i.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_dw_2.exit.i.i.lor.rhs.i.i105_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i.i105

lor.rhs.i.i105:                                   ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i.i.lor.rhs.i.i105_crit_edge, %land.lhs.true8.i.i.lor.rhs.i.i105_crit_edge, %lor.lhs.false6.i.i.lor.rhs.i.i105_crit_edge
  %flex_parser_id_gtpu_first_ext_dw_0.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 19
  %143 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %144)
  %cmp.i34.i.i = icmp ult i8 %144, 4
  br i1 %cmp.i34.i.i, label %land.rhs.i.i, label %lor.rhs.i.i105.lor.lhs.false.i106_crit_edge

lor.rhs.i.i105.lor.lhs.false.i106_crit_edge:      ; preds = %lor.rhs.i.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i106

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i105
  %gtpu_first_ext_dw_0.i.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %145 = ptrtoint ptr %gtpu_first_ext_dw_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %gtpu_first_ext_dw_0.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i35.i.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i35.i.i, label %land.rhs.i.i.lor.lhs.false.i106_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i

land.rhs.i.i.lor.lhs.false.i106_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i106

dr_mask_is_tnl_gtpu_flex_parser_0.exit.i:         ; preds = %land.rhs.i.i
  %flex_protocols.i.i36.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %147 = ptrtoint ptr %flex_protocols.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flex_protocols.i.i36.i.i, align 8
  %and.i.i37.i.i = and i32 %148, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i.i)
  %tobool1.i38.i.not.i = icmp eq i32 %and.i.i37.i.i, 0
  br i1 %tobool1.i38.i.not.i, label %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i.lor.lhs.false.i106_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_flex_parser_0.exit.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_flex_parser_0.exit.i.lor.lhs.false.i106_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i106

lor.lhs.false.i106:                               ; preds = %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i.lor.lhs.false.i106_crit_edge, %land.rhs.i.i.lor.lhs.false.i106_crit_edge, %lor.rhs.i.i105.lor.lhs.false.i106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp.i.i8.i = icmp ugt i8 %126, 3
  br i1 %cmp.i.i8.i, label %land.lhs.true.i11.i, label %lor.lhs.false.i106.lor.lhs.false.i18.i_crit_edge

lor.lhs.false.i106.lor.lhs.false.i18.i_crit_edge: ; preds = %lor.lhs.false.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i18.i

land.lhs.true.i11.i:                              ; preds = %lor.lhs.false.i106
  %gtpu_dw_0.i.i9.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %149 = ptrtoint ptr %gtpu_dw_0.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %gtpu_dw_0.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i.i10.i = icmp eq i32 %150, 0
  br i1 %tobool.not.i.i10.i, label %land.lhs.true.i11.i.lor.lhs.false.i18.i_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i

land.lhs.true.i11.i.lor.lhs.false.i18.i_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i18.i

dr_mask_is_tnl_gtpu_dw_0.exit.i15.i:              ; preds = %land.lhs.true.i11.i
  %flex_protocols.i.i.i12.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %151 = ptrtoint ptr %flex_protocols.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flex_protocols.i.i.i12.i, align 8
  %and.i.i.i13.i = and i32 %152, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i13.i)
  %tobool1.i.not.i14.i = icmp eq i32 %and.i.i.i13.i, 0
  br i1 %tobool1.i.not.i14.i, label %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i.lor.lhs.false.i18.i_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_dw_0.exit.i15.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_dw_0.exit.i15.i.lor.lhs.false.i18.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i18.i

lor.lhs.false.i18.i:                              ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i.lor.lhs.false.i18.i_crit_edge, %land.lhs.true.i11.i.lor.lhs.false.i18.i_crit_edge, %lor.lhs.false.i106.lor.lhs.false.i18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %132)
  %cmp.i22.i17.i = icmp ugt i8 %132, 3
  br i1 %cmp.i22.i17.i, label %land.lhs.true4.i21.i, label %lor.lhs.false.i18.i.lor.lhs.false6.i28.i_crit_edge

lor.lhs.false.i18.i.lor.lhs.false6.i28.i_crit_edge: ; preds = %lor.lhs.false.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i28.i

land.lhs.true4.i21.i:                             ; preds = %lor.lhs.false.i18.i
  %gtpu_teid.i.i19.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %153 = ptrtoint ptr %gtpu_teid.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %gtpu_teid.i.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i23.i20.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i23.i20.i, label %land.lhs.true4.i21.i.lor.lhs.false6.i28.i_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i25.i

land.lhs.true4.i21.i.lor.lhs.false6.i28.i_crit_edge: ; preds = %land.lhs.true4.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i28.i

dr_mask_is_tnl_gtpu_teid.exit.i25.i:              ; preds = %land.lhs.true4.i21.i
  %flex_protocols.i.i24.i22.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %155 = ptrtoint ptr %flex_protocols.i.i24.i22.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flex_protocols.i.i24.i22.i, align 8
  %and.i.i25.i23.i = and i32 %156, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25.i23.i)
  %tobool1.i26.not.i24.i = icmp eq i32 %and.i.i25.i23.i, 0
  br i1 %tobool1.i26.not.i24.i, label %dr_mask_is_tnl_gtpu_teid.exit.i25.i.lor.lhs.false6.i28.i_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i25.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_teid.exit.i25.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_teid.exit.i25.i.lor.lhs.false6.i28.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i28.i

lor.lhs.false6.i28.i:                             ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i25.i.lor.lhs.false6.i28.i_crit_edge, %land.lhs.true4.i21.i.lor.lhs.false6.i28.i_crit_edge, %lor.lhs.false.i18.i.lor.lhs.false6.i28.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %138)
  %cmp.i28.i27.i = icmp ugt i8 %138, 3
  br i1 %cmp.i28.i27.i, label %land.lhs.true8.i31.i, label %lor.lhs.false6.i28.i.lor.rhs.i38.i_crit_edge

lor.lhs.false6.i28.i.lor.rhs.i38.i_crit_edge:     ; preds = %lor.lhs.false6.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i38.i

land.lhs.true8.i31.i:                             ; preds = %lor.lhs.false6.i28.i
  %gtpu_dw_2.i.i29.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %157 = ptrtoint ptr %gtpu_dw_2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %gtpu_dw_2.i.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i29.i30.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i29.i30.i, label %land.lhs.true8.i31.i.lor.rhs.i38.i_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i

land.lhs.true8.i31.i.lor.rhs.i38.i_crit_edge:     ; preds = %land.lhs.true8.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i38.i

dr_mask_is_tnl_gtpu_dw_2.exit.i35.i:              ; preds = %land.lhs.true8.i31.i
  %flex_protocols.i.i30.i32.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %159 = ptrtoint ptr %flex_protocols.i.i30.i32.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flex_protocols.i.i30.i32.i, align 8
  %and.i.i31.i33.i = and i32 %160, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31.i33.i)
  %tobool1.i32.not.i34.i = icmp eq i32 %and.i.i31.i33.i, 0
  br i1 %tobool1.i32.not.i34.i, label %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i.lor.rhs.i38.i_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_dw_2.exit.i35.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_dw_2.exit.i35.i.lor.rhs.i38.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i38.i

lor.rhs.i38.i:                                    ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i.lor.rhs.i38.i_crit_edge, %land.lhs.true8.i31.i.lor.rhs.i38.i_crit_edge, %lor.lhs.false6.i28.i.lor.rhs.i38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %144)
  %cmp.i34.i37.i = icmp ugt i8 %144, 3
  br i1 %cmp.i34.i37.i, label %land.rhs.i41.i, label %lor.rhs.i38.i.lor.rhs.i107_crit_edge

lor.rhs.i38.i.lor.rhs.i107_crit_edge:             ; preds = %lor.rhs.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i107

land.rhs.i41.i:                                   ; preds = %lor.rhs.i38.i
  %gtpu_first_ext_dw_0.i.i39.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %161 = ptrtoint ptr %gtpu_first_ext_dw_0.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %gtpu_first_ext_dw_0.i.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i35.i40.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i35.i40.i, label %land.rhs.i41.i.lor.rhs.i107_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i

land.rhs.i41.i.lor.rhs.i107_crit_edge:            ; preds = %land.rhs.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i107

dr_mask_is_tnl_gtpu_flex_parser_1.exit.i:         ; preds = %land.rhs.i41.i
  %flex_protocols.i.i36.i42.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %163 = ptrtoint ptr %flex_protocols.i.i36.i42.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %flex_protocols.i.i36.i42.i, align 8
  %and.i.i37.i43.i = and i32 %164, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i43.i)
  %tobool1.i38.i44.not.i = icmp eq i32 %and.i.i37.i43.i, 0
  br i1 %tobool1.i38.i44.not.i, label %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i.lor.rhs.i107_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i.if.then351_crit_edge

dr_mask_is_tnl_gtpu_flex_parser_1.exit.i.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_flex_parser_1.exit.i.lor.rhs.i107_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i107

lor.rhs.i107:                                     ; preds = %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i.lor.rhs.i107_crit_edge, %land.rhs.i41.i.lor.rhs.i107_crit_edge, %lor.rhs.i38.i.lor.rhs.i107_crit_edge
  %gtpu_msg_flags.i.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 14
  %165 = ptrtoint ptr %gtpu_msg_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %gtpu_msg_flags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i.i46.i = icmp eq i8 %166, 0
  br i1 %tobool.not.i.i46.i, label %lor.lhs.false.i.i.i, label %lor.rhs.i107.dr_mask_is_tnl_gtpu_any.exit_crit_edge

lor.rhs.i107.dr_mask_is_tnl_gtpu_any.exit_crit_edge: ; preds = %lor.rhs.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_tnl_gtpu_any.exit

lor.lhs.false.i.i.i:                              ; preds = %lor.rhs.i107
  %gtpu_msg_type.i.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 13
  %167 = ptrtoint ptr %gtpu_msg_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %gtpu_msg_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool2.not.i.i.i = icmp eq i8 %168, 0
  br i1 %tobool2.not.i.i.i, label %dr_mask_is_tnl_gtpu_set.exit.i.i, label %lor.lhs.false.i.i.i.dr_mask_is_tnl_gtpu_any.exit_crit_edge

lor.lhs.false.i.i.i.dr_mask_is_tnl_gtpu_any.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_tnl_gtpu_any.exit

dr_mask_is_tnl_gtpu_set.exit.i.i:                 ; preds = %lor.lhs.false.i.i.i
  %gtpu_teid.i.i47.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %169 = ptrtoint ptr %gtpu_teid.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %gtpu_teid.i.i47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool3.i.not.i.i = icmp eq i32 %170, 0
  br i1 %tobool3.i.not.i.i, label %dr_mask_is_tnl_gtpu_set.exit.i.i.if.else377_crit_edge, label %dr_mask_is_tnl_gtpu_set.exit.i.i.dr_mask_is_tnl_gtpu_any.exit_crit_edge

dr_mask_is_tnl_gtpu_set.exit.i.i.dr_mask_is_tnl_gtpu_any.exit_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_tnl_gtpu_any.exit

dr_mask_is_tnl_gtpu_set.exit.i.i.if.else377_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else377

dr_mask_is_tnl_gtpu_any.exit:                     ; preds = %dr_mask_is_tnl_gtpu_set.exit.i.i.dr_mask_is_tnl_gtpu_any.exit_crit_edge, %lor.lhs.false.i.i.i.dr_mask_is_tnl_gtpu_any.exit_crit_edge, %lor.rhs.i107.dr_mask_is_tnl_gtpu_any.exit_crit_edge
  %flex_protocols.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %171 = ptrtoint ptr %flex_protocols.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flex_protocols.i.i.i, align 8
  %and.i.i.i = and i32 %172, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i.not = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %dr_mask_is_tnl_gtpu_any.exit.if.else377_crit_edge, label %dr_mask_is_tnl_gtpu_any.exit.if.then351_crit_edge

dr_mask_is_tnl_gtpu_any.exit.if.then351_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_any.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then351

dr_mask_is_tnl_gtpu_any.exit.if.else377_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_any.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else377

if.then351:                                       ; preds = %dr_mask_is_tnl_gtpu_any.exit.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_flex_parser_1.exit.i.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_dw_2.exit.i35.i.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_teid.exit.i25.i.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_dw_0.exit.i15.i.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_flex_parser_0.exit.i.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_dw_2.exit.i.i.if.then351_crit_edge, %dr_mask_is_tnl_gtpu_teid.exit.i.i.if.then351_crit_edge
  br i1 %cmp.i.i.i, label %if.then351.land.lhs.true.i_crit_edge, label %if.then351.lor.lhs.false.i112_crit_edge

if.then351.lor.lhs.false.i112_crit_edge:          ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i112

if.then351.land.lhs.true.i_crit_edge:             ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then351.land.lhs.true.i_crit_edge, %dr_mask_is_tnl_gtpu_dw_0.exit.i.i.land.lhs.true.i_crit_edge
  %gtpu_dw_0.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %173 = ptrtoint ptr %gtpu_dw_0.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %gtpu_dw_0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i.i109 = icmp eq i32 %174, 0
  br i1 %tobool.not.i.i109, label %land.lhs.true.i.lor.lhs.false.i112_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i

land.lhs.true.i.lor.lhs.false.i112_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i112

dr_mask_is_tnl_gtpu_dw_0.exit.i:                  ; preds = %land.lhs.true.i
  %flex_protocols.i.i.i110 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %175 = ptrtoint ptr %flex_protocols.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flex_protocols.i.i.i110, align 8
  %and.i.i.i111 = and i32 %176, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i111)
  %tobool1.i.not.i = icmp eq i32 %and.i.i.i111, 0
  br i1 %tobool1.i.not.i, label %dr_mask_is_tnl_gtpu_dw_0.exit.i.lor.lhs.false.i112_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i.if.then353_crit_edge

dr_mask_is_tnl_gtpu_dw_0.exit.i.if.then353_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then353

dr_mask_is_tnl_gtpu_dw_0.exit.i.lor.lhs.false.i112_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i112

lor.lhs.false.i112:                               ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i.lor.lhs.false.i112_crit_edge, %land.lhs.true.i.lor.lhs.false.i112_crit_edge, %if.then351.lor.lhs.false.i112_crit_edge
  %flex_parser_id_gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 17
  %177 = ptrtoint ptr %flex_parser_id_gtpu_teid.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %flex_parser_id_gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %178)
  %cmp.i22.i = icmp ult i8 %178, 4
  br i1 %cmp.i22.i, label %land.lhs.true4.i, label %lor.lhs.false.i112.lor.lhs.false6.i_crit_edge

lor.lhs.false.i112.lor.lhs.false6.i_crit_edge:    ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i

land.lhs.true4.i:                                 ; preds = %lor.lhs.false.i112
  %gtpu_teid.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %179 = ptrtoint ptr %gtpu_teid.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %gtpu_teid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i23.i = icmp eq i32 %180, 0
  br i1 %tobool.not.i23.i, label %land.lhs.true4.i.lor.lhs.false6.i_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i

land.lhs.true4.i.lor.lhs.false6.i_crit_edge:      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i

dr_mask_is_tnl_gtpu_teid.exit.i:                  ; preds = %land.lhs.true4.i
  %flex_protocols.i.i24.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %181 = ptrtoint ptr %flex_protocols.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flex_protocols.i.i24.i, align 8
  %and.i.i25.i = and i32 %182, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25.i)
  %tobool1.i26.not.i = icmp eq i32 %and.i.i25.i, 0
  br i1 %tobool1.i26.not.i, label %dr_mask_is_tnl_gtpu_teid.exit.i.lor.lhs.false6.i_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i.if.then353_crit_edge

dr_mask_is_tnl_gtpu_teid.exit.i.if.then353_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then353

dr_mask_is_tnl_gtpu_teid.exit.i.lor.lhs.false6.i_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i

lor.lhs.false6.i:                                 ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i.lor.lhs.false6.i_crit_edge, %land.lhs.true4.i.lor.lhs.false6.i_crit_edge, %lor.lhs.false.i112.lor.lhs.false6.i_crit_edge
  %flex_parser_id_gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 18
  %183 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %flex_parser_id_gtpu_dw_2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %184)
  %cmp.i28.i = icmp ult i8 %184, 4
  br i1 %cmp.i28.i, label %land.lhs.true8.i, label %lor.lhs.false6.i.lor.rhs.i113_crit_edge

lor.lhs.false6.i.lor.rhs.i113_crit_edge:          ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i113

land.lhs.true8.i:                                 ; preds = %lor.lhs.false6.i
  %gtpu_dw_2.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %185 = ptrtoint ptr %gtpu_dw_2.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %gtpu_dw_2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i29.i = icmp eq i32 %186, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true8.i.lor.rhs.i113_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i

land.lhs.true8.i.lor.rhs.i113_crit_edge:          ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i113

dr_mask_is_tnl_gtpu_dw_2.exit.i:                  ; preds = %land.lhs.true8.i
  %flex_protocols.i.i30.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %187 = ptrtoint ptr %flex_protocols.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flex_protocols.i.i30.i, align 8
  %and.i.i31.i = and i32 %188, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31.i)
  %tobool1.i32.not.i = icmp eq i32 %and.i.i31.i, 0
  br i1 %tobool1.i32.not.i, label %dr_mask_is_tnl_gtpu_dw_2.exit.i.lor.rhs.i113_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i.if.then353_crit_edge

dr_mask_is_tnl_gtpu_dw_2.exit.i.if.then353_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then353

dr_mask_is_tnl_gtpu_dw_2.exit.i.lor.rhs.i113_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i113

lor.rhs.i113:                                     ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i.lor.rhs.i113_crit_edge, %land.lhs.true8.i.lor.rhs.i113_crit_edge, %lor.lhs.false6.i.lor.rhs.i113_crit_edge
  %flex_parser_id_gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 19
  %189 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %190)
  %cmp.i34.i = icmp ult i8 %190, 4
  br i1 %cmp.i34.i, label %land.rhs.i114, label %lor.rhs.i113.if.end360_crit_edge

lor.rhs.i113.if.end360_crit_edge:                 ; preds = %lor.rhs.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end360

land.rhs.i114:                                    ; preds = %lor.rhs.i113
  %gtpu_first_ext_dw_0.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %191 = ptrtoint ptr %gtpu_first_ext_dw_0.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %gtpu_first_ext_dw_0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i35.i = icmp eq i32 %192, 0
  br i1 %tobool.not.i35.i, label %land.rhs.i114.if.end360_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_0.exit

land.rhs.i114.if.end360_crit_edge:                ; preds = %land.rhs.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end360

dr_mask_is_tnl_gtpu_flex_parser_0.exit:           ; preds = %land.rhs.i114
  %flex_protocols.i.i36.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %193 = ptrtoint ptr %flex_protocols.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flex_protocols.i.i36.i, align 8
  %and.i.i37.i = and i32 %194, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i)
  %tobool1.i38.i.not = icmp eq i32 %and.i.i37.i, 0
  br i1 %tobool1.i38.i.not, label %dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.end360_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.then353_crit_edge

dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.then353_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_0.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then353

dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.end360_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_0.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end360

if.then353:                                       ; preds = %dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.then353_crit_edge, %dr_mask_is_tnl_gtpu_dw_2.exit.i.if.then353_crit_edge, %dr_mask_is_tnl_gtpu_teid.exit.i.if.then353_crit_edge, %dr_mask_is_tnl_gtpu_dw_0.exit.i.if.then353_crit_edge
  %inc354 = add nuw nsw i32 %idx.10, 1
  %arrayidx355 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.10
  %caps357 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_gtpu_flex_parser_0(ptr noundef %9, ptr noundef %arrayidx355, ptr noundef nonnull %mask, ptr noundef %caps357, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end360

if.end360:                                        ; preds = %if.then353, %dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.end360_crit_edge, %land.rhs.i114.if.end360_crit_edge, %lor.rhs.i113.if.end360_crit_edge
  %idx.12 = phi i32 [ %inc354, %if.then353 ], [ %idx.10, %dr_mask_is_tnl_gtpu_flex_parser_0.exit.if.end360_crit_edge ], [ %idx.10, %lor.rhs.i113.if.end360_crit_edge ], [ %idx.10, %land.rhs.i114.if.end360_crit_edge ]
  %195 = ptrtoint ptr %flex_parser_id_gtpu_dw_0.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %flex_parser_id_gtpu_dw_0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %196)
  %cmp.i.i116 = icmp ugt i8 %196, 3
  br i1 %cmp.i.i116, label %land.lhs.true.i119, label %if.end360.lor.lhs.false.i126_crit_edge

if.end360.lor.lhs.false.i126_crit_edge:           ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i126

land.lhs.true.i119:                               ; preds = %if.end360
  %gtpu_dw_0.i.i117 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %197 = ptrtoint ptr %gtpu_dw_0.i.i117 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %gtpu_dw_0.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i.i118 = icmp eq i32 %198, 0
  br i1 %tobool.not.i.i118, label %land.lhs.true.i119.lor.lhs.false.i126_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i123

land.lhs.true.i119.lor.lhs.false.i126_crit_edge:  ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i126

dr_mask_is_tnl_gtpu_dw_0.exit.i123:               ; preds = %land.lhs.true.i119
  %flex_protocols.i.i.i120 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %199 = ptrtoint ptr %flex_protocols.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %flex_protocols.i.i.i120, align 8
  %and.i.i.i121 = and i32 %200, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i121)
  %tobool1.i.not.i122 = icmp eq i32 %and.i.i.i121, 0
  br i1 %tobool1.i.not.i122, label %dr_mask_is_tnl_gtpu_dw_0.exit.i123.lor.lhs.false.i126_crit_edge, label %dr_mask_is_tnl_gtpu_dw_0.exit.i123.if.then362_crit_edge

dr_mask_is_tnl_gtpu_dw_0.exit.i123.if.then362_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then362

dr_mask_is_tnl_gtpu_dw_0.exit.i123.lor.lhs.false.i126_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i126

lor.lhs.false.i126:                               ; preds = %dr_mask_is_tnl_gtpu_dw_0.exit.i123.lor.lhs.false.i126_crit_edge, %land.lhs.true.i119.lor.lhs.false.i126_crit_edge, %if.end360.lor.lhs.false.i126_crit_edge
  %flex_parser_id_gtpu_teid.i124 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 17
  %201 = ptrtoint ptr %flex_parser_id_gtpu_teid.i124 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %flex_parser_id_gtpu_teid.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %202)
  %cmp.i22.i125 = icmp ugt i8 %202, 3
  br i1 %cmp.i22.i125, label %land.lhs.true4.i129, label %lor.lhs.false.i126.lor.lhs.false6.i136_crit_edge

lor.lhs.false.i126.lor.lhs.false6.i136_crit_edge: ; preds = %lor.lhs.false.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i136

land.lhs.true4.i129:                              ; preds = %lor.lhs.false.i126
  %gtpu_teid.i.i127 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %203 = ptrtoint ptr %gtpu_teid.i.i127 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %gtpu_teid.i.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i23.i128 = icmp eq i32 %204, 0
  br i1 %tobool.not.i23.i128, label %land.lhs.true4.i129.lor.lhs.false6.i136_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i133

land.lhs.true4.i129.lor.lhs.false6.i136_crit_edge: ; preds = %land.lhs.true4.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i136

dr_mask_is_tnl_gtpu_teid.exit.i133:               ; preds = %land.lhs.true4.i129
  %flex_protocols.i.i24.i130 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %205 = ptrtoint ptr %flex_protocols.i.i24.i130 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %flex_protocols.i.i24.i130, align 8
  %and.i.i25.i131 = and i32 %206, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25.i131)
  %tobool1.i26.not.i132 = icmp eq i32 %and.i.i25.i131, 0
  br i1 %tobool1.i26.not.i132, label %dr_mask_is_tnl_gtpu_teid.exit.i133.lor.lhs.false6.i136_crit_edge, label %dr_mask_is_tnl_gtpu_teid.exit.i133.if.then362_crit_edge

dr_mask_is_tnl_gtpu_teid.exit.i133.if.then362_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then362

dr_mask_is_tnl_gtpu_teid.exit.i133.lor.lhs.false6.i136_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false6.i136

lor.lhs.false6.i136:                              ; preds = %dr_mask_is_tnl_gtpu_teid.exit.i133.lor.lhs.false6.i136_crit_edge, %land.lhs.true4.i129.lor.lhs.false6.i136_crit_edge, %lor.lhs.false.i126.lor.lhs.false6.i136_crit_edge
  %flex_parser_id_gtpu_dw_2.i134 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 18
  %207 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i134 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %flex_parser_id_gtpu_dw_2.i134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %208)
  %cmp.i28.i135 = icmp ugt i8 %208, 3
  br i1 %cmp.i28.i135, label %land.lhs.true8.i139, label %lor.lhs.false6.i136.lor.rhs.i146_crit_edge

lor.lhs.false6.i136.lor.rhs.i146_crit_edge:       ; preds = %lor.lhs.false6.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i146

land.lhs.true8.i139:                              ; preds = %lor.lhs.false6.i136
  %gtpu_dw_2.i.i137 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %209 = ptrtoint ptr %gtpu_dw_2.i.i137 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %gtpu_dw_2.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i29.i138 = icmp eq i32 %210, 0
  br i1 %tobool.not.i29.i138, label %land.lhs.true8.i139.lor.rhs.i146_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i143

land.lhs.true8.i139.lor.rhs.i146_crit_edge:       ; preds = %land.lhs.true8.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i146

dr_mask_is_tnl_gtpu_dw_2.exit.i143:               ; preds = %land.lhs.true8.i139
  %flex_protocols.i.i30.i140 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %211 = ptrtoint ptr %flex_protocols.i.i30.i140 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %flex_protocols.i.i30.i140, align 8
  %and.i.i31.i141 = and i32 %212, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31.i141)
  %tobool1.i32.not.i142 = icmp eq i32 %and.i.i31.i141, 0
  br i1 %tobool1.i32.not.i142, label %dr_mask_is_tnl_gtpu_dw_2.exit.i143.lor.rhs.i146_crit_edge, label %dr_mask_is_tnl_gtpu_dw_2.exit.i143.if.then362_crit_edge

dr_mask_is_tnl_gtpu_dw_2.exit.i143.if.then362_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then362

dr_mask_is_tnl_gtpu_dw_2.exit.i143.lor.rhs.i146_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i146

lor.rhs.i146:                                     ; preds = %dr_mask_is_tnl_gtpu_dw_2.exit.i143.lor.rhs.i146_crit_edge, %land.lhs.true8.i139.lor.rhs.i146_crit_edge, %lor.lhs.false6.i136.lor.rhs.i146_crit_edge
  %flex_parser_id_gtpu_first_ext_dw_0.i144 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 19
  %213 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i144 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i144, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %214)
  %cmp.i34.i145 = icmp ugt i8 %214, 3
  br i1 %cmp.i34.i145, label %land.rhs.i149, label %lor.rhs.i146.if.end369_crit_edge

lor.rhs.i146.if.end369_crit_edge:                 ; preds = %lor.rhs.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

land.rhs.i149:                                    ; preds = %lor.rhs.i146
  %gtpu_first_ext_dw_0.i.i147 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %215 = ptrtoint ptr %gtpu_first_ext_dw_0.i.i147 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %gtpu_first_ext_dw_0.i.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.not.i35.i148 = icmp eq i32 %216, 0
  br i1 %tobool.not.i35.i148, label %land.rhs.i149.if.end369_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_1.exit

land.rhs.i149.if.end369_crit_edge:                ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

dr_mask_is_tnl_gtpu_flex_parser_1.exit:           ; preds = %land.rhs.i149
  %flex_protocols.i.i36.i150 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %217 = ptrtoint ptr %flex_protocols.i.i36.i150 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flex_protocols.i.i36.i150, align 8
  %and.i.i37.i151 = and i32 %218, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i151)
  %tobool1.i38.i152.not = icmp eq i32 %and.i.i37.i151, 0
  br i1 %tobool1.i38.i152.not, label %dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.end369_crit_edge, label %dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.then362_crit_edge

dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.then362_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then362

dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.end369_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_flex_parser_1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

if.then362:                                       ; preds = %dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.then362_crit_edge, %dr_mask_is_tnl_gtpu_dw_2.exit.i143.if.then362_crit_edge, %dr_mask_is_tnl_gtpu_teid.exit.i133.if.then362_crit_edge, %dr_mask_is_tnl_gtpu_dw_0.exit.i123.if.then362_crit_edge
  %inc363 = add nuw nsw i32 %idx.12, 1
  %arrayidx364 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.12
  %caps366 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_gtpu_flex_parser_1(ptr noundef %9, ptr noundef %arrayidx364, ptr noundef nonnull %mask, ptr noundef %caps366, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end369

if.end369:                                        ; preds = %if.then362, %dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.end369_crit_edge, %land.rhs.i149.if.end369_crit_edge, %lor.rhs.i146.if.end369_crit_edge
  %idx.13 = phi i32 [ %inc363, %if.then362 ], [ %idx.12, %dr_mask_is_tnl_gtpu_flex_parser_1.exit.if.end369_crit_edge ], [ %idx.12, %lor.rhs.i146.if.end369_crit_edge ], [ %idx.12, %land.rhs.i149.if.end369_crit_edge ]
  %gtpu_msg_flags.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 14
  %219 = ptrtoint ptr %gtpu_msg_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %gtpu_msg_flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.i.i154 = icmp eq i8 %220, 0
  br i1 %tobool.not.i.i154, label %lor.lhs.false.i.i155, label %if.end369.dr_mask_is_tnl_gtpu.exit_crit_edge

if.end369.dr_mask_is_tnl_gtpu.exit_crit_edge:     ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_tnl_gtpu.exit

lor.lhs.false.i.i155:                             ; preds = %if.end369
  %gtpu_msg_type.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 13
  %221 = ptrtoint ptr %gtpu_msg_type.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %gtpu_msg_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool2.not.i.i = icmp eq i8 %222, 0
  br i1 %tobool2.not.i.i, label %dr_mask_is_tnl_gtpu_set.exit.i, label %lor.lhs.false.i.i155.dr_mask_is_tnl_gtpu.exit_crit_edge

lor.lhs.false.i.i155.dr_mask_is_tnl_gtpu.exit_crit_edge: ; preds = %lor.lhs.false.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_tnl_gtpu.exit

dr_mask_is_tnl_gtpu_set.exit.i:                   ; preds = %lor.lhs.false.i.i155
  %gtpu_teid.i.i156 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %223 = ptrtoint ptr %gtpu_teid.i.i156 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %gtpu_teid.i.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool3.i.not.i = icmp eq i32 %224, 0
  br i1 %tobool3.i.not.i, label %dr_mask_is_tnl_gtpu_set.exit.i.if.end388_crit_edge, label %dr_mask_is_tnl_gtpu_set.exit.i.dr_mask_is_tnl_gtpu.exit_crit_edge

dr_mask_is_tnl_gtpu_set.exit.i.dr_mask_is_tnl_gtpu.exit_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_tnl_gtpu.exit

dr_mask_is_tnl_gtpu_set.exit.i.if.end388_crit_edge: ; preds = %dr_mask_is_tnl_gtpu_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end388

dr_mask_is_tnl_gtpu.exit:                         ; preds = %dr_mask_is_tnl_gtpu_set.exit.i.dr_mask_is_tnl_gtpu.exit_crit_edge, %lor.lhs.false.i.i155.dr_mask_is_tnl_gtpu.exit_crit_edge, %if.end369.dr_mask_is_tnl_gtpu.exit_crit_edge
  %flex_protocols.i.i157 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %225 = ptrtoint ptr %flex_protocols.i.i157 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %flex_protocols.i.i157, align 8
  %and.i.i158 = and i32 %226, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158)
  %tobool.i.i159.not = icmp eq i32 %and.i.i158, 0
  br i1 %tobool.i.i159.not, label %dr_mask_is_tnl_gtpu.exit.if.end388_crit_edge, label %if.then371

dr_mask_is_tnl_gtpu.exit.if.end388_crit_edge:     ; preds = %dr_mask_is_tnl_gtpu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end388

if.then371:                                       ; preds = %dr_mask_is_tnl_gtpu.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc372 = add nuw nsw i32 %idx.13, 1
  %arrayidx373 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.13
  call void @mlx5dr_ste_build_tnl_gtpu(ptr noundef %9, ptr noundef %arrayidx373, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end388

if.else377:                                       ; preds = %dr_mask_is_tnl_gtpu_any.exit.if.else377_crit_edge, %dr_mask_is_tnl_gtpu_set.exit.i.i.if.else377_crit_edge
  %tunnel_header_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6, i32 4
  %227 = ptrtoint ptr %tunnel_header_0.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tunnel_header_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i161 = icmp eq i32 %228, 0
  br i1 %tobool.not.i161, label %dr_mask_is_tnl_header_0_1_set.exit, label %if.else377.if.then380_crit_edge

if.else377.if.then380_crit_edge:                  ; preds = %if.else377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then380

dr_mask_is_tnl_header_0_1_set.exit:               ; preds = %if.else377
  %tunnel_header_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6, i32 5
  %229 = ptrtoint ptr %tunnel_header_1.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %tunnel_header_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool1.i162.not = icmp eq i32 %230, 0
  br i1 %tobool1.i162.not, label %dr_mask_is_tnl_header_0_1_set.exit.if.end388_crit_edge, label %dr_mask_is_tnl_header_0_1_set.exit.if.then380_crit_edge

dr_mask_is_tnl_header_0_1_set.exit.if.then380_crit_edge: ; preds = %dr_mask_is_tnl_header_0_1_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then380

dr_mask_is_tnl_header_0_1_set.exit.if.end388_crit_edge: ; preds = %dr_mask_is_tnl_header_0_1_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end388

if.then380:                                       ; preds = %dr_mask_is_tnl_header_0_1_set.exit.if.then380_crit_edge, %if.else377.if.then380_crit_edge
  %inc381 = add nuw nsw i32 %idx.10, 1
  %arrayidx382 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.10
  call void @mlx5dr_ste_build_tnl_header_0_1(ptr noundef %9, ptr noundef %arrayidx382, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end388

if.end388:                                        ; preds = %if.then380, %dr_mask_is_tnl_header_0_1_set.exit.if.end388_crit_edge, %if.then371, %dr_mask_is_tnl_gtpu.exit.if.end388_crit_edge, %dr_mask_is_tnl_gtpu_set.exit.i.if.end388_crit_edge, %if.then341, %dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit.if.end388_crit_edge, %if.end337.if.end388_crit_edge, %if.then318
  %idx.14 = phi i32 [ %inc319, %if.then318 ], [ %inc342, %if.then341 ], [ %idx.11, %dr_mask_is_tnl_geneve_tlv_opt_exist_set.exit.if.end388_crit_edge ], [ %inc372, %if.then371 ], [ %idx.13, %dr_mask_is_tnl_gtpu.exit.if.end388_crit_edge ], [ %inc381, %if.then380 ], [ %idx.10, %dr_mask_is_tnl_header_0_1_set.exit.if.end388_crit_edge ], [ %idx.11, %if.end337.if.end388_crit_edge ], [ %idx.13, %dr_mask_is_tnl_gtpu_set.exit.i.if.end388_crit_edge ]
  %outer_tcp_seq_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 1
  %231 = ptrtoint ptr %outer_tcp_seq_num to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %outer_tcp_seq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool390.not = icmp eq i32 %232, 0
  br i1 %tobool390.not, label %lor.lhs.false391, label %if.end388.if.then394_crit_edge

if.end388.if.then394_crit_edge:                   ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then394

lor.lhs.false391:                                 ; preds = %if.end388
  %outer_tcp_ack_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 3
  %233 = ptrtoint ptr %outer_tcp_ack_num to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %outer_tcp_ack_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool393.not = icmp eq i32 %234, 0
  br i1 %tobool393.not, label %lor.lhs.false391.if.end399_crit_edge, label %lor.lhs.false391.if.then394_crit_edge

lor.lhs.false391.if.then394_crit_edge:            ; preds = %lor.lhs.false391
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then394

lor.lhs.false391.if.end399_crit_edge:             ; preds = %lor.lhs.false391
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end399

if.then394:                                       ; preds = %lor.lhs.false391.if.then394_crit_edge, %if.end388.if.then394_crit_edge
  %inc395 = add nuw nsw i32 %idx.14, 1
  %arrayidx396 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.14
  call void @mlx5dr_ste_build_eth_l4_misc(ptr noundef %9, ptr noundef %arrayidx396, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end399

if.end399:                                        ; preds = %if.then394, %lor.lhs.false391.if.end399_crit_edge
  %idx.15 = phi i32 [ %inc395, %if.then394 ], [ %idx.14, %lor.lhs.false391.if.end399_crit_edge ]
  %235 = ptrtoint ptr %misc283 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 16)
  %bf.load401 = load i128, ptr %misc283, align 4
  %236 = icmp ult i128 %bf.load401, 79228162514264337593543950336
  br i1 %236, label %if.end399.if.end431_crit_edge, label %if.then426

if.end399.if.end431_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end431

if.then426:                                       ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #10
  %inc427 = add nuw nsw i32 %idx.15, 1
  %arrayidx428 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.15
  call void @mlx5dr_ste_build_mpls(ptr noundef %9, ptr noundef %arrayidx428, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end431

if.end431:                                        ; preds = %if.then426, %if.end399.if.end431_crit_edge
  %idx.16 = phi i32 [ %inc427, %if.then426 ], [ %idx.15, %if.end399.if.end431_crit_edge ]
  %237 = ptrtoint ptr %misc283 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 16)
  %bf.load.i164 = load i128, ptr %misc283, align 4
  %238 = and i128 %bf.load.i164, 18446744069414584320
  %239 = icmp eq i128 %238, 0
  br i1 %239, label %if.end431.if.else440_crit_edge, label %dr_mask_is_tnl_mpls_over_gre.exit

if.end431.if.else440_crit_edge:                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else440

dr_mask_is_tnl_mpls_over_gre.exit:                ; preds = %if.end431
  %flex_protocols.i.i165 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %240 = ptrtoint ptr %flex_protocols.i.i165 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flex_protocols.i.i165, align 8
  %and.i.i166 = and i32 %241, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i166)
  %tobool21.i.not = icmp eq i32 %and.i.i166, 0
  br i1 %tobool21.i.not, label %dr_mask_is_tnl_mpls_over_gre.exit.if.else440_crit_edge, label %if.then433

dr_mask_is_tnl_mpls_over_gre.exit.if.else440_crit_edge: ; preds = %dr_mask_is_tnl_mpls_over_gre.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else440

if.then433:                                       ; preds = %dr_mask_is_tnl_mpls_over_gre.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc434 = add nuw nsw i32 %idx.16, 1
  %arrayidx435 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.16
  %caps437 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_mpls_over_gre(ptr noundef %9, ptr noundef %arrayidx435, ptr noundef nonnull %mask, ptr noundef %caps437, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end450

if.else440:                                       ; preds = %dr_mask_is_tnl_mpls_over_gre.exit.if.else440_crit_edge, %if.end431.if.else440_crit_edge
  %242 = and i128 %bf.load.i164, 4294967295
  %243 = icmp eq i128 %242, 0
  br i1 %243, label %if.else440.if.end450_crit_edge, label %dr_mask_is_tnl_mpls_over_udp.exit

if.else440.if.end450_crit_edge:                   ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

dr_mask_is_tnl_mpls_over_udp.exit:                ; preds = %if.else440
  %flex_protocols.i.i170 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %244 = ptrtoint ptr %flex_protocols.i.i170 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %flex_protocols.i.i170, align 8
  %and.i.i171 = and i32 %245, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i171)
  %tobool20.i.not = icmp eq i32 %and.i.i171, 0
  br i1 %tobool20.i.not, label %dr_mask_is_tnl_mpls_over_udp.exit.if.end450_crit_edge, label %if.then442

dr_mask_is_tnl_mpls_over_udp.exit.if.end450_crit_edge: ; preds = %dr_mask_is_tnl_mpls_over_udp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

if.then442:                                       ; preds = %dr_mask_is_tnl_mpls_over_udp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc443 = add nuw nsw i32 %idx.16, 1
  %arrayidx444 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.16
  %caps446 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_mpls_over_udp(ptr noundef %9, ptr noundef %arrayidx444, ptr noundef nonnull %mask, ptr noundef %caps446, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end450

if.end450:                                        ; preds = %if.then442, %dr_mask_is_tnl_mpls_over_udp.exit.if.end450_crit_edge, %if.else440.if.end450_crit_edge, %if.then433
  %idx.17 = phi i32 [ %inc434, %if.then433 ], [ %inc443, %if.then442 ], [ %idx.16, %dr_mask_is_tnl_mpls_over_udp.exit.if.end450_crit_edge ], [ %idx.16, %if.else440.if.end450_crit_edge ]
  %icmpv4_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 7
  %246 = ptrtoint ptr %icmpv4_type.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %icmpv4_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.i173 = icmp eq i8 %247, 0
  br i1 %tobool.not.i173, label %lor.lhs.false.i175, label %if.end450.if.then.i_crit_edge

if.end450.if.then.i_crit_edge:                    ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i175:                               ; preds = %if.end450
  %icmpv4_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 8
  %248 = ptrtoint ptr %icmpv4_code.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %icmpv4_code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool3.not.i174 = icmp eq i8 %249, 0
  br i1 %tobool3.not.i174, label %lor.lhs.false4.i, label %lor.lhs.false.i175.if.then.i_crit_edge

lor.lhs.false.i175.if.then.i_crit_edge:           ; preds = %lor.lhs.false.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i175
  %icmpv4_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 5
  %250 = ptrtoint ptr %icmpv4_header_data.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %icmpv4_header_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool6.not.i = icmp eq i32 %251, 0
  br i1 %tobool6.not.i, label %if.else.i, label %lor.lhs.false4.i.if.then.i_crit_edge

lor.lhs.false4.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false4.i.if.then.i_crit_edge, %lor.lhs.false.i175.if.then.i_crit_edge, %if.end450.if.then.i_crit_edge
  %sw_format_ver.i.i176 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 23
  %252 = ptrtoint ptr %sw_format_ver.i.i176 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %sw_format_ver.i.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %253)
  %cmp.i.i177 = icmp eq i8 %253, 1
  br i1 %cmp.i.i177, label %if.then.i.if.then452_crit_edge, label %if.then.i.dr_mask_is_icmp.exit_crit_edge

if.then.i.dr_mask_is_icmp.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_icmp.exit

if.then.i.if.then452_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then452

if.else.i:                                        ; preds = %lor.lhs.false4.i
  %icmpv6_type.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 9
  %254 = ptrtoint ptr %icmpv6_type.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %icmpv6_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i.i178 = icmp eq i8 %255, 0
  br i1 %tobool.not.i.i178, label %lor.lhs.false.i.i180, label %if.else.i.if.then10.i_crit_edge

if.else.i.if.then10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

lor.lhs.false.i.i180:                             ; preds = %if.else.i
  %icmpv6_code.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 10
  %256 = ptrtoint ptr %icmpv6_code.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %icmpv6_code.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool2.not.i.i179 = icmp eq i8 %257, 0
  br i1 %tobool2.not.i.i179, label %dr_mask_is_icmpv6_set.exit.i, label %lor.lhs.false.i.i180.if.then10.i_crit_edge

lor.lhs.false.i.i180.if.then10.i_crit_edge:       ; preds = %lor.lhs.false.i.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

dr_mask_is_icmpv6_set.exit.i:                     ; preds = %lor.lhs.false.i.i180
  %icmpv6_header_data.i.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 6
  %258 = ptrtoint ptr %icmpv6_header_data.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %icmpv6_header_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool3.i.not.i181 = icmp eq i32 %259, 0
  br i1 %tobool3.i.not.i181, label %dr_mask_is_icmpv6_set.exit.i.if.end459_crit_edge, label %dr_mask_is_icmpv6_set.exit.i.if.then10.i_crit_edge

dr_mask_is_icmpv6_set.exit.i.if.then10.i_crit_edge: ; preds = %dr_mask_is_icmpv6_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

dr_mask_is_icmpv6_set.exit.i.if.end459_crit_edge: ; preds = %dr_mask_is_icmpv6_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end459

if.then10.i:                                      ; preds = %dr_mask_is_icmpv6_set.exit.i.if.then10.i_crit_edge, %lor.lhs.false.i.i180.if.then10.i_crit_edge, %if.else.i.if.then10.i_crit_edge
  %sw_format_ver.i21.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 23
  %260 = ptrtoint ptr %sw_format_ver.i21.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %sw_format_ver.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %261)
  %cmp.i22.i182 = icmp eq i8 %261, 1
  br i1 %cmp.i22.i182, label %if.then10.i.if.then452_crit_edge, label %if.then10.i.dr_mask_is_icmp.exit_crit_edge

if.then10.i.dr_mask_is_icmp.exit_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_mask_is_icmp.exit

if.then10.i.if.then452_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then452

dr_mask_is_icmp.exit:                             ; preds = %if.then10.i.dr_mask_is_icmp.exit_crit_edge, %if.then.i.dr_mask_is_icmp.exit_crit_edge
  %.sink29.i = phi i32 [ 256, %if.then.i.dr_mask_is_icmp.exit_crit_edge ], [ 512, %if.then10.i.dr_mask_is_icmp.exit_crit_edge ]
  %flex_protocols.i23.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %262 = ptrtoint ptr %flex_protocols.i23.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %flex_protocols.i23.i, align 8
  %264 = and i32 %263, %.sink29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %phi.cmp27.i.not = icmp eq i32 %264, 0
  br i1 %phi.cmp27.i.not, label %dr_mask_is_icmp.exit.if.end459_crit_edge, label %dr_mask_is_icmp.exit.if.then452_crit_edge

dr_mask_is_icmp.exit.if.then452_crit_edge:        ; preds = %dr_mask_is_icmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then452

dr_mask_is_icmp.exit.if.end459_crit_edge:         ; preds = %dr_mask_is_icmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end459

if.then452:                                       ; preds = %dr_mask_is_icmp.exit.if.then452_crit_edge, %if.then10.i.if.then452_crit_edge, %if.then.i.if.then452_crit_edge
  %inc453 = add nuw nsw i32 %idx.17, 1
  %arrayidx454 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.17
  %caps456 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_icmp(ptr noundef %9, ptr noundef %arrayidx454, ptr noundef nonnull %mask, ptr noundef %caps456, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end459

if.end459:                                        ; preds = %if.then452, %dr_mask_is_icmp.exit.if.end459_crit_edge, %dr_mask_is_icmpv6_set.exit.i.if.end459_crit_edge
  %idx.18 = phi i32 [ %inc453, %if.then452 ], [ %idx.17, %dr_mask_is_icmp.exit.if.end459_crit_edge ], [ %idx.17, %dr_mask_is_icmpv6_set.exit.i.if.end459_crit_edge ]
  %265 = ptrtoint ptr %misc106 to i32
  call void @__asan_loadN_noabort(i32 %265, i32 44)
  %bf.load.i184 = load i352, ptr %misc106, align 4
  %266 = and i352 %bf.load.i184, -2866873269987589389513526119127606909148641458082298923109871987078973557049916800884667425225919850086400
  %.not285 = icmp eq i352 %266, 0
  br i1 %.not285, label %if.end459.if.end468_crit_edge, label %if.then462

if.end459.if.end468_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end468

if.then462:                                       ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #10
  %inc463 = add nuw nsw i32 %idx.18, 1
  %arrayidx464 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.18
  call void @mlx5dr_ste_build_tnl_gre(ptr noundef %9, ptr noundef %arrayidx464, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end468

if.end468:                                        ; preds = %if.then462, %if.end459.if.end468_crit_edge, %if.end77.if.end468_crit_edge
  %idx.19 = phi i32 [ %inc463, %if.then462 ], [ 0, %if.end77.if.end468_crit_edge ], [ %idx.18, %if.end459.if.end468_crit_edge ]
  %267 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %match_criteria, align 4
  %269 = and i8 %268, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool472.not = icmp eq i8 %269, 0
  br i1 %tobool472.not, label %if.end468.if.end758_crit_edge, label %if.then473

if.end468.if.end758_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end758

if.then473:                                       ; preds = %if.end468
  %misc474 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %270 = ptrtoint ptr %misc474 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 44)
  %bf.load.i186 = load i352, ptr %misc474, align 4
  %271 = and i352 %bf.load.i186, 6277101361242261607124642363064349240733902412545303511040
  %tobool.i187.not = icmp eq i352 %271, 0
  br i1 %tobool.i187.not, label %if.then473.if.end481_crit_edge, label %if.then476

if.then473.if.end481_crit_edge:                   ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end481

if.then476:                                       ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #10
  %inc477 = add nuw nsw i32 %idx.19, 1
  %arrayidx478 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.19
  call void @mlx5dr_ste_build_eth_l2_tnl(ptr noundef %9, ptr noundef %arrayidx478, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end481

if.end481:                                        ; preds = %if.then476, %if.then473.if.end481_crit_edge
  %idx.20 = phi i32 [ %inc477, %if.then476 ], [ %idx.19, %if.then473.if.end481_crit_edge ]
  %inner482 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %272 = ptrtoint ptr %inner482 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %inner482, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool.not.i188 = icmp eq i32 %273, 0
  br i1 %tobool.not.i188, label %dr_mask_is_smac_set.exit193, label %if.end481.land.lhs.true485_crit_edge

if.end481.land.lhs.true485_crit_edge:             ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true485

dr_mask_is_smac_set.exit193:                      ; preds = %if.end481
  %smac_15_0.i189 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 1
  %274 = ptrtoint ptr %smac_15_0.i189 to i32
  call void @__asan_load4_noabort(i32 %274)
  %bf.load.i190 = load i32, ptr %smac_15_0.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i190)
  %tobool1.i191 = icmp ugt i32 %bf.load.i190, 65535
  br i1 %tobool1.i191, label %dr_mask_is_smac_set.exit193.land.lhs.true485_crit_edge, label %dr_mask_is_smac_set.exit193.if.end494_crit_edge

dr_mask_is_smac_set.exit193.if.end494_crit_edge:  ; preds = %dr_mask_is_smac_set.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end494

dr_mask_is_smac_set.exit193.land.lhs.true485_crit_edge: ; preds = %dr_mask_is_smac_set.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true485

land.lhs.true485:                                 ; preds = %dr_mask_is_smac_set.exit193.land.lhs.true485_crit_edge, %if.end481.land.lhs.true485_crit_edge
  %dmac_47_16.i194 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 2
  %275 = ptrtoint ptr %dmac_47_16.i194 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %dmac_47_16.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool.not.i195 = icmp eq i32 %276, 0
  br i1 %tobool.not.i195, label %dr_mask_is_dmac_set.exit200, label %land.lhs.true485.if.then489_crit_edge

land.lhs.true485.if.then489_crit_edge:            ; preds = %land.lhs.true485
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then489

dr_mask_is_dmac_set.exit200:                      ; preds = %land.lhs.true485
  %dmac_15_0.i196 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 3
  %277 = ptrtoint ptr %dmac_15_0.i196 to i32
  call void @__asan_loadN_noabort(i32 %277, i32 20)
  %bf.load.i197 = load i160, ptr %dmac_15_0.i196, align 4
  %tobool1.i198 = icmp ugt i160 %bf.load.i197, 22300745198530623141535718272648361505980415
  br i1 %tobool1.i198, label %dr_mask_is_dmac_set.exit200.if.then489_crit_edge, label %dr_mask_is_dmac_set.exit200.if.end494_crit_edge

dr_mask_is_dmac_set.exit200.if.end494_crit_edge:  ; preds = %dr_mask_is_dmac_set.exit200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end494

dr_mask_is_dmac_set.exit200.if.then489_crit_edge: ; preds = %dr_mask_is_dmac_set.exit200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then489

if.then489:                                       ; preds = %dr_mask_is_dmac_set.exit200.if.then489_crit_edge, %land.lhs.true485.if.then489_crit_edge
  %inc490 = add nuw nsw i32 %idx.20, 1
  %arrayidx491 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.20
  call void @mlx5dr_ste_build_eth_l2_src_dst(ptr noundef %9, ptr noundef %arrayidx491, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end494

if.end494:                                        ; preds = %if.then489, %dr_mask_is_dmac_set.exit200.if.end494_crit_edge, %dr_mask_is_smac_set.exit193.if.end494_crit_edge
  %idx.21 = phi i32 [ %inc490, %if.then489 ], [ %idx.20, %dr_mask_is_dmac_set.exit200.if.end494_crit_edge ], [ %idx.20, %dr_mask_is_smac_set.exit193.if.end494_crit_edge ]
  %278 = ptrtoint ptr %inner482 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %inner482, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool.not.i201 = icmp eq i32 %279, 0
  br i1 %tobool.not.i201, label %dr_mask_is_smac_set.exit206, label %if.end494.if.then497_crit_edge

if.end494.if.then497_crit_edge:                   ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then497

dr_mask_is_smac_set.exit206:                      ; preds = %if.end494
  %smac_15_0.i202 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 1
  %280 = ptrtoint ptr %smac_15_0.i202 to i32
  call void @__asan_load4_noabort(i32 %280)
  %bf.load.i203 = load i32, ptr %smac_15_0.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.load.i203)
  %tobool1.i204 = icmp ugt i32 %bf.load.i203, 65535
  br i1 %tobool1.i204, label %dr_mask_is_smac_set.exit206.if.then497_crit_edge, label %dr_mask_is_smac_set.exit206.if.end502_crit_edge

dr_mask_is_smac_set.exit206.if.end502_crit_edge:  ; preds = %dr_mask_is_smac_set.exit206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end502

dr_mask_is_smac_set.exit206.if.then497_crit_edge: ; preds = %dr_mask_is_smac_set.exit206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then497

if.then497:                                       ; preds = %dr_mask_is_smac_set.exit206.if.then497_crit_edge, %if.end494.if.then497_crit_edge
  %inc498 = add nuw nsw i32 %idx.21, 1
  %arrayidx499 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.21
  call void @mlx5dr_ste_build_eth_l2_src(ptr noundef %9, ptr noundef %arrayidx499, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end502

if.end502:                                        ; preds = %if.then497, %dr_mask_is_smac_set.exit206.if.end502_crit_edge
  %idx.22 = phi i32 [ %inc498, %if.then497 ], [ %idx.21, %dr_mask_is_smac_set.exit206.if.end502_crit_edge ]
  %first_vid504 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 3
  %281 = ptrtoint ptr %first_vid504 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 20)
  %bf.load505 = load i160, ptr %first_vid504, align 4
  %282 = and i160 %bf.load505, 22300404920057924846973375619438801984684032
  %283 = icmp eq i160 %282, 0
  br i1 %283, label %lor.lhs.false542, label %if.end502.if.then602_crit_edge

if.end502.if.then602_crit_edge:                   ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then602

lor.lhs.false542:                                 ; preds = %if.end502
  %dmac_47_16544 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 2
  %284 = ptrtoint ptr %dmac_47_16544 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %dmac_47_16544, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool545.not = icmp eq i32 %285, 0
  %tobool552.not = icmp ult i160 %bf.load505, 22300745198530623141535718272648361505980416
  %or.cond49 = select i1 %tobool545.not, i1 %tobool552.not, i1 false
  br i1 %or.cond49, label %lor.lhs.false553, label %lor.lhs.false542.if.then602_crit_edge

lor.lhs.false542.if.then602_crit_edge:            ; preds = %lor.lhs.false542
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then602

lor.lhs.false553:                                 ; preds = %lor.lhs.false542
  %ethertype555 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 1
  %286 = ptrtoint ptr %ethertype555 to i32
  call void @__asan_load4_noabort(i32 %286)
  %bf.load556 = load i32, ptr %ethertype555, align 4
  %bf.clear557 = and i32 %bf.load556, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear557)
  %tobool558.not = icmp eq i32 %bf.clear557, 0
  %287 = and i160 %bf.load505, 608472288109550112718417538580480
  %tobool566.not = icmp eq i160 %287, 0
  %or.cond50 = select i1 %tobool558.not, i1 %tobool566.not, i1 false
  br i1 %or.cond50, label %lor.lhs.false567, label %lor.lhs.false553.if.then602_crit_edge

lor.lhs.false553.if.then602_crit_edge:            ; preds = %lor.lhs.false553
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then602

lor.lhs.false567:                                 ; preds = %lor.lhs.false553
  %288 = ptrtoint ptr %misc474 to i32
  call void @__asan_loadN_noabort(i32 %288, i32 44)
  %bf.load569 = load i352, ptr %misc474, align 4
  %289 = and i352 %bf.load569, 7588470753195403528394794368477177256135252591932962377002115098453589423806218240
  %290 = icmp eq i352 %289, 0
  br i1 %290, label %lor.lhs.false567.if.end607_crit_edge, label %lor.lhs.false567.if.then602_crit_edge

lor.lhs.false567.if.then602_crit_edge:            ; preds = %lor.lhs.false567
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then602

lor.lhs.false567.if.end607_crit_edge:             ; preds = %lor.lhs.false567
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end607

if.then602:                                       ; preds = %lor.lhs.false567.if.then602_crit_edge, %lor.lhs.false553.if.then602_crit_edge, %lor.lhs.false542.if.then602_crit_edge, %if.end502.if.then602_crit_edge
  %inc603 = add nuw nsw i32 %idx.22, 1
  %arrayidx604 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.22
  call void @mlx5dr_ste_build_eth_l2_dst(ptr noundef %9, ptr noundef %arrayidx604, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end607

if.end607:                                        ; preds = %if.then602, %lor.lhs.false567.if.end607_crit_edge
  %idx.23 = phi i32 [ %inc603, %if.then602 ], [ %idx.22, %lor.lhs.false567.if.end607_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inner_ipv)
  %cmp608 = icmp eq i32 %inner_ipv, 1
  br i1 %cmp608, label %if.then610, label %if.else677

if.then610:                                       ; preds = %if.end607
  %dst_ip_127_96612 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 8
  %291 = ptrtoint ptr %dst_ip_127_96612 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %dst_ip_127_96612, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool613.not = icmp eq i32 %292, 0
  br i1 %tobool613.not, label %lor.lhs.false614, label %if.then610.if.then626_crit_edge

if.then610.if.then626_crit_edge:                  ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then626

lor.lhs.false614:                                 ; preds = %if.then610
  %dst_ip_95_64616 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 9
  %293 = ptrtoint ptr %dst_ip_95_64616 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %dst_ip_95_64616, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool617.not = icmp eq i32 %294, 0
  br i1 %tobool617.not, label %lor.lhs.false618, label %lor.lhs.false614.if.then626_crit_edge

lor.lhs.false614.if.then626_crit_edge:            ; preds = %lor.lhs.false614
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then626

lor.lhs.false618:                                 ; preds = %lor.lhs.false614
  %dst_ip_63_32620 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 10
  %295 = ptrtoint ptr %dst_ip_63_32620 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dst_ip_63_32620, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool621.not = icmp eq i32 %296, 0
  br i1 %tobool621.not, label %lor.lhs.false622, label %lor.lhs.false618.if.then626_crit_edge

lor.lhs.false618.if.then626_crit_edge:            ; preds = %lor.lhs.false618
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then626

lor.lhs.false622:                                 ; preds = %lor.lhs.false618
  %dst_ip_31_0624 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 11
  %297 = ptrtoint ptr %dst_ip_31_0624 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %dst_ip_31_0624, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool625.not = icmp eq i32 %298, 0
  br i1 %tobool625.not, label %lor.lhs.false622.if.end631_crit_edge, label %lor.lhs.false622.if.then626_crit_edge

lor.lhs.false622.if.then626_crit_edge:            ; preds = %lor.lhs.false622
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then626

lor.lhs.false622.if.end631_crit_edge:             ; preds = %lor.lhs.false622
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end631

if.then626:                                       ; preds = %lor.lhs.false622.if.then626_crit_edge, %lor.lhs.false618.if.then626_crit_edge, %lor.lhs.false614.if.then626_crit_edge, %if.then610.if.then626_crit_edge
  %inc627 = add nuw nsw i32 %idx.23, 1
  %arrayidx628 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.23
  call void @mlx5dr_ste_build_eth_l3_ipv6_dst(ptr noundef %9, ptr noundef %arrayidx628, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end631

if.end631:                                        ; preds = %if.then626, %lor.lhs.false622.if.end631_crit_edge
  %idx.24 = phi i32 [ %inc627, %if.then626 ], [ %idx.23, %lor.lhs.false622.if.end631_crit_edge ]
  %src_ip_127_96633 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 4
  %299 = ptrtoint ptr %src_ip_127_96633 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %src_ip_127_96633, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool634.not = icmp eq i32 %300, 0
  br i1 %tobool634.not, label %lor.lhs.false635, label %if.end631.if.then647_crit_edge

if.end631.if.then647_crit_edge:                   ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then647

lor.lhs.false635:                                 ; preds = %if.end631
  %src_ip_95_64637 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 5
  %301 = ptrtoint ptr %src_ip_95_64637 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %src_ip_95_64637, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool638.not = icmp eq i32 %302, 0
  br i1 %tobool638.not, label %lor.lhs.false639, label %lor.lhs.false635.if.then647_crit_edge

lor.lhs.false635.if.then647_crit_edge:            ; preds = %lor.lhs.false635
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then647

lor.lhs.false639:                                 ; preds = %lor.lhs.false635
  %src_ip_63_32641 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 6
  %303 = ptrtoint ptr %src_ip_63_32641 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %src_ip_63_32641, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool642.not = icmp eq i32 %304, 0
  br i1 %tobool642.not, label %lor.lhs.false643, label %lor.lhs.false639.if.then647_crit_edge

lor.lhs.false639.if.then647_crit_edge:            ; preds = %lor.lhs.false639
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then647

lor.lhs.false643:                                 ; preds = %lor.lhs.false639
  %src_ip_31_0645 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 7
  %305 = ptrtoint ptr %src_ip_31_0645 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %src_ip_31_0645, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool646.not = icmp eq i32 %306, 0
  br i1 %tobool646.not, label %lor.lhs.false643.if.end652_crit_edge, label %lor.lhs.false643.if.then647_crit_edge

lor.lhs.false643.if.then647_crit_edge:            ; preds = %lor.lhs.false643
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then647

lor.lhs.false643.if.end652_crit_edge:             ; preds = %lor.lhs.false643
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end652

if.then647:                                       ; preds = %lor.lhs.false643.if.then647_crit_edge, %lor.lhs.false639.if.then647_crit_edge, %lor.lhs.false635.if.then647_crit_edge, %if.end631.if.then647_crit_edge
  %inc648 = add nuw nsw i32 %idx.24, 1
  %arrayidx649 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.24
  call void @mlx5dr_ste_build_eth_l3_ipv6_src(ptr noundef %9, ptr noundef %arrayidx649, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end652

if.end652:                                        ; preds = %if.then647, %lor.lhs.false643.if.end652_crit_edge
  %idx.25 = phi i32 [ %inc648, %if.then647 ], [ %idx.24, %lor.lhs.false643.if.end652_crit_edge ]
  %307 = ptrtoint ptr %first_vid504 to i32
  call void @__asan_loadN_noabort(i32 %307, i32 20)
  %bf.load.i208 = load i160, ptr %first_vid504, align 4
  %308 = and i160 %bf.load.i208, 340277864226006452774093748167784792063
  %.not287 = icmp eq i160 %308, 0
  br i1 %.not287, label %lor.lhs.false664, label %if.end652.if.then671_crit_edge

if.end652.if.then671_crit_edge:                   ; preds = %if.end652
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then671

lor.lhs.false664:                                 ; preds = %if.end652
  %309 = ptrtoint ptr %misc474 to i32
  call void @__asan_loadN_noabort(i32 %309, i32 44)
  %bf.load666 = load i352, ptr %misc474, align 4
  %310 = and i352 %bf.load666, 19342794667089993085747200
  %tobool670.not = icmp eq i352 %310, 0
  br i1 %tobool670.not, label %lor.lhs.false664.if.end694_crit_edge, label %lor.lhs.false664.if.then671_crit_edge

lor.lhs.false664.if.then671_crit_edge:            ; preds = %lor.lhs.false664
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then671

lor.lhs.false664.if.end694_crit_edge:             ; preds = %lor.lhs.false664
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end694

if.then671:                                       ; preds = %lor.lhs.false664.if.then671_crit_edge, %if.end652.if.then671_crit_edge
  %inc672 = add nuw nsw i32 %idx.25, 1
  %arrayidx673 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.25
  call void @mlx5dr_ste_build_eth_ipv6_l3_l4(ptr noundef %9, ptr noundef %arrayidx673, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end694

if.else677:                                       ; preds = %if.end607
  %311 = ptrtoint ptr %first_vid504 to i32
  call void @__asan_loadN_noabort(i32 %311, i32 20)
  %bf.load.i.i222 = load i160, ptr %first_vid504, align 4
  %312 = and i160 %bf.load.i.i222, 340277864226006452774093747072568131583
  %.not.i223 = icmp eq i160 %312, 0
  br i1 %.not.i223, label %lor.rhs.i226, label %if.else677.if.then680_crit_edge

if.else677.if.then680_crit_edge:                  ; preds = %if.else677
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then680

lor.rhs.i226:                                     ; preds = %if.else677
  %dst_ip_31_0.i.i224 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 11
  %313 = ptrtoint ptr %dst_ip_31_0.i.i224 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %dst_ip_31_0.i.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i.i225 = icmp eq i32 %314, 0
  br i1 %tobool.not.i.i225, label %dr_mask_is_ipv4_5_tuple_set.exit230, label %lor.rhs.i226.if.then680_crit_edge

lor.rhs.i226.if.then680_crit_edge:                ; preds = %lor.rhs.i226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then680

dr_mask_is_ipv4_5_tuple_set.exit230:              ; preds = %lor.rhs.i226
  %src_ip_31_0.i.i227 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2, i32 7
  %315 = ptrtoint ptr %src_ip_31_0.i.i227 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %src_ip_31_0.i.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool1.i.i228.not = icmp eq i32 %316, 0
  br i1 %tobool1.i.i228.not, label %dr_mask_is_ipv4_5_tuple_set.exit230.if.end685_crit_edge, label %dr_mask_is_ipv4_5_tuple_set.exit230.if.then680_crit_edge

dr_mask_is_ipv4_5_tuple_set.exit230.if.then680_crit_edge: ; preds = %dr_mask_is_ipv4_5_tuple_set.exit230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then680

dr_mask_is_ipv4_5_tuple_set.exit230.if.end685_crit_edge: ; preds = %dr_mask_is_ipv4_5_tuple_set.exit230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end685

if.then680:                                       ; preds = %dr_mask_is_ipv4_5_tuple_set.exit230.if.then680_crit_edge, %lor.rhs.i226.if.then680_crit_edge, %if.else677.if.then680_crit_edge
  %inc681 = add nuw nsw i32 %idx.23, 1
  %arrayidx682 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.23
  call void @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(ptr noundef %9, ptr noundef %arrayidx682, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end685

if.end685:                                        ; preds = %if.then680, %dr_mask_is_ipv4_5_tuple_set.exit230.if.end685_crit_edge
  %idx.26 = phi i32 [ %inc681, %if.then680 ], [ %idx.23, %dr_mask_is_ipv4_5_tuple_set.exit230.if.end685_crit_edge ]
  %317 = ptrtoint ptr %first_vid504 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 20)
  %bf.load.i232 = load i160, ptr %first_vid504, align 4
  %318 = and i160 %bf.load.i232, 1095216660480
  %tobool.i233.not = icmp eq i160 %318, 0
  br i1 %tobool.i233.not, label %if.end685.if.end694_crit_edge, label %if.then688

if.end685.if.end694_crit_edge:                    ; preds = %if.end685
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end694

if.then688:                                       ; preds = %if.end685
  call void @__sanitizer_cov_trace_pc() #10
  %inc689 = add nuw nsw i32 %idx.26, 1
  %arrayidx690 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.26
  call void @mlx5dr_ste_build_eth_l3_ipv4_misc(ptr noundef %9, ptr noundef %arrayidx690, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end694

if.end694:                                        ; preds = %if.then688, %if.end685.if.end694_crit_edge, %if.then671, %lor.lhs.false664.if.end694_crit_edge
  %idx.27 = phi i32 [ %inc672, %if.then671 ], [ %idx.25, %lor.lhs.false664.if.end694_crit_edge ], [ %inc689, %if.then688 ], [ %idx.26, %if.end685.if.end694_crit_edge ]
  %misc3695 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4
  %319 = ptrtoint ptr %misc3695 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %misc3695, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool696.not = icmp eq i32 %320, 0
  br i1 %tobool696.not, label %lor.lhs.false697, label %if.end694.if.then700_crit_edge

if.end694.if.then700_crit_edge:                   ; preds = %if.end694
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then700

lor.lhs.false697:                                 ; preds = %if.end694
  %inner_tcp_ack_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 2
  %321 = ptrtoint ptr %inner_tcp_ack_num to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %inner_tcp_ack_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool699.not = icmp eq i32 %322, 0
  br i1 %tobool699.not, label %lor.lhs.false697.if.end705_crit_edge, label %lor.lhs.false697.if.then700_crit_edge

lor.lhs.false697.if.then700_crit_edge:            ; preds = %lor.lhs.false697
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then700

lor.lhs.false697.if.end705_crit_edge:             ; preds = %lor.lhs.false697
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end705

if.then700:                                       ; preds = %lor.lhs.false697.if.then700_crit_edge, %if.end694.if.then700_crit_edge
  %inc701 = add nuw nsw i32 %idx.27, 1
  %arrayidx702 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.27
  call void @mlx5dr_ste_build_eth_l4_misc(ptr noundef %9, ptr noundef %arrayidx702, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end705

if.end705:                                        ; preds = %if.then700, %lor.lhs.false697.if.end705_crit_edge
  %idx.28 = phi i32 [ %inc701, %if.then700 ], [ %idx.27, %lor.lhs.false697.if.end705_crit_edge ]
  %misc2706 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %323 = ptrtoint ptr %misc2706 to i32
  call void @__asan_loadN_noabort(i32 %323, i32 16)
  %bf.load707 = load i128, ptr %misc2706, align 4
  %324 = and i128 %bf.load707, 79228162495817593519834398720
  %325 = icmp eq i128 %324, 0
  br i1 %325, label %if.end705.if.end738_crit_edge, label %if.then733

if.end705.if.end738_crit_edge:                    ; preds = %if.end705
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end738

if.then733:                                       ; preds = %if.end705
  call void @__sanitizer_cov_trace_pc() #10
  %inc734 = add nuw nsw i32 %idx.28, 1
  %arrayidx735 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.28
  call void @mlx5dr_ste_build_mpls(ptr noundef %9, ptr noundef %arrayidx735, ptr noundef nonnull %mask, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end738

if.end738:                                        ; preds = %if.then733, %if.end705.if.end738_crit_edge
  %idx.29 = phi i32 [ %inc734, %if.then733 ], [ %idx.28, %if.end705.if.end738_crit_edge ]
  %326 = ptrtoint ptr %misc2706 to i32
  call void @__asan_loadN_noabort(i32 %326, i32 16)
  %bf.load.i235 = load i128, ptr %misc2706, align 4
  %327 = and i128 %bf.load.i235, 18446744069414584320
  %328 = icmp eq i128 %327, 0
  br i1 %328, label %if.end738.if.else747_crit_edge, label %dr_mask_is_tnl_mpls_over_gre.exit240

if.end738.if.else747_crit_edge:                   ; preds = %if.end738
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else747

dr_mask_is_tnl_mpls_over_gre.exit240:             ; preds = %if.end738
  %flex_protocols.i.i236 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %329 = ptrtoint ptr %flex_protocols.i.i236 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %flex_protocols.i.i236, align 8
  %and.i.i237 = and i32 %330, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i237)
  %tobool21.i238.not = icmp eq i32 %and.i.i237, 0
  br i1 %tobool21.i238.not, label %dr_mask_is_tnl_mpls_over_gre.exit240.if.else747_crit_edge, label %if.then740

dr_mask_is_tnl_mpls_over_gre.exit240.if.else747_crit_edge: ; preds = %dr_mask_is_tnl_mpls_over_gre.exit240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else747

if.then740:                                       ; preds = %dr_mask_is_tnl_mpls_over_gre.exit240
  call void @__sanitizer_cov_trace_pc() #10
  %inc741 = add nuw nsw i32 %idx.29, 1
  %arrayidx742 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.29
  %caps744 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_mpls_over_gre(ptr noundef %9, ptr noundef %arrayidx742, ptr noundef nonnull %mask, ptr noundef %caps744, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end758

if.else747:                                       ; preds = %dr_mask_is_tnl_mpls_over_gre.exit240.if.else747_crit_edge, %if.end738.if.else747_crit_edge
  %331 = and i128 %bf.load.i235, 4294967295
  %332 = icmp eq i128 %331, 0
  br i1 %332, label %if.else747.if.end758_crit_edge, label %dr_mask_is_tnl_mpls_over_udp.exit247

if.else747.if.end758_crit_edge:                   ; preds = %if.else747
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end758

dr_mask_is_tnl_mpls_over_udp.exit247:             ; preds = %if.else747
  %flex_protocols.i.i243 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7, i32 8
  %333 = ptrtoint ptr %flex_protocols.i.i243 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %flex_protocols.i.i243, align 8
  %and.i.i244 = and i32 %334, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i244)
  %tobool20.i245.not = icmp eq i32 %and.i.i244, 0
  br i1 %tobool20.i245.not, label %dr_mask_is_tnl_mpls_over_udp.exit247.if.end758_crit_edge, label %if.then749

dr_mask_is_tnl_mpls_over_udp.exit247.if.end758_crit_edge: ; preds = %dr_mask_is_tnl_mpls_over_udp.exit247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end758

if.then749:                                       ; preds = %dr_mask_is_tnl_mpls_over_udp.exit247
  call void @__sanitizer_cov_trace_pc() #10
  %inc750 = add nuw nsw i32 %idx.29, 1
  %arrayidx751 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.29
  %caps753 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  call void @mlx5dr_ste_build_tnl_mpls_over_udp(ptr noundef %9, ptr noundef %arrayidx751, ptr noundef nonnull %mask, ptr noundef %caps753, i1 noundef zeroext true, i1 noundef zeroext %cmp) #8
  br label %if.end758

if.end758:                                        ; preds = %if.then749, %dr_mask_is_tnl_mpls_over_udp.exit247.if.end758_crit_edge, %if.else747.if.end758_crit_edge, %if.then740, %if.end468.if.end758_crit_edge
  %idx.30 = phi i32 [ %inc741, %if.then740 ], [ %inc750, %if.then749 ], [ %idx.29, %dr_mask_is_tnl_mpls_over_udp.exit247.if.end758_crit_edge ], [ %idx.19, %if.end468.if.end758_crit_edge ], [ %idx.29, %if.else747.if.end758_crit_edge ]
  %335 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %match_criteria, align 4
  %337 = and i8 %336, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool762.not = icmp eq i8 %337, 0
  br i1 %tobool762.not, label %if.end758.if.end778_crit_edge, label %if.then763

if.end758.if.end778_crit_edge:                    ; preds = %if.end758
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end778

if.then763:                                       ; preds = %if.end758
  %misc4764 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5
  %prog_sample_field_id_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 1
  %338 = ptrtoint ptr %prog_sample_field_id_0.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %prog_sample_field_id_0.i, align 4
  %340 = ptrtoint ptr %misc4764 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %misc4764, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i.i248 = icmp eq i32 %339, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %339)
  %cmp.i.i249 = icmp ult i32 %339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool1.i.i250 = icmp ne i32 %341, 0
  %retval.0.i.i = select i1 %tobool.not.i.i248, i1 %tobool1.i.i250, i1 %cmp.i.i249
  br i1 %retval.0.i.i, label %if.then763.if.then766_crit_edge, label %lor.lhs.false.i251

if.then763.if.then766_crit_edge:                  ; preds = %if.then763
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then766

lor.lhs.false.i251:                               ; preds = %if.then763
  %prog_sample_field_id_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 3
  %342 = ptrtoint ptr %prog_sample_field_id_1.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %prog_sample_field_id_1.i, align 4
  %prog_sample_field_value_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 2
  %344 = ptrtoint ptr %prog_sample_field_value_1.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %prog_sample_field_value_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool.not.i12.i = icmp eq i32 %343, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %343)
  %cmp.i13.i = icmp ult i32 %343, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool1.i14.i = icmp ne i32 %345, 0
  %retval.0.i15.i = select i1 %tobool.not.i12.i, i1 %tobool1.i14.i, i1 %cmp.i13.i
  br i1 %retval.0.i15.i, label %lor.lhs.false.i251.if.then766_crit_edge, label %lor.lhs.false2.i252

lor.lhs.false.i251.if.then766_crit_edge:          ; preds = %lor.lhs.false.i251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then766

lor.lhs.false2.i252:                              ; preds = %lor.lhs.false.i251
  %prog_sample_field_id_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 5
  %346 = ptrtoint ptr %prog_sample_field_id_2.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %prog_sample_field_id_2.i, align 4
  %prog_sample_field_value_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 4
  %348 = ptrtoint ptr %prog_sample_field_value_2.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %prog_sample_field_value_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool.not.i16.i = icmp eq i32 %347, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %347)
  %cmp.i17.i = icmp ult i32 %347, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool1.i18.i = icmp ne i32 %349, 0
  %retval.0.i19.i = select i1 %tobool.not.i16.i, i1 %tobool1.i18.i, i1 %cmp.i17.i
  br i1 %retval.0.i19.i, label %lor.lhs.false2.i252.if.then766_crit_edge, label %dr_mask_is_flex_parser_0_3_set.exit

lor.lhs.false2.i252.if.then766_crit_edge:         ; preds = %lor.lhs.false2.i252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then766

dr_mask_is_flex_parser_0_3_set.exit:              ; preds = %lor.lhs.false2.i252
  %prog_sample_field_id_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 7
  %350 = ptrtoint ptr %prog_sample_field_id_3.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %prog_sample_field_id_3.i, align 4
  %prog_sample_field_value_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 6
  %352 = ptrtoint ptr %prog_sample_field_value_3.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %prog_sample_field_value_3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool.not.i20.i = icmp eq i32 %351, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %351)
  %cmp.i21.i = icmp ult i32 %351, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool1.i22.i = icmp ne i32 %353, 0
  %retval.0.i23.i = select i1 %tobool.not.i20.i, i1 %tobool1.i22.i, i1 %cmp.i21.i
  br i1 %retval.0.i23.i, label %dr_mask_is_flex_parser_0_3_set.exit.if.then766_crit_edge, label %dr_mask_is_flex_parser_0_3_set.exit.if.end770_crit_edge

dr_mask_is_flex_parser_0_3_set.exit.if.end770_crit_edge: ; preds = %dr_mask_is_flex_parser_0_3_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end770

dr_mask_is_flex_parser_0_3_set.exit.if.then766_crit_edge: ; preds = %dr_mask_is_flex_parser_0_3_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then766

if.then766:                                       ; preds = %dr_mask_is_flex_parser_0_3_set.exit.if.then766_crit_edge, %lor.lhs.false2.i252.if.then766_crit_edge, %lor.lhs.false.i251.if.then766_crit_edge, %if.then763.if.then766_crit_edge
  %inc767 = add nuw nsw i32 %idx.30, 1
  %arrayidx768 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.30
  call void @mlx5dr_ste_build_flex_parser_0(ptr noundef %9, ptr noundef %arrayidx768, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %if.end770

if.end770:                                        ; preds = %if.then766, %dr_mask_is_flex_parser_0_3_set.exit.if.end770_crit_edge
  %idx.31 = phi i32 [ %inc767, %if.then766 ], [ %idx.30, %dr_mask_is_flex_parser_0_3_set.exit.if.end770_crit_edge ]
  %354 = ptrtoint ptr %prog_sample_field_id_0.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %prog_sample_field_id_0.i, align 4
  %356 = and i32 %355, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %356)
  %357 = icmp eq i32 %356, 4
  br i1 %357, label %if.end770.if.end778.thread_crit_edge, label %lor.lhs.false.i256

if.end770.if.end778.thread_crit_edge:             ; preds = %if.end770
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end778.thread

lor.lhs.false.i256:                               ; preds = %if.end770
  %prog_sample_field_id_1.i255 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 3
  %358 = ptrtoint ptr %prog_sample_field_id_1.i255 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %prog_sample_field_id_1.i255, align 4
  %360 = and i32 %359, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %360)
  %361 = icmp eq i32 %360, 4
  br i1 %361, label %lor.lhs.false.i256.if.end778.thread_crit_edge, label %lor.lhs.false2.i258

lor.lhs.false.i256.if.end778.thread_crit_edge:    ; preds = %lor.lhs.false.i256
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end778.thread

lor.lhs.false2.i258:                              ; preds = %lor.lhs.false.i256
  %prog_sample_field_id_2.i257 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 5
  %362 = ptrtoint ptr %prog_sample_field_id_2.i257 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %prog_sample_field_id_2.i257, align 4
  %364 = and i32 %363, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %364)
  %365 = icmp eq i32 %364, 4
  br i1 %365, label %lor.lhs.false2.i258.if.end778.thread_crit_edge, label %dr_mask_is_flex_parser_4_7_set.exit

lor.lhs.false2.i258.if.end778.thread_crit_edge:   ; preds = %lor.lhs.false2.i258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end778.thread

dr_mask_is_flex_parser_4_7_set.exit:              ; preds = %lor.lhs.false2.i258
  %prog_sample_field_id_3.i259 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 5, i32 7
  %366 = ptrtoint ptr %prog_sample_field_id_3.i259 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %prog_sample_field_id_3.i259, align 4
  %368 = and i32 %367, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %368)
  %369 = icmp eq i32 %368, 4
  br i1 %369, label %dr_mask_is_flex_parser_4_7_set.exit.if.end778.thread_crit_edge, label %dr_mask_is_flex_parser_4_7_set.exit.if.end778_crit_edge

dr_mask_is_flex_parser_4_7_set.exit.if.end778_crit_edge: ; preds = %dr_mask_is_flex_parser_4_7_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end778

dr_mask_is_flex_parser_4_7_set.exit.if.end778.thread_crit_edge: ; preds = %dr_mask_is_flex_parser_4_7_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end778.thread

if.end778.thread:                                 ; preds = %dr_mask_is_flex_parser_4_7_set.exit.if.end778.thread_crit_edge, %lor.lhs.false2.i258.if.end778.thread_crit_edge, %lor.lhs.false.i256.if.end778.thread_crit_edge, %if.end770.if.end778.thread_crit_edge
  %inc774 = add nuw nsw i32 %idx.31, 1
  %arrayidx775 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.31
  call void @mlx5dr_ste_build_flex_parser_1(ptr noundef %9, ptr noundef %arrayidx775, ptr noundef nonnull %mask, i1 noundef zeroext false, i1 noundef zeroext %cmp) #8
  br label %lor.lhs.false783

if.end778:                                        ; preds = %dr_mask_is_flex_parser_4_7_set.exit.if.end778_crit_edge, %if.end758.if.end778_crit_edge
  %idx.32 = phi i32 [ %idx.31, %dr_mask_is_flex_parser_4_7_set.exit.if.end778_crit_edge ], [ %idx.30, %if.end758.if.end778_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.32)
  %tobool779.not = icmp ne i32 %idx.32, 0
  %brmerge58 = or i1 %allow_empty_match.0.off0, %tobool779.not
  br i1 %brmerge58, label %if.end778.lor.lhs.false783_crit_edge, label %if.end778.if.end792.thread_crit_edge

if.end778.if.end792.thread_crit_edge:             ; preds = %if.end778
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end792.thread

if.end778.lor.lhs.false783_crit_edge:             ; preds = %if.end778
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false783

lor.lhs.false783:                                 ; preds = %if.end778.lor.lhs.false783_crit_edge, %if.end778.thread
  %idx.32295 = phi i32 [ %inc774, %if.end778.thread ], [ %idx.32, %if.end778.lor.lhs.false783_crit_edge ]
  %370 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %match_criteria, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %cmp786 = icmp eq i8 %371, 0
  br i1 %cmp786, label %lor.lhs.false783.if.end792.thread_crit_edge, label %if.end792

lor.lhs.false783.if.end792.thread_crit_edge:      ; preds = %lor.lhs.false783
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end792.thread

if.end792.thread:                                 ; preds = %lor.lhs.false783.if.end792.thread_crit_edge, %if.end778.if.end792.thread_crit_edge
  %idx.32294 = phi i32 [ 0, %if.end778.if.end792.thread_crit_edge ], [ %idx.32295, %lor.lhs.false783.if.end792.thread_crit_edge ]
  %inc789 = add nuw nsw i32 %idx.32294, 1
  %arrayidx790 = getelementptr %struct.mlx5dr_ste_build, ptr %arrayidx4, i32 %idx.32294
  call void @mlx5dr_ste_build_empty_always_hit(ptr noundef %arrayidx790, i1 noundef zeroext %cmp) #8
  br label %for.body.preheader

if.end792:                                        ; preds = %lor.lhs.false783
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.32295)
  %cmp793 = icmp eq i32 %idx.32295, 0
  br i1 %cmp793, label %do.end, label %if.end792.for.body.preheader_crit_edge

if.end792.for.body.preheader_crit_edge:           ; preds = %if.end792
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end792.for.body.preheader_crit_edge, %if.end792.thread
  %idx.33298 = phi i32 [ %inc789, %if.end792.thread ], [ %idx.32295, %if.end792.for.body.preheader_crit_edge ]
  br label %for.body

do.end:                                           ; preds = %if.end792
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 1
  %372 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %mdev, align 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %373, align 8
  %376 = call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i = and i32 %376, -16384
  %377 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %377, i32 0, i32 2
  %378 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %379, i32 0, i32 68
  %380 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 656, i32 noundef %381) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc821 = add nuw nsw i32 %i.0290, 1
  %exitcond.not = icmp eq i32 %inc821, 416
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0290 = phi i32 [ %inc821, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx800 = getelementptr i8, ptr %mask, i32 %i.0290
  %382 = ptrtoint ptr %arrayidx800 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx800, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %cmp802.not = icmp eq i8 %383, 0
  br i1 %cmp802.not, label %for.cond, label %do.body805

do.body805:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_matcher_set_ste_builders.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_matcher_set_ste_builders, %if.then811)) #8
          to label %cleanup [label %if.then811], !srcloc !45

if.then811:                                       ; preds = %do.body805
  call void @__sanitizer_cov_trace_pc() #10
  %mdev812 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 1
  %384 = ptrtoint ptr %mdev812 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %mdev812, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 8
  %388 = call i32 @llvm.read_register.i32(metadata !35) #8
  %and.i261 = and i32 %388, -16384
  %389 = inttoptr i32 %and.i261 to ptr
  %task815 = getelementptr inbounds %struct.thread_info, ptr %389, i32 0, i32 2
  %390 = ptrtoint ptr %task815 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %task815, align 8
  %pid816 = getelementptr inbounds %struct.task_struct, ptr %391, i32 0, i32 68
  %392 = ptrtoint ptr %pid816 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %pid816, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_matcher_set_ste_builders.__UNIQUE_ID_ddebug545, ptr noundef %387, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 663, i32 noundef %393) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %ste_builder = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 2
  %394 = ptrtoint ptr %ste_builder to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %arrayidx4, ptr %ste_builder, align 8
  %conv822 = trunc i32 %idx.33298 to i8
  %arrayidx824 = getelementptr %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 5, i32 %outer_ipv, i32 %inner_ipv
  %395 = ptrtoint ptr %arrayidx824 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %conv822, ptr %arrayidx824, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then811, %do.body805, %do.end, %if.end55.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %mask) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_build_pre_check(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_general_purpose(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_register_0(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_register_1(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_src_gvmi_qpn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l2_src_dst(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l2_src(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l2_dst(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l3_ipv6_dst(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l3_ipv6_src(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_ipv6_l3_l4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l3_ipv4_misc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_vxlan_gpe(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_geneve(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_geneve_tlv_opt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_geneve_tlv_opt_exist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_gtpu_flex_parser_0(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_gtpu_flex_parser_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_gtpu(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_header_0_1(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l4_misc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_mpls(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_mpls_over_gre(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_mpls_over_udp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_icmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_tnl_gre(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_eth_l2_tnl(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_flex_parser_0(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_flex_parser_1(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_build_empty_always_hit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 389, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5dr_matcher_select_builders.__UNIQUE_ID_ddebug544, !1, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 1086, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 896, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dr_matcher_copy_param._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @dr_matcher_copy_param._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 902, i32 4}
!17 = !{ptr @dr_matcher_copy_param._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @dr_matcher_copy_param._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 920, i32 4}
!21 = !{ptr @dr_matcher_copy_param.__UNIQUE_ID_ddebug546, !20, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 822, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dr_matcher_set_all_ste_builders._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dr_matcher_set_all_ste_builders._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 656, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dr_matcher_set_ste_builders._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dr_matcher_set_ste_builders._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_matcher.c", i32 663, i32 4}
!34 = !{ptr @dr_matcher_set_ste_builders.__UNIQUE_ID_ddebug545, !33, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148803044, i64 2148803049, i64 2148803062, i64 2148803106, i64 2148803140, i64 2148803161}
!46 = !{i64 2148322759, i64 2148322791, i64 2148322820, i64 2148322854, i64 2148322885, i64 2148322908}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148410760}
!50 = !{i64 2148325224, i64 2148325256, i64 2148325285, i64 2148325319, i64 2148325350, i64 2148325373}
