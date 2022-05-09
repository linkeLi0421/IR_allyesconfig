; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_ste_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dr_hw_ste_format = type { [32 x i8], [16 x i8], [16 x i8] }
%struct.mlx5dr_ste = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.mlx5dr_matcher_rx_tx = type { ptr, ptr, ptr, [2 x [2 x [18 x %struct.mlx5dr_ste_build]]], i8, [2 x [2 x i8]], i64, ptr, i32, %struct.list_head, i32 }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.mlx5dr_ste_send_info = type { ptr, %struct.list_head, i16, i16, [64 x i8], ptr }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.mlx5dr_htbl_connect_info = type { i32, %union.anon.178 }
%union.anon.178 = type { i64 }
%struct.mlx5dr_table_rx_tx = type { ptr, ptr, i64, %struct.list_head }
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
%struct.mlx5dr_ste_action_modify_field = type { i16, i8, i8, i8, i8 }
%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc2, %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc4, %struct.mlx5dr_match_misc5 }
%struct.mlx5dr_match_misc = type { [44 x i8], i32, i32, [3 x i32] }
%struct.mlx5dr_match_spec = type { i32, i32, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc2 = type { i128, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc4 = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5dr_match_misc5 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_matcher = type <{ ptr, [4 x i8], %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx, %struct.list_head, i32, %struct.mlx5dr_match_param, i8, [3 x i8], %struct.refcount_struct, %struct.list_head, [4 x i8] }>
%struct.mlx5dr_match_parameters = type { i32, ptr }

@mlx5dr_ste_create_next_htbl.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5dr_ste_create_next_htbl\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Failed allocating table\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5dr_ste_create_next_htbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed writing table to HW\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_ste_create_next_htbl._entry_ptr = internal global ptr @mlx5dr_ste_create_next_htbl._entry, section ".printk_index", align 4
@mlx5dr_ste_build_pre_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 635, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Partial mask source_port is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5dr_ste_build_pre_check\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5dr_ste_build_pre_check._entry_ptr = internal global ptr @mlx5dr_ste_build_pre_check._entry, section ".printk_index", align 4
@mlx5dr_ste_build_pre_check._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 641, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): Partial mask source_eswitch_owner_vhca_id is not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5dr_ste_build_pre_check._entry_ptr.12 = internal global ptr @mlx5dr_ste_build_pre_check._entry.10, section ".printk_index", align 4
@mlx5dr_ste_ctx_arr = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ste_ctx_v0, ptr @ste_ctx_v1], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_ste_build_pre_check_spec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 611, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): Partial ip_version mask with src/dst IP is not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dr_ste_build_pre_check_spec\00", [36 x i8] zeroinitializer }, align 32
@dr_ste_build_pre_check_spec._entry_ptr = internal global ptr @dr_ste_build_pre_check_spec._entry, section ".printk_index", align 4
@dr_ste_build_pre_check_spec._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 617, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): Partial/no ethertype mask with src/dst IP is not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@dr_ste_build_pre_check_spec._entry_ptr.17 = internal global ptr @dr_ste_build_pre_check_spec._entry.15, section ".printk_index", align 4
@ste_ctx_v0 = external dso_local global %struct.mlx5dr_ste_ctx, align 4
@ste_ctx_v1 = external dso_local global %struct.mlx5dr_ste_ctx, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 18]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 15]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 441, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 450, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 634, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 640, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"mlx5dr_ste_ctx_arr\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1363, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 610, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 616, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @dr_ste_build_pre_check_spec._entry, ptr @dr_ste_build_pre_check_spec._entry.15, ptr @dr_ste_build_pre_check_spec._entry_ptr, ptr @dr_ste_build_pre_check_spec._entry_ptr.17, ptr @mlx5dr_ste_build_pre_check._entry, ptr @mlx5dr_ste_build_pre_check._entry.10, ptr @mlx5dr_ste_build_pre_check._entry_ptr, ptr @mlx5dr_ste_build_pre_check._entry_ptr.12, ptr @mlx5dr_ste_create_next_htbl._entry, ptr @mlx5dr_ste_create_next_htbl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @mlx5dr_ste_ctx_arr, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_ste_create_next_htbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_ste_build_pre_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_ste_build_pre_check._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_ste_ctx_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_ste_build_pre_check_spec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_ste_build_pre_check_spec._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5dr_ste_supp_ttl_cs_recalc(ptr nocapture noundef readonly %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_format_ver = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 23
  %0 = ptrtoint ptr %sw_format_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sw_format_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp ne i8 %1, 0
  ret i1 %cmp
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_calc_hash_index(ptr nocapture noundef readonly %hw_ste_p, ptr nocapture noundef readonly %htbl) local_unnamed_addr #1 align 64 {
entry:
  %masked = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %masked) #17
  %0 = call ptr @memset(ptr %masked, i32 0, i32 16)
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 3
  %1 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chunk, align 4
  %num_of_entries = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_of_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 1
  %5 = ptrtoint ptr %byte_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %byte_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp1 = icmp eq i16 %6, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %conv6 = zext i16 %6 to i32
  %and = and i32 %conv6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader.if.end10_crit_edge, label %if.then8

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then8:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %masked, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.cond.preheader.if.end10_crit_edge
  %and.1 = and i32 %conv6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end10.if.end10.1_crit_edge, label %if.then8.1

if.end10.if.end10.1_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.1

if.then8.1:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.1 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx9.1 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx9.1, align 1
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then8.1, %if.end10.if.end10.1_crit_edge
  %and.2 = and i32 %conv6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end10.1.if.end10.2_crit_edge, label %if.then8.2

if.end10.1.if.end10.2_crit_edge:                  ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.2

if.then8.2:                                       ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.2 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %arrayidx9.2 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx9.2, align 1
  br label %if.end10.2

if.end10.2:                                       ; preds = %if.then8.2, %if.end10.1.if.end10.2_crit_edge
  %and.3 = and i32 %conv6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end10.2.if.end10.3_crit_edge, label %if.then8.3

if.end10.2.if.end10.3_crit_edge:                  ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.3

if.then8.3:                                       ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.3 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx9.3 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx9.3, align 1
  br label %if.end10.3

if.end10.3:                                       ; preds = %if.then8.3, %if.end10.2.if.end10.3_crit_edge
  %and.4 = and i32 %conv6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end10.3.if.end10.4_crit_edge, label %if.then8.4

if.end10.3.if.end10.4_crit_edge:                  ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.4

if.then8.4:                                       ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.4 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %arrayidx9.4 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx9.4, align 1
  br label %if.end10.4

if.end10.4:                                       ; preds = %if.then8.4, %if.end10.3.if.end10.4_crit_edge
  %and.5 = and i32 %conv6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end10.4.if.end10.5_crit_edge, label %if.then8.5

if.end10.4.if.end10.5_crit_edge:                  ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.5

if.then8.5:                                       ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.5 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5, align 1
  %arrayidx9.5 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx9.5, align 1
  br label %if.end10.5

if.end10.5:                                       ; preds = %if.then8.5, %if.end10.4.if.end10.5_crit_edge
  %and.6 = and i32 %conv6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end10.5.if.end10.6_crit_edge, label %if.then8.6

if.end10.5.if.end10.6_crit_edge:                  ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.6

if.then8.6:                                       ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.6 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  %arrayidx9.6 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx9.6, align 1
  br label %if.end10.6

if.end10.6:                                       ; preds = %if.then8.6, %if.end10.5.if.end10.6_crit_edge
  %and.7 = and i32 %conv6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end10.6.if.end10.7_crit_edge, label %if.then8.7

if.end10.6.if.end10.7_crit_edge:                  ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.7

if.then8.7:                                       ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.7 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.7, align 1
  %arrayidx9.7 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx9.7, align 1
  br label %if.end10.7

if.end10.7:                                       ; preds = %if.then8.7, %if.end10.6.if.end10.7_crit_edge
  %and.8 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end10.7.if.end10.8_crit_edge, label %if.then8.8

if.end10.7.if.end10.8_crit_edge:                  ; preds = %if.end10.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.8

if.then8.8:                                       ; preds = %if.end10.7
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.8 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.8, align 1
  %arrayidx9.8 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 8
  %33 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx9.8, align 1
  br label %if.end10.8

if.end10.8:                                       ; preds = %if.then8.8, %if.end10.7.if.end10.8_crit_edge
  %and.9 = and i32 %conv6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %if.end10.8.if.end10.9_crit_edge, label %if.then8.9

if.end10.8.if.end10.9_crit_edge:                  ; preds = %if.end10.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.9

if.then8.9:                                       ; preds = %if.end10.8
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.9 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 9
  %34 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.9, align 1
  %arrayidx9.9 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx9.9, align 1
  br label %if.end10.9

if.end10.9:                                       ; preds = %if.then8.9, %if.end10.8.if.end10.9_crit_edge
  %and.10 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %if.end10.9.if.end10.10_crit_edge, label %if.then8.10

if.end10.9.if.end10.10_crit_edge:                 ; preds = %if.end10.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.10

if.then8.10:                                      ; preds = %if.end10.9
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.10 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.10, align 1
  %arrayidx9.10 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 10
  %39 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx9.10, align 1
  br label %if.end10.10

if.end10.10:                                      ; preds = %if.then8.10, %if.end10.9.if.end10.10_crit_edge
  %and.11 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool.not.11, label %if.end10.10.if.end10.11_crit_edge, label %if.then8.11

if.end10.10.if.end10.11_crit_edge:                ; preds = %if.end10.10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.11

if.then8.11:                                      ; preds = %if.end10.10
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.11 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.11, align 1
  %arrayidx9.11 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 11
  %42 = ptrtoint ptr %arrayidx9.11 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx9.11, align 1
  br label %if.end10.11

if.end10.11:                                      ; preds = %if.then8.11, %if.end10.10.if.end10.11_crit_edge
  %and.12 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12)
  %tobool.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool.not.12, label %if.end10.11.if.end10.12_crit_edge, label %if.then8.12

if.end10.11.if.end10.12_crit_edge:                ; preds = %if.end10.11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.12

if.then8.12:                                      ; preds = %if.end10.11
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.12 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 12
  %43 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.12, align 1
  %arrayidx9.12 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 12
  %45 = ptrtoint ptr %arrayidx9.12 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx9.12, align 1
  br label %if.end10.12

if.end10.12:                                      ; preds = %if.then8.12, %if.end10.11.if.end10.12_crit_edge
  %and.13 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13)
  %tobool.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool.not.13, label %if.end10.12.if.end10.13_crit_edge, label %if.then8.13

if.end10.12.if.end10.13_crit_edge:                ; preds = %if.end10.12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.13

if.then8.13:                                      ; preds = %if.end10.12
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.13 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 13
  %46 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.13, align 1
  %arrayidx9.13 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 13
  %48 = ptrtoint ptr %arrayidx9.13 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx9.13, align 1
  br label %if.end10.13

if.end10.13:                                      ; preds = %if.then8.13, %if.end10.12.if.end10.13_crit_edge
  %and.14 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14)
  %tobool.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool.not.14, label %if.end10.13.if.end10.14_crit_edge, label %if.then8.14

if.end10.13.if.end10.14_crit_edge:                ; preds = %if.end10.13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.14

if.then8.14:                                      ; preds = %if.end10.13
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.14 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 14
  %49 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.14, align 1
  %arrayidx9.14 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 14
  %51 = ptrtoint ptr %arrayidx9.14 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx9.14, align 1
  br label %if.end10.14

if.end10.14:                                      ; preds = %if.then8.14, %if.end10.13.if.end10.14_crit_edge
  %and.15 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.15)
  %tobool.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool.not.15, label %if.end10.14.if.end10.15_crit_edge, label %if.then8.15

if.end10.14.if.end10.15_crit_edge:                ; preds = %if.end10.14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.15

if.then8.15:                                      ; preds = %if.end10.14
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.15 = getelementptr %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 1, i32 15
  %52 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.15, align 1
  %arrayidx9.15 = getelementptr inbounds [16 x i8], ptr %masked, i32 0, i32 15
  %54 = ptrtoint ptr %arrayidx9.15 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx9.15, align 1
  br label %if.end10.15

if.end10.15:                                      ; preds = %if.then8.15, %if.end10.14.if.end10.15_crit_edge
  %call.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %masked, i32 noundef 16) #20
  %55 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_of_entries, align 8
  %sub = add i32 %56, -1
  %and15 = and i32 %sub, %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end10.15, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and15, %if.end10.15 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %masked) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr nocapture noundef readonly %bit_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bit_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp3 = icmp eq i8 %1, -1
  %shl.1 = select i1 %cmp3, i16 2, i16 0
  %arrayidx.1 = getelementptr i8, ptr %bit_mask, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp3.1 = icmp eq i8 %3, -1
  %4 = zext i1 %cmp3.1 to i16
  %spec.select.1 = or i16 %shl.1, %4
  %arrayidx.2 = getelementptr i8, ptr %bit_mask, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp3.2 = icmp eq i8 %6, -1
  %7 = shl nuw nsw i16 %spec.select.1, 2
  %8 = select i1 %cmp3.2, i16 2, i16 0
  %shl.3 = or i16 %7, %8
  %arrayidx.3 = getelementptr i8, ptr %bit_mask, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp3.3 = icmp eq i8 %10, -1
  %11 = zext i1 %cmp3.3 to i16
  %spec.select.3 = or i16 %shl.3, %11
  %arrayidx.4 = getelementptr i8, ptr %bit_mask, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp3.4 = icmp eq i8 %13, -1
  %14 = shl nuw nsw i16 %spec.select.3, 2
  %15 = select i1 %cmp3.4, i16 2, i16 0
  %shl.5 = or i16 %14, %15
  %arrayidx.5 = getelementptr i8, ptr %bit_mask, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp3.5 = icmp eq i8 %17, -1
  %18 = zext i1 %cmp3.5 to i16
  %spec.select.5 = or i16 %shl.5, %18
  %arrayidx.6 = getelementptr i8, ptr %bit_mask, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp3.6 = icmp eq i8 %20, -1
  %21 = shl i16 %spec.select.5, 2
  %22 = select i1 %cmp3.6, i16 2, i16 0
  %shl.7 = or i16 %21, %22
  %arrayidx.7 = getelementptr i8, ptr %bit_mask, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp3.7 = icmp eq i8 %24, -1
  %25 = zext i1 %cmp3.7 to i16
  %spec.select.7 = or i16 %shl.7, %25
  %arrayidx.8 = getelementptr i8, ptr %bit_mask, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp3.8 = icmp eq i8 %27, -1
  %28 = shl i16 %spec.select.7, 2
  %29 = select i1 %cmp3.8, i16 2, i16 0
  %shl.9 = or i16 %28, %29
  %arrayidx.9 = getelementptr i8, ptr %bit_mask, i32 9
  %30 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp3.9 = icmp eq i8 %31, -1
  %32 = zext i1 %cmp3.9 to i16
  %spec.select.9 = or i16 %shl.9, %32
  %arrayidx.10 = getelementptr i8, ptr %bit_mask, i32 10
  %33 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp3.10 = icmp eq i8 %34, -1
  %35 = shl i16 %spec.select.9, 2
  %36 = select i1 %cmp3.10, i16 2, i16 0
  %shl.11 = or i16 %35, %36
  %arrayidx.11 = getelementptr i8, ptr %bit_mask, i32 11
  %37 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp3.11 = icmp eq i8 %38, -1
  %39 = zext i1 %cmp3.11 to i16
  %spec.select.11 = or i16 %shl.11, %39
  %arrayidx.12 = getelementptr i8, ptr %bit_mask, i32 12
  %40 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp3.12 = icmp eq i8 %41, -1
  %42 = shl i16 %spec.select.11, 2
  %43 = select i1 %cmp3.12, i16 2, i16 0
  %shl.13 = or i16 %42, %43
  %arrayidx.13 = getelementptr i8, ptr %bit_mask, i32 13
  %44 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp3.13 = icmp eq i8 %45, -1
  %46 = zext i1 %cmp3.13 to i16
  %spec.select.13 = or i16 %shl.13, %46
  %arrayidx.14 = getelementptr i8, ptr %bit_mask, i32 14
  %47 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp3.14 = icmp eq i8 %48, -1
  %49 = shl i16 %spec.select.13, 2
  %50 = select i1 %cmp3.14, i16 2, i16 0
  %shl.15 = or i16 %49, %50
  %arrayidx.15 = getelementptr i8, ptr %bit_mask, i32 15
  %51 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp3.15 = icmp eq i8 %52, -1
  %53 = zext i1 %cmp3.15 to i16
  %spec.select.15 = or i16 %shl.15, %53
  ret i16 %spec.select.15
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5dr_ste_set_bit_mask(ptr nocapture noundef writeonly %hw_ste_p, ptr nocapture noundef readonly %bit_mask) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.dr_hw_ste_format, ptr %hw_ste_p, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %mask, ptr %bit_mask, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_miss_addr(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_ste_p, i64 noundef %miss_addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_miss_addr = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 33
  %0 = ptrtoint ptr %set_miss_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_miss_addr, align 4
  tail call void %1(ptr noundef %hw_ste_p, i64 noundef %miss_addr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_hit_addr(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_ste, i64 noundef %icm_addr, i32 noundef %ht_size) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_hit_addr = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 35
  %0 = ptrtoint ptr %set_hit_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_hit_addr, align 4
  tail call void %1(ptr noundef %hw_ste, i64 noundef %icm_addr, i32 noundef %ht_size) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mlx5dr_ste_get_icm_addr(ptr noundef %ste) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 3
  %0 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htbl, align 4
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ste_arr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ste to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chunk, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %icm_addr, align 8
  %mul = shl i32 %sub.ptr.sub, 1
  %conv = zext i32 %mul to i64
  %add = add i64 %7, %conv
  ret i64 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mlx5dr_ste_get_mr_addr(ptr noundef %ste) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 3
  %0 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htbl, align 4
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ste_arr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ste to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chunk, align 4
  %mr_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %mr_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mr_addr, align 8
  %mul = shl i32 %sub.ptr.sub, 1
  %conv = zext i32 %mul to i64
  %add = add i64 %7, %conv
  ret i64 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5dr_ste_get_miss_list(ptr noundef %ste) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 3
  %0 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htbl, align 4
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ste_arr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ste to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 5
  %miss_list = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %miss_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %miss_list, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %5, i32 %sub.ptr.div
  ret ptr %arrayidx
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5dr_ste_is_last_in_rule(ptr nocapture noundef readonly %nic_matcher, i8 noundef zeroext %ste_location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %num_of_builders = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 4
  %0 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_of_builders, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %ste_location)
  %cmp = icmp eq i8 %1, %ste_location
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_free(ptr noundef %ste, ptr nocapture noundef readonly %matcher, ptr nocapture noundef readonly %nic_matcher) local_unnamed_addr #5 align 64 {
entry:
  %hw_ste.i = alloca [64 x i8], align 1
  %tmp_data_ste.i = alloca [64 x i8], align 1
  %ste_info_head = alloca %struct.mlx5dr_ste_send_info, align 4
  %send_ste_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ste_ctx2 = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ste_ctx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ste_ctx2, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ste_info_head) #17
  %6 = call ptr @memset(ptr %ste_info_head, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_ste_list) #17
  %7 = getelementptr inbounds %struct.list_head, ptr %send_ste_list, i32 0, i32 1
  %8 = ptrtoint ptr %send_ste_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_ste_list, ptr %send_ste_list, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_ste_list, ptr %7, align 4
  %htbl.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 3
  %10 = ptrtoint ptr %htbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %htbl.i, align 4
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ste_arr.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ste to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 5
  %miss_list.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %miss_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %miss_list.i, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %15, i32 %sub.ptr.div.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 -8
  %htbl = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %htbl, align 4
  %cmp = icmp eq ptr %add.ptr, %ste
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %prev6 = getelementptr %struct.list_head, ptr %15, i32 %sub.ptr.div.i, i32 1
  %20 = ptrtoint ptr %prev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev6, align 4
  %cmp9 = icmp eq ptr %21, %17
  br i1 %cmp9, label %if.then.if.then15_crit_edge, label %if.end

if.then.if.then15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

if.end:                                           ; preds = %if.then
  %miss_list_node = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2
  %22 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %miss_list_node, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 -8
  %tobool.not = icmp eq ptr %add.ptr14, null
  br i1 %tobool.not, label %if.end.if.then15_crit_edge, label %if.else16

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

if.then15:                                        ; preds = %if.end.if.then15_crit_edge, %if.then.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp_data_ste.i) #17
  %24 = getelementptr inbounds i8, ptr %tmp_data_ste.i, i32 48
  %25 = call ptr @memset(ptr %24, i32 0, i32 16)
  %26 = ptrtoint ptr %ste to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ste, align 4
  %28 = call ptr @memcpy(ptr %tmp_data_ste.i, ptr %27, i32 48)
  %e_anchor.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %29 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %e_anchor.i, align 4
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chunk.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %icm_addr.i, align 8
  %set_next_lu_type.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %5, i32 0, i32 31
  %35 = ptrtoint ptr %set_next_lu_type.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_next_lu_type.i.i, align 4
  call void %36(ptr noundef nonnull %tmp_data_ste.i, i16 noundef zeroext 15) #17
  %set_miss_addr.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %5, i32 0, i32 33
  %37 = ptrtoint ptr %set_miss_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_miss_addr.i.i, align 4
  call void %38(ptr noundef nonnull %tmp_data_ste.i, i64 noundef %34) #17
  %tag.i.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %tmp_data_ste.i, i32 0, i32 1
  %39 = ptrtoint ptr %tag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -36, ptr %tag.i.i.i, align 1
  %40 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %24, align 1
  %41 = ptrtoint ptr %ste to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ste, align 4
  %43 = call ptr @memcpy(ptr %42, ptr %tmp_data_ste.i, i32 48)
  %miss_list_node.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %miss_list_node.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.dr_ste_remove_head_ste.exit_crit_edge

if.then15.dr_ste_remove_head_ste.exit_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %dr_ste_remove_head_ste.exit

if.end.i.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %miss_list_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %miss_list_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %dr_ste_remove_head_ste.exit

dr_ste_remove_head_ste.exit:                      ; preds = %if.end.i.i.i, %if.then15.dr_ste_remove_head_ste.exit_crit_edge
  %50 = ptrtoint ptr %miss_list_node.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %miss_list_node.i, ptr %miss_list_node.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %miss_list_node.i, ptr %prev.i3.i.i, align 4
  call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %ste, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull %tmp_data_ste.i, ptr noundef nonnull %ste_info_head, ptr noundef nonnull %send_ste_list, i1 noundef zeroext true) #17
  %ctrl.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %19, i32 0, i32 9
  %52 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctrl.i, align 4
  %dec.i = add i32 %53, -1
  store i32 %dec.i, ptr %ctrl.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp_data_ste.i) #17
  br label %if.end19

if.else16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw_ste.i) #17
  %htbl.i73 = getelementptr i8, ptr %23, i32 8
  %54 = ptrtoint ptr %htbl.i73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %htbl.i73, align 4
  %call.i.i.i75 = call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #17
  br i1 %call.i.i.i75, label %if.end.i.i.i78, label %if.else16.list_del_init.exit.i_crit_edge

if.else16.list_del_init.exit.i_crit_edge:         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i78:                                   ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i76 = getelementptr i8, ptr %23, i32 4
  %56 = ptrtoint ptr %prev.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i76, align 4
  %58 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i77, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i78, %if.else16.list_del_init.exit.i_crit_edge
  %62 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i.i79 = getelementptr i8, ptr %23, i32 4
  %63 = ptrtoint ptr %prev.i3.i.i79 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %23, ptr %prev.i3.i.i79, align 4
  %64 = ptrtoint ptr %ste to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ste, align 4
  %66 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr14, align 4
  %68 = call ptr @memcpy(ptr %65, ptr %67, i32 48)
  %next_htbl.i.i = getelementptr i8, ptr %23, i32 12
  %69 = ptrtoint ptr %next_htbl.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %next_htbl.i.i, align 4
  %next_htbl2.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 4
  %71 = ptrtoint ptr %next_htbl2.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %next_htbl2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.dr_ste_replace.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.dr_ste_replace.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dr_ste_replace.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %pointing_ste.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %70, i32 0, i32 8
  %72 = ptrtoint ptr %pointing_ste.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ste, ptr %pointing_ste.i.i, align 4
  br label %dr_ste_replace.exit.i

dr_ste_replace.exit.i:                            ; preds = %if.then.i.i, %list_del_init.exit.i.dr_ste_replace.exit.i_crit_edge
  %refcount.i.i = getelementptr i8, ptr %23, i32 -4
  %73 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %refcount.i.i, align 4
  %refcount5.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 1
  %75 = ptrtoint ptr %refcount5.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %refcount5.i.i, align 4
  %rule_rx_tx.i = getelementptr i8, ptr %23, i32 16
  %76 = ptrtoint ptr %rule_rx_tx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rule_rx_tx.i, align 4
  call void @mlx5dr_rule_set_last_member(ptr noundef %77, ptr noundef %ste, i1 noundef zeroext false) #17
  %78 = ptrtoint ptr %ste to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ste, align 4
  %80 = call ptr @memcpy(ptr %hw_ste.i, ptr %79, i32 48)
  %ste_chain_location.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 6
  %81 = ptrtoint ptr %ste_chain_location.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ste_chain_location.i, align 4
  %conv.i = zext i8 %82 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %ste_builder.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 2
  %83 = ptrtoint ptr %ste_builder.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ste_builder.i, align 8
  %bit_mask.i = getelementptr %struct.mlx5dr_ste_build, ptr %84, i32 %sub.i, i32 5
  %mask.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %hw_ste.i, i32 0, i32 2
  %85 = call ptr @memcpy(ptr %mask.i.i, ptr %bit_mask.i, i32 16)
  %refcount.i15.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %55, i32 0, i32 2
  %86 = ptrtoint ptr %refcount.i15.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %refcount.i15.i, align 4
  %dec.i.i = add i32 %87, -1
  store i32 %dec.i.i, ptr %refcount.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i16.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i16.i, label %mlx5dr_ste_htbl_free.exit.i.i, label %dr_ste_replace.exit.i.dr_ste_replace_head_ste.exit_crit_edge

dr_ste_replace.exit.i.dr_ste_replace_head_ste.exit_crit_edge: ; preds = %dr_ste_replace.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dr_ste_replace_head_ste.exit

mlx5dr_ste_htbl_free.exit.i.i:                    ; preds = %dr_ste_replace.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %chunk.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %55, i32 0, i32 3
  %88 = ptrtoint ptr %chunk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chunk.i.i.i, align 4
  call void @mlx5dr_icm_free_chunk(ptr noundef %89) #17
  call void @kfree(ptr noundef %55) #17
  br label %dr_ste_replace_head_ste.exit

dr_ste_replace_head_ste.exit:                     ; preds = %mlx5dr_ste_htbl_free.exit.i.i, %dr_ste_replace.exit.i.dr_ste_replace_head_ste.exit_crit_edge
  call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %ste, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull %hw_ste.i, ptr noundef nonnull %ste_info_head, ptr noundef nonnull %send_ste_list, i1 noundef zeroext true) #17
  %ctrl.i80 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %19, i32 0, i32 9
  %num_of_collisions.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %19, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %num_of_collisions.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_of_collisions.i, align 4
  %dec.i81 = add i32 %91, -1
  store i32 %dec.i81, ptr %num_of_collisions.i, align 4
  %92 = ptrtoint ptr %ctrl.i80 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ctrl.i80, align 4
  %dec6.i = add i32 %93, -1
  store i32 %dec6.i, ptr %ctrl.i80, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_ste.i) #17
  br label %if.end19

if.else18:                                        ; preds = %entry
  %miss_list_node.i82 = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %95, i32 -8
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end24.i, !prof !43

do.end.i:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 273, i32 noundef 9, ptr noundef null) #17
  br label %if.end19

if.end24.i:                                       ; preds = %if.else18
  %get_miss_addr.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %5, i32 0, i32 34
  %96 = ptrtoint ptr %get_miss_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get_miss_addr.i, align 4
  %98 = ptrtoint ptr %ste to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ste, align 4
  %call.i = call i64 %97(ptr noundef %99) #17
  %set_miss_addr.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %5, i32 0, i32 33
  %100 = ptrtoint ptr %set_miss_addr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_miss_addr.i, align 4
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  call void %101(ptr noundef %103, i64 noundef %call.i) #17
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 4
  call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef nonnull %add.ptr.i, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef %105, ptr noundef nonnull %ste_info_head, ptr noundef nonnull %send_ste_list, i1 noundef zeroext true) #17
  %call.i.i.i83 = call zeroext i1 @__list_del_entry_valid(ptr noundef %miss_list_node.i82) #17
  br i1 %call.i.i.i83, label %if.end.i.i.i85, label %if.end24.i.list_del_init.exit.i89_crit_edge

if.end24.i.list_del_init.exit.i89_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i89

if.end.i.i.i85:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i, align 4
  %108 = ptrtoint ptr %miss_list_node.i82 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %miss_list_node.i82, align 4
  %prev1.i.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i.i84, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del_init.exit.i89

list_del_init.exit.i89:                           ; preds = %if.end.i.i.i85, %if.end24.i.list_del_init.exit.i89_crit_edge
  %112 = ptrtoint ptr %miss_list_node.i82 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %miss_list_node.i82, ptr %miss_list_node.i82, align 4
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %miss_list_node.i82, ptr %prev.i, align 4
  %ctrl.i86 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %19, i32 0, i32 9
  %114 = ptrtoint ptr %ctrl.i86 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ctrl.i86, align 4
  %dec.i87 = add i32 %115, -1
  store i32 %dec.i87, ptr %ctrl.i86, align 4
  %num_of_collisions.i88 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %19, i32 0, i32 9, i32 1
  %116 = ptrtoint ptr %num_of_collisions.i88 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_of_collisions.i88, align 4
  %dec29.i = add i32 %117, -1
  store i32 %dec29.i, ptr %num_of_collisions.i88, align 4
  br label %if.end19

if.end19:                                         ; preds = %list_del_init.exit.i89, %do.end.i, %dr_ste_replace_head_ste.exit, %dr_ste_remove_head_ste.exit
  %put_on_origin_table.1.off0 = phi i1 [ false, %dr_ste_replace_head_ste.exit ], [ true, %dr_ste_remove_head_ste.exit ], [ true, %do.end.i ], [ true, %list_del_init.exit.i89 ]
  %118 = ptrtoint ptr %send_ste_list to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %send_ste_list, align 4
  %cmp29.not95 = icmp eq ptr %119, %send_ste_list
  br i1 %cmp29.not95, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end19.for.body_crit_edge
  %.pn.in96 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %119, %if.end19.for.body_crit_edge ]
  %cur_ste_info.0 = getelementptr i8, ptr %.pn.in96, i32 -4
  %120 = ptrtoint ptr %.pn.in96 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn = load ptr, ptr %.pn.in96, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in96) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in96, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i, align 4
  %123 = ptrtoint ptr %.pn.in96 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %.pn.in96, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %127 = ptrtoint ptr %.pn.in96 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in96, align 4
  %prev.i90 = getelementptr inbounds %struct.list_head, ptr %.pn.in96, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i90, align 4
  %129 = ptrtoint ptr %cur_ste_info.0 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur_ste_info.0, align 4
  %data = getelementptr i8, ptr %.pn.in96, i32 76
  %131 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data, align 4
  %size = getelementptr i8, ptr %.pn.in96, i32 8
  %133 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %size, align 4
  %offset = getelementptr i8, ptr %.pn.in96, i32 10
  %135 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %offset, align 2
  %call32 = call i32 @mlx5dr_send_postsend_ste(ptr noundef %3, ptr noundef %130, ptr noundef %132, i16 noundef zeroext %134, i16 noundef zeroext %136) #17
  %cmp29.not = icmp eq ptr %.pn, %send_ste_list
  br i1 %cmp29.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end19.for.end_crit_edge
  br i1 %put_on_origin_table.1.off0, label %if.then39, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then39:                                        ; preds = %for.end
  %137 = ptrtoint ptr %htbl.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %htbl.i, align 4
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %refcount.i, align 4
  %dec.i91 = add i32 %140, -1
  store i32 %dec.i91, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i91)
  %tobool.not.i92 = icmp eq i32 %dec.i91, 0
  br i1 %tobool.not.i92, label %mlx5dr_ste_htbl_free.exit.i, label %if.then39.if.end41_crit_edge

if.then39.if.end41_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

mlx5dr_ste_htbl_free.exit.i:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  %chunk.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %138, i32 0, i32 3
  %141 = ptrtoint ptr %chunk.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %chunk.i.i, align 4
  call void @mlx5dr_icm_free_chunk(ptr noundef %142) #17
  call void @kfree(ptr noundef %138) #17
  br label %if.end41

if.end41:                                         ; preds = %mlx5dr_ste_htbl_free.exit.i, %if.then39.if.end41_crit_edge, %for.end.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_ste_list) #17
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ste_info_head) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_postsend_ste(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5dr_ste_equal_tag(ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tag = getelementptr inbounds %struct.dr_hw_ste_format, ptr %src, i32 0, i32 1
  %tag1 = getelementptr inbounds %struct.dr_hw_ste_format, ptr %dst, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tag, ptr noundef dereferenceable(16) %tag1, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_hit_addr_by_next_htbl(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_ste, ptr nocapture noundef readonly %next_htbl) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %next_htbl, i32 0, i32 3
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk1, align 4
  %set_hit_addr = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 35
  %2 = ptrtoint ptr %set_hit_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_hit_addr, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %icm_addr, align 8
  %num_of_entries = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_of_entries, align 8
  tail call void %3(ptr noundef %hw_ste, i64 noundef %5, i32 noundef %7) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_prepare_for_postsend(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_ste_p, i32 noundef %ste_size) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare_for_postsend = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 47
  %0 = ptrtoint ptr %prepare_for_postsend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prepare_for_postsend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %1(ptr noundef %hw_ste_p, i32 noundef %ste_size) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_formatted_ste(ptr nocapture noundef readonly %ste_ctx, i16 noundef zeroext %gvmi, i32 noundef %nic_type, ptr nocapture noundef readonly %htbl, ptr noundef %formatted_ste, ptr nocapture noundef readonly %connect_info) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nic_type)
  %cmp = icmp eq i32 %nic_type, 0
  %ste_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 30
  %0 = ptrtoint ptr %ste_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ste_init, align 4
  %2 = ptrtoint ptr %htbl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %htbl, align 4
  tail call void %1(ptr noundef %formatted_ste, i16 noundef zeroext %3, i1 noundef zeroext %cmp, i16 noundef zeroext %gvmi) #17
  %4 = ptrtoint ptr %connect_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connect_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  %6 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %connect_info, i32 0, i32 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %chunk1.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chunk1.i, align 4
  %set_byte_mask.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 36
  %11 = ptrtoint ptr %set_byte_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_byte_mask.i, align 4
  %byte_mask.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %byte_mask.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %byte_mask.i, align 2
  tail call void %12(ptr noundef %formatted_ste, i16 noundef zeroext %14) #17
  %set_next_lu_type.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 31
  %15 = ptrtoint ptr %set_next_lu_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_next_lu_type.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %8, align 4
  tail call void %16(ptr noundef %formatted_ste, i16 noundef zeroext %18) #17
  %set_hit_addr.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 35
  %19 = ptrtoint ptr %set_hit_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_hit_addr.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %10, i32 0, i32 5
  %21 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %icm_addr.i, align 8
  %num_of_entries.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %10, i32 0, i32 3
  %23 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_entries.i, align 8
  tail call void %20(ptr noundef %formatted_ste, i64 noundef %22, i32 noundef %24) #17
  %tag.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste, i32 0, i32 1
  %25 = call ptr @memset(ptr %tag.i.i, i32 0, i32 32)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %6, align 8
  %set_next_lu_type.i7 = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 31
  %28 = ptrtoint ptr %set_next_lu_type.i7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_next_lu_type.i7, align 4
  tail call void %29(ptr noundef %formatted_ste, i16 noundef zeroext 15) #17
  %set_miss_addr.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 33
  %30 = ptrtoint ptr %set_miss_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_miss_addr.i, align 4
  tail call void %31(ptr noundef %formatted_ste, i64 noundef %27) #17
  %tag.i.i8 = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste, i32 0, i32 1
  %32 = ptrtoint ptr %tag.i.i8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -36, ptr %tag.i.i8, align 1
  %mask.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste, i32 0, i32 2
  %33 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %mask.i.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr nocapture noundef readonly %nic_dmn, ptr noundef %htbl, ptr nocapture noundef readonly %connect_info, i1 noundef zeroext %update_hw_ste) local_unnamed_addr #5 align 64 {
entry:
  %formatted_ste = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %formatted_ste) #17
  %0 = call ptr @memset(ptr %formatted_ste, i32 0, i32 64)
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %1 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ste_ctx, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %caps, align 8
  %type = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %nic_dmn, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %ste_init.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %2, i32 0, i32 30
  %7 = ptrtoint ptr %ste_init.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ste_init.i, align 4
  %9 = ptrtoint ptr %htbl to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %htbl, align 4
  call void %8(ptr noundef nonnull %formatted_ste, i16 noundef zeroext %10, i1 noundef zeroext %cmp.i, i16 noundef zeroext %4) #17
  %11 = ptrtoint ptr %connect_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connect_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1.i = icmp eq i32 %12, 1
  %13 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %connect_info, i32 0, i32 1
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %chunk1.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %chunk1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk1.i.i, align 4
  %set_byte_mask.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %2, i32 0, i32 36
  %18 = ptrtoint ptr %set_byte_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_byte_mask.i.i, align 4
  %byte_mask.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %byte_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %byte_mask.i.i, align 2
  call void %19(ptr noundef nonnull %formatted_ste, i16 noundef zeroext %21) #17
  %set_next_lu_type.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %2, i32 0, i32 31
  %22 = ptrtoint ptr %set_next_lu_type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_next_lu_type.i.i, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %15, align 4
  call void %23(ptr noundef nonnull %formatted_ste, i16 noundef zeroext %25) #17
  %set_hit_addr.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %2, i32 0, i32 35
  %26 = ptrtoint ptr %set_hit_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_hit_addr.i.i, align 4
  %icm_addr.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %17, i32 0, i32 5
  %28 = ptrtoint ptr %icm_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %icm_addr.i.i, align 8
  %num_of_entries.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %17, i32 0, i32 3
  %30 = ptrtoint ptr %num_of_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_of_entries.i.i, align 8
  call void %27(ptr noundef nonnull %formatted_ste, i64 noundef %29, i32 noundef %31) #17
  %tag.i.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste, i32 0, i32 1
  %32 = call ptr @memset(ptr %tag.i.i.i, i32 0, i32 32)
  br label %mlx5dr_ste_set_formatted_ste.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %13, align 8
  %set_next_lu_type.i7.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %2, i32 0, i32 31
  %35 = ptrtoint ptr %set_next_lu_type.i7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_next_lu_type.i7.i, align 4
  call void %36(ptr noundef nonnull %formatted_ste, i16 noundef zeroext 15) #17
  %set_miss_addr.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %2, i32 0, i32 33
  %37 = ptrtoint ptr %set_miss_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_miss_addr.i.i, align 4
  call void %38(ptr noundef nonnull %formatted_ste, i64 noundef %34) #17
  %tag.i.i8.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste, i32 0, i32 1
  %39 = ptrtoint ptr %tag.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -36, ptr %tag.i.i8.i, align 1
  %mask.i.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste, i32 0, i32 2
  %40 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %mask.i.i.i, align 1
  br label %mlx5dr_ste_set_formatted_ste.exit

mlx5dr_ste_set_formatted_ste.exit:                ; preds = %if.else.i, %if.then.i
  %call = call i32 @mlx5dr_send_postsend_formatted_htbl(ptr noundef %dmn, ptr noundef %htbl, ptr noundef nonnull %formatted_ste, i1 noundef zeroext %update_hw_ste) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %formatted_ste) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_postsend_formatted_htbl(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_create_next_htbl(ptr nocapture noundef readonly %matcher, ptr nocapture noundef readonly %nic_matcher, ptr noundef %ste, ptr noundef %cur_hw_ste, i32 noundef %log_table_size) local_unnamed_addr #5 align 64 {
entry:
  %formatted_ste.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
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
  %ste_chain_location = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 6
  %10 = ptrtoint ptr %ste_chain_location to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ste_chain_location, align 4
  %num_of_builders.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 4
  %12 = ptrtoint ptr %num_of_builders.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_of_builders.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp.i = icmp eq i8 %13, %11
  br i1 %cmp.i, label %entry.cleanup28_crit_edge, label %if.then

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup28

if.then:                                          ; preds = %entry
  %get_next_lu_type = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %9, i32 0, i32 32
  %14 = ptrtoint ptr %get_next_lu_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_next_lu_type, align 4
  %call4 = tail call zeroext i16 %15(ptr noundef %cur_hw_ste) #17
  %get_byte_mask = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %9, i32 0, i32 37
  %16 = ptrtoint ptr %get_byte_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_byte_mask, align 4
  %call5 = tail call zeroext i16 %17(ptr noundef %cur_hw_ste) #17
  %ste_icm_pool = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %ste_icm_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ste_icm_pool, align 8
  %call6 = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %19, i32 noundef %log_table_size, i16 noundef zeroext %call4, i16 noundef zeroext %call5)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.body, label %mlx5dr_ste_htbl_init_and_postsend.exit

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_ste_create_next_htbl.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_ste_create_next_htbl, %cleanup.thread)) #17
          to label %cleanup28 [label %cleanup.thread], !srcloc !44

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !33) #17
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_ste_create_next_htbl.__UNIQUE_ID_ddebug544, ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 441, i32 noundef %29) #17
  br label %cleanup28

mlx5dr_ste_htbl_init_and_postsend.exit:           ; preds = %if.then
  %e_anchor = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %30 = ptrtoint ptr %e_anchor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %e_anchor, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chunk, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %icm_addr, align 8
  %icm_addr.sroa_idx = getelementptr inbounds i8, ptr %icm_addr, i32 4
  %36 = ptrtoint ptr %icm_addr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %icm_addr.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %formatted_ste.i) #17
  %38 = call ptr @memset(ptr %formatted_ste.i, i32 0, i32 64)
  %39 = ptrtoint ptr %ste_ctx3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ste_ctx3, align 4
  %caps.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 9, i32 7
  %41 = ptrtoint ptr %caps.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %caps.i, align 8
  %type.i = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 0
  %ste_init.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %40, i32 0, i32 30
  %45 = ptrtoint ptr %ste_init.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ste_init.i.i, align 4
  %47 = ptrtoint ptr %call6 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %call6, align 4
  call void %46(ptr noundef nonnull %formatted_ste.i, i16 noundef zeroext %48, i1 noundef zeroext %cmp.i.i, i16 noundef zeroext %42) #17
  %info.sroa.551.sroa.6.0.insert.ext = zext i32 %37 to i64
  %info.sroa.551.sroa.0.0.insert.ext = zext i32 %35 to i64
  %info.sroa.551.sroa.0.0.insert.shift = shl nuw i64 %info.sroa.551.sroa.0.0.insert.ext, 32
  %info.sroa.551.sroa.0.0.insert.insert = or i64 %info.sroa.551.sroa.0.0.insert.shift, %info.sroa.551.sroa.6.0.insert.ext
  %set_next_lu_type.i7.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %40, i32 0, i32 31
  %49 = ptrtoint ptr %set_next_lu_type.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_next_lu_type.i7.i.i, align 4
  call void %50(ptr noundef nonnull %formatted_ste.i, i16 noundef zeroext 15) #17
  %set_miss_addr.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %40, i32 0, i32 33
  %51 = ptrtoint ptr %set_miss_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_miss_addr.i.i.i, align 4
  call void %52(ptr noundef nonnull %formatted_ste.i, i64 noundef %info.sroa.551.sroa.0.0.insert.insert) #17
  %tag.i.i8.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste.i, i32 0, i32 1
  %53 = ptrtoint ptr %tag.i.i8.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -36, ptr %tag.i.i8.i.i, align 1
  %mask.i.i.i.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %formatted_ste.i, i32 0, i32 2
  %54 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %mask.i.i.i.i, align 1
  %call.i = call i32 @mlx5dr_send_postsend_formatted_htbl(ptr noundef %7, ptr noundef nonnull %call6, ptr noundef nonnull %formatted_ste.i, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %formatted_ste.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %cleanup.thread57, label %free_table

cleanup.thread57:                                 ; preds = %mlx5dr_ste_htbl_init_and_postsend.exit
  call void @__sanitizer_cov_trace_pc() #19
  %chunk1.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call6, i32 0, i32 3
  %55 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chunk1.i, align 4
  %set_hit_addr.i = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %9, i32 0, i32 35
  %57 = ptrtoint ptr %set_hit_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_hit_addr.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %56, i32 0, i32 5
  %59 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %icm_addr.i, align 8
  %num_of_entries.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_of_entries.i, align 8
  call void %58(ptr noundef %cur_hw_ste, i64 noundef %60, i32 noundef %62) #17
  %next_htbl24 = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 4
  %63 = ptrtoint ptr %next_htbl24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call6, ptr %next_htbl24, align 4
  %pointing_ste = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call6, i32 0, i32 8
  %64 = ptrtoint ptr %pointing_ste to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ste, ptr %pointing_ste, align 4
  br label %cleanup28

free_table:                                       ; preds = %mlx5dr_ste_htbl_init_and_postsend.exit
  %mdev21 = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 1
  %65 = ptrtoint ptr %mdev21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mdev21, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.4) #22
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call6, i32 0, i32 2
  %69 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %if.end.i, label %free_table.cleanup28_crit_edge

free_table.cleanup28_crit_edge:                   ; preds = %free_table
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup28

if.end.i:                                         ; preds = %free_table
  call void @__sanitizer_cov_trace_pc() #19
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call6, i32 0, i32 3
  %71 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chunk.i, align 4
  call void @mlx5dr_icm_free_chunk(ptr noundef %72) #17
  call void @kfree(ptr noundef nonnull %call6) #17
  br label %cleanup28

cleanup28:                                        ; preds = %if.end.i, %free_table.cleanup28_crit_edge, %cleanup.thread57, %cleanup.thread, %do.body, %entry.cleanup28_crit_edge
  %retval.1 = phi i32 [ -12, %cleanup.thread ], [ -12, %do.body ], [ 0, %cleanup.thread57 ], [ 0, %entry.cleanup28_crit_edge ], [ -2, %free_table.cleanup28_crit_edge ], [ -2, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_ste_htbl_alloc(ptr noundef %pool, i32 noundef %chunk_size, i16 noundef zeroext %lu_type, i16 noundef zeroext %byte_mask) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mlx5dr_icm_alloc_chunk(ptr noundef %pool, i32 noundef %chunk_size) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %out_free_htbl, label %if.end4

if.end4:                                          ; preds = %if.end
  %chunk5 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %chunk5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %chunk5, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %lu_type, ptr %call7.i.i, align 8
  %byte_mask7 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %byte_mask7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %byte_mask, ptr %byte_mask7, align 2
  %ste_arr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call1, i32 0, i32 8
  %4 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ste_arr, align 4
  %ste_arr8 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ste_arr8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %ste_arr8, align 4
  %hw_ste_arr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call1, i32 0, i32 9
  %7 = ptrtoint ptr %hw_ste_arr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ste_arr, align 8
  %hw_ste_arr9 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %hw_ste_arr9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %hw_ste_arr9, align 8
  %miss_list = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call1, i32 0, i32 10
  %10 = ptrtoint ptr %miss_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %miss_list, align 4
  %miss_list10 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %miss_list10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %miss_list10, align 4
  %refcount = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %refcount, align 4
  %num_of_entries = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call1, i32 0, i32 3
  %14 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_of_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp48.not = icmp eq i32 %15, 0
  br i1 %cmp48.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %16 = ptrtoint ptr %ste_arr8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ste_arr8, align 4
  %arrayidx = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.049
  %18 = ptrtoint ptr %hw_ste_arr9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ste_arr9, align 8
  %mul = mul i32 %i.049, 48
  %add.ptr = getelementptr i8, ptr %19, i32 %mul
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %htbl13 = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.049, i32 3
  %21 = ptrtoint ptr %htbl13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %htbl13, align 4
  %refcount14 = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.049, i32 1
  %22 = ptrtoint ptr %refcount14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %refcount14, align 4
  %miss_list_node = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.049, i32 2
  %23 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %miss_list_node, ptr %miss_list_node, align 4
  %prev.i = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.049, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %miss_list_node, ptr %prev.i, align 4
  %25 = ptrtoint ptr %miss_list10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %miss_list10, align 4
  %arrayidx16 = getelementptr %struct.list_head, ptr %26, i32 %i.049
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx16, ptr %arrayidx16, align 4
  %prev.i47 = getelementptr %struct.list_head, ptr %26, i32 %i.049, i32 1
  %28 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx16, ptr %prev.i47, align 4
  %inc = add nuw i32 %i.049, 1
  %29 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_of_entries, align 8
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %chunk_size17 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call7.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %chunk_size17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %chunk_size, ptr %chunk_size17, align 8
  br label %cleanup

out_free_htbl:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free_htbl, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %for.end ], [ null, %out_free_htbl ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_htbl_free(ptr noundef %htbl) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 2
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 3
  %2 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk, align 4
  tail call void @mlx5dr_icm_free_chunk(ptr noundef %3) #17
  tail call void @kfree(ptr noundef %htbl) #17
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_icm_alloc_chunk(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_icm_free_chunk(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_actions_tx(ptr nocapture noundef readonly %ste_ctx, ptr noundef %dmn, ptr noundef %action_type_set, ptr noundef %hw_ste_arr, ptr noundef %attr, ptr noundef %added_stes) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_actions_tx = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 40
  %0 = ptrtoint ptr %set_actions_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_actions_tx, align 4
  tail call void %1(ptr noundef %dmn, ptr noundef %action_type_set, ptr noundef %hw_ste_arr, ptr noundef %attr, ptr noundef %added_stes) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_actions_rx(ptr nocapture noundef readonly %ste_ctx, ptr noundef %dmn, ptr noundef %action_type_set, ptr noundef %hw_ste_arr, ptr noundef %attr, ptr noundef %added_stes) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_actions_rx = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 39
  %0 = ptrtoint ptr %set_actions_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_actions_rx, align 4
  tail call void %1(ptr noundef %dmn, ptr noundef %action_type_set, ptr noundef %hw_ste_arr, ptr noundef %attr, ptr noundef %added_stes) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5dr_ste_conv_modify_hdr_sw_field(ptr nocapture noundef readonly %ste_ctx, i16 noundef zeroext %sw_field) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %sw_field to i32
  %modify_field_arr_sz = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 41
  %0 = ptrtoint ptr %modify_field_arr_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %modify_field_arr_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %modify_field_arr = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 42
  %2 = ptrtoint ptr %modify_field_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modify_field_arr, align 4
  %arrayidx = getelementptr %struct.mlx5dr_ste_action_modify_field, ptr %3, i32 %conv
  %end = getelementptr %struct.mlx5dr_ste_action_modify_field, ptr %3, i32 %conv, i32 2
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %end, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %start = getelementptr %struct.mlx5dr_ste_action_modify_field, ptr %3, i32 %conv, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %start, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_action_set(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_action_set = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 43
  %0 = ptrtoint ptr %set_action_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_action_set, align 4
  tail call void %1(ptr noundef %hw_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_action_add(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_action_add = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 44
  %0 = ptrtoint ptr %set_action_add to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_action_add, align 4
  tail call void %1(ptr noundef %hw_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_set_action_copy(ptr nocapture noundef readonly %ste_ctx, ptr noundef %hw_action, i8 noundef zeroext %dst_hw_field, i8 noundef zeroext %dst_shifter, i8 noundef zeroext %dst_len, i8 noundef zeroext %src_hw_field, i8 noundef zeroext %src_shifter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %set_action_copy = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 45
  %0 = ptrtoint ptr %set_action_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_action_copy, align 4
  tail call void %1(ptr noundef %hw_action, i8 noundef zeroext %dst_hw_field, i8 noundef zeroext %dst_shifter, i8 noundef zeroext %dst_len, i8 noundef zeroext %src_hw_field, i8 noundef zeroext %src_shifter) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_set_action_decap_l3_list(ptr nocapture noundef readonly %ste_ctx, ptr noundef %data, i32 noundef %data_sz, ptr noundef %hw_action, i32 noundef %hw_action_sz, ptr noundef %used_hw_action_num) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %data_sz to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %data_sz, label %entry.return_crit_edge [
    i32 14, label %entry.if.end_crit_edge
    i32 18, label %entry.if.end_crit_edge4
  ]

entry.if.end_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge4
  %set_action_decap_l3_list = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 46
  %1 = ptrtoint ptr %set_action_decap_l3_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_action_decap_l3_list, align 4
  %call = tail call i32 %2(ptr noundef %data, i32 noundef %data_sz, ptr noundef %hw_action, i32 noundef %hw_action_sz, ptr noundef %used_hw_action_num) #17
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_build_pre_check(ptr nocapture noundef readonly %dmn, i8 noundef zeroext %match_criteria, ptr nocapture noundef readonly %mask, ptr noundef readnone %value) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i8 %match_criteria to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end35_crit_edge, label %if.then2

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then2:                                         ; preds = %if.end
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc, align 4
  %bf.lshr = lshr i352 %bf.load, 288
  %1 = trunc i352 %bf.lshr to i16
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %1, label %do.end [
    i16 0, label %if.then2.if.end11_crit_edge
    i16 -1, label %if.then2.if.end11_crit_edge63
  ]

if.then2.if.end11_crit_edge63:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !33) #17
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 635, i32 noundef %12) #22
  br label %return

if.end11:                                         ; preds = %if.then2.if.end11_crit_edge, %if.then2.if.end11_crit_edge63
  %bf.lshr14 = lshr i352 %bf.load, 304
  %13 = trunc i352 %bf.lshr14 to i16
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %13, label %do.end28 [
    i16 0, label %if.end11.if.end35_crit_edge
    i16 -1, label %if.end11.if.end35_crit_edge64
  ]

if.end11.if.end35_crit_edge64:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.end11.if.end35_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

do.end28:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %mdev29 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %15 = ptrtoint ptr %mdev29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev29, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !33) #17
  %and.i62 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i62 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 641, i32 noundef %24) #22
  br label %return

if.end35:                                         ; preds = %if.end11.if.end35_crit_edge, %if.end11.if.end35_crit_edge64, %if.end.if.end35_crit_edge
  %and37 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end43_crit_edge, label %land.lhs.true39

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

land.lhs.true39:                                  ; preds = %if.end35
  %call40 = tail call fastcc i32 @dr_ste_build_pre_check_spec(ptr noundef %dmn, ptr noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end43_crit_edge, label %land.lhs.true39.return_crit_edge

land.lhs.true39.return_crit_edge:                 ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true39.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  %and45 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end51_crit_edge, label %land.lhs.true47

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

land.lhs.true47:                                  ; preds = %if.end43
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %call48 = tail call fastcc i32 @dr_ste_build_pre_check_spec(ptr noundef %dmn, ptr noundef %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.if.end51_crit_edge, label %land.lhs.true47.return_crit_edge

land.lhs.true47.return_crit_edge:                 ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

land.lhs.true47.if.end51_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true47.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  br label %return

return:                                           ; preds = %if.end51, %land.lhs.true47.return_crit_edge, %land.lhs.true39.return_crit_edge, %do.end28, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ 0, %if.end51 ], [ 0, %entry.return_crit_edge ], [ -22, %land.lhs.true39.return_crit_edge ], [ -22, %land.lhs.true47.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_ste_build_pre_check_spec(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %spec) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_version = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 3
  %0 = ptrtoint ptr %ip_version to i32
  call void @__asan_loadN_noabort(i32 %0, i32 20)
  %bf.load = load i160, ptr %ip_version, align 4
  %bf.lshr = lshr i160 %bf.load, 105
  %1 = trunc i160 %bf.lshr to i32
  %bf.cast = and i32 %1, 15
  %2 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %bf.cast, label %do.end [
    i32 0, label %if.else
    i32 15, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !33) #17
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 611, i32 noundef %12) #22
  br label %return

if.else:                                          ; preds = %entry
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 1
  %13 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load7 = load i32, ptr %ethertype, align 4
  %bf.clear8 = and i32 %bf.load7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.clear8)
  %cmp9.not = icmp eq i32 %bf.clear8, 65535
  br i1 %cmp9.not, label %if.else.return_crit_edge, label %land.lhs.true

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

land.lhs.true:                                    ; preds = %if.else
  %src_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 4
  %14 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true.do.end26_crit_edge

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false:                                    ; preds = %land.lhs.true
  %src_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 5
  %16 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false.do.end26_crit_edge

lor.lhs.false.do.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %src_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 6
  %18 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false12.do.end26_crit_edge

lor.lhs.false12.do.end26_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 7
  %20 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false14.do.end26_crit_edge

lor.lhs.false14.do.end26_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %dst_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 8
  %22 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false16.do.end26_crit_edge

lor.lhs.false16.do.end26_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %dst_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 9
  %24 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool19.not = icmp eq i32 %25, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false18.do.end26_crit_edge

lor.lhs.false18.do.end26_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %dst_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 10
  %26 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false20.do.end26_crit_edge

lor.lhs.false20.do.end26_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 11
  %28 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool23.not = icmp eq i32 %29, 0
  br i1 %tobool23.not, label %lor.lhs.false22.return_crit_edge, label %lor.lhs.false22.do.end26_crit_edge

lor.lhs.false22.do.end26_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

lor.lhs.false22.return_crit_edge:                 ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

do.end26:                                         ; preds = %lor.lhs.false22.do.end26_crit_edge, %lor.lhs.false20.do.end26_crit_edge, %lor.lhs.false18.do.end26_crit_edge, %lor.lhs.false16.do.end26_crit_edge, %lor.lhs.false14.do.end26_crit_edge, %lor.lhs.false12.do.end26_crit_edge, %lor.lhs.false.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge
  %mdev27 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %30 = ptrtoint ptr %mdev27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev27, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = tail call i32 @llvm.read_register.i32(metadata !33) #17
  %and.i45 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i45 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 617, i32 noundef %39) #22
  br label %return

return:                                           ; preds = %do.end26, %lor.lhs.false22.return_crit_edge, %if.else.return_crit_edge, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ 0, %entry.return_crit_edge ], [ 0, %if.else.return_crit_edge ], [ 0, %lor.lhs.false22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_ste_build_ste_arr(ptr nocapture noundef readonly %matcher, ptr nocapture noundef readonly %nic_matcher, ptr noundef %value, ptr noundef %ste_arr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_tbl = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 7
  %0 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_tbl, align 8
  %nic_dmn1 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nic_dmn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_dmn1, align 4
  %type = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %matcher, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ste_ctx3 = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %ste_ctx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ste_ctx3, align 4
  %match_criteria = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 7
  %12 = ptrtoint ptr %match_criteria to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %match_criteria, align 4
  %mask = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6
  %call = tail call i32 @mlx5dr_ste_build_pre_check(ptr noundef %9, i8 noundef zeroext %13, ptr noundef %mask, ptr noundef %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %ste_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %11, i32 0, i32 30
  %num_of_builders = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 4
  %14 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_of_builders, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp452.not = icmp eq i8 %15, 0
  br i1 %cmp452.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ste_builder = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 2
  %16 = ptrtoint ptr %ste_builder to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ste_builder, align 8
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 9, i32 7
  %set_next_lu_type = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %11, i32 0, i32 31
  %set_byte_mask = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %11, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %sb.054 = phi ptr [ %17, %for.body.lr.ph ], [ %sb.1, %if.end18.for.body_crit_edge ]
  %ste_arr.addr.053 = phi ptr [ %ste_arr, %for.body.lr.ph ], [ %add.ptr, %if.end18.for.body_crit_edge ]
  %18 = ptrtoint ptr %ste_init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ste_init, align 4
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb.054, i32 0, i32 3
  %20 = ptrtoint ptr %lu_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lu_type, align 4
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %caps, align 8
  tail call void %19(ptr noundef %ste_arr.addr.053, i16 noundef zeroext %21, i1 noundef zeroext %cmp, i16 noundef zeroext %23) #17
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb.054, i32 0, i32 5
  %mask.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %ste_arr.addr.053, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %mask.i, ptr %bit_mask, i32 16)
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb.054, i32 0, i32 6
  %25 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ste_build_tag_func, align 4
  %tag.i = getelementptr inbounds %struct.dr_hw_ste_format, ptr %ste_arr.addr.053, i32 0, i32 1
  %call8 = tail call i32 %26(ptr noundef %value, ptr noundef %sb.054, ptr noundef %tag.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %27 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_of_builders, align 4
  %conv13 = zext i8 %28 to i32
  %sub = add nsw i32 %conv13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.055, i32 %sub)
  %cmp14 = icmp slt i32 %i.055, %sub
  br i1 %cmp14, label %if.then16, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %incdec.ptr = getelementptr %struct.mlx5dr_ste_build, ptr %sb.054, i32 1
  %29 = ptrtoint ptr %set_next_lu_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_next_lu_type, align 4
  %lu_type17 = getelementptr %struct.mlx5dr_ste_build, ptr %sb.054, i32 1, i32 3
  %31 = ptrtoint ptr %lu_type17 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lu_type17, align 4
  tail call void %30(ptr noundef %ste_arr.addr.053, i16 noundef zeroext %32) #17
  %33 = ptrtoint ptr %set_byte_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_byte_mask, align 4
  %byte_mask = getelementptr %struct.mlx5dr_ste_build, ptr %sb.054, i32 1, i32 4
  %35 = ptrtoint ptr %byte_mask to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %byte_mask, align 2
  tail call void %34(ptr noundef %ste_arr.addr.053, i16 noundef zeroext %36) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  %sb.1 = phi ptr [ %incdec.ptr, %if.then16 ], [ %sb.054, %if.end11.if.end18_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ste_arr.addr.053, i32 64
  %inc = add nuw nsw i32 %i.055, 1
  %37 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_of_builders, align 4
  %conv = zext i8 %38 to i32
  %cmp4 = icmp ult i32 %inc, %conv
  br i1 %cmp4, label %if.end18.for.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5dr_ste_copy_param(i8 noundef zeroext %match_criteria, ptr noundef %set_param, ptr nocapture noundef readonly %mask, i1 noundef zeroext %clr) local_unnamed_addr #10 align 64 {
entry:
  %tail_param = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tail_param) #17
  %0 = call ptr @memset(ptr %tail_param, i32 0, i32 64)
  %match_buf = getelementptr inbounds %struct.mlx5dr_match_parameters, ptr %mask, i32 0, i32 1
  %1 = ptrtoint ptr %match_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match_buf, align 4
  %conv = zext i8 %match_criteria to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp ult i32 %4, 64
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %5 = call ptr @memcpy(ptr %tail_param, ptr %2, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %buff.0 = phi ptr [ %tail_param, %if.then2 ], [ %2, %if.then.if.end_crit_edge ]
  call fastcc void @dr_ste_copy_mask_spec(ptr noundef %buff.0, ptr noundef %set_param, i1 noundef zeroext %clr)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %and9 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end23_crit_edge, label %if.then11

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then11:                                        ; preds = %if.end7
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp13 = icmp ult i32 %7, 128
  %add.ptr = getelementptr i8, ptr %2, i32 64
  br i1 %cmp13, label %if.then15, label %if.then11.if.end21_crit_edge

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  %sub = add nsw i32 %7, -64
  %8 = call ptr @memcpy(ptr %tail_param, ptr %add.ptr, i32 %sub)
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then11.if.end21_crit_edge
  %buff.1 = phi ptr [ %tail_param, %if.then15 ], [ %add.ptr, %if.then11.if.end21_crit_edge ]
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 1
  %9 = ptrtoint ptr %buff.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buff.1, align 4
  %shr.i = lshr i32 %10, 31
  br i1 %clr, label %do.body15.i, label %if.end.i

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %11 = zext i32 %shr.i to i352
  %12 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %12, i32 44)
  %bf.load.i = load i352, ptr %misc, align 4
  %bf.shl.i = shl nuw i352 %11, 351
  %bf.clear.i = and i352 %bf.load.i, 4586997231980143023221641790604173881593129978336562247475177678773845752176969616140037106220251373109247
  %bf.set.i = or i352 %bf.clear.i, %bf.shl.i
  store i352 %bf.set.i, ptr %misc, align 4
  %13 = ptrtoint ptr %buff.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buff.1, align 4
  br label %if.end28.i

do.body15.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %and3.i = and i32 %10, 2147483647
  %15 = ptrtoint ptr %buff.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and3.i, ptr %buff.1, align 4
  %16 = zext i32 %shr.i to i352
  %17 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %17, i32 44)
  %bf.load933.i = load i352, ptr %misc, align 4
  %bf.shl934.i = shl nuw i352 %16, 351
  %bf.clear935.i = and i352 %bf.load933.i, 4586997231980143023221641790604173881593129978336562247475177678773845752176969616140037106220251373109247
  %bf.set936.i = or i352 %bf.clear935.i, %bf.shl934.i
  store i352 %bf.set936.i, ptr %misc, align 4
  %18 = load i32, ptr %buff.1, align 4
  %and21.i = and i32 %18, -536870913
  store i32 %and21.i, ptr %buff.1, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.body15.i, %if.end.i
  %shr11938.in.i = phi i32 [ %18, %do.body15.i ], [ %14, %if.end.i ]
  %shr11938.i = lshr i32 %shr11938.in.i, 29
  %19 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load30.i = load i352, ptr %misc, align 4
  %20 = and i32 %shr11938.i, 1
  %bf.value31.i = zext i32 %20 to i352
  %bf.shl32.i = shl nuw nsw i352 %bf.value31.i, 349
  %bf.clear33.i = and i352 %bf.load30.i, -1146749307995035755805410447651043470398282494584140561868794419693461438044242404035009276555062843277313
  %bf.set34.i = or i352 %bf.shl32.i, %bf.clear33.i
  store i352 %bf.set34.i, ptr %misc, align 4
  %21 = ptrtoint ptr %buff.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buff.1, align 4
  %shr39.i = lshr i32 %22, 28
  br i1 %clr, label %do.body43.i, label %if.end28.i.if.end56.i_crit_edge

if.end28.i.if.end56.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

do.body43.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  %and49.i = and i32 %22, -268435457
  %23 = ptrtoint ptr %buff.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and49.i, ptr %buff.1, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.body43.i, %if.end28.i.if.end56.i_crit_edge
  %24 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %24, i32 44)
  %bf.load58.i = load i352, ptr %misc, align 4
  %25 = and i32 %shr39.i, 1
  %bf.value59.i = zext i32 %25 to i352
  %bf.shl60.i = shl nuw nsw i352 %bf.value59.i, 348
  %bf.clear61.i = and i352 %bf.load58.i, -573374653997517877902705223825521735199141247292070280934397209846730719022121202017504638277531421638657
  %bf.set62.i = or i352 %bf.clear61.i, %bf.shl60.i
  store i352 %bf.set62.i, ptr %misc, align 4
  %26 = ptrtoint ptr %buff.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buff.1, align 4
  %shr67.i = lshr i32 %27, 24
  br i1 %clr, label %do.body71.i, label %if.end56.i.if.end84.i_crit_edge

if.end56.i.if.end84.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84.i

do.body71.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #19
  %and77.i = and i32 %27, -251658241
  %28 = ptrtoint ptr %buff.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and77.i, ptr %buff.1, align 4
  br label %if.end84.i

if.end84.i:                                       ; preds = %do.body71.i, %if.end56.i.if.end84.i_crit_edge
  %29 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %29, i32 44)
  %bf.load86.i = load i352, ptr %misc, align 4
  %30 = and i32 %shr67.i, 15
  %bf.value87.i = zext i32 %30 to i352
  %bf.shl88.i = shl nuw nsw i352 %bf.value87.i, 344
  %bf.clear89.i = and i352 %bf.load86.i, -537538738122673010533786147336426626749194919336315888375997384231310049083238626891410598385185707786241
  %bf.set90.i = or i352 %bf.clear89.i, %bf.shl88.i
  store i352 %bf.set90.i, ptr %misc, align 4
  %31 = ptrtoint ptr %buff.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buff.1, align 4
  br i1 %clr, label %do.body99.i, label %if.end84.i.if.end112.i_crit_edge

if.end84.i.if.end112.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end112.i

do.body99.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #19
  %and105.i = and i32 %32, -16777216
  %33 = ptrtoint ptr %buff.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and105.i, ptr %buff.1, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %do.body99.i, %if.end84.i.if.end112.i_crit_edge
  %34 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %34, i32 44)
  %bf.load114.i = load i352, ptr %misc, align 4
  %35 = and i32 %32, 16777215
  %bf.value115.i = zext i32 %35 to i352
  %bf.shl116.i = shl nuw nsw i352 %bf.value115.i, 320
  %bf.clear117.i = and i352 %bf.load114.i, -35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915841
  %bf.set118.i = or i352 %bf.clear117.i, %bf.shl116.i
  store i352 %bf.set118.i, ptr %misc, align 4
  %add.ptr122.i = getelementptr i32, ptr %buff.1, i32 1
  %36 = ptrtoint ptr %add.ptr122.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr122.i, align 4
  br i1 %clr, label %do.body127.i, label %if.end112.i.if.end140.i_crit_edge

if.end112.i.if.end140.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end140.i

do.body127.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #19
  %and133.i = and i32 %37, -65536
  %38 = ptrtoint ptr %add.ptr122.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and133.i, ptr %add.ptr122.i, align 4
  br label %if.end140.i

if.end140.i:                                      ; preds = %do.body127.i, %if.end112.i.if.end140.i_crit_edge
  %39 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %39, i32 44)
  %bf.load142.i = load i352, ptr %misc, align 4
  %40 = and i32 %37, 65535
  %bf.value143.i = zext i32 %40 to i352
  %bf.shl144.i = shl nuw nsw i352 %bf.value143.i, 288
  %bf.clear145.i = and i352 %bf.load142.i, -32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824961
  %bf.set146.i = or i352 %bf.clear145.i, %bf.shl144.i
  store i352 %bf.set146.i, ptr %misc, align 4
  %41 = ptrtoint ptr %add.ptr122.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr122.i, align 4
  %shr151.i = lshr i32 %42, 16
  br i1 %clr, label %do.body155.i, label %if.end140.i.if.end168.i_crit_edge

if.end140.i.if.end168.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end168.i

do.body155.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #19
  %and161.i = and i32 %42, 65535
  %43 = ptrtoint ptr %add.ptr122.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and161.i, ptr %add.ptr122.i, align 4
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.body155.i, %if.end140.i.if.end168.i_crit_edge
  %44 = zext i32 %shr151.i to i352
  %45 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %45, i32 44)
  %bf.load170.i = load i352, ptr %misc, align 4
  %bf.shl172.i = shl nuw nsw i352 %44, 304
  %bf.clear173.i = and i352 %bf.load170.i, -2135954443345288730617641411038537564552127698862354114967031429575030055679844336635663152578561
  %bf.set174.i = or i352 %bf.clear173.i, %bf.shl172.i
  store i352 %bf.set174.i, ptr %misc, align 4
  %add.ptr178.i = getelementptr i32, ptr %buff.1, i32 2
  %46 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr178.i, align 4
  %shr179.i = lshr i32 %47, 29
  br i1 %clr, label %do.body211.i, label %if.end196.i

if.end196.i:                                      ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = zext i32 %shr179.i to i352
  %bf.shl200.i = shl nuw nsw i352 %48, 285
  %bf.clear201.i = and i352 %bf.set174.i, -435157831858563311885959467128468235087899131947679252760405979781514559885966703591425
  %bf.set202.i = or i352 %bf.shl200.i, %bf.clear201.i
  %49 = ptrtoint ptr %misc to i32
  call void @__asan_storeN_noabort(i32 %49, i32 44)
  store i352 %bf.set202.i, ptr %misc, align 4
  %50 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr178.i, align 4
  br label %if.end224.i

do.body211.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #19
  %and189.i = and i32 %47, 536870911
  %52 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and189.i, ptr %add.ptr178.i, align 4
  %53 = zext i32 %shr179.i to i352
  %54 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %54, i32 44)
  %bf.load198940.i = load i352, ptr %misc, align 4
  %bf.shl200941.i = shl nuw nsw i352 %53, 285
  %bf.clear201942.i = and i352 %bf.load198940.i, -435157831858563311885959467128468235087899131947679252760405979781514559885966703591425
  %bf.set202943.i = or i352 %bf.clear201942.i, %bf.shl200941.i
  store i352 %bf.set202943.i, ptr %misc, align 4
  %55 = load i32, ptr %add.ptr178.i, align 4
  %and217.i = and i32 %55, -268435457
  store i32 %and217.i, ptr %add.ptr178.i, align 4
  br label %if.end224.i

if.end224.i:                                      ; preds = %do.body211.i, %if.end196.i
  %shr207945.in.i = phi i32 [ %55, %do.body211.i ], [ %51, %if.end196.i ]
  %shr207945.i = lshr i32 %shr207945.in.i, 28
  %56 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %56, i32 44)
  %bf.load226.i = load i352, ptr %misc, align 4
  %57 = and i32 %shr207945.i, 1
  %bf.value227.i = zext i32 %57 to i352
  %bf.shl228.i = shl nuw nsw i352 %bf.value227.i, 284
  %bf.clear229.i = and i352 %bf.load226.i, -31082702275611665134711390509176302506278509424834232340028998555822468563283335970817
  %bf.set230.i = or i352 %bf.shl228.i, %bf.clear229.i
  store i352 %bf.set230.i, ptr %misc, align 4
  %58 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr178.i, align 4
  %shr235.i = lshr i32 %59, 16
  br i1 %clr, label %do.body239.i, label %if.end224.i.if.end252.i_crit_edge

if.end224.i.if.end252.i_crit_edge:                ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end252.i

do.body239.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #19
  %and245.i = and i32 %59, -268369921
  %60 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and245.i, ptr %add.ptr178.i, align 4
  br label %if.end252.i

if.end252.i:                                      ; preds = %do.body239.i, %if.end224.i.if.end252.i_crit_edge
  %61 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %61, i32 44)
  %bf.load254.i = load i352, ptr %misc, align 4
  %62 = and i32 %shr235.i, 4095
  %bf.value255.i = zext i32 %62 to i352
  %bf.shl256.i = shl nuw nsw i352 %bf.value255.i, 272
  %bf.clear257.i = and i352 %bf.load254.i, -31075113725251408380528111361102773135549437523119184920024108663596925968419253125121
  %bf.set258.i = or i352 %bf.clear257.i, %bf.shl256.i
  store i352 %bf.set258.i, ptr %misc, align 4
  %63 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr178.i, align 4
  %shr263.i = lshr i32 %64, 13
  br i1 %clr, label %do.body267.i, label %if.end252.i.if.end280.i_crit_edge

if.end252.i.if.end280.i_crit_edge:                ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end280.i

do.body267.i:                                     ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #19
  %and273.i = and i32 %64, -57345
  %65 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and273.i, ptr %add.ptr178.i, align 4
  br label %if.end280.i

if.end280.i:                                      ; preds = %do.body267.i, %if.end252.i.if.end280.i_crit_edge
  %66 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %66, i32 44)
  %bf.load282.i = load i352, ptr %misc, align 4
  %67 = and i32 %shr263.i, 7
  %bf.value283.i = zext i32 %67 to i352
  %bf.shl284.i = shl nuw nsw i352 %bf.value283.i, 269
  %bf.clear285.i = and i352 %bf.load282.i, -6639981565224659910369254564338199387937914000666492504278655697349770506072489985
  %bf.set286.i = or i352 %bf.clear285.i, %bf.shl284.i
  store i352 %bf.set286.i, ptr %misc, align 4
  %68 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr178.i, align 4
  %shr291.i = lshr i32 %69, 12
  br i1 %clr, label %do.body295.i, label %if.end280.i.if.end308.i_crit_edge

if.end280.i.if.end308.i_crit_edge:                ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end308.i

do.body295.i:                                     ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #19
  %and301.i = and i32 %69, -4097
  %70 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and301.i, ptr %add.ptr178.i, align 4
  br label %if.end308.i

if.end308.i:                                      ; preds = %do.body295.i, %if.end280.i.if.end308.i_crit_edge
  %71 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %71, i32 44)
  %bf.load310.i = load i352, ptr %misc, align 4
  %72 = and i32 %shr291.i, 1
  %bf.value311.i = zext i32 %72 to i352
  %bf.shl312.i = shl nuw nsw i352 %bf.value311.i, 268
  %bf.clear313.i = and i352 %bf.load310.i, -474284397516047136454946754595585670566993857190463750305618264096412179005177857
  %bf.set314.i = or i352 %bf.clear313.i, %bf.shl312.i
  store i352 %bf.set314.i, ptr %misc, align 4
  %73 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr178.i, align 4
  br i1 %clr, label %do.body323.i, label %if.end308.i.if.end336.i_crit_edge

if.end308.i.if.end336.i_crit_edge:                ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end336.i

do.body323.i:                                     ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #19
  %and329.i = and i32 %74, -4096
  %75 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and329.i, ptr %add.ptr178.i, align 4
  br label %if.end336.i

if.end336.i:                                      ; preds = %do.body323.i, %if.end308.i.if.end336.i_crit_edge
  %76 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %76, i32 44)
  %bf.load338.i = load i352, ptr %misc, align 4
  %77 = and i32 %74, 4095
  %bf.value339.i = zext i32 %77 to i352
  %bf.shl340.i = shl nuw nsw i352 %bf.value339.i, 256
  %bf.clear341.i = and i352 %bf.load338.i, -474168605426809820259523183610576982659140587205798109741578806512404265875537921
  %bf.set342.i = or i352 %bf.clear341.i, %bf.shl340.i
  store i352 %bf.set342.i, ptr %misc, align 4
  %add.ptr346.i = getelementptr i32, ptr %buff.1, i32 3
  %78 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr346.i, align 4
  %shr347.i = lshr i32 %79, 31
  br i1 %clr, label %do.body379.i, label %if.end364.i

if.end364.i:                                      ; preds = %if.end336.i
  call void @__sanitizer_cov_trace_pc() #19
  %80 = zext i32 %shr347.i to i352
  %bf.shl368.i = shl nuw nsw i352 %80, 255
  %bf.clear369.i = and i352 %bf.set342.i, -57896044618658097711785492504343953926634992332820282019728792003956564819969
  %bf.set370.i = or i352 %bf.shl368.i, %bf.clear369.i
  %81 = ptrtoint ptr %misc to i32
  call void @__asan_storeN_noabort(i32 %81, i32 44)
  store i352 %bf.set370.i, ptr %misc, align 4
  %82 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr346.i, align 4
  br label %if.end392.i

do.body379.i:                                     ; preds = %if.end336.i
  call void @__sanitizer_cov_trace_pc() #19
  %and357.i = and i32 %79, 2147483647
  %84 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and357.i, ptr %add.ptr346.i, align 4
  %85 = zext i32 %shr347.i to i352
  %86 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %86, i32 44)
  %bf.load366947.i = load i352, ptr %misc, align 4
  %bf.shl368948.i = shl nuw nsw i352 %85, 255
  %bf.clear369949.i = and i352 %bf.load366947.i, -57896044618658097711785492504343953926634992332820282019728792003956564819969
  %bf.set370950.i = or i352 %bf.clear369949.i, %bf.shl368948.i
  store i352 %bf.set370950.i, ptr %misc, align 4
  %87 = load i32, ptr %add.ptr346.i, align 4
  %and385.i = and i32 %87, -1073741825
  store i32 %and385.i, ptr %add.ptr346.i, align 4
  br label %if.end392.i

if.end392.i:                                      ; preds = %do.body379.i, %if.end364.i
  %shr375952.in.i = phi i32 [ %87, %do.body379.i ], [ %83, %if.end364.i ]
  %shr375952.i = lshr i32 %shr375952.in.i, 30
  %88 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %88, i32 44)
  %bf.load394.i = load i352, ptr %misc, align 4
  %89 = and i32 %shr375952.i, 1
  %bf.value395.i = zext i32 %89 to i352
  %bf.shl396.i = shl nuw nsw i352 %bf.value395.i, 254
  %bf.clear397.i = and i352 %bf.load394.i, -28948022309329048855892746252171976963317496166410141009864396001978282409985
  %bf.set398.i = or i352 %bf.shl396.i, %bf.clear397.i
  store i352 %bf.set398.i, ptr %misc, align 4
  %90 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr346.i, align 4
  %shr403.i = lshr i32 %91, 29
  br i1 %clr, label %do.body407.i, label %if.end392.i.if.end420.i_crit_edge

if.end392.i.if.end420.i_crit_edge:                ; preds = %if.end392.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end420.i

do.body407.i:                                     ; preds = %if.end392.i
  call void @__sanitizer_cov_trace_pc() #19
  %and413.i = and i32 %91, -536870913
  %92 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and413.i, ptr %add.ptr346.i, align 4
  br label %if.end420.i

if.end420.i:                                      ; preds = %do.body407.i, %if.end392.i.if.end420.i_crit_edge
  %93 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %93, i32 44)
  %bf.load422.i = load i352, ptr %misc, align 4
  %94 = and i32 %shr403.i, 1
  %bf.value423.i = zext i32 %94 to i352
  %bf.shl424.i = shl nuw nsw i352 %bf.value423.i, 253
  %bf.clear425.i = and i352 %bf.load422.i, -14474011154664524427946373126085988481658748083205070504932198000989141204993
  %bf.set426.i = or i352 %bf.clear425.i, %bf.shl424.i
  store i352 %bf.set426.i, ptr %misc, align 4
  %95 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr346.i, align 4
  %shr431.i = lshr i32 %96, 28
  br i1 %clr, label %do.body435.i, label %if.end420.i.if.end448.i_crit_edge

if.end420.i.if.end448.i_crit_edge:                ; preds = %if.end420.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end448.i

do.body435.i:                                     ; preds = %if.end420.i
  call void @__sanitizer_cov_trace_pc() #19
  %and441.i = and i32 %96, -268435457
  %97 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and441.i, ptr %add.ptr346.i, align 4
  br label %if.end448.i

if.end448.i:                                      ; preds = %do.body435.i, %if.end420.i.if.end448.i_crit_edge
  %98 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %98, i32 44)
  %bf.load450.i = load i352, ptr %misc, align 4
  %99 = and i32 %shr431.i, 1
  %bf.value451.i = zext i32 %99 to i352
  %bf.shl452.i = shl nuw nsw i352 %bf.value451.i, 252
  %bf.clear453.i = and i352 %bf.load450.i, -7237005577332262213973186563042994240829374041602535252466099000494570602497
  %bf.set454.i = or i352 %bf.clear453.i, %bf.shl452.i
  store i352 %bf.set454.i, ptr %misc, align 4
  %100 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr346.i, align 4
  br i1 %clr, label %do.body463.i, label %if.end448.i.if.end476.i_crit_edge

if.end448.i.if.end476.i_crit_edge:                ; preds = %if.end448.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end476.i

do.body463.i:                                     ; preds = %if.end448.i
  call void @__sanitizer_cov_trace_pc() #19
  %and469.i = and i32 %101, -65536
  %102 = ptrtoint ptr %add.ptr346.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and469.i, ptr %add.ptr346.i, align 4
  br label %if.end476.i

if.end476.i:                                      ; preds = %do.body463.i, %if.end448.i.if.end476.i_crit_edge
  %103 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %103, i32 44)
  %bf.load478.i = load i352, ptr %misc, align 4
  %104 = and i32 %101, 65535
  %bf.value479.i = zext i32 %104 to i352
  %bf.shl480.i = shl nuw nsw i352 %bf.value479.i, 224
  %bf.clear481.i = and i352 %bf.load478.i, -1766820104831717178943502833727831496196810259731196417549125097682370561
  %bf.set482.i = or i352 %bf.clear481.i, %bf.shl480.i
  store i352 %bf.set482.i, ptr %misc, align 4
  %add.ptr486.i = getelementptr i32, ptr %buff.1, i32 4
  %105 = ptrtoint ptr %add.ptr486.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr486.i, align 4
  %shr487.i = lshr i32 %106, 8
  br i1 %clr, label %do.body519.i, label %if.end504.i

if.end504.i:                                      ; preds = %if.end476.i
  call void @__sanitizer_cov_trace_pc() #19
  %107 = zext i32 %shr487.i to i352
  %bf.shl508.i = shl nuw nsw i352 %107, 200
  %bf.clear509.i = and i352 %bf.set482.i, -26959945060212595535676739545057538332474541900337578698310774947841
  %bf.set510.i = or i352 %bf.shl508.i, %bf.clear509.i
  %108 = ptrtoint ptr %misc to i32
  call void @__asan_storeN_noabort(i32 %108, i32 44)
  store i352 %bf.set510.i, ptr %misc, align 4
  %109 = ptrtoint ptr %add.ptr486.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr486.i, align 4
  br label %if.end532.i

do.body519.i:                                     ; preds = %if.end476.i
  call void @__sanitizer_cov_trace_pc() #19
  %and497.i = and i32 %106, 255
  %111 = ptrtoint ptr %add.ptr486.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and497.i, ptr %add.ptr486.i, align 4
  %112 = zext i32 %shr487.i to i352
  %113 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %113, i32 44)
  %bf.load506954.i = load i352, ptr %misc, align 4
  %bf.shl508955.i = shl nuw nsw i352 %112, 200
  %bf.clear509956.i = and i352 %bf.load506954.i, -26959945060212595535676739545057538332474541900337578698310774947841
  %bf.set510957.i = or i352 %bf.clear509956.i, %bf.shl508955.i
  store i352 %bf.set510957.i, ptr %misc, align 4
  %114 = load i32, ptr %add.ptr486.i, align 4
  %and525.i = and i32 %114, -256
  store i32 %and525.i, ptr %add.ptr486.i, align 4
  br label %if.end532.i

if.end532.i:                                      ; preds = %do.body519.i, %if.end504.i
  %115 = phi i32 [ %114, %do.body519.i ], [ %110, %if.end504.i ]
  %116 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %116, i32 44)
  %bf.load534.i = load i352, ptr %misc, align 4
  %117 = and i32 %115, 255
  %bf.value535.i = zext i32 %117 to i352
  %bf.shl536.i = shl nuw nsw i352 %bf.value535.i, 192
  %bf.clear537.i = and i352 %bf.load534.i, -1600660942523603594778126302917954936106100638338328800788481
  %bf.set538.i = or i352 %bf.shl536.i, %bf.clear537.i
  store i352 %bf.set538.i, ptr %misc, align 4
  %add.ptr542.i = getelementptr i32, ptr %buff.1, i32 5
  %118 = ptrtoint ptr %add.ptr542.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr542.i, align 4
  %shr543.i = lshr i32 %119, 8
  br i1 %clr, label %do.body547.i, label %if.end532.i.if.end560.i_crit_edge

if.end532.i.if.end560.i_crit_edge:                ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end560.i

do.body547.i:                                     ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #19
  %and553.i = and i32 %119, 255
  %120 = ptrtoint ptr %add.ptr542.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and553.i, ptr %add.ptr542.i, align 4
  br label %if.end560.i

if.end560.i:                                      ; preds = %do.body547.i, %if.end532.i.if.end560.i_crit_edge
  %121 = zext i32 %shr543.i to i352
  %122 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %122, i32 44)
  %bf.load562.i = load i352, ptr %misc, align 4
  %bf.shl564.i = shl nuw nsw i352 %121, 168
  %bf.clear565.i = and i352 %bf.load562.i, -6277101361242261607124642363064349240733902412545303511041
  %bf.set566.i = or i352 %bf.clear565.i, %bf.shl564.i
  store i352 %bf.set566.i, ptr %misc, align 4
  %add.ptr570.i = getelementptr i32, ptr %buff.1, i32 6
  %123 = ptrtoint ptr %add.ptr570.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr570.i, align 4
  %shr571.i = lshr i32 %124, 8
  br i1 %clr, label %do.body603.i, label %if.end588.i

if.end588.i:                                      ; preds = %if.end560.i
  call void @__sanitizer_cov_trace_pc() #19
  %125 = zext i32 %shr571.i to i352
  %bf.shl592.i = shl nuw nsw i352 %125, 136
  %bf.clear593.i = and i352 %bf.set566.i, -1461501550218616986443438186092383517123270410241
  %bf.set594.i = or i352 %bf.shl592.i, %bf.clear593.i
  %126 = ptrtoint ptr %misc to i32
  call void @__asan_storeN_noabort(i32 %126, i32 44)
  store i352 %bf.set594.i, ptr %misc, align 4
  %127 = ptrtoint ptr %add.ptr570.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr570.i, align 4
  br label %if.end616.i

do.body603.i:                                     ; preds = %if.end560.i
  call void @__sanitizer_cov_trace_pc() #19
  %and581.i = and i32 %124, 255
  %129 = ptrtoint ptr %add.ptr570.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %and581.i, ptr %add.ptr570.i, align 4
  %130 = zext i32 %shr571.i to i352
  %131 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %131, i32 44)
  %bf.load590958.i = load i352, ptr %misc, align 4
  %bf.shl592959.i = shl nuw nsw i352 %130, 136
  %bf.clear593960.i = and i352 %bf.load590958.i, -1461501550218616986443438186092383517123270410241
  %bf.set594961.i = or i352 %bf.clear593960.i, %bf.shl592959.i
  store i352 %bf.set594961.i, ptr %misc, align 4
  %132 = load i32, ptr %add.ptr570.i, align 4
  %and609.i = and i32 %132, -3
  store i32 %and609.i, ptr %add.ptr570.i, align 4
  br label %if.end616.i

if.end616.i:                                      ; preds = %do.body603.i, %if.end588.i
  %shr599963.in.i = phi i32 [ %132, %do.body603.i ], [ %128, %if.end588.i ]
  %shr599963.i = lshr i32 %shr599963.in.i, 1
  %133 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %133, i32 44)
  %bf.load618.i = load i352, ptr %misc, align 4
  %134 = and i32 %shr599963.i, 1
  %bf.value619.i = zext i32 %134 to i352
  %bf.shl620.i = shl nuw nsw i352 %bf.value619.i, 129
  %bf.clear621.i = and i352 %bf.load618.i, -680564733841876926926749214863536422913
  %bf.set622.i = or i352 %bf.shl620.i, %bf.clear621.i
  store i352 %bf.set622.i, ptr %misc, align 4
  %135 = ptrtoint ptr %add.ptr570.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr570.i, align 4
  br i1 %clr, label %do.body631.i, label %if.end616.i.if.end644.i_crit_edge

if.end616.i.if.end644.i_crit_edge:                ; preds = %if.end616.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end644.i

do.body631.i:                                     ; preds = %if.end616.i
  call void @__sanitizer_cov_trace_pc() #19
  %and637.i = and i32 %136, -2
  %137 = ptrtoint ptr %add.ptr570.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %and637.i, ptr %add.ptr570.i, align 4
  br label %if.end644.i

if.end644.i:                                      ; preds = %do.body631.i, %if.end616.i.if.end644.i_crit_edge
  %138 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %138, i32 44)
  %bf.load646.i = load i352, ptr %misc, align 4
  %139 = and i32 %136, 1
  %bf.value647.i = zext i32 %139 to i352
  %bf.shl648.i = shl nuw nsw i352 %bf.value647.i, 128
  %bf.clear649.i = and i352 %bf.load646.i, -340282366920938463463374607431768211457
  %bf.set650.i = or i352 %bf.clear649.i, %bf.shl648.i
  store i352 %bf.set650.i, ptr %misc, align 4
  %add.ptr654.i = getelementptr i32, ptr %buff.1, i32 7
  %140 = ptrtoint ptr %add.ptr654.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr654.i, align 4
  br i1 %clr, label %do.body659.i, label %if.end644.i.if.end672.i_crit_edge

if.end644.i.if.end672.i_crit_edge:                ; preds = %if.end644.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end672.i

do.body659.i:                                     ; preds = %if.end644.i
  call void @__sanitizer_cov_trace_pc() #19
  %and665.i = and i32 %141, -1048576
  %142 = ptrtoint ptr %add.ptr654.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and665.i, ptr %add.ptr654.i, align 4
  br label %if.end672.i

if.end672.i:                                      ; preds = %do.body659.i, %if.end644.i.if.end672.i_crit_edge
  %143 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %143, i32 44)
  %bf.load674.i = load i352, ptr %misc, align 4
  %144 = and i32 %141, 1048575
  %bf.value675.i = zext i32 %144 to i352
  %bf.shl676.i = shl nuw nsw i352 %bf.value675.i, 96
  %bf.clear677.i = and i352 %bf.load674.i, -83076670508394727792150347723571201
  %bf.set678.i = or i352 %bf.clear677.i, %bf.shl676.i
  store i352 %bf.set678.i, ptr %misc, align 4
  %add.ptr682.i = getelementptr i32, ptr %buff.1, i32 8
  %145 = ptrtoint ptr %add.ptr682.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr682.i, align 4
  br i1 %clr, label %do.body687.i, label %if.end672.i.if.end700.i_crit_edge

if.end672.i.if.end700.i_crit_edge:                ; preds = %if.end672.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end700.i

do.body687.i:                                     ; preds = %if.end672.i
  call void @__sanitizer_cov_trace_pc() #19
  %and693.i = and i32 %146, -1048576
  %147 = ptrtoint ptr %add.ptr682.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %and693.i, ptr %add.ptr682.i, align 4
  br label %if.end700.i

if.end700.i:                                      ; preds = %do.body687.i, %if.end672.i.if.end700.i_crit_edge
  %148 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %148, i32 44)
  %bf.load702.i = load i352, ptr %misc, align 4
  %149 = and i32 %146, 1048575
  %bf.value703.i = zext i32 %149 to i352
  %bf.shl704.i = shl nuw nsw i352 %bf.value703.i, 64
  %bf.clear705.i = and i352 %bf.load702.i, -19342794667089993085747201
  %bf.set706.i = or i352 %bf.clear705.i, %bf.shl704.i
  store i352 %bf.set706.i, ptr %misc, align 4
  %add.ptr710.i = getelementptr i32, ptr %buff.1, i32 9
  %150 = ptrtoint ptr %add.ptr710.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr710.i, align 4
  %shr711.i = lshr i32 %151, 16
  br i1 %clr, label %do.body715.i, label %if.end700.i.if.end728.i_crit_edge

if.end700.i.if.end728.i_crit_edge:                ; preds = %if.end700.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end728.i

do.body715.i:                                     ; preds = %if.end700.i
  call void @__sanitizer_cov_trace_pc() #19
  %and721.i = and i32 %151, -4128769
  %152 = ptrtoint ptr %add.ptr710.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %and721.i, ptr %add.ptr710.i, align 4
  br label %if.end728.i

if.end728.i:                                      ; preds = %do.body715.i, %if.end700.i.if.end728.i_crit_edge
  %153 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %153, i32 44)
  %bf.load730.i = load i352, ptr %misc, align 4
  %154 = and i32 %shr711.i, 63
  %bf.value731.i = zext i32 %154 to i352
  %bf.shl732.i = shl nuw nsw i352 %bf.value731.i, 48
  %bf.clear733.i = and i352 %bf.load730.i, -17732923532771329
  %bf.set734.i = or i352 %bf.clear733.i, %bf.shl732.i
  store i352 %bf.set734.i, ptr %misc, align 4
  %155 = ptrtoint ptr %add.ptr710.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr710.i, align 4
  br i1 %clr, label %do.body743.i, label %if.end728.i.if.end756.i_crit_edge

if.end728.i.if.end756.i_crit_edge:                ; preds = %if.end728.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end756.i

do.body743.i:                                     ; preds = %if.end728.i
  call void @__sanitizer_cov_trace_pc() #19
  %and749.i = and i32 %156, -65536
  %157 = ptrtoint ptr %add.ptr710.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and749.i, ptr %add.ptr710.i, align 4
  br label %if.end756.i

if.end756.i:                                      ; preds = %do.body743.i, %if.end728.i.if.end756.i_crit_edge
  %158 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %158, i32 44)
  %bf.load758.i = load i352, ptr %misc, align 4
  %159 = and i32 %156, 65535
  %bf.value759.i = zext i32 %159 to i352
  %bf.shl760.i = shl nuw nsw i352 %bf.value759.i, 32
  %bf.clear761.i = and i352 %bf.load758.i, -281470681743361
  %bf.set762.i = or i352 %bf.clear761.i, %bf.shl760.i
  store i352 %bf.set762.i, ptr %misc, align 4
  %add.ptr766.i = getelementptr i32, ptr %buff.1, i32 10
  %160 = ptrtoint ptr %add.ptr766.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr766.i, align 4
  br i1 %clr, label %do.body771.i, label %if.end756.i.dr_ste_copy_mask_misc.exit_crit_edge

if.end756.i.dr_ste_copy_mask_misc.exit_crit_edge: ; preds = %if.end756.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dr_ste_copy_mask_misc.exit

do.body771.i:                                     ; preds = %if.end756.i
  call void @__sanitizer_cov_trace_pc() #19
  %and777.i = and i32 %161, -16777216
  %162 = ptrtoint ptr %add.ptr766.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and777.i, ptr %add.ptr766.i, align 4
  br label %dr_ste_copy_mask_misc.exit

dr_ste_copy_mask_misc.exit:                       ; preds = %do.body771.i, %if.end756.i.dr_ste_copy_mask_misc.exit_crit_edge
  %163 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %163, i32 44)
  %bf.load786.i = load i352, ptr %misc, align 4
  %164 = and i32 %161, 16777215
  %bf.value787.i = zext i32 %164 to i352
  %bf.clear788.i = and i352 %bf.load786.i, -16777216
  %bf.set789.i = or i352 %bf.clear788.i, %bf.value787.i
  store i352 %bf.set789.i, ptr %misc, align 4
  br label %if.end23

if.end23:                                         ; preds = %dr_ste_copy_mask_misc.exit, %if.end7.if.end23_crit_edge
  %and26 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end23.if.end43_crit_edge, label %if.then28

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then28:                                        ; preds = %if.end23
  %165 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %166)
  %cmp31 = icmp ult i32 %166, 192
  %add.ptr35 = getelementptr i8, ptr %2, i32 128
  br i1 %cmp31, label %if.then33, label %if.then28.if.end41_crit_edge

if.then28.if.end41_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  %sub37 = add nsw i32 %166, -128
  %167 = call ptr @memcpy(ptr %tail_param, ptr %add.ptr35, i32 %sub37)
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.then28.if.end41_crit_edge
  %buff.2 = phi ptr [ %tail_param, %if.then33 ], [ %add.ptr35, %if.then28.if.end41_crit_edge ]
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 2
  call fastcc void @dr_ste_copy_mask_spec(ptr noundef %buff.2, ptr noundef %inner, i1 noundef zeroext %clr)
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end23.if.end43_crit_edge
  %and46 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.if.end63_crit_edge, label %if.then48

if.end43.if.end63_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then48:                                        ; preds = %if.end43
  %168 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %169)
  %cmp51 = icmp ult i32 %169, 256
  %add.ptr55 = getelementptr i8, ptr %2, i32 192
  br i1 %cmp51, label %if.then53, label %if.then48.if.end61_crit_edge

if.then48.if.end61_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  %sub57 = add nsw i32 %169, -192
  %170 = call ptr @memcpy(ptr %tail_param, ptr %add.ptr55, i32 %sub57)
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %if.then48.if.end61_crit_edge
  %buff.3 = phi ptr [ %tail_param, %if.then53 ], [ %add.ptr55, %if.then48.if.end61_crit_edge ]
  %misc2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3
  %171 = ptrtoint ptr %buff.3 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %buff.3, align 4
  %shr.i209 = lshr i32 %172, 12
  br i1 %clr, label %do.body15.i217, label %if.end.i214

if.end.i214:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  %173 = zext i32 %shr.i209 to i128
  %174 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 16)
  %bf.load.i210 = load i128, ptr %misc2, align 4
  %bf.shl.i211 = shl nuw i128 %173, 108
  %bf.clear.i212 = and i128 %bf.load.i210, 324518553658426726783156020576255
  %bf.set.i213 = or i128 %bf.clear.i212, %bf.shl.i211
  store i128 %bf.set.i213, ptr %misc2, align 4
  %175 = ptrtoint ptr %buff.3 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buff.3, align 4
  br label %if.end28.i224

do.body15.i217:                                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  %and3.i215 = and i32 %172, 4095
  %177 = ptrtoint ptr %buff.3 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %and3.i215, ptr %buff.3, align 4
  %178 = zext i32 %shr.i209 to i128
  %179 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 16)
  %bf.load747.i = load i128, ptr %misc2, align 4
  %bf.shl748.i = shl nuw i128 %178, 108
  %bf.clear749.i = and i128 %bf.load747.i, 324518553658426726783156020576255
  %bf.set750.i = or i128 %bf.clear749.i, %bf.shl748.i
  store i128 %bf.set750.i, ptr %misc2, align 4
  %180 = load i32, ptr %buff.3, align 4
  %and21.i216 = and i32 %180, -3585
  store i32 %and21.i216, ptr %buff.3, align 4
  br label %if.end28.i224

if.end28.i224:                                    ; preds = %do.body15.i217, %if.end.i214
  %shr11752.in.i = phi i32 [ %180, %do.body15.i217 ], [ %176, %if.end.i214 ]
  %shr11752.i = lshr i32 %shr11752.in.i, 9
  %181 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 16)
  %bf.load30.i218 = load i128, ptr %misc2, align 4
  %182 = and i32 %shr11752.i, 7
  %bf.value31.i219 = zext i32 %182 to i128
  %bf.shl32.i220 = shl nuw nsw i128 %bf.value31.i219, 105
  %bf.clear33.i221 = and i128 %bf.load30.i218, -283953734451123385935261518004225
  %bf.set34.i222 = or i128 %bf.shl32.i220, %bf.clear33.i221
  store i128 %bf.set34.i222, ptr %misc2, align 4
  %183 = ptrtoint ptr %buff.3 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %buff.3, align 4
  %shr39.i223 = lshr i32 %184, 8
  br i1 %clr, label %do.body43.i226, label %if.end28.i224.if.end56.i232_crit_edge

if.end28.i224.if.end56.i232_crit_edge:            ; preds = %if.end28.i224
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i232

do.body43.i226:                                   ; preds = %if.end28.i224
  call void @__sanitizer_cov_trace_pc() #19
  %and49.i225 = and i32 %184, -257
  %185 = ptrtoint ptr %buff.3 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %and49.i225, ptr %buff.3, align 4
  br label %if.end56.i232

if.end56.i232:                                    ; preds = %do.body43.i226, %if.end28.i224.if.end56.i232_crit_edge
  %186 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 16)
  %bf.load58.i227 = load i128, ptr %misc2, align 4
  %187 = and i32 %shr39.i223, 1
  %bf.value59.i228 = zext i32 %187 to i128
  %bf.shl60.i229 = shl nuw nsw i128 %bf.value59.i228, 104
  %bf.clear61.i230 = and i128 %bf.load58.i227, -20282409603651670423947251286017
  %bf.set62.i231 = or i128 %bf.clear61.i230, %bf.shl60.i229
  store i128 %bf.set62.i231, ptr %misc2, align 4
  %188 = ptrtoint ptr %buff.3 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %buff.3, align 4
  br i1 %clr, label %do.body71.i234, label %if.end56.i232.if.end84.i240_crit_edge

if.end56.i232.if.end84.i240_crit_edge:            ; preds = %if.end56.i232
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84.i240

do.body71.i234:                                   ; preds = %if.end56.i232
  call void @__sanitizer_cov_trace_pc() #19
  %and77.i233 = and i32 %189, -256
  %190 = ptrtoint ptr %buff.3 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %and77.i233, ptr %buff.3, align 4
  br label %if.end84.i240

if.end84.i240:                                    ; preds = %do.body71.i234, %if.end56.i232.if.end84.i240_crit_edge
  %191 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 16)
  %bf.load86.i235 = load i128, ptr %misc2, align 4
  %192 = and i32 %189, 255
  %bf.value87.i236 = zext i32 %192 to i128
  %bf.shl88.i237 = shl nuw nsw i128 %bf.value87.i236, 96
  %bf.clear89.i238 = and i128 %bf.load86.i235, -20203181441137406086353707335681
  %bf.set90.i239 = or i128 %bf.clear89.i238, %bf.shl88.i237
  store i128 %bf.set90.i239, ptr %misc2, align 4
  %add.ptr94.i = getelementptr i32, ptr %buff.3, i32 1
  %193 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr94.i, align 4
  %shr95.i = lshr i32 %194, 12
  br i1 %clr, label %do.body127.i248, label %if.end112.i245

if.end112.i245:                                   ; preds = %if.end84.i240
  call void @__sanitizer_cov_trace_pc() #19
  %195 = zext i32 %shr95.i to i128
  %bf.shl116.i242 = shl nuw nsw i128 %195, 76
  %bf.clear117.i243 = and i128 %bf.set90.i239, -79228086956400611679220531201
  %bf.set118.i244 = or i128 %bf.shl116.i242, %bf.clear117.i243
  %196 = ptrtoint ptr %misc2 to i32
  call void @__asan_storeN_noabort(i32 %196, i32 16)
  store i128 %bf.set118.i244, ptr %misc2, align 4
  %197 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr94.i, align 4
  br label %if.end140.i255

do.body127.i248:                                  ; preds = %if.end84.i240
  call void @__sanitizer_cov_trace_pc() #19
  %and105.i246 = and i32 %194, 4095
  %199 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %and105.i246, ptr %add.ptr94.i, align 4
  %200 = zext i32 %shr95.i to i128
  %201 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 16)
  %bf.load114754.i = load i128, ptr %misc2, align 4
  %bf.shl116755.i = shl nuw nsw i128 %200, 76
  %bf.clear117756.i = and i128 %bf.load114754.i, -79228086956400611679220531201
  %bf.set118757.i = or i128 %bf.clear117756.i, %bf.shl116755.i
  store i128 %bf.set118757.i, ptr %misc2, align 4
  %202 = load i32, ptr %add.ptr94.i, align 4
  %and133.i247 = and i32 %202, -3585
  store i32 %and133.i247, ptr %add.ptr94.i, align 4
  br label %if.end140.i255

if.end140.i255:                                   ; preds = %do.body127.i248, %if.end112.i245
  %shr123759.in.i = phi i32 [ %202, %do.body127.i248 ], [ %198, %if.end112.i245 ]
  %shr123759.i = lshr i32 %shr123759.in.i, 9
  %203 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 16)
  %bf.load142.i249 = load i128, ptr %misc2, align 4
  %204 = and i32 %shr123759.i, 7
  %bf.value143.i250 = zext i32 %204 to i128
  %bf.shl144.i251 = shl nuw nsw i128 %bf.value143.i250, 73
  %bf.clear145.i252 = and i128 %bf.load142.i249, -66113130760175032991745
  %bf.set146.i253 = or i128 %bf.shl144.i251, %bf.clear145.i252
  store i128 %bf.set146.i253, ptr %misc2, align 4
  %205 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr94.i, align 4
  %shr151.i254 = lshr i32 %206, 8
  br i1 %clr, label %do.body155.i257, label %if.end140.i255.if.end168.i262_crit_edge

if.end140.i255.if.end168.i262_crit_edge:          ; preds = %if.end140.i255
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end168.i262

do.body155.i257:                                  ; preds = %if.end140.i255
  call void @__sanitizer_cov_trace_pc() #19
  %and161.i256 = and i32 %206, -257
  %207 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %and161.i256, ptr %add.ptr94.i, align 4
  br label %if.end168.i262

if.end168.i262:                                   ; preds = %do.body155.i257, %if.end140.i255.if.end168.i262_crit_edge
  %208 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %208, i32 16)
  %bf.load170.i258 = load i128, ptr %misc2, align 4
  %209 = and i32 %shr151.i254, 1
  %bf.value171.i = zext i32 %209 to i128
  %bf.shl172.i259 = shl nuw nsw i128 %bf.value171.i, 72
  %bf.clear173.i260 = and i128 %bf.load170.i258, -4722366482869645213697
  %bf.set174.i261 = or i128 %bf.clear173.i260, %bf.shl172.i259
  store i128 %bf.set174.i261, ptr %misc2, align 4
  %210 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %add.ptr94.i, align 4
  br i1 %clr, label %do.body183.i, label %if.end168.i262.if.end196.i268_crit_edge

if.end168.i262.if.end196.i268_crit_edge:          ; preds = %if.end168.i262
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end196.i268

do.body183.i:                                     ; preds = %if.end168.i262
  call void @__sanitizer_cov_trace_pc() #19
  %and189.i263 = and i32 %211, -256
  %212 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %and189.i263, ptr %add.ptr94.i, align 4
  br label %if.end196.i268

if.end196.i268:                                   ; preds = %do.body183.i, %if.end168.i262.if.end196.i268_crit_edge
  %213 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 16)
  %bf.load198.i264 = load i128, ptr %misc2, align 4
  %214 = and i32 %211, 255
  %bf.value199.i = zext i32 %214 to i128
  %bf.shl200.i265 = shl nuw nsw i128 %bf.value199.i, 64
  %bf.clear201.i266 = and i128 %bf.load198.i264, -4703919738795935662081
  %bf.set202.i267 = or i128 %bf.clear201.i266, %bf.shl200.i265
  store i128 %bf.set202.i267, ptr %misc2, align 4
  %add.ptr206.i = getelementptr i32, ptr %buff.3, i32 2
  %215 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr206.i, align 4
  %shr207.i = lshr i32 %216, 12
  br i1 %clr, label %do.body239.i276, label %if.end224.i273

if.end224.i273:                                   ; preds = %if.end196.i268
  call void @__sanitizer_cov_trace_pc() #19
  %217 = zext i32 %shr207.i to i128
  %bf.shl228.i270 = shl nuw nsw i128 %217, 44
  %bf.clear229.i271 = and i128 %bf.set202.i267, -18446726481523507201
  %bf.set230.i272 = or i128 %bf.shl228.i270, %bf.clear229.i271
  %218 = ptrtoint ptr %misc2 to i32
  call void @__asan_storeN_noabort(i32 %218, i32 16)
  store i128 %bf.set230.i272, ptr %misc2, align 4
  %219 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr206.i, align 4
  br label %if.end252.i283

do.body239.i276:                                  ; preds = %if.end196.i268
  call void @__sanitizer_cov_trace_pc() #19
  %and217.i274 = and i32 %216, 4095
  %221 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %and217.i274, ptr %add.ptr206.i, align 4
  %222 = zext i32 %shr207.i to i128
  %223 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 16)
  %bf.load226761.i = load i128, ptr %misc2, align 4
  %bf.shl228762.i = shl nuw nsw i128 %222, 44
  %bf.clear229763.i = and i128 %bf.load226761.i, -18446726481523507201
  %bf.set230764.i = or i128 %bf.clear229763.i, %bf.shl228762.i
  store i128 %bf.set230764.i, ptr %misc2, align 4
  %224 = load i32, ptr %add.ptr206.i, align 4
  %and245.i275 = and i32 %224, -3585
  store i32 %and245.i275, ptr %add.ptr206.i, align 4
  br label %if.end252.i283

if.end252.i283:                                   ; preds = %do.body239.i276, %if.end224.i273
  %shr235766.in.i = phi i32 [ %224, %do.body239.i276 ], [ %220, %if.end224.i273 ]
  %shr235766.i = lshr i32 %shr235766.in.i, 9
  %225 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 16)
  %bf.load254.i277 = load i128, ptr %misc2, align 4
  %226 = and i32 %shr235766.i, 7
  %bf.value255.i278 = zext i32 %226 to i128
  %bf.shl256.i279 = shl nuw nsw i128 %bf.value255.i278, 41
  %bf.clear257.i280 = and i128 %bf.load254.i277, -15393162788865
  %bf.set258.i281 = or i128 %bf.shl256.i279, %bf.clear257.i280
  store i128 %bf.set258.i281, ptr %misc2, align 4
  %227 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %add.ptr206.i, align 4
  %shr263.i282 = lshr i32 %228, 8
  br i1 %clr, label %do.body267.i285, label %if.end252.i283.if.end280.i291_crit_edge

if.end252.i283.if.end280.i291_crit_edge:          ; preds = %if.end252.i283
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end280.i291

do.body267.i285:                                  ; preds = %if.end252.i283
  call void @__sanitizer_cov_trace_pc() #19
  %and273.i284 = and i32 %228, -257
  %229 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %and273.i284, ptr %add.ptr206.i, align 4
  br label %if.end280.i291

if.end280.i291:                                   ; preds = %do.body267.i285, %if.end252.i283.if.end280.i291_crit_edge
  %230 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 16)
  %bf.load282.i286 = load i128, ptr %misc2, align 4
  %231 = and i32 %shr263.i282, 1
  %bf.value283.i287 = zext i32 %231 to i128
  %bf.shl284.i288 = shl nuw nsw i128 %bf.value283.i287, 40
  %bf.clear285.i289 = and i128 %bf.load282.i286, -1099511627777
  %bf.set286.i290 = or i128 %bf.clear285.i289, %bf.shl284.i288
  store i128 %bf.set286.i290, ptr %misc2, align 4
  %232 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %add.ptr206.i, align 4
  br i1 %clr, label %do.body295.i293, label %if.end280.i291.if.end308.i299_crit_edge

if.end280.i291.if.end308.i299_crit_edge:          ; preds = %if.end280.i291
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end308.i299

do.body295.i293:                                  ; preds = %if.end280.i291
  call void @__sanitizer_cov_trace_pc() #19
  %and301.i292 = and i32 %233, -256
  %234 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %and301.i292, ptr %add.ptr206.i, align 4
  br label %if.end308.i299

if.end308.i299:                                   ; preds = %do.body295.i293, %if.end280.i291.if.end308.i299_crit_edge
  %235 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 16)
  %bf.load310.i294 = load i128, ptr %misc2, align 4
  %236 = and i32 %233, 255
  %bf.value311.i295 = zext i32 %236 to i128
  %bf.shl312.i296 = shl nuw nsw i128 %bf.value311.i295, 32
  %bf.clear313.i297 = and i128 %bf.load310.i294, -1095216660481
  %bf.set314.i298 = or i128 %bf.clear313.i297, %bf.shl312.i296
  store i128 %bf.set314.i298, ptr %misc2, align 4
  %add.ptr318.i = getelementptr i32, ptr %buff.3, i32 3
  %237 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %add.ptr318.i, align 4
  %shr319.i = and i32 %238, -4096
  br i1 %clr, label %do.body351.i, label %if.end336.i304

if.end336.i304:                                   ; preds = %if.end308.i299
  call void @__sanitizer_cov_trace_pc() #19
  %bf.shl340.i301 = zext i32 %shr319.i to i128
  %bf.clear341.i302 = and i128 %bf.set314.i298, -4294963201
  %bf.set342.i303 = or i128 %bf.clear341.i302, %bf.shl340.i301
  %239 = ptrtoint ptr %misc2 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 16)
  store i128 %bf.set342.i303, ptr %misc2, align 4
  %240 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %add.ptr318.i, align 4
  br label %if.end364.i311

do.body351.i:                                     ; preds = %if.end308.i299
  call void @__sanitizer_cov_trace_pc() #19
  %and329.i305 = and i32 %238, 4095
  %242 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %and329.i305, ptr %add.ptr318.i, align 4
  %243 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %243, i32 16)
  %bf.load338768.i = load i128, ptr %misc2, align 4
  %bf.shl340769.i = zext i32 %shr319.i to i128
  %bf.clear341770.i = and i128 %bf.load338768.i, -4294963201
  %bf.set342771.i = or i128 %bf.clear341770.i, %bf.shl340769.i
  store i128 %bf.set342771.i, ptr %misc2, align 4
  %244 = load i32, ptr %add.ptr318.i, align 4
  %and357.i306 = and i32 %244, -3585
  store i32 %and357.i306, ptr %add.ptr318.i, align 4
  br label %if.end364.i311

if.end364.i311:                                   ; preds = %do.body351.i, %if.end336.i304
  %245 = phi i32 [ %244, %do.body351.i ], [ %241, %if.end336.i304 ]
  %246 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 16)
  %bf.load366.i307 = load i128, ptr %misc2, align 4
  %247 = and i32 %245, 3584
  %bf.shl368.i308 = zext i32 %247 to i128
  %bf.clear369.i309 = and i128 %bf.load366.i307, -3585
  %bf.set370.i310 = or i128 %bf.clear369.i309, %bf.shl368.i308
  store i128 %bf.set370.i310, ptr %misc2, align 4
  %248 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %add.ptr318.i, align 4
  br i1 %clr, label %do.body379.i313, label %if.end364.i311.if.end392.i318_crit_edge

if.end364.i311.if.end392.i318_crit_edge:          ; preds = %if.end364.i311
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end392.i318

do.body379.i313:                                  ; preds = %if.end364.i311
  call void @__sanitizer_cov_trace_pc() #19
  %and385.i312 = and i32 %249, -257
  %250 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %and385.i312, ptr %add.ptr318.i, align 4
  br label %if.end392.i318

if.end392.i318:                                   ; preds = %do.body379.i313, %if.end364.i311.if.end392.i318_crit_edge
  %251 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 16)
  %bf.load394.i314 = load i128, ptr %misc2, align 4
  %252 = and i32 %249, 256
  %bf.shl396.i315 = zext i32 %252 to i128
  %bf.clear397.i316 = and i128 %bf.load394.i314, -257
  %bf.set398.i317 = or i128 %bf.clear397.i316, %bf.shl396.i315
  store i128 %bf.set398.i317, ptr %misc2, align 4
  %253 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr318.i, align 4
  br i1 %clr, label %do.body407.i320, label %if.end392.i318.if.end420.i323_crit_edge

if.end392.i318.if.end420.i323_crit_edge:          ; preds = %if.end392.i318
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end420.i323

do.body407.i320:                                  ; preds = %if.end392.i318
  call void @__sanitizer_cov_trace_pc() #19
  %and413.i319 = and i32 %254, -256
  %255 = ptrtoint ptr %add.ptr318.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %and413.i319, ptr %add.ptr318.i, align 4
  br label %if.end420.i323

if.end420.i323:                                   ; preds = %do.body407.i320, %if.end392.i318.if.end420.i323_crit_edge
  %256 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 16)
  %bf.load422.i321 = load i128, ptr %misc2, align 4
  %257 = and i32 %254, 255
  %bf.value423.i322 = zext i32 %257 to i128
  %bf.clear424.i = and i128 %bf.load422.i321, -256
  %bf.set425.i = or i128 %bf.clear424.i, %bf.value423.i322
  store i128 %bf.set425.i, ptr %misc2, align 4
  %add.ptr429.i = getelementptr i32, ptr %buff.3, i32 4
  %258 = ptrtoint ptr %add.ptr429.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %add.ptr429.i, align 4
  br i1 %clr, label %do.body610.i, label %if.end601.i

if.end601.i:                                      ; preds = %if.end420.i323
  call void @__sanitizer_cov_trace_pc() #19
  %metadata_reg_c_7.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 1
  %260 = ptrtoint ptr %metadata_reg_c_7.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %metadata_reg_c_7.i, align 4
  %add.ptr451.i = getelementptr i32, ptr %buff.3, i32 5
  %261 = ptrtoint ptr %add.ptr451.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %add.ptr451.i, align 4
  %metadata_reg_c_6.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 2
  %263 = ptrtoint ptr %metadata_reg_c_6.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %metadata_reg_c_6.i, align 4
  %add.ptr473.i = getelementptr i32, ptr %buff.3, i32 6
  %264 = ptrtoint ptr %add.ptr473.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %add.ptr473.i, align 4
  %metadata_reg_c_5.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 3
  %266 = ptrtoint ptr %metadata_reg_c_5.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %metadata_reg_c_5.i, align 4
  %add.ptr495.i = getelementptr i32, ptr %buff.3, i32 7
  %267 = ptrtoint ptr %add.ptr495.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %add.ptr495.i, align 4
  %metadata_reg_c_4.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 4
  %269 = ptrtoint ptr %metadata_reg_c_4.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %metadata_reg_c_4.i, align 4
  %add.ptr517.i = getelementptr i32, ptr %buff.3, i32 8
  %270 = ptrtoint ptr %add.ptr517.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %add.ptr517.i, align 4
  %metadata_reg_c_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 5
  %272 = ptrtoint ptr %metadata_reg_c_3.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %metadata_reg_c_3.i, align 4
  %add.ptr539.i = getelementptr i32, ptr %buff.3, i32 9
  %273 = ptrtoint ptr %add.ptr539.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %add.ptr539.i, align 4
  %metadata_reg_c_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 6
  %275 = ptrtoint ptr %metadata_reg_c_2.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %metadata_reg_c_2.i, align 4
  %add.ptr561.i = getelementptr i32, ptr %buff.3, i32 10
  %276 = ptrtoint ptr %add.ptr561.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %add.ptr561.i, align 4
  %metadata_reg_c_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 7
  %278 = ptrtoint ptr %metadata_reg_c_1.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %metadata_reg_c_1.i, align 4
  %add.ptr583.i = getelementptr i32, ptr %buff.3, i32 11
  %279 = ptrtoint ptr %add.ptr583.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %add.ptr583.i, align 4
  %metadata_reg_c_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 8
  %281 = ptrtoint ptr %metadata_reg_c_0.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %metadata_reg_c_0.i, align 4
  %add.ptr605.i = getelementptr i32, ptr %buff.3, i32 12
  %282 = ptrtoint ptr %add.ptr605.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %add.ptr605.i, align 4
  br label %dr_ste_copy_mask_misc2.exit

do.body610.i:                                     ; preds = %if.end420.i323
  call void @__sanitizer_cov_trace_pc() #19
  %284 = ptrtoint ptr %add.ptr429.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %add.ptr429.i, align 4
  %metadata_reg_c_7772.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 1
  %285 = ptrtoint ptr %metadata_reg_c_7772.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %259, ptr %metadata_reg_c_7772.i, align 4
  %add.ptr451773.i = getelementptr i32, ptr %buff.3, i32 5
  %286 = ptrtoint ptr %add.ptr451773.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %add.ptr451773.i, align 4
  store i32 0, ptr %add.ptr451773.i, align 4
  %metadata_reg_c_6775.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 2
  %288 = ptrtoint ptr %metadata_reg_c_6775.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %metadata_reg_c_6775.i, align 4
  %add.ptr473776.i = getelementptr i32, ptr %buff.3, i32 6
  %289 = ptrtoint ptr %add.ptr473776.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %add.ptr473776.i, align 4
  store i32 0, ptr %add.ptr473776.i, align 4
  %metadata_reg_c_5778.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 3
  %291 = ptrtoint ptr %metadata_reg_c_5778.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %metadata_reg_c_5778.i, align 4
  %add.ptr495779.i = getelementptr i32, ptr %buff.3, i32 7
  %292 = ptrtoint ptr %add.ptr495779.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %add.ptr495779.i, align 4
  store i32 0, ptr %add.ptr495779.i, align 4
  %metadata_reg_c_4781.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 4
  %294 = ptrtoint ptr %metadata_reg_c_4781.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %metadata_reg_c_4781.i, align 4
  %add.ptr517782.i = getelementptr i32, ptr %buff.3, i32 8
  %295 = ptrtoint ptr %add.ptr517782.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %add.ptr517782.i, align 4
  store i32 0, ptr %add.ptr517782.i, align 4
  %metadata_reg_c_3784.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 5
  %297 = ptrtoint ptr %metadata_reg_c_3784.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %metadata_reg_c_3784.i, align 4
  %add.ptr539785.i = getelementptr i32, ptr %buff.3, i32 9
  %298 = ptrtoint ptr %add.ptr539785.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %add.ptr539785.i, align 4
  store i32 0, ptr %add.ptr539785.i, align 4
  %metadata_reg_c_2787.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 6
  %300 = ptrtoint ptr %metadata_reg_c_2787.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %metadata_reg_c_2787.i, align 4
  %add.ptr561788.i = getelementptr i32, ptr %buff.3, i32 10
  %301 = ptrtoint ptr %add.ptr561788.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %add.ptr561788.i, align 4
  store i32 0, ptr %add.ptr561788.i, align 4
  %metadata_reg_c_1790.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 7
  %303 = ptrtoint ptr %metadata_reg_c_1790.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %metadata_reg_c_1790.i, align 4
  %add.ptr583791.i = getelementptr i32, ptr %buff.3, i32 11
  %304 = ptrtoint ptr %add.ptr583791.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %add.ptr583791.i, align 4
  store i32 0, ptr %add.ptr583791.i, align 4
  %metadata_reg_c_0793.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 8
  %306 = ptrtoint ptr %metadata_reg_c_0793.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %metadata_reg_c_0793.i, align 4
  %add.ptr605794.i = getelementptr i32, ptr %buff.3, i32 12
  %307 = ptrtoint ptr %add.ptr605794.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %add.ptr605794.i, align 4
  store i32 0, ptr %add.ptr605794.i, align 4
  br label %dr_ste_copy_mask_misc2.exit

dr_ste_copy_mask_misc2.exit:                      ; preds = %do.body610.i, %if.end601.i
  %309 = phi i32 [ %308, %do.body610.i ], [ %283, %if.end601.i ]
  %metadata_reg_a.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 3, i32 9
  %310 = ptrtoint ptr %metadata_reg_a.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %metadata_reg_a.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %dr_ste_copy_mask_misc2.exit, %if.end43.if.end63_crit_edge
  %and66 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end63.if.end83_crit_edge, label %if.then68

if.end63.if.end83_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then68:                                        ; preds = %if.end63
  %311 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %312)
  %cmp71 = icmp ult i32 %312, 320
  %add.ptr75 = getelementptr i8, ptr %2, i32 256
  br i1 %cmp71, label %if.then73, label %if.then68.if.end81_crit_edge

if.then68.if.end81_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81

if.then73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  %sub77 = add nsw i32 %312, -256
  %313 = call ptr @memcpy(ptr %tail_param, ptr %add.ptr75, i32 %sub77)
  br label %if.end81

if.end81:                                         ; preds = %if.then73, %if.then68.if.end81_crit_edge
  %buff.4 = phi ptr [ %tail_param, %if.then73 ], [ %add.ptr75, %if.then68.if.end81_crit_edge ]
  %misc3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4
  %314 = ptrtoint ptr %buff.4 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %buff.4, align 4
  br i1 %clr, label %do.body81.i, label %if.end72.i

if.end72.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  %316 = ptrtoint ptr %misc3 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %misc3, align 4
  %add.ptr10.i = getelementptr i32, ptr %buff.4, i32 1
  %317 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %add.ptr10.i, align 4
  %outer_tcp_seq_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 1
  %319 = ptrtoint ptr %outer_tcp_seq_num.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %outer_tcp_seq_num.i, align 4
  %add.ptr32.i = getelementptr i32, ptr %buff.4, i32 2
  %320 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %add.ptr32.i, align 4
  %inner_tcp_ack_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 2
  %322 = ptrtoint ptr %inner_tcp_ack_num.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %inner_tcp_ack_num.i, align 4
  %add.ptr54.i = getelementptr i32, ptr %buff.4, i32 3
  %323 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %add.ptr54.i, align 4
  %outer_tcp_ack_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 3
  %325 = ptrtoint ptr %outer_tcp_ack_num.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %outer_tcp_ack_num.i, align 4
  %add.ptr76.i = getelementptr i32, ptr %buff.4, i32 4
  %326 = ptrtoint ptr %add.ptr76.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %add.ptr76.i, align 4
  br label %if.end94.i

do.body81.i:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #19
  %328 = ptrtoint ptr %buff.4 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %buff.4, align 4
  %329 = ptrtoint ptr %misc3 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %315, ptr %misc3, align 4
  %add.ptr10540.i = getelementptr i32, ptr %buff.4, i32 1
  %330 = ptrtoint ptr %add.ptr10540.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %add.ptr10540.i, align 4
  store i32 0, ptr %add.ptr10540.i, align 4
  %outer_tcp_seq_num542.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 1
  %332 = ptrtoint ptr %outer_tcp_seq_num542.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %outer_tcp_seq_num542.i, align 4
  %add.ptr32543.i = getelementptr i32, ptr %buff.4, i32 2
  %333 = ptrtoint ptr %add.ptr32543.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %add.ptr32543.i, align 4
  store i32 0, ptr %add.ptr32543.i, align 4
  %inner_tcp_ack_num545.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 2
  %335 = ptrtoint ptr %inner_tcp_ack_num545.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %inner_tcp_ack_num545.i, align 4
  %add.ptr54546.i = getelementptr i32, ptr %buff.4, i32 3
  %336 = ptrtoint ptr %add.ptr54546.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %add.ptr54546.i, align 4
  store i32 0, ptr %add.ptr54546.i, align 4
  %outer_tcp_ack_num548.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 3
  %338 = ptrtoint ptr %outer_tcp_ack_num548.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %outer_tcp_ack_num548.i, align 4
  %add.ptr76549.i = getelementptr i32, ptr %buff.4, i32 4
  %339 = ptrtoint ptr %add.ptr76549.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %add.ptr76549.i, align 4
  %and87.i = and i32 %340, -16777216
  store i32 %and87.i, ptr %add.ptr76549.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.body81.i, %if.end72.i
  %341 = phi i32 [ %340, %do.body81.i ], [ %327, %if.end72.i ]
  %outer_vxlan_gpe_vni.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 4
  %342 = ptrtoint ptr %outer_vxlan_gpe_vni.i to i32
  call void @__asan_loadN_noabort(i32 %342, i32 8)
  %bf.load.i324 = load i64, ptr %outer_vxlan_gpe_vni.i, align 4
  %343 = and i32 %341, 16777215
  %bf.value.i = zext i32 %343 to i64
  %bf.shl.i325 = shl nuw nsw i64 %bf.value.i, 32
  %bf.clear.i326 = and i64 %bf.load.i324, -72057589742960641
  %bf.set.i327 = or i64 %bf.shl.i325, %bf.clear.i326
  store i64 %bf.set.i327, ptr %outer_vxlan_gpe_vni.i, align 4
  %add.ptr98.i = getelementptr i32, ptr %buff.4, i32 5
  %344 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %add.ptr98.i, align 4
  %shr99.i = and i32 %345, -16777216
  br i1 %clr, label %do.body131.i, label %if.end116.i

if.end116.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #19
  %bf.shl120.i = zext i32 %shr99.i to i64
  %bf.clear121.i = and i64 %bf.set.i327, -4278190081
  %bf.set122.i = or i64 %bf.clear121.i, %bf.shl120.i
  %346 = ptrtoint ptr %outer_vxlan_gpe_vni.i to i32
  call void @__asan_storeN_noabort(i32 %346, i32 8)
  store i64 %bf.set122.i, ptr %outer_vxlan_gpe_vni.i, align 4
  %347 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %add.ptr98.i, align 4
  br label %if.end144.i

do.body131.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #19
  %and109.i = and i32 %345, 16777215
  %349 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %and109.i, ptr %add.ptr98.i, align 4
  %350 = ptrtoint ptr %outer_vxlan_gpe_vni.i to i32
  call void @__asan_loadN_noabort(i32 %350, i32 8)
  %bf.load118551.i = load i64, ptr %outer_vxlan_gpe_vni.i, align 4
  %bf.shl120552.i = zext i32 %shr99.i to i64
  %bf.clear121553.i = and i64 %bf.load118551.i, -4278190081
  %bf.set122554.i = or i64 %bf.clear121553.i, %bf.shl120552.i
  store i64 %bf.set122554.i, ptr %outer_vxlan_gpe_vni.i, align 4
  %351 = load i32, ptr %add.ptr98.i, align 4
  %and137.i = and i32 %351, -16711681
  store i32 %and137.i, ptr %add.ptr98.i, align 4
  br label %if.end144.i

if.end144.i:                                      ; preds = %do.body131.i, %if.end116.i
  %352 = phi i32 [ %351, %do.body131.i ], [ %348, %if.end116.i ]
  %353 = ptrtoint ptr %outer_vxlan_gpe_vni.i to i32
  call void @__asan_loadN_noabort(i32 %353, i32 8)
  %bf.load146.i = load i64, ptr %outer_vxlan_gpe_vni.i, align 4
  %354 = and i32 %352, 16711680
  %bf.shl148.i = zext i32 %354 to i64
  %bf.clear149.i = and i64 %bf.load146.i, -16711681
  %bf.set150.i = or i64 %bf.clear149.i, %bf.shl148.i
  store i64 %bf.set150.i, ptr %outer_vxlan_gpe_vni.i, align 4
  %add.ptr154.i = getelementptr i32, ptr %buff.4, i32 6
  %355 = ptrtoint ptr %add.ptr154.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %add.ptr154.i, align 4
  br i1 %clr, label %do.body428.i, label %if.end419.i

if.end419.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #19
  %icmpv4_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 5
  %357 = ptrtoint ptr %icmpv4_header_data.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %icmpv4_header_data.i, align 4
  %add.ptr176.i = getelementptr i32, ptr %buff.4, i32 7
  %358 = ptrtoint ptr %add.ptr176.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %add.ptr176.i, align 4
  %icmpv6_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 6
  %360 = ptrtoint ptr %icmpv6_header_data.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %icmpv6_header_data.i, align 4
  %add.ptr198.i = getelementptr i32, ptr %buff.4, i32 8
  %361 = ptrtoint ptr %add.ptr198.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %add.ptr198.i, align 4
  %shr199.i = lshr i32 %362, 24
  %conv.i = trunc i32 %shr199.i to i8
  %icmpv4_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 7
  %363 = ptrtoint ptr %icmpv4_type.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %conv.i, ptr %icmpv4_type.i, align 4
  %364 = load i32, ptr %add.ptr198.i, align 4
  %shr221.i = lshr i32 %364, 16
  %conv240.i = trunc i32 %shr221.i to i8
  %icmpv4_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 8
  %365 = ptrtoint ptr %icmpv4_code.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %conv240.i, ptr %icmpv4_code.i, align 1
  %366 = load i32, ptr %add.ptr198.i, align 4
  %shr244.i = lshr i32 %366, 8
  %conv263.i = trunc i32 %shr244.i to i8
  %icmpv6_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 9
  %367 = ptrtoint ptr %icmpv6_type.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %conv263.i, ptr %icmpv6_type.i, align 2
  %368 = load i32, ptr %add.ptr198.i, align 4
  %conv286.i = trunc i32 %368 to i8
  %icmpv6_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 10
  %369 = ptrtoint ptr %icmpv6_code.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %conv286.i, ptr %icmpv6_code.i, align 1
  %add.ptr289.i = getelementptr i32, ptr %buff.4, i32 9
  %370 = ptrtoint ptr %add.ptr289.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %add.ptr289.i, align 4
  %geneve_tlv_option_0_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 11
  %372 = ptrtoint ptr %geneve_tlv_option_0_data.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %371, ptr %geneve_tlv_option_0_data.i, align 4
  %add.ptr311.i = getelementptr i32, ptr %buff.4, i32 10
  %373 = ptrtoint ptr %add.ptr311.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %add.ptr311.i, align 4
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 12
  %375 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %374, ptr %gtpu_teid.i, align 4
  %add.ptr333.i = getelementptr i32, ptr %buff.4, i32 11
  %376 = ptrtoint ptr %add.ptr333.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %add.ptr333.i, align 4
  %shr334.i = lshr i32 %377, 16
  %conv353.i = trunc i32 %shr334.i to i8
  %gtpu_msg_flags.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 14
  %378 = ptrtoint ptr %gtpu_msg_flags.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %conv353.i, ptr %gtpu_msg_flags.i, align 1
  %379 = load i32, ptr %add.ptr333.i, align 4
  %shr357.i = lshr i32 %379, 24
  %conv376.i = trunc i32 %shr357.i to i8
  %gtpu_msg_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 13
  %380 = ptrtoint ptr %gtpu_msg_type.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %conv376.i, ptr %gtpu_msg_type.i, align 4
  %add.ptr379.i = getelementptr i32, ptr %buff.4, i32 14
  %381 = ptrtoint ptr %add.ptr379.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %add.ptr379.i, align 4
  %gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 18
  %383 = ptrtoint ptr %gtpu_dw_0.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %gtpu_dw_0.i, align 4
  %add.ptr401.i = getelementptr i32, ptr %buff.4, i32 12
  %384 = ptrtoint ptr %add.ptr401.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %add.ptr401.i, align 4
  %gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 16
  %386 = ptrtoint ptr %gtpu_dw_2.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %385, ptr %gtpu_dw_2.i, align 4
  %add.ptr423.i = getelementptr i32, ptr %buff.4, i32 13
  %387 = ptrtoint ptr %add.ptr423.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %add.ptr423.i, align 4
  br label %dr_ste_copy_mask_misc3.exit

do.body428.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #19
  %389 = ptrtoint ptr %add.ptr154.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 0, ptr %add.ptr154.i, align 4
  %icmpv4_header_data555.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 5
  %390 = ptrtoint ptr %icmpv4_header_data555.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %356, ptr %icmpv4_header_data555.i, align 4
  %add.ptr176556.i = getelementptr i32, ptr %buff.4, i32 7
  %391 = ptrtoint ptr %add.ptr176556.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %add.ptr176556.i, align 4
  store i32 0, ptr %add.ptr176556.i, align 4
  %icmpv6_header_data558.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 6
  %393 = ptrtoint ptr %icmpv6_header_data558.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %392, ptr %icmpv6_header_data558.i, align 4
  %add.ptr198559.i = getelementptr i32, ptr %buff.4, i32 8
  %394 = ptrtoint ptr %add.ptr198559.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %add.ptr198559.i, align 4
  %shr199560.i = lshr i32 %395, 24
  %and209.i = and i32 %395, 16777215
  store i32 %and209.i, ptr %add.ptr198559.i, align 4
  %conv569.i = trunc i32 %shr199560.i to i8
  %icmpv4_type570.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 7
  %396 = ptrtoint ptr %icmpv4_type570.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %conv569.i, ptr %icmpv4_type570.i, align 4
  %397 = load i32, ptr %add.ptr198559.i, align 4
  %shr221571.i = lshr i32 %397, 16
  %and231.i = and i32 %397, -16711681
  store i32 %and231.i, ptr %add.ptr198559.i, align 4
  %conv240577.i = trunc i32 %shr221571.i to i8
  %icmpv4_code578.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 8
  %398 = ptrtoint ptr %icmpv4_code578.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %conv240577.i, ptr %icmpv4_code578.i, align 1
  %399 = load i32, ptr %add.ptr198559.i, align 4
  %shr244579.i = lshr i32 %399, 8
  %and254.i = and i32 %399, -65281
  store i32 %and254.i, ptr %add.ptr198559.i, align 4
  %conv263585.i = trunc i32 %shr244579.i to i8
  %icmpv6_type586.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 9
  %400 = ptrtoint ptr %icmpv6_type586.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %conv263585.i, ptr %icmpv6_type586.i, align 2
  %401 = load i32, ptr %add.ptr198559.i, align 4
  %and277.i = and i32 %401, -256
  store i32 %and277.i, ptr %add.ptr198559.i, align 4
  %conv286588.i = trunc i32 %401 to i8
  %icmpv6_code589.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 10
  %402 = ptrtoint ptr %icmpv6_code589.i to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 %conv286588.i, ptr %icmpv6_code589.i, align 1
  %add.ptr289590.i = getelementptr i32, ptr %buff.4, i32 9
  %403 = ptrtoint ptr %add.ptr289590.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %add.ptr289590.i, align 4
  store i32 0, ptr %add.ptr289590.i, align 4
  %geneve_tlv_option_0_data592.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 11
  %405 = ptrtoint ptr %geneve_tlv_option_0_data592.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %geneve_tlv_option_0_data592.i, align 4
  %add.ptr311593.i = getelementptr i32, ptr %buff.4, i32 10
  %406 = ptrtoint ptr %add.ptr311593.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %add.ptr311593.i, align 4
  store i32 0, ptr %add.ptr311593.i, align 4
  %gtpu_teid595.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 12
  %408 = ptrtoint ptr %gtpu_teid595.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %407, ptr %gtpu_teid595.i, align 4
  %add.ptr333596.i = getelementptr i32, ptr %buff.4, i32 11
  %409 = ptrtoint ptr %add.ptr333596.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %add.ptr333596.i, align 4
  %shr334597.i = lshr i32 %410, 16
  %and344.i = and i32 %410, -16711681
  store i32 %and344.i, ptr %add.ptr333596.i, align 4
  %conv353604.i = trunc i32 %shr334597.i to i8
  %gtpu_msg_flags605.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 14
  %411 = ptrtoint ptr %gtpu_msg_flags605.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %conv353604.i, ptr %gtpu_msg_flags605.i, align 1
  %412 = load i32, ptr %add.ptr333596.i, align 4
  %shr357606.i = lshr i32 %412, 24
  %and367.i = and i32 %412, 16777215
  store i32 %and367.i, ptr %add.ptr333596.i, align 4
  %conv376611.i = trunc i32 %shr357606.i to i8
  %gtpu_msg_type612.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 13
  %413 = ptrtoint ptr %gtpu_msg_type612.i to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %conv376611.i, ptr %gtpu_msg_type612.i, align 4
  %add.ptr379613.i = getelementptr i32, ptr %buff.4, i32 14
  %414 = ptrtoint ptr %add.ptr379613.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %add.ptr379613.i, align 4
  store i32 0, ptr %add.ptr379613.i, align 4
  %gtpu_dw_0615.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 18
  %416 = ptrtoint ptr %gtpu_dw_0615.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %gtpu_dw_0615.i, align 4
  %add.ptr401616.i = getelementptr i32, ptr %buff.4, i32 12
  %417 = ptrtoint ptr %add.ptr401616.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %add.ptr401616.i, align 4
  store i32 0, ptr %add.ptr401616.i, align 4
  %gtpu_dw_2618.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 16
  %419 = ptrtoint ptr %gtpu_dw_2618.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %gtpu_dw_2618.i, align 4
  %add.ptr423619.i = getelementptr i32, ptr %buff.4, i32 13
  %420 = ptrtoint ptr %add.ptr423619.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %add.ptr423619.i, align 4
  store i32 0, ptr %add.ptr423619.i, align 4
  br label %dr_ste_copy_mask_misc3.exit

dr_ste_copy_mask_misc3.exit:                      ; preds = %do.body428.i, %if.end419.i
  %422 = phi i32 [ %421, %do.body428.i ], [ %388, %if.end419.i ]
  %gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 4, i32 17
  %423 = ptrtoint ptr %gtpu_first_ext_dw_0.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %422, ptr %gtpu_first_ext_dw_0.i, align 4
  br label %if.end83

if.end83:                                         ; preds = %dr_ste_copy_mask_misc3.exit, %if.end63.if.end83_crit_edge
  %and86 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end83.if.end103_crit_edge, label %if.then88

if.end83.if.end103_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then88:                                        ; preds = %if.end83
  %424 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %425)
  %cmp91 = icmp ult i32 %425, 384
  %add.ptr95 = getelementptr i8, ptr %2, i32 320
  br i1 %cmp91, label %if.then93, label %if.then88.if.end101_crit_edge

if.then88.if.end101_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then93:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #19
  %sub97 = add nsw i32 %425, -320
  %426 = call ptr @memcpy(ptr %tail_param, ptr %add.ptr95, i32 %sub97)
  br label %if.end101

if.end101:                                        ; preds = %if.then93, %if.then88.if.end101_crit_edge
  %buff.5 = phi ptr [ %tail_param, %if.then93 ], [ %add.ptr95, %if.then88.if.end101_crit_edge ]
  %misc4 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5
  %add.ptr.i = getelementptr i32, ptr %buff.5, i32 1
  %427 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %add.ptr.i, align 4
  br i1 %clr, label %do.body147.i, label %if.end138.i

if.end138.i:                                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  %prog_sample_field_id_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 1
  %429 = ptrtoint ptr %prog_sample_field_id_0.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %428, ptr %prog_sample_field_id_0.i, align 4
  %430 = ptrtoint ptr %buff.5 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %buff.5, align 4
  %432 = ptrtoint ptr %misc4 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %431, ptr %misc4, align 4
  %add.ptr32.i328 = getelementptr i32, ptr %buff.5, i32 3
  %433 = ptrtoint ptr %add.ptr32.i328 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %add.ptr32.i328, align 4
  %prog_sample_field_id_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 3
  %435 = ptrtoint ptr %prog_sample_field_id_1.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %434, ptr %prog_sample_field_id_1.i, align 4
  %add.ptr54.i329 = getelementptr i32, ptr %buff.5, i32 2
  %436 = ptrtoint ptr %add.ptr54.i329 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %add.ptr54.i329, align 4
  %prog_sample_field_value_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 2
  %438 = ptrtoint ptr %prog_sample_field_value_1.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %437, ptr %prog_sample_field_value_1.i, align 4
  %add.ptr76.i330 = getelementptr i32, ptr %buff.5, i32 5
  %439 = ptrtoint ptr %add.ptr76.i330 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %add.ptr76.i330, align 4
  %prog_sample_field_id_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 5
  %441 = ptrtoint ptr %prog_sample_field_id_2.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %440, ptr %prog_sample_field_id_2.i, align 4
  %add.ptr98.i331 = getelementptr i32, ptr %buff.5, i32 4
  %442 = ptrtoint ptr %add.ptr98.i331 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %add.ptr98.i331, align 4
  %prog_sample_field_value_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 4
  %444 = ptrtoint ptr %prog_sample_field_value_2.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %443, ptr %prog_sample_field_value_2.i, align 4
  %add.ptr120.i = getelementptr i32, ptr %buff.5, i32 7
  %445 = ptrtoint ptr %add.ptr120.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %add.ptr120.i, align 4
  %prog_sample_field_id_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 7
  %447 = ptrtoint ptr %prog_sample_field_id_3.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %446, ptr %prog_sample_field_id_3.i, align 4
  %add.ptr142.i = getelementptr i32, ptr %buff.5, i32 6
  %448 = ptrtoint ptr %add.ptr142.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %add.ptr142.i, align 4
  br label %dr_ste_copy_mask_misc4.exit

do.body147.i:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  %450 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 0, ptr %add.ptr.i, align 4
  %prog_sample_field_id_0199.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 1
  %451 = ptrtoint ptr %prog_sample_field_id_0199.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %428, ptr %prog_sample_field_id_0199.i, align 4
  %452 = ptrtoint ptr %buff.5 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %buff.5, align 4
  store i32 0, ptr %buff.5, align 4
  %454 = ptrtoint ptr %misc4 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %453, ptr %misc4, align 4
  %add.ptr32200.i = getelementptr i32, ptr %buff.5, i32 3
  %455 = ptrtoint ptr %add.ptr32200.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %add.ptr32200.i, align 4
  store i32 0, ptr %add.ptr32200.i, align 4
  %prog_sample_field_id_1202.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 3
  %457 = ptrtoint ptr %prog_sample_field_id_1202.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %456, ptr %prog_sample_field_id_1202.i, align 4
  %add.ptr54203.i = getelementptr i32, ptr %buff.5, i32 2
  %458 = ptrtoint ptr %add.ptr54203.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %add.ptr54203.i, align 4
  store i32 0, ptr %add.ptr54203.i, align 4
  %prog_sample_field_value_1205.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 2
  %460 = ptrtoint ptr %prog_sample_field_value_1205.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %459, ptr %prog_sample_field_value_1205.i, align 4
  %add.ptr76206.i = getelementptr i32, ptr %buff.5, i32 5
  %461 = ptrtoint ptr %add.ptr76206.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %add.ptr76206.i, align 4
  store i32 0, ptr %add.ptr76206.i, align 4
  %prog_sample_field_id_2208.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 5
  %463 = ptrtoint ptr %prog_sample_field_id_2208.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %462, ptr %prog_sample_field_id_2208.i, align 4
  %add.ptr98209.i = getelementptr i32, ptr %buff.5, i32 4
  %464 = ptrtoint ptr %add.ptr98209.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %add.ptr98209.i, align 4
  store i32 0, ptr %add.ptr98209.i, align 4
  %prog_sample_field_value_2211.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 4
  %466 = ptrtoint ptr %prog_sample_field_value_2211.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %prog_sample_field_value_2211.i, align 4
  %add.ptr120212.i = getelementptr i32, ptr %buff.5, i32 7
  %467 = ptrtoint ptr %add.ptr120212.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %add.ptr120212.i, align 4
  store i32 0, ptr %add.ptr120212.i, align 4
  %prog_sample_field_id_3214.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 7
  %469 = ptrtoint ptr %prog_sample_field_id_3214.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %468, ptr %prog_sample_field_id_3214.i, align 4
  %add.ptr142215.i = getelementptr i32, ptr %buff.5, i32 6
  %470 = ptrtoint ptr %add.ptr142215.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %add.ptr142215.i, align 4
  store i32 0, ptr %add.ptr142215.i, align 4
  br label %dr_ste_copy_mask_misc4.exit

dr_ste_copy_mask_misc4.exit:                      ; preds = %do.body147.i, %if.end138.i
  %472 = phi i32 [ %471, %do.body147.i ], [ %449, %if.end138.i ]
  %prog_sample_field_value_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 5, i32 6
  %473 = ptrtoint ptr %prog_sample_field_value_3.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %472, ptr %prog_sample_field_value_3.i, align 4
  br label %if.end103

if.end103:                                        ; preds = %dr_ste_copy_mask_misc4.exit, %if.end83.if.end103_crit_edge
  %and106 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end103.if.end123_crit_edge, label %if.then108

if.end103.if.end123_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end123

if.then108:                                       ; preds = %if.end103
  %474 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 416, i32 %475)
  %cmp111 = icmp ult i32 %475, 416
  %add.ptr115 = getelementptr i8, ptr %2, i32 384
  br i1 %cmp111, label %if.then113, label %if.then108.if.end121_crit_edge

if.then108.if.end121_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121

if.then113:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  %sub117 = add nsw i32 %475, -384
  %476 = call ptr @memcpy(ptr %tail_param, ptr %add.ptr115, i32 %sub117)
  br label %if.end121

if.end121:                                        ; preds = %if.then113, %if.then108.if.end121_crit_edge
  %buff.6 = phi ptr [ %tail_param, %if.then113 ], [ %add.ptr115, %if.then108.if.end121_crit_edge ]
  %misc5 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6
  %477 = ptrtoint ptr %buff.6 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %buff.6, align 4
  br i1 %clr, label %do.body147.i340, label %if.end138.i339

if.end138.i339:                                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  %479 = ptrtoint ptr %misc5 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %478, ptr %misc5, align 4
  %add.ptr10.i332 = getelementptr i32, ptr %buff.6, i32 1
  %480 = ptrtoint ptr %add.ptr10.i332 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %add.ptr10.i332, align 4
  %macsec_tag_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 1
  %482 = ptrtoint ptr %macsec_tag_1.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %481, ptr %macsec_tag_1.i, align 4
  %add.ptr32.i333 = getelementptr i32, ptr %buff.6, i32 2
  %483 = ptrtoint ptr %add.ptr32.i333 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %add.ptr32.i333, align 4
  %macsec_tag_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 2
  %485 = ptrtoint ptr %macsec_tag_2.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %484, ptr %macsec_tag_2.i, align 4
  %add.ptr54.i334 = getelementptr i32, ptr %buff.6, i32 3
  %486 = ptrtoint ptr %add.ptr54.i334 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %add.ptr54.i334, align 4
  %macsec_tag_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 3
  %488 = ptrtoint ptr %macsec_tag_3.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %487, ptr %macsec_tag_3.i, align 4
  %add.ptr76.i335 = getelementptr i32, ptr %buff.6, i32 4
  %489 = ptrtoint ptr %add.ptr76.i335 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %add.ptr76.i335, align 4
  %tunnel_header_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 4
  %491 = ptrtoint ptr %tunnel_header_0.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 %490, ptr %tunnel_header_0.i, align 4
  %add.ptr98.i336 = getelementptr i32, ptr %buff.6, i32 5
  %492 = ptrtoint ptr %add.ptr98.i336 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %add.ptr98.i336, align 4
  %tunnel_header_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 5
  %494 = ptrtoint ptr %tunnel_header_1.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %493, ptr %tunnel_header_1.i, align 4
  %add.ptr120.i337 = getelementptr i32, ptr %buff.6, i32 6
  %495 = ptrtoint ptr %add.ptr120.i337 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %add.ptr120.i337, align 4
  %tunnel_header_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 6
  %497 = ptrtoint ptr %tunnel_header_2.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %496, ptr %tunnel_header_2.i, align 4
  %add.ptr142.i338 = getelementptr i32, ptr %buff.6, i32 7
  %498 = ptrtoint ptr %add.ptr142.i338 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %add.ptr142.i338, align 4
  br label %dr_ste_copy_mask_misc5.exit

do.body147.i340:                                  ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  %500 = ptrtoint ptr %buff.6 to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 0, ptr %buff.6, align 4
  %501 = ptrtoint ptr %misc5 to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 %478, ptr %misc5, align 4
  %add.ptr10199.i = getelementptr i32, ptr %buff.6, i32 1
  %502 = ptrtoint ptr %add.ptr10199.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %add.ptr10199.i, align 4
  store i32 0, ptr %add.ptr10199.i, align 4
  %macsec_tag_1201.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 1
  %504 = ptrtoint ptr %macsec_tag_1201.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %503, ptr %macsec_tag_1201.i, align 4
  %add.ptr32202.i = getelementptr i32, ptr %buff.6, i32 2
  %505 = ptrtoint ptr %add.ptr32202.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %add.ptr32202.i, align 4
  store i32 0, ptr %add.ptr32202.i, align 4
  %macsec_tag_2204.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 2
  %507 = ptrtoint ptr %macsec_tag_2204.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %506, ptr %macsec_tag_2204.i, align 4
  %add.ptr54205.i = getelementptr i32, ptr %buff.6, i32 3
  %508 = ptrtoint ptr %add.ptr54205.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %add.ptr54205.i, align 4
  store i32 0, ptr %add.ptr54205.i, align 4
  %macsec_tag_3207.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 3
  %510 = ptrtoint ptr %macsec_tag_3207.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %509, ptr %macsec_tag_3207.i, align 4
  %add.ptr76208.i = getelementptr i32, ptr %buff.6, i32 4
  %511 = ptrtoint ptr %add.ptr76208.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %add.ptr76208.i, align 4
  store i32 0, ptr %add.ptr76208.i, align 4
  %tunnel_header_0210.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 4
  %513 = ptrtoint ptr %tunnel_header_0210.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %512, ptr %tunnel_header_0210.i, align 4
  %add.ptr98211.i = getelementptr i32, ptr %buff.6, i32 5
  %514 = ptrtoint ptr %add.ptr98211.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %add.ptr98211.i, align 4
  store i32 0, ptr %add.ptr98211.i, align 4
  %tunnel_header_1213.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 5
  %516 = ptrtoint ptr %tunnel_header_1213.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %515, ptr %tunnel_header_1213.i, align 4
  %add.ptr120214.i = getelementptr i32, ptr %buff.6, i32 6
  %517 = ptrtoint ptr %add.ptr120214.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %add.ptr120214.i, align 4
  store i32 0, ptr %add.ptr120214.i, align 4
  %tunnel_header_2216.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 6
  %519 = ptrtoint ptr %tunnel_header_2216.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 %518, ptr %tunnel_header_2216.i, align 4
  %add.ptr142217.i = getelementptr i32, ptr %buff.6, i32 7
  %520 = ptrtoint ptr %add.ptr142217.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %add.ptr142217.i, align 4
  store i32 0, ptr %add.ptr142217.i, align 4
  br label %dr_ste_copy_mask_misc5.exit

dr_ste_copy_mask_misc5.exit:                      ; preds = %do.body147.i340, %if.end138.i339
  %522 = phi i32 [ %521, %do.body147.i340 ], [ %499, %if.end138.i339 ]
  %tunnel_header_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %set_param, i32 0, i32 6, i32 7
  %523 = ptrtoint ptr %tunnel_header_3.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %522, ptr %tunnel_header_3.i, align 4
  br label %if.end123

if.end123:                                        ; preds = %dr_ste_copy_mask_misc5.exit, %if.end103.if.end123_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tail_param) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @dr_ste_copy_mask_spec(ptr nocapture noundef %mask, ptr noundef %spec, i1 noundef zeroext %clr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  br i1 %clr, label %do.body85, label %if.end76

if.end76:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spec, align 4
  %add.ptr10 = getelementptr i32, ptr %mask, i32 1
  %3 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr10, align 4
  %shr11 = and i32 %4, -65536
  %smac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 1
  %5 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %smac_15_0, align 4
  %bf.clear = and i32 %bf.load, 65535
  %bf.set = or i32 %bf.clear, %shr11
  store i32 %bf.set, ptr %smac_15_0, align 4
  %6 = load i32, ptr %add.ptr10, align 4
  %and34 = and i32 %6, 65535
  %bf.set55 = or i32 %and34, %shr11
  store i32 %bf.set55, ptr %smac_15_0, align 4
  %add.ptr58 = getelementptr i32, ptr %mask, i32 2
  %7 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr58, align 4
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 2
  %9 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dmac_47_16, align 4
  %add.ptr80 = getelementptr i32, ptr %mask, i32 3
  %10 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr80, align 4
  br label %if.end98

do.body85:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mask, align 4
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %spec, align 4
  %add.ptr10697 = getelementptr i32, ptr %mask, i32 1
  %14 = ptrtoint ptr %add.ptr10697 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr10697, align 4
  %shr11698 = and i32 %15, -65536
  %and21 = and i32 %15, 65535
  store i32 %and21, ptr %add.ptr10697, align 4
  %smac_15_0705 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 1
  %16 = ptrtoint ptr %smac_15_0705 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load706 = load i32, ptr %smac_15_0705, align 4
  %bf.clear707 = and i32 %bf.load706, 65535
  %bf.set708 = or i32 %bf.clear707, %shr11698
  store i32 %bf.set708, ptr %smac_15_0705, align 4
  %17 = load i32, ptr %add.ptr10697, align 4
  %and34709 = and i32 %17, 65535
  %and43 = and i32 %17, -65536
  store i32 %and43, ptr %add.ptr10697, align 4
  %bf.load52717 = load i32, ptr %smac_15_0705, align 4
  %bf.clear54718 = and i32 %bf.load52717, -65536
  %bf.set55719 = or i32 %bf.clear54718, %and34709
  store i32 %bf.set55719, ptr %smac_15_0705, align 4
  %add.ptr58720 = getelementptr i32, ptr %mask, i32 2
  %18 = ptrtoint ptr %add.ptr58720 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr58720, align 4
  store i32 0, ptr %add.ptr58720, align 4
  %dmac_47_16722 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 2
  %20 = ptrtoint ptr %dmac_47_16722 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dmac_47_16722, align 4
  %add.ptr80723 = getelementptr i32, ptr %mask, i32 3
  %21 = ptrtoint ptr %add.ptr80723 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr80723, align 4
  %and91 = and i32 %22, 65535
  store i32 %and91, ptr %add.ptr80723, align 4
  br label %if.end98

if.end98:                                         ; preds = %do.body85, %if.end76
  %shr81729.in = phi i32 [ %22, %do.body85 ], [ %11, %if.end76 ]
  %add.ptr80726 = phi ptr [ %add.ptr80723, %do.body85 ], [ %add.ptr80, %if.end76 ]
  %shr81729 = lshr i32 %shr81729.in, 16
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 3
  %23 = zext i32 %shr81729 to i160
  %24 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load100 = load i160, ptr %dmac_15_0, align 4
  %bf.shl102 = shl nuw i160 %23, 144
  %bf.clear103 = and i160 %bf.load100, 22300745198530623141535718272648361505980415
  %bf.set104 = or i160 %bf.clear103, %bf.shl102
  store i160 %bf.set104, ptr %dmac_15_0, align 4
  %25 = ptrtoint ptr %add.ptr80726 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr80726, align 4
  %shr108 = lshr i32 %26, 13
  br i1 %clr, label %do.body112, label %if.end98.if.end125_crit_edge

if.end98.if.end125_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end125

do.body112:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  %and118 = and i32 %26, -57345
  %27 = ptrtoint ptr %add.ptr80726 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and118, ptr %add.ptr80726, align 4
  br label %if.end125

if.end125:                                        ; preds = %do.body112, %if.end98.if.end125_crit_edge
  %28 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load127 = load i160, ptr %dmac_15_0, align 4
  %29 = and i32 %shr108, 7
  %bf.value128 = zext i32 %29 to i160
  %bf.shl129 = shl nuw nsw i160 %bf.value128, 141
  %bf.clear130 = and i160 %bf.load127, -19513152048714295248843753488567316317732865
  %bf.set131 = or i160 %bf.clear130, %bf.shl129
  store i160 %bf.set131, ptr %dmac_15_0, align 4
  %30 = ptrtoint ptr %add.ptr80726 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr80726, align 4
  %shr136 = lshr i32 %31, 12
  br i1 %clr, label %do.body140, label %if.end125.if.end153_crit_edge

if.end125.if.end153_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end153

do.body140:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #19
  %and146 = and i32 %31, -4097
  %32 = ptrtoint ptr %add.ptr80726 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and146, ptr %add.ptr80726, align 4
  br label %if.end153

if.end153:                                        ; preds = %do.body140, %if.end125.if.end153_crit_edge
  %33 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 20)
  %bf.load155 = load i160, ptr %dmac_15_0, align 4
  %34 = and i32 %shr136, 1
  %bf.value156 = zext i32 %34 to i160
  %bf.shl157 = shl nuw nsw i160 %bf.value156, 140
  %bf.clear158 = and i160 %bf.load155, -1393796574908163946345982392040522594123777
  %bf.set159 = or i160 %bf.clear158, %bf.shl157
  store i160 %bf.set159, ptr %dmac_15_0, align 4
  %35 = ptrtoint ptr %add.ptr80726 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr80726, align 4
  br i1 %clr, label %do.body168, label %if.end153.if.end181_crit_edge

if.end153.if.end181_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end181

do.body168:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #19
  %and174 = and i32 %36, -4096
  %37 = ptrtoint ptr %add.ptr80726 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and174, ptr %add.ptr80726, align 4
  br label %if.end181

if.end181:                                        ; preds = %do.body168, %if.end153.if.end181_crit_edge
  %38 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 20)
  %bf.load183 = load i160, ptr %dmac_15_0, align 4
  %39 = and i32 %36, 4095
  %bf.value184 = zext i32 %39 to i160
  %bf.shl185 = shl nuw nsw i160 %bf.value184, 128
  %bf.clear186 = and i160 %bf.load183, -1393456292541243007882519017433090825912321
  %bf.set187 = or i160 %bf.clear186, %bf.shl185
  store i160 %bf.set187, ptr %dmac_15_0, align 4
  %add.ptr191 = getelementptr i32, ptr %mask, i32 4
  %40 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr191, align 4
  %shr192 = lshr i32 %41, 24
  br i1 %clr, label %do.body224, label %if.end209

if.end209:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #19
  %42 = zext i32 %shr192 to i160
  %43 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 20)
  %bf.load211 = load i160, ptr %dmac_15_0, align 4
  %bf.shl213 = shl nuw nsw i160 %42, 120
  %bf.clear214 = and i160 %bf.load211, -338953138925153547590470800371487866881
  %bf.set215 = or i160 %bf.clear214, %bf.shl213
  store i160 %bf.set215, ptr %dmac_15_0, align 4
  %44 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr191, align 4
  br label %if.end237

do.body224:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #19
  %and202 = and i32 %41, 16777215
  %46 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and202, ptr %add.ptr191, align 4
  %47 = zext i32 %shr192 to i160
  %48 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 20)
  %bf.load211731 = load i160, ptr %dmac_15_0, align 4
  %bf.shl213732 = shl nuw nsw i160 %47, 120
  %bf.clear214733 = and i160 %bf.load211731, -338953138925153547590470800371487866881
  %bf.set215734 = or i160 %bf.clear214733, %bf.shl213732
  store i160 %bf.set215734, ptr %dmac_15_0, align 4
  %49 = load i32, ptr %add.ptr191, align 4
  %and230 = and i32 %49, -16515073
  store i32 %and230, ptr %add.ptr191, align 4
  br label %if.end237

if.end237:                                        ; preds = %do.body224, %if.end209
  %shr220736.in = phi i32 [ %49, %do.body224 ], [ %45, %if.end209 ]
  %shr220736 = lshr i32 %shr220736.in, 18
  %50 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 20)
  %bf.load239 = load i160, ptr %dmac_15_0, align 4
  %51 = and i32 %shr220736, 63
  %bf.value240 = zext i32 %51 to i160
  %bf.shl241 = shl nuw nsw i160 %bf.value240, 114
  %bf.clear242 = and i160 %bf.load239, -1308458808350776562389685074963464193
  %bf.set243 = or i160 %bf.shl241, %bf.clear242
  store i160 %bf.set243, ptr %dmac_15_0, align 4
  %52 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr191, align 4
  %shr248 = lshr i32 %53, 16
  br i1 %clr, label %do.body252, label %if.end237.if.end265_crit_edge

if.end237.if.end265_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end265

do.body252:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #19
  %and258 = and i32 %53, -196609
  %54 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and258, ptr %add.ptr191, align 4
  br label %if.end265

if.end265:                                        ; preds = %do.body252, %if.end237.if.end265_crit_edge
  %55 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 20)
  %bf.load267 = load i160, ptr %dmac_15_0, align 4
  %56 = and i32 %shr248, 3
  %bf.value268 = zext i32 %56 to i160
  %bf.shl269 = shl nuw nsw i160 %bf.value268, 112
  %bf.clear270 = and i160 %bf.load267, -15576890575604482885591488987660289
  %bf.set271 = or i160 %bf.clear270, %bf.shl269
  store i160 %bf.set271, ptr %dmac_15_0, align 4
  %57 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr191, align 4
  %shr276 = lshr i32 %58, 15
  br i1 %clr, label %do.body280, label %if.end265.if.end293_crit_edge

if.end265.if.end293_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end293

do.body280:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #19
  %and286 = and i32 %58, -32769
  %59 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and286, ptr %add.ptr191, align 4
  br label %if.end293

if.end293:                                        ; preds = %do.body280, %if.end265.if.end293_crit_edge
  %60 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 20)
  %bf.load295 = load i160, ptr %dmac_15_0, align 4
  %61 = and i32 %shr276, 1
  %bf.value296 = zext i32 %61 to i160
  %bf.shl297 = shl nuw nsw i160 %bf.value296, 111
  %bf.clear298 = and i160 %bf.load295, -2596148429267413814265248164610049
  %bf.set299 = or i160 %bf.clear298, %bf.shl297
  store i160 %bf.set299, ptr %dmac_15_0, align 4
  %62 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr191, align 4
  %shr304 = lshr i32 %63, 14
  br i1 %clr, label %do.body308, label %if.end293.if.end321_crit_edge

if.end293.if.end321_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end321

do.body308:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #19
  %and314 = and i32 %63, -16385
  %64 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and314, ptr %add.ptr191, align 4
  br label %if.end321

if.end321:                                        ; preds = %do.body308, %if.end293.if.end321_crit_edge
  %65 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 20)
  %bf.load323 = load i160, ptr %dmac_15_0, align 4
  %66 = and i32 %shr304, 1
  %bf.value324 = zext i32 %66 to i160
  %bf.shl325 = shl nuw nsw i160 %bf.value324, 110
  %bf.clear326 = and i160 %bf.load323, -1298074214633706907132624082305025
  %bf.set327 = or i160 %bf.clear326, %bf.shl325
  store i160 %bf.set327, ptr %dmac_15_0, align 4
  %67 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr191, align 4
  %shr332 = lshr i32 %68, 13
  br i1 %clr, label %do.body336, label %if.end321.if.end349_crit_edge

if.end321.if.end349_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end349

do.body336:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #19
  %and342 = and i32 %68, -8193
  %69 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and342, ptr %add.ptr191, align 4
  br label %if.end349

if.end349:                                        ; preds = %do.body336, %if.end321.if.end349_crit_edge
  %70 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 20)
  %bf.load351 = load i160, ptr %dmac_15_0, align 4
  %71 = and i32 %shr332, 1
  %bf.value352 = zext i32 %71 to i160
  %bf.shl353 = shl nuw nsw i160 %bf.value352, 109
  %bf.clear354 = and i160 %bf.load351, -649037107316853453566312041152513
  %bf.set355 = or i160 %bf.clear354, %bf.shl353
  store i160 %bf.set355, ptr %dmac_15_0, align 4
  %72 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr191, align 4
  %shr360 = lshr i32 %73, 9
  br i1 %clr, label %do.body364, label %if.end349.if.end377_crit_edge

if.end349.if.end377_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end377

do.body364:                                       ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #19
  %and370 = and i32 %73, -7681
  %74 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and370, ptr %add.ptr191, align 4
  br label %if.end377

if.end377:                                        ; preds = %do.body364, %if.end349.if.end377_crit_edge
  %75 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 20)
  %bf.load379 = load i160, ptr %dmac_15_0, align 4
  %76 = and i32 %shr360, 15
  %bf.value380 = zext i32 %76 to i160
  %bf.shl381 = shl nuw nsw i160 %bf.value380, 105
  %bf.clear382 = and i160 %bf.load379, -608472288109550112718417538580481
  %bf.set383 = or i160 %bf.clear382, %bf.shl381
  store i160 %bf.set383, ptr %dmac_15_0, align 4
  %77 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr191, align 4
  br i1 %clr, label %do.body392, label %if.end377.if.end405_crit_edge

if.end377.if.end405_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end405

do.body392:                                       ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #19
  %and398 = and i32 %78, -512
  %79 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and398, ptr %add.ptr191, align 4
  br label %if.end405

if.end405:                                        ; preds = %do.body392, %if.end377.if.end405_crit_edge
  %80 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 20)
  %bf.load407 = load i160, ptr %dmac_15_0, align 4
  %81 = and i32 %78, 511
  %bf.value408 = zext i32 %81 to i160
  %bf.shl409 = shl nuw nsw i160 %bf.value408, 96
  %bf.clear410 = and i160 %bf.load407, -40485591044789076510300958621697
  %bf.set411 = or i160 %bf.clear410, %bf.shl409
  store i160 %bf.set411, ptr %dmac_15_0, align 4
  %add.ptr415 = getelementptr i32, ptr %mask, i32 5
  %82 = ptrtoint ptr %add.ptr415 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr415, align 4
  %shr416 = lshr i32 %83, 16
  br i1 %clr, label %do.body448, label %if.end433

if.end433:                                        ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #19
  %84 = zext i32 %shr416 to i160
  %85 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 20)
  %bf.load435 = load i160, ptr %dmac_15_0, align 4
  %bf.shl437 = shl nuw nsw i160 %84, 80
  %bf.clear438 = and i160 %bf.load435, -79226953588444722964369244161
  %bf.set439 = or i160 %bf.clear438, %bf.shl437
  store i160 %bf.set439, ptr %dmac_15_0, align 4
  %86 = ptrtoint ptr %add.ptr415 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr415, align 4
  br label %if.end461

do.body448:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #19
  %and426 = and i32 %83, 65535
  %88 = ptrtoint ptr %add.ptr415 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and426, ptr %add.ptr415, align 4
  %89 = zext i32 %shr416 to i160
  %90 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 20)
  %bf.load435738 = load i160, ptr %dmac_15_0, align 4
  %bf.shl437739 = shl nuw nsw i160 %89, 80
  %bf.clear438740 = and i160 %bf.load435738, -79226953588444722964369244161
  %bf.set439741 = or i160 %bf.clear438740, %bf.shl437739
  store i160 %bf.set439741, ptr %dmac_15_0, align 4
  %91 = load i32, ptr %add.ptr415, align 4
  %and454 = and i32 %91, -65536
  store i32 %and454, ptr %add.ptr415, align 4
  br label %if.end461

if.end461:                                        ; preds = %do.body448, %if.end433
  %92 = phi i32 [ %91, %do.body448 ], [ %87, %if.end433 ]
  %93 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 20)
  %bf.load463 = load i160, ptr %dmac_15_0, align 4
  %94 = and i32 %92, 65535
  %bf.value464 = zext i32 %94 to i160
  %bf.shl465 = shl nuw nsw i160 %bf.value464, 64
  %bf.clear466 = and i160 %bf.load463, -1208907372870555465154561
  %bf.set467 = or i160 %bf.shl465, %bf.clear466
  store i160 %bf.set467, ptr %dmac_15_0, align 4
  %add.ptr471 = getelementptr i32, ptr %mask, i32 6
  %95 = ptrtoint ptr %add.ptr471 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr471, align 4
  br i1 %clr, label %do.body476, label %if.end461.if.end489_crit_edge

if.end461.if.end489_crit_edge:                    ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end489

do.body476:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #19
  %and482 = and i32 %96, -256
  %97 = ptrtoint ptr %add.ptr471 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and482, ptr %add.ptr471, align 4
  br label %if.end489

if.end489:                                        ; preds = %do.body476, %if.end461.if.end489_crit_edge
  %98 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 20)
  %bf.load491 = load i160, ptr %dmac_15_0, align 4
  %99 = and i32 %96, 255
  %bf.value492 = zext i32 %99 to i160
  %bf.shl493 = shl nuw nsw i160 %bf.value492, 32
  %bf.clear494 = and i160 %bf.load491, -1095216660481
  %bf.set495 = or i160 %bf.clear494, %bf.shl493
  store i160 %bf.set495, ptr %dmac_15_0, align 4
  %add.ptr499 = getelementptr i32, ptr %mask, i32 7
  %100 = ptrtoint ptr %add.ptr499 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr499, align 4
  %shr500 = and i32 %101, -65536
  br i1 %clr, label %do.body532, label %if.end517

if.end517:                                        ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #19
  %102 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 20)
  %bf.load519 = load i160, ptr %dmac_15_0, align 4
  %bf.shl521 = zext i32 %shr500 to i160
  %bf.clear522 = and i160 %bf.load519, -4294901761
  %bf.set523 = or i160 %bf.clear522, %bf.shl521
  store i160 %bf.set523, ptr %dmac_15_0, align 4
  %103 = ptrtoint ptr %add.ptr499 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr499, align 4
  br label %if.end545

do.body532:                                       ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #19
  %and510 = and i32 %101, 65535
  %105 = ptrtoint ptr %add.ptr499 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and510, ptr %add.ptr499, align 4
  %106 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 20)
  %bf.load519742 = load i160, ptr %dmac_15_0, align 4
  %bf.shl521743 = zext i32 %shr500 to i160
  %bf.clear522744 = and i160 %bf.load519742, -4294901761
  %bf.set523745 = or i160 %bf.clear522744, %bf.shl521743
  store i160 %bf.set523745, ptr %dmac_15_0, align 4
  %107 = load i32, ptr %add.ptr499, align 4
  %and538 = and i32 %107, -65536
  store i32 %and538, ptr %add.ptr499, align 4
  br label %if.end545

if.end545:                                        ; preds = %do.body532, %if.end517
  %108 = phi i32 [ %107, %do.body532 ], [ %104, %if.end517 ]
  %109 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 20)
  %bf.load547 = load i160, ptr %dmac_15_0, align 4
  %110 = and i32 %108, 65535
  %bf.value548 = zext i32 %110 to i160
  %bf.clear549 = and i160 %bf.load547, -65536
  %bf.set550 = or i160 %bf.clear549, %bf.value548
  store i160 %bf.set550, ptr %dmac_15_0, align 4
  %add.ptr552 = getelementptr i8, ptr %mask, i32 32
  %111 = ptrtoint ptr %add.ptr552 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %raw_ip.sroa.0.0.copyload = load i32, ptr %add.ptr552, align 1
  %raw_ip.sroa.7.0.add.ptr552.sroa_idx = getelementptr i8, ptr %mask, i32 36
  %112 = ptrtoint ptr %raw_ip.sroa.7.0.add.ptr552.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %raw_ip.sroa.7.0.copyload = load i32, ptr %raw_ip.sroa.7.0.add.ptr552.sroa_idx, align 1
  %raw_ip.sroa.10.0.add.ptr552.sroa_idx = getelementptr i8, ptr %mask, i32 40
  %113 = ptrtoint ptr %raw_ip.sroa.10.0.add.ptr552.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %raw_ip.sroa.10.0.copyload = load i32, ptr %raw_ip.sroa.10.0.add.ptr552.sroa_idx, align 1
  %raw_ip.sroa.13.0.add.ptr552.sroa_idx = getelementptr i8, ptr %mask, i32 44
  %114 = ptrtoint ptr %raw_ip.sroa.13.0.add.ptr552.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %raw_ip.sroa.13.0.copyload = load i32, ptr %raw_ip.sroa.13.0.add.ptr552.sroa_idx, align 1
  br i1 %clr, label %if.then554, label %if.end545.if.end555_crit_edge

if.end545.if.end555_crit_edge:                    ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end555

if.then554:                                       ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #19
  %115 = call ptr @memset(ptr %add.ptr552, i32 0, i32 16)
  br label %if.end555

if.end555:                                        ; preds = %if.then554, %if.end545.if.end555_crit_edge
  %src_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 4
  %116 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %raw_ip.sroa.0.0.copyload, ptr %src_ip_127_96, align 4
  %src_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 5
  %117 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %raw_ip.sroa.7.0.copyload, ptr %src_ip_95_64, align 4
  %src_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 6
  %118 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %raw_ip.sroa.10.0.copyload, ptr %src_ip_63_32, align 4
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 7
  %119 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %raw_ip.sroa.13.0.copyload, ptr %src_ip_31_0, align 4
  %add.ptr562 = getelementptr i8, ptr %mask, i32 48
  %120 = ptrtoint ptr %add.ptr562 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %raw_ip.sroa.0.0.copyload690 = load i32, ptr %add.ptr562, align 1
  %raw_ip.sroa.7.0.add.ptr562.sroa_idx = getelementptr i8, ptr %mask, i32 52
  %121 = ptrtoint ptr %raw_ip.sroa.7.0.add.ptr562.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %raw_ip.sroa.7.0.copyload691 = load i32, ptr %raw_ip.sroa.7.0.add.ptr562.sroa_idx, align 1
  %raw_ip.sroa.10.0.add.ptr562.sroa_idx = getelementptr i8, ptr %mask, i32 56
  %122 = ptrtoint ptr %raw_ip.sroa.10.0.add.ptr562.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %raw_ip.sroa.10.0.copyload693 = load i32, ptr %raw_ip.sroa.10.0.add.ptr562.sroa_idx, align 1
  %raw_ip.sroa.13.0.add.ptr562.sroa_idx = getelementptr i8, ptr %mask, i32 60
  %123 = ptrtoint ptr %raw_ip.sroa.13.0.add.ptr562.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %raw_ip.sroa.13.0.copyload695 = load i32, ptr %raw_ip.sroa.13.0.add.ptr562.sroa_idx, align 1
  br i1 %clr, label %if.then565, label %if.end555.if.end566_crit_edge

if.end555.if.end566_crit_edge:                    ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end566

if.then565:                                       ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #19
  %124 = call ptr @memset(ptr %add.ptr562, i32 0, i32 16)
  br label %if.end566

if.end566:                                        ; preds = %if.then565, %if.end555.if.end566_crit_edge
  %dst_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 8
  %125 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %raw_ip.sroa.0.0.copyload690, ptr %dst_ip_127_96, align 4
  %dst_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 9
  %126 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %raw_ip.sroa.7.0.copyload691, ptr %dst_ip_95_64, align 4
  %dst_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 10
  %127 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %raw_ip.sroa.10.0.copyload693, ptr %dst_ip_63_32, align 4
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %spec, i32 0, i32 11
  %128 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %raw_ip.sroa.13.0.copyload695, ptr %dst_ip_31_0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l2_src_dst(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %1 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ste_ctx, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l3_ipv6_dst(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l3_ipv6_dst_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 2
  %1 = ptrtoint ptr %build_eth_l3_ipv6_dst_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l3_ipv6_dst_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l3_ipv6_src(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l3_ipv6_src_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 1
  %1 = ptrtoint ptr %build_eth_l3_ipv6_src_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l3_ipv6_src_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l3_ipv4_5_tuple(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l3_ipv4_5_tuple_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 3
  %1 = ptrtoint ptr %build_eth_l3_ipv4_5_tuple_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l3_ipv4_5_tuple_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l2_src(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l2_src_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 4
  %1 = ptrtoint ptr %build_eth_l2_src_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l2_src_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l2_dst(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l2_dst_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 5
  %1 = ptrtoint ptr %build_eth_l2_dst_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l2_dst_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l2_tnl(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l2_tnl_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 6
  %1 = ptrtoint ptr %build_eth_l2_tnl_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l2_tnl_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l3_ipv4_misc(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l3_ipv4_misc_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 7
  %1 = ptrtoint ptr %build_eth_l3_ipv4_misc_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l3_ipv4_misc_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_ipv6_l3_l4(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_ipv6_l3_l4_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 8
  %1 = ptrtoint ptr %build_eth_ipv6_l3_l4_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_ipv6_l3_l4_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5dr_ste_build_empty_always_hit(ptr nocapture noundef %sb, i1 noundef zeroext %rx) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %sb, align 4
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 15, ptr %lu_type, align 4
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %2 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %3 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dr_ste_build_empty_always_hit_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_build_empty_always_hit_tag(ptr nocapture noundef readnone %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef readnone %tag) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_mpls(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_mpls_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 9
  %1 = ptrtoint ptr %build_mpls_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_mpls_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_gre(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_tnl_gre_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 10
  %1 = ptrtoint ptr %build_tnl_gre_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_tnl_gre_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_mpls_over_gre(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %caps9 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %caps, ptr %caps9, align 4
  %build_tnl_mpls_over_gre_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 12
  %2 = ptrtoint ptr %build_tnl_mpls_over_gre_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %build_tnl_mpls_over_gre_init, align 4
  tail call void %3(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_mpls_over_udp(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %caps9 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %caps, ptr %caps9, align 4
  %build_tnl_mpls_over_udp_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 13
  %2 = ptrtoint ptr %build_tnl_mpls_over_udp_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %build_tnl_mpls_over_udp_init, align 4
  tail call void %3(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_icmp(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %caps9 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %caps, ptr %caps9, align 4
  %build_icmp_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 14
  %2 = ptrtoint ptr %build_icmp_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %build_icmp_init, align 4
  tail call void %3(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_general_purpose(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_general_purpose_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 15
  %1 = ptrtoint ptr %build_general_purpose_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_general_purpose_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_eth_l4_misc(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_eth_l4_misc_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 16
  %1 = ptrtoint ptr %build_eth_l4_misc_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_eth_l4_misc_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_vxlan_gpe(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_tnl_vxlan_gpe_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 17
  %1 = ptrtoint ptr %build_tnl_vxlan_gpe_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_tnl_vxlan_gpe_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_geneve(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_tnl_geneve_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 18
  %1 = ptrtoint ptr %build_tnl_geneve_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_tnl_geneve_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_geneve_tlv_opt(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %caps2 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %caps, ptr %caps2, align 4
  %bf.shl7 = select i1 %inner, i8 -128, i8 0
  %bf.set9 = or i8 %bf.set, %bf.shl7
  store i8 %bf.set9, ptr %sb, align 4
  %build_tnl_geneve_tlv_opt_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 19
  %2 = ptrtoint ptr %build_tnl_geneve_tlv_opt_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %build_tnl_geneve_tlv_opt_init, align 4
  tail call void %3(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_geneve_tlv_opt_exist(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %build_tnl_geneve_tlv_opt_exist_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 20
  %0 = ptrtoint ptr %build_tnl_geneve_tlv_opt_exist_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %build_tnl_geneve_tlv_opt_exist_init, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %caps3 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %3 = ptrtoint ptr %caps3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %caps, ptr %caps3, align 4
  %bf.shl8 = select i1 %inner, i8 -128, i8 0
  %bf.set10 = or i8 %bf.set, %bf.shl8
  store i8 %bf.set10, ptr %sb, align 4
  %4 = ptrtoint ptr %build_tnl_geneve_tlv_opt_exist_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_tnl_geneve_tlv_opt_exist_init, align 4
  tail call void %5(ptr noundef %sb, ptr noundef %mask) #17
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_gtpu(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_tnl_gtpu_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 26
  %1 = ptrtoint ptr %build_tnl_gtpu_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_tnl_gtpu_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_gtpu_flex_parser_0(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %caps2 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %caps, ptr %caps2, align 4
  %bf.shl7 = select i1 %inner, i8 -128, i8 0
  %bf.set9 = or i8 %bf.set, %bf.shl7
  store i8 %bf.set9, ptr %sb, align 4
  %build_tnl_gtpu_flex_parser_0_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 28
  %2 = ptrtoint ptr %build_tnl_gtpu_flex_parser_0_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %build_tnl_gtpu_flex_parser_0_init, align 4
  tail call void %3(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_gtpu_flex_parser_1(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %caps, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %caps2 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %caps, ptr %caps2, align 4
  %bf.shl7 = select i1 %inner, i8 -128, i8 0
  %bf.set9 = or i8 %bf.set, %bf.shl7
  store i8 %bf.set9, ptr %sb, align 4
  %build_tnl_gtpu_flex_parser_1_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 29
  %2 = ptrtoint ptr %build_tnl_gtpu_flex_parser_1_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %build_tnl_gtpu_flex_parser_1_init, align 4
  tail call void %3(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_register_0(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_register_0_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 21
  %1 = ptrtoint ptr %build_register_0_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_register_0_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_register_1(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_register_1_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 22
  %1 = ptrtoint ptr %build_register_1_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_register_1_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_src_gvmi_qpn(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, ptr noundef %dmn, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc, align 4
  %1 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load2 = load i8, ptr %sb, align 4
  %sh.diff = lshr i352 %bf.load, 299
  %tr.sh.diff = trunc i352 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 32
  %bf.clear3 = and i8 %bf.load2, 31
  %bf.shl7 = select i1 %rx, i8 64, i8 0
  %bf.set = or i8 %bf.clear3, %bf.shl7
  %bf.set9 = or i8 %bf.set, %bf.shl
  %dmn10 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 1
  %2 = ptrtoint ptr %dmn10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dmn, ptr %dmn10, align 4
  %bf.shl15 = select i1 %inner, i8 -128, i8 0
  %bf.set17 = or i8 %bf.set9, %bf.shl15
  store i8 %bf.set17, ptr %sb, align 4
  %build_src_gvmi_qpn_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 23
  %3 = ptrtoint ptr %build_src_gvmi_qpn_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %build_src_gvmi_qpn_init, align 4
  tail call void %4(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_flex_parser_0(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_flex_parser_0_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 24
  %1 = ptrtoint ptr %build_flex_parser_0_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_flex_parser_0_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_flex_parser_1(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_flex_parser_1_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 25
  %1 = ptrtoint ptr %build_flex_parser_1_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_flex_parser_1_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_ste_build_tnl_header_0_1(ptr nocapture noundef readonly %ste_ctx, ptr noundef %sb, ptr noundef %mask, i1 noundef zeroext %inner, i1 noundef zeroext %rx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %bf.shl = select i1 %rx, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl6 = select i1 %inner, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl6
  %bf.set8 = or i8 %bf.set, %bf.clear
  store i8 %bf.set8, ptr %sb, align 4
  %build_tnl_header_0_1_init = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %ste_ctx, i32 0, i32 27
  %1 = ptrtoint ptr %build_tnl_header_0_1_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %build_tnl_header_0_1_init, align 4
  tail call void %2(ptr noundef %sb, ptr noundef %mask) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5dr_ste_get_ctx(i8 noundef zeroext %version) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %version)
  %cmp = icmp ugt i8 %version, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %version to i32
  %arrayidx = getelementptr [2 x ptr], ptr @mlx5dr_ste_ctx_arr, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_rule_set_last_member(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nobuiltin }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 441, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5dr_ste_create_next_htbl.__UNIQUE_ID_ddebug544, !1, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 450, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mlx5dr_ste_create_next_htbl._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5dr_ste_create_next_htbl._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 634, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx5dr_ste_build_pre_check._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5dr_ste_build_pre_check._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 640, i32 4}
!20 = !{ptr @mlx5dr_ste_build_pre_check._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx5dr_ste_build_pre_check._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 610, i32 4}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dr_ste_build_pre_check_spec._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dr_ste_build_pre_check_spec._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 616, i32 3}
!29 = !{ptr @dr_ste_build_pre_check_spec._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dr_ste_build_pre_check_spec._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mlx5dr_ste_ctx_arr, !32, !"mlx5dr_ste_ctx_arr", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste.c", i32 1363, i32 31}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2148826399, i64 2148826404, i64 2148826417, i64 2148826461, i64 2148826495, i64 2148826516}
