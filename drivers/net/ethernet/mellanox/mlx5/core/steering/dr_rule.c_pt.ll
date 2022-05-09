; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_ste = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_rule_rx_tx = type { ptr, ptr }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc2, %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc4, %struct.mlx5dr_match_misc5 }
%struct.mlx5dr_match_misc = type { [44 x i8], i32, i32, [3 x i32] }
%struct.mlx5dr_match_spec = type { i32, i32, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc2 = type { i128, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc4 = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5dr_match_misc5 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_matcher = type <{ ptr, [4 x i8], %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx, %struct.list_head, i32, %struct.mlx5dr_match_param, i8, [3 x i8], %struct.refcount_struct, %struct.list_head, [4 x i8] }>
%struct.mlx5dr_matcher_rx_tx = type { ptr, ptr, ptr, [2 x [2 x [18 x %struct.mlx5dr_ste_build]]], i8, [2 x [2 x i8]], i64, ptr, i32, %struct.list_head, i32 }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
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
%struct.mlx5dr_rule = type { ptr, %struct.mlx5dr_rule_rx_tx, %struct.mlx5dr_rule_rx_tx, %struct.list_head, %struct.list_head, i32 }
%struct.mlx5dr_rule_action_member = type { ptr, %struct.list_head }
%struct.mlx5dr_action = type { i32, %struct.refcount_struct, %union.anon.129 }
%union.anon.129 = type { ptr }
%struct.mlx5dr_table_rx_tx = type { ptr, ptr, i64, %struct.list_head }
%struct.mlx5dr_htbl_connect_info = type { i32, %union.anon.177 }
%union.anon.177 = type { i64 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }

@dr_rule_create_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): Failed creating rule\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dr_rule_create_rule\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_rule_create_rule._entry_ptr = internal global ptr @dr_rule_create_rule._entry, section ".printk_index", align 4
@dr_rule_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 911, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Rule parameters length is incorrect\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dr_rule_verify\00", [17 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr = internal global ptr @dr_rule_verify._entry, section ".printk_index", align 4
@dr_rule_verify._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 922, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Rule outer parameters contains a value not specified by mask\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.9 = internal global ptr @dr_rule_verify._entry.7, section ".printk_index", align 4
@dr_rule_verify._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 932, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): Rule misc parameters contains a value not specified by mask\0A\00", [51 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.12 = internal global ptr @dr_rule_verify._entry.10, section ".printk_index", align 4
@dr_rule_verify._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 942, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Rule inner parameters contains a value not specified by mask\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.15 = internal global ptr @dr_rule_verify._entry.13, section ".printk_index", align 4
@dr_rule_verify._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 952, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Rule misc2 parameters contains a value not specified by mask\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.18 = internal global ptr @dr_rule_verify._entry.16, section ".printk_index", align 4
@dr_rule_verify._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Rule misc3 parameters contains a value not specified by mask\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.21 = internal global ptr @dr_rule_verify._entry.19, section ".printk_index", align 4
@dr_rule_verify._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Rule misc4 parameters contains a value not specified by mask\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.24 = internal global ptr @dr_rule_verify._entry.22, section ".printk_index", align 4
@dr_rule_verify._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 983, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Rule misc5 parameters contains a value not specified by mask\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_rule_verify._entry_ptr.27 = internal global ptr @dr_rule_verify._entry.25, section ".printk_index", align 4
@dr_rule_cmp_value_to_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Rule parameters contains a value not specified by mask\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dr_rule_cmp_value_to_mask\00", [38 x i8] zeroinitializer }, align 32
@dr_rule_cmp_value_to_mask._entry_ptr = internal global ptr @dr_rule_cmp_value_to_mask._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_rule_create_rule_nic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Failed creating next branch\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dr_rule_create_rule_nic\00", [40 x i8] zeroinitializer }, align 32
@dr_rule_create_rule_nic._entry_ptr = internal global ptr @dr_rule_create_rule_nic._entry, section ".printk_index", align 4
@dr_rule_create_rule_nic.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): Failed apply actions\0A\00", [58 x i8] zeroinitializer }, align 32
@dr_rule_create_rule_nic._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.2, i32 1174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): Failed sending ste!\0A\00", [59 x i8] zeroinitializer }, align 32
@dr_rule_create_rule_nic._entry_ptr.36 = internal global ptr @dr_rule_create_rule_nic._entry.34, section ".printk_index", align 4
@dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dr_rule_handle_ste_branch\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Duplicate rule inserted\0A\00", [55 x i8] zeroinitializer }, align 32
@dr_rule_handle_ste_branch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Failed creating rehash table, htbl-log_size: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dr_rule_handle_ste_branch._entry_ptr = internal global ptr @dr_rule_handle_ste_branch._entry, section ".printk_index", align 4
@dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): failed adding collision entry, index: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dr_rule_handle_empty_entry.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dr_rule_handle_empty_entry\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Failed allocating table\0A\00", [55 x i8] zeroinitializer }, align 32
@dr_rule_rehash_htbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed to allocate new hash table\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dr_rule_rehash_htbl\00", [44 x i8] zeroinitializer }, align 32
@dr_rule_rehash_htbl._entry_ptr = internal global ptr @dr_rule_rehash_htbl._entry, section ".printk_index", align 4
@dr_rule_rehash_htbl._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 421, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Failed writing table to HW\0A\00", [52 x i8] zeroinitializer }, align 32
@dr_rule_rehash_htbl._entry_ptr.47 = internal global ptr @dr_rule_rehash_htbl._entry.45, section ".printk_index", align 4
@dr_rule_rehash_htbl._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Failed updating table to HW\0A\00", [51 x i8] zeroinitializer }, align 32
@dr_rule_rehash_htbl._entry_ptr.50 = internal global ptr @dr_rule_rehash_htbl._entry.48, section ".printk_index", align 4
@dr_rule_rehash_htbl._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 479, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed creating rehash table\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dr_rule_rehash_htbl._entry_ptr.54 = internal global ptr @dr_rule_rehash_htbl._entry.51, section ".printk_index", align 4
@dr_rule_rehash_copy_htbl.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dr_rule_rehash_copy_htbl\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Invalid number of entries\0A\00", [53 x i8] zeroinitializer }, align 32
@dr_rule_rehash_copy_miss_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Fatal error during resize\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dr_rule_rehash_copy_miss_list\00", [34 x i8] zeroinitializer }, align 32
@dr_rule_rehash_copy_miss_list._entry_ptr = internal global ptr @dr_rule_rehash_copy_miss_list._entry, section ".printk_index", align 4
@dr_rule_rehash_copy_ste.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dr_rule_rehash_copy_ste\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed adding collision entry, index: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dr_rule_rehash_handle_collision.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dr_rule_rehash_handle_collision\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Failed update dup entry\0A\00", [55 x i8] zeroinitializer }, align 32
@dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dr_rule_create_collision_htbl\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed allocating collision table\0A\00", [45 x i8] zeroinitializer }, align 32
@dr_rule_handle_collision.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dr_rule_handle_collision\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Failed to update prev miss_list\0A\00", [47 x i8] zeroinitializer }, align 32
@dr_rule_create_collision_entry.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dr_rule_create_collision_entry\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Failed creating collision entry\0A\00", [47 x i8] zeroinitializer }, align 32
@dr_rule_create_collision_entry.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.67, ptr @.str.2, ptr @.str.42, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1297, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 911, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 922, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 932, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 942, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 952, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 962, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 972, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 983, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 892, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1154, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1169, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1174, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 844, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 860, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 876, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 779, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 395, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 421, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 430, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 479, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 340, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 321, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 264, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 195, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 51, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 525, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 74, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @dr_rule_cmp_value_to_mask._entry, ptr @dr_rule_cmp_value_to_mask._entry_ptr, ptr @dr_rule_create_rule._entry, ptr @dr_rule_create_rule._entry_ptr, ptr @dr_rule_create_rule_nic._entry, ptr @dr_rule_create_rule_nic._entry.34, ptr @dr_rule_create_rule_nic._entry_ptr, ptr @dr_rule_create_rule_nic._entry_ptr.36, ptr @dr_rule_handle_ste_branch._entry, ptr @dr_rule_handle_ste_branch._entry_ptr, ptr @dr_rule_rehash_copy_miss_list._entry, ptr @dr_rule_rehash_copy_miss_list._entry_ptr, ptr @dr_rule_rehash_htbl._entry, ptr @dr_rule_rehash_htbl._entry.45, ptr @dr_rule_rehash_htbl._entry.48, ptr @dr_rule_rehash_htbl._entry.51, ptr @dr_rule_rehash_htbl._entry_ptr, ptr @dr_rule_rehash_htbl._entry_ptr.47, ptr @dr_rule_rehash_htbl._entry_ptr.50, ptr @dr_rule_rehash_htbl._entry_ptr.54, ptr @dr_rule_verify._entry, ptr @dr_rule_verify._entry.10, ptr @dr_rule_verify._entry.13, ptr @dr_rule_verify._entry.16, ptr @dr_rule_verify._entry.19, ptr @dr_rule_verify._entry.22, ptr @dr_rule_verify._entry.25, ptr @dr_rule_verify._entry.7, ptr @dr_rule_verify._entry_ptr, ptr @dr_rule_verify._entry_ptr.12, ptr @dr_rule_verify._entry_ptr.15, ptr @dr_rule_verify._entry_ptr.18, ptr @dr_rule_verify._entry_ptr.21, ptr @dr_rule_verify._entry_ptr.24, ptr @dr_rule_verify._entry_ptr.27, ptr @dr_rule_verify._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_create_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_verify._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_cmp_value_to_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_create_rule_nic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_create_rule_nic._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_handle_ste_branch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_rehash_htbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_rehash_htbl._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_rehash_htbl._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_rehash_htbl._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_rule_rehash_copy_miss_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5dr_rule_set_last_member(ptr noundef %nic_rule, ptr noundef %ste, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %next_htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 4
  %0 = ptrtoint ptr %next_htbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_htbl, align 4
  %tobool.not = icmp eq ptr %1, null
  %brmerge = or i1 %tobool.not, %force
  br i1 %brmerge, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rule_rx_tx = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 5
  %2 = ptrtoint ptr %rule_rx_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %nic_rule, ptr %rule_rx_tx, align 4
  %last_rule_ste = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %nic_rule, i32 0, i32 1
  %3 = ptrtoint ptr %last_rule_ste to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ste, ptr %last_rule_ste, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_rule_get_reverse_rule_members(ptr nocapture noundef writeonly %ste_arr, ptr noundef %curr_ste, ptr nocapture noundef %num_of_stes) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_of_stes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_of_stes, align 4
  %tobool.not = icmp eq ptr %curr_ste, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %curr_ste.addr.08 = phi ptr [ %12, %while.body.while.body_crit_edge ], [ %curr_ste, %entry.while.body_crit_edge ]
  %ste_chain_location = getelementptr inbounds %struct.mlx5dr_ste, ptr %curr_ste.addr.08, i32 0, i32 6
  %1 = ptrtoint ptr %ste_chain_location to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ste_chain_location, align 4
  %cmp = icmp eq i8 %2, 1
  %3 = ptrtoint ptr %num_of_stes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_of_stes, align 4
  %arrayidx = getelementptr ptr, ptr %ste_arr, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %curr_ste.addr.08, ptr %arrayidx, align 4
  %6 = load i32, ptr %num_of_stes, align 4
  %add = add i32 %6, 1
  store i32 %add, ptr %num_of_stes, align 4
  %call.i = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %curr_ste.addr.08) #10
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %htbl.i = getelementptr i8, ptr %8, i32 8
  %9 = ptrtoint ptr %htbl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htbl.i, align 4
  %pointing_ste.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %pointing_ste.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pointing_ste.i, align 4
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_rule_create(ptr noundef %matcher, ptr noundef %value, i32 noundef %num_actions, ptr noundef %actions, i32 noundef %flow_source) local_unnamed_addr #1 align 64 {
entry:
  %copy_param.i.i = alloca %struct.mlx5dr_match_param, align 4
  %param.i = alloca %struct.mlx5dr_match_param, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !133
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !134

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !135

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %2 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %matcher, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %param.i) #10
  %6 = call ptr @memset(ptr %param.i, i32 0, i32 416)
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %mask.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6
  %9 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %9)
  %10 = icmp ult i32 %9, 448
  %rem.i.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool3.not.i.i = icmp eq i32 %rem.i.i, 0
  %or.cond256.i.i = and i1 %10, %tobool3.not.i.i
  br i1 %or.cond256.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %mdev.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 911, i32 noundef %22) #13
  br label %if.then

if.end.i.i:                                       ; preds = %refcount_inc.exit
  %match_criteria1.i.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 7
  %23 = ptrtoint ptr %match_criteria1.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %match_criteria1.i.i, align 4
  call void @mlx5dr_ste_copy_param(i8 noundef zeroext %24, ptr noundef nonnull %param.i, ptr noundef %value, i1 noundef zeroext false) #10
  %conv.i.i = zext i8 %24 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end22.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end22.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %25 = call i32 @llvm.umin.i32(i32 %8, i32 64) #10
  %26 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %param.i, align 4
  %conv.i399.i.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mask.i.i, align 1
  %conv2.i400.i.i = zext i8 %29 to i32
  %neg.i401.i.i = xor i32 %conv2.i400.i.i, -1
  %and.i263402.i.i = and i32 %neg.i401.i.i, %conv.i399.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i263402.i.i)
  %tobool.not.i403.i.i = icmp eq i32 %and.i263402.i.i, 0
  br i1 %tobool.not.i403.i.i, label %if.then6.i.i.for.cond.i.i.i_crit_edge, label %do.end.i.thread.i.i

if.then6.i.i.for.cond.i.i.i_crit_edge:            ; preds = %if.then6.i.i
  br label %for.cond.i.i.i

do.end.i.thread.i.i:                              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i467.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end13.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then6.i.i.for.cond.i.i.i_crit_edge
  %i.09.i404.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %if.then6.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.09.i404.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %25)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %25
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end22.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %param.i, i32 %inc.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %31 to i32
  %arrayidx1.i.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i.i.i
  %32 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %33 to i32
  %neg.i.i.i = xor i32 %conv2.i.i.i, -1
  %and.i263.i.i = and i32 %neg.i.i.i, %conv.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %and.i263.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %do.end.i.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %25)
  %cmp.i.le.i.i = icmp ult i32 %inc.i.i.i, %25
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i.le.i.i, label %do.end.i.i.i.do.end13.i.i_crit_edge, label %do.end.i.i.i.if.end22.i.i_crit_edge

do.end.i.i.i.if.end22.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

do.end.i.i.i.do.end13.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i.i.do.end13.i.i_crit_edge, %do.end.i.thread.i.i
  %34 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %matcher, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %mdev16.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %mdev16.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdev16.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i264.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i264.i.i to ptr
  %task19.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task19.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task19.i.i, align 8
  %pid20.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid20.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid20.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 922, i32 noundef %47) #13
  br label %if.then

if.end22.i.i:                                     ; preds = %do.end.i.i.i.if.end22.i.i_crit_edge, %for.cond.i.i.i.if.end22.i.i_crit_edge, %if.end.i.i.if.end22.i.i_crit_edge
  %and24.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.if.end48.i.i_crit_edge, label %if.then26.i.i

if.end22.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  %48 = call i32 @llvm.umin.i32(i32 %8, i32 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %48)
  %cmp8.i265.i.i = icmp ugt i32 %48, 64
  br i1 %cmp8.i265.i.i, label %for.body.i279.preheader.i.i, label %if.then26.i.i.if.end48.i.i_crit_edge

if.then26.i.i.if.end48.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i

for.body.i279.preheader.i.i:                      ; preds = %if.then26.i.i
  %arrayidx.i272405.i.i = getelementptr inbounds i8, ptr %param.i, i32 64
  %49 = ptrtoint ptr %arrayidx.i272405.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i272405.i.i, align 4
  %conv.i273406.i.i = zext i8 %50 to i32
  %arrayidx1.i274407.i.i = getelementptr %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx1.i274407.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx1.i274407.i.i, align 1
  %conv2.i275408.i.i = zext i8 %52 to i32
  %neg.i276409.i.i = xor i32 %conv2.i275408.i.i, -1
  %and.i277410.i.i = and i32 %neg.i276409.i.i, %conv.i273406.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i277410.i.i)
  %tobool.not.i278411.i.i = icmp eq i32 %and.i277410.i.i, 0
  br i1 %tobool.not.i278411.i.i, label %for.body.i279.preheader.i.i.for.cond.i269.i.i_crit_edge, label %do.end.i281.thread.i.i

for.body.i279.preheader.i.i.for.cond.i269.i.i_crit_edge: ; preds = %for.body.i279.preheader.i.i
  br label %for.cond.i269.i.i

do.end.i281.thread.i.i:                           ; preds = %for.body.i279.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i280469.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end39.i.i

for.cond.i269.i.i:                                ; preds = %for.body.i279.i.i.for.cond.i269.i.i_crit_edge, %for.body.i279.preheader.i.i.for.cond.i269.i.i_crit_edge
  %i.09.i271412.i.i = phi i32 [ %inc.i266.i.i, %for.body.i279.i.i.for.cond.i269.i.i_crit_edge ], [ 64, %for.body.i279.preheader.i.i.for.cond.i269.i.i_crit_edge ]
  %inc.i266.i.i = add i32 %i.09.i271412.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i266.i.i, i32 %48)
  %exitcond.not.i268.i.i = icmp eq i32 %inc.i266.i.i, %48
  br i1 %exitcond.not.i268.i.i, label %for.cond.i269.i.i.if.end48.i.i_crit_edge, label %for.body.i279.i.i

for.cond.i269.i.i.if.end48.i.i_crit_edge:         ; preds = %for.cond.i269.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i

for.body.i279.i.i:                                ; preds = %for.cond.i269.i.i
  %arrayidx.i272.i.i = getelementptr i8, ptr %param.i, i32 %inc.i266.i.i
  %53 = ptrtoint ptr %arrayidx.i272.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i272.i.i, align 1
  %conv.i273.i.i = zext i8 %54 to i32
  %arrayidx1.i274.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i266.i.i
  %55 = ptrtoint ptr %arrayidx1.i274.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx1.i274.i.i, align 1
  %conv2.i275.i.i = zext i8 %56 to i32
  %neg.i276.i.i = xor i32 %conv2.i275.i.i, -1
  %and.i277.i.i = and i32 %neg.i276.i.i, %conv.i273.i.i
  %tobool.not.i278.i.i = icmp eq i32 %and.i277.i.i, 0
  br i1 %tobool.not.i278.i.i, label %for.body.i279.i.i.for.cond.i269.i.i_crit_edge, label %do.end.i281.i.i

for.body.i279.i.i.for.cond.i269.i.i_crit_edge:    ; preds = %for.body.i279.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i269.i.i

do.end.i281.i.i:                                  ; preds = %for.body.i279.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i266.i.i, i32 %48)
  %cmp.i267.le.i.i = icmp ult i32 %inc.i266.i.i, %48
  %call.i280.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i267.le.i.i, label %do.end.i281.i.i.do.end39.i.i_crit_edge, label %do.end.i281.i.i.if.end48.i.i_crit_edge

do.end.i281.i.i.if.end48.i.i_crit_edge:           ; preds = %do.end.i281.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i

do.end.i281.i.i.do.end39.i.i_crit_edge:           ; preds = %do.end.i281.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %do.end.i281.i.i.do.end39.i.i_crit_edge, %do.end.i281.thread.i.i
  %57 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %matcher, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %mdev42.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %mdev42.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev42.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %65 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i284.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i284.i.i to ptr
  %task45.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task45.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task45.i.i, align 8
  %pid46.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid46.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid46.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef 932, i32 noundef %70) #13
  br label %if.then

if.end48.i.i:                                     ; preds = %do.end.i281.i.i.if.end48.i.i_crit_edge, %for.cond.i269.i.i.if.end48.i.i_crit_edge, %if.then26.i.i.if.end48.i.i_crit_edge, %if.end22.i.i.if.end48.i.i_crit_edge
  %and50.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end48.i.i.if.end74.i.i_crit_edge, label %if.then52.i.i

if.end48.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i.i

if.then52.i.i:                                    ; preds = %if.end48.i.i
  %71 = call i32 @llvm.umin.i32(i32 %8, i32 192) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %71)
  %cmp8.i285.i.i = icmp ugt i32 %71, 128
  br i1 %cmp8.i285.i.i, label %for.body.i299.preheader.i.i, label %if.then52.i.i.if.end74.i.i_crit_edge

if.then52.i.i.if.end74.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i.i

for.body.i299.preheader.i.i:                      ; preds = %if.then52.i.i
  %arrayidx.i292414.i.i = getelementptr inbounds i8, ptr %param.i, i32 128
  %72 = ptrtoint ptr %arrayidx.i292414.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i292414.i.i, align 4
  %conv.i293415.i.i = zext i8 %73 to i32
  %arrayidx1.i294416.i.i = getelementptr %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 2
  %74 = ptrtoint ptr %arrayidx1.i294416.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx1.i294416.i.i, align 1
  %conv2.i295417.i.i = zext i8 %75 to i32
  %neg.i296418.i.i = xor i32 %conv2.i295417.i.i, -1
  %and.i297419.i.i = and i32 %neg.i296418.i.i, %conv.i293415.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297419.i.i)
  %tobool.not.i298420.i.i = icmp eq i32 %and.i297419.i.i, 0
  br i1 %tobool.not.i298420.i.i, label %for.body.i299.preheader.i.i.for.cond.i289.i.i_crit_edge, label %do.end.i301.thread.i.i

for.body.i299.preheader.i.i.for.cond.i289.i.i_crit_edge: ; preds = %for.body.i299.preheader.i.i
  br label %for.cond.i289.i.i

do.end.i301.thread.i.i:                           ; preds = %for.body.i299.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i300471.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end65.i.i

for.cond.i289.i.i:                                ; preds = %for.body.i299.i.i.for.cond.i289.i.i_crit_edge, %for.body.i299.preheader.i.i.for.cond.i289.i.i_crit_edge
  %i.09.i291421.i.i = phi i32 [ %inc.i286.i.i, %for.body.i299.i.i.for.cond.i289.i.i_crit_edge ], [ 128, %for.body.i299.preheader.i.i.for.cond.i289.i.i_crit_edge ]
  %inc.i286.i.i = add i32 %i.09.i291421.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i286.i.i, i32 %71)
  %exitcond.not.i288.i.i = icmp eq i32 %inc.i286.i.i, %71
  br i1 %exitcond.not.i288.i.i, label %for.cond.i289.i.i.if.end74.i.i_crit_edge, label %for.body.i299.i.i

for.cond.i289.i.i.if.end74.i.i_crit_edge:         ; preds = %for.cond.i289.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i.i

for.body.i299.i.i:                                ; preds = %for.cond.i289.i.i
  %arrayidx.i292.i.i = getelementptr i8, ptr %param.i, i32 %inc.i286.i.i
  %76 = ptrtoint ptr %arrayidx.i292.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i292.i.i, align 1
  %conv.i293.i.i = zext i8 %77 to i32
  %arrayidx1.i294.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i286.i.i
  %78 = ptrtoint ptr %arrayidx1.i294.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx1.i294.i.i, align 1
  %conv2.i295.i.i = zext i8 %79 to i32
  %neg.i296.i.i = xor i32 %conv2.i295.i.i, -1
  %and.i297.i.i = and i32 %neg.i296.i.i, %conv.i293.i.i
  %tobool.not.i298.i.i = icmp eq i32 %and.i297.i.i, 0
  br i1 %tobool.not.i298.i.i, label %for.body.i299.i.i.for.cond.i289.i.i_crit_edge, label %do.end.i301.i.i

for.body.i299.i.i.for.cond.i289.i.i_crit_edge:    ; preds = %for.body.i299.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i289.i.i

do.end.i301.i.i:                                  ; preds = %for.body.i299.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i286.i.i, i32 %71)
  %cmp.i287.le.i.i = icmp ult i32 %inc.i286.i.i, %71
  %call.i300.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i287.le.i.i, label %do.end.i301.i.i.do.end65.i.i_crit_edge, label %do.end.i301.i.i.if.end74.i.i_crit_edge

do.end.i301.i.i.if.end74.i.i_crit_edge:           ; preds = %do.end.i301.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i.i

do.end.i301.i.i.do.end65.i.i_crit_edge:           ; preds = %do.end.i301.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %do.end.i301.i.i.do.end65.i.i_crit_edge, %do.end.i301.thread.i.i
  %80 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %matcher, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %mdev68.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %mdev68.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdev68.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %88 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i304.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i304.i.i to ptr
  %task71.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task71.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task71.i.i, align 8
  %pid72.i.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 68
  %92 = ptrtoint ptr %pid72.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pid72.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6, i32 noundef 942, i32 noundef %93) #13
  br label %if.then

if.end74.i.i:                                     ; preds = %do.end.i301.i.i.if.end74.i.i_crit_edge, %for.cond.i289.i.i.if.end74.i.i_crit_edge, %if.then52.i.i.if.end74.i.i_crit_edge, %if.end48.i.i.if.end74.i.i_crit_edge
  %and76.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.i)
  %tobool77.not.i.i = icmp eq i32 %and76.i.i, 0
  br i1 %tobool77.not.i.i, label %if.end74.i.i.if.end100.i.i_crit_edge, label %if.then78.i.i

if.end74.i.i.if.end100.i.i_crit_edge:             ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i.i

if.then78.i.i:                                    ; preds = %if.end74.i.i
  %94 = call i32 @llvm.umin.i32(i32 %8, i32 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %94)
  %cmp8.i305.i.i = icmp ugt i32 %94, 192
  br i1 %cmp8.i305.i.i, label %for.body.i319.preheader.i.i, label %if.then78.i.i.if.end100.i.i_crit_edge

if.then78.i.i.if.end100.i.i_crit_edge:            ; preds = %if.then78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i.i

for.body.i319.preheader.i.i:                      ; preds = %if.then78.i.i
  %arrayidx.i312423.i.i = getelementptr inbounds i8, ptr %param.i, i32 192
  %95 = ptrtoint ptr %arrayidx.i312423.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i312423.i.i, align 4
  %conv.i313424.i.i = zext i8 %96 to i32
  %arrayidx1.i314425.i.i = getelementptr %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 3
  %97 = ptrtoint ptr %arrayidx1.i314425.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx1.i314425.i.i, align 1
  %conv2.i315426.i.i = zext i8 %98 to i32
  %neg.i316427.i.i = xor i32 %conv2.i315426.i.i, -1
  %and.i317428.i.i = and i32 %neg.i316427.i.i, %conv.i313424.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317428.i.i)
  %tobool.not.i318429.i.i = icmp eq i32 %and.i317428.i.i, 0
  br i1 %tobool.not.i318429.i.i, label %for.body.i319.preheader.i.i.for.cond.i309.i.i_crit_edge, label %do.end.i321.thread.i.i

for.body.i319.preheader.i.i.for.cond.i309.i.i_crit_edge: ; preds = %for.body.i319.preheader.i.i
  br label %for.cond.i309.i.i

do.end.i321.thread.i.i:                           ; preds = %for.body.i319.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i320473.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end91.i.i

for.cond.i309.i.i:                                ; preds = %for.body.i319.i.i.for.cond.i309.i.i_crit_edge, %for.body.i319.preheader.i.i.for.cond.i309.i.i_crit_edge
  %i.09.i311430.i.i = phi i32 [ %inc.i306.i.i, %for.body.i319.i.i.for.cond.i309.i.i_crit_edge ], [ 192, %for.body.i319.preheader.i.i.for.cond.i309.i.i_crit_edge ]
  %inc.i306.i.i = add i32 %i.09.i311430.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i306.i.i, i32 %94)
  %exitcond.not.i308.i.i = icmp eq i32 %inc.i306.i.i, %94
  br i1 %exitcond.not.i308.i.i, label %for.cond.i309.i.i.if.end100.i.i_crit_edge, label %for.body.i319.i.i

for.cond.i309.i.i.if.end100.i.i_crit_edge:        ; preds = %for.cond.i309.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i.i

for.body.i319.i.i:                                ; preds = %for.cond.i309.i.i
  %arrayidx.i312.i.i = getelementptr i8, ptr %param.i, i32 %inc.i306.i.i
  %99 = ptrtoint ptr %arrayidx.i312.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i312.i.i, align 1
  %conv.i313.i.i = zext i8 %100 to i32
  %arrayidx1.i314.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i306.i.i
  %101 = ptrtoint ptr %arrayidx1.i314.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx1.i314.i.i, align 1
  %conv2.i315.i.i = zext i8 %102 to i32
  %neg.i316.i.i = xor i32 %conv2.i315.i.i, -1
  %and.i317.i.i = and i32 %neg.i316.i.i, %conv.i313.i.i
  %tobool.not.i318.i.i = icmp eq i32 %and.i317.i.i, 0
  br i1 %tobool.not.i318.i.i, label %for.body.i319.i.i.for.cond.i309.i.i_crit_edge, label %do.end.i321.i.i

for.body.i319.i.i.for.cond.i309.i.i_crit_edge:    ; preds = %for.body.i319.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i309.i.i

do.end.i321.i.i:                                  ; preds = %for.body.i319.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i306.i.i, i32 %94)
  %cmp.i307.le.i.i = icmp ult i32 %inc.i306.i.i, %94
  %call.i320.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i307.le.i.i, label %do.end.i321.i.i.do.end91.i.i_crit_edge, label %do.end.i321.i.i.if.end100.i.i_crit_edge

do.end.i321.i.i.if.end100.i.i_crit_edge:          ; preds = %do.end.i321.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i.i

do.end.i321.i.i.do.end91.i.i_crit_edge:           ; preds = %do.end.i321.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91.i.i

do.end91.i.i:                                     ; preds = %do.end.i321.i.i.do.end91.i.i_crit_edge, %do.end.i321.thread.i.i
  %103 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %matcher, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %mdev94.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %mdev94.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mdev94.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %111 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i324.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i324.i.i to ptr
  %task97.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task97.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task97.i.i, align 8
  %pid98.i.i = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 68
  %115 = ptrtoint ptr %pid98.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pid98.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 952, i32 noundef %116) #13
  br label %if.then

if.end100.i.i:                                    ; preds = %do.end.i321.i.i.if.end100.i.i_crit_edge, %for.cond.i309.i.i.if.end100.i.i_crit_edge, %if.then78.i.i.if.end100.i.i_crit_edge, %if.end74.i.i.if.end100.i.i_crit_edge
  %and102.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i.i)
  %tobool103.not.i.i = icmp eq i32 %and102.i.i, 0
  br i1 %tobool103.not.i.i, label %if.end100.i.i.if.end126.i.i_crit_edge, label %if.then104.i.i

if.end100.i.i.if.end126.i.i_crit_edge:            ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i.i

if.then104.i.i:                                   ; preds = %if.end100.i.i
  %117 = call i32 @llvm.umin.i32(i32 %8, i32 320) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %117)
  %cmp8.i325.i.i = icmp ugt i32 %117, 256
  br i1 %cmp8.i325.i.i, label %for.body.i339.preheader.i.i, label %if.then104.i.i.if.end126.i.i_crit_edge

if.then104.i.i.if.end126.i.i_crit_edge:           ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i.i

for.body.i339.preheader.i.i:                      ; preds = %if.then104.i.i
  %arrayidx.i332432.i.i = getelementptr inbounds i8, ptr %param.i, i32 256
  %118 = ptrtoint ptr %arrayidx.i332432.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i332432.i.i, align 4
  %conv.i333433.i.i = zext i8 %119 to i32
  %arrayidx1.i334434.i.i = getelementptr %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 4
  %120 = ptrtoint ptr %arrayidx1.i334434.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx1.i334434.i.i, align 1
  %conv2.i335435.i.i = zext i8 %121 to i32
  %neg.i336436.i.i = xor i32 %conv2.i335435.i.i, -1
  %and.i337437.i.i = and i32 %neg.i336436.i.i, %conv.i333433.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i337437.i.i)
  %tobool.not.i338438.i.i = icmp eq i32 %and.i337437.i.i, 0
  br i1 %tobool.not.i338438.i.i, label %for.body.i339.preheader.i.i.for.cond.i329.i.i_crit_edge, label %do.end.i341.thread.i.i

for.body.i339.preheader.i.i.for.cond.i329.i.i_crit_edge: ; preds = %for.body.i339.preheader.i.i
  br label %for.cond.i329.i.i

do.end.i341.thread.i.i:                           ; preds = %for.body.i339.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i340475.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end117.i.i

for.cond.i329.i.i:                                ; preds = %for.body.i339.i.i.for.cond.i329.i.i_crit_edge, %for.body.i339.preheader.i.i.for.cond.i329.i.i_crit_edge
  %i.09.i331439.i.i = phi i32 [ %inc.i326.i.i, %for.body.i339.i.i.for.cond.i329.i.i_crit_edge ], [ 256, %for.body.i339.preheader.i.i.for.cond.i329.i.i_crit_edge ]
  %inc.i326.i.i = add i32 %i.09.i331439.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i326.i.i, i32 %117)
  %exitcond.not.i328.i.i = icmp eq i32 %inc.i326.i.i, %117
  br i1 %exitcond.not.i328.i.i, label %for.cond.i329.i.i.if.end126.i.i_crit_edge, label %for.body.i339.i.i

for.cond.i329.i.i.if.end126.i.i_crit_edge:        ; preds = %for.cond.i329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i.i

for.body.i339.i.i:                                ; preds = %for.cond.i329.i.i
  %arrayidx.i332.i.i = getelementptr i8, ptr %param.i, i32 %inc.i326.i.i
  %122 = ptrtoint ptr %arrayidx.i332.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i332.i.i, align 1
  %conv.i333.i.i = zext i8 %123 to i32
  %arrayidx1.i334.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i326.i.i
  %124 = ptrtoint ptr %arrayidx1.i334.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx1.i334.i.i, align 1
  %conv2.i335.i.i = zext i8 %125 to i32
  %neg.i336.i.i = xor i32 %conv2.i335.i.i, -1
  %and.i337.i.i = and i32 %neg.i336.i.i, %conv.i333.i.i
  %tobool.not.i338.i.i = icmp eq i32 %and.i337.i.i, 0
  br i1 %tobool.not.i338.i.i, label %for.body.i339.i.i.for.cond.i329.i.i_crit_edge, label %do.end.i341.i.i

for.body.i339.i.i.for.cond.i329.i.i_crit_edge:    ; preds = %for.body.i339.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i329.i.i

do.end.i341.i.i:                                  ; preds = %for.body.i339.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i326.i.i, i32 %117)
  %cmp.i327.le.i.i = icmp ult i32 %inc.i326.i.i, %117
  %call.i340.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i327.le.i.i, label %do.end.i341.i.i.do.end117.i.i_crit_edge, label %do.end.i341.i.i.if.end126.i.i_crit_edge

do.end.i341.i.i.if.end126.i.i_crit_edge:          ; preds = %do.end.i341.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i.i

do.end.i341.i.i.do.end117.i.i_crit_edge:          ; preds = %do.end.i341.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end117.i.i

do.end117.i.i:                                    ; preds = %do.end.i341.i.i.do.end117.i.i_crit_edge, %do.end.i341.thread.i.i
  %126 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %matcher, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %mdev120.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %mdev120.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mdev120.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %134 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i344.i.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i344.i.i to ptr
  %task123.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task123.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task123.i.i, align 8
  %pid124.i.i = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 68
  %138 = ptrtoint ptr %pid124.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pid124.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.6, i32 noundef 962, i32 noundef %139) #13
  br label %if.then

if.end126.i.i:                                    ; preds = %do.end.i341.i.i.if.end126.i.i_crit_edge, %for.cond.i329.i.i.if.end126.i.i_crit_edge, %if.then104.i.i.if.end126.i.i_crit_edge, %if.end100.i.i.if.end126.i.i_crit_edge
  %and128.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i.i)
  %tobool129.not.i.i = icmp eq i32 %and128.i.i, 0
  br i1 %tobool129.not.i.i, label %if.end126.i.i.if.end152.i.i_crit_edge, label %if.then130.i.i

if.end126.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

if.then130.i.i:                                   ; preds = %if.end126.i.i
  %140 = call i32 @llvm.umin.i32(i32 %8, i32 384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %140)
  %cmp8.i345.i.i = icmp ugt i32 %140, 320
  br i1 %cmp8.i345.i.i, label %for.body.i359.preheader.i.i, label %if.then130.i.i.if.end152.i.i_crit_edge

if.then130.i.i.if.end152.i.i_crit_edge:           ; preds = %if.then130.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.body.i359.preheader.i.i:                      ; preds = %if.then130.i.i
  %arrayidx.i352441.i.i = getelementptr inbounds i8, ptr %param.i, i32 320
  %141 = ptrtoint ptr %arrayidx.i352441.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i352441.i.i, align 4
  %conv.i353442.i.i = zext i8 %142 to i32
  %arrayidx1.i354443.i.i = getelementptr %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 5
  %143 = ptrtoint ptr %arrayidx1.i354443.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx1.i354443.i.i, align 1
  %conv2.i355444.i.i = zext i8 %144 to i32
  %neg.i356445.i.i = xor i32 %conv2.i355444.i.i, -1
  %and.i357446.i.i = and i32 %neg.i356445.i.i, %conv.i353442.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i357446.i.i)
  %tobool.not.i358447.i.i = icmp eq i32 %and.i357446.i.i, 0
  br i1 %tobool.not.i358447.i.i, label %for.body.i359.preheader.i.i.for.cond.i349.i.i_crit_edge, label %do.end.i361.thread.i.i

for.body.i359.preheader.i.i.for.cond.i349.i.i_crit_edge: ; preds = %for.body.i359.preheader.i.i
  br label %for.cond.i349.i.i

do.end.i361.thread.i.i:                           ; preds = %for.body.i359.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i360477.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end143.i.i

for.cond.i349.i.i:                                ; preds = %for.body.i359.i.i.for.cond.i349.i.i_crit_edge, %for.body.i359.preheader.i.i.for.cond.i349.i.i_crit_edge
  %i.09.i351448.i.i = phi i32 [ %inc.i346.i.i, %for.body.i359.i.i.for.cond.i349.i.i_crit_edge ], [ 320, %for.body.i359.preheader.i.i.for.cond.i349.i.i_crit_edge ]
  %inc.i346.i.i = add i32 %i.09.i351448.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i346.i.i, i32 %140)
  %exitcond.not.i348.i.i = icmp eq i32 %inc.i346.i.i, %140
  br i1 %exitcond.not.i348.i.i, label %for.cond.i349.i.i.if.end152.i.i_crit_edge, label %for.body.i359.i.i

for.cond.i349.i.i.if.end152.i.i_crit_edge:        ; preds = %for.cond.i349.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.body.i359.i.i:                                ; preds = %for.cond.i349.i.i
  %arrayidx.i352.i.i = getelementptr i8, ptr %param.i, i32 %inc.i346.i.i
  %145 = ptrtoint ptr %arrayidx.i352.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i352.i.i, align 1
  %conv.i353.i.i = zext i8 %146 to i32
  %arrayidx1.i354.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i346.i.i
  %147 = ptrtoint ptr %arrayidx1.i354.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx1.i354.i.i, align 1
  %conv2.i355.i.i = zext i8 %148 to i32
  %neg.i356.i.i = xor i32 %conv2.i355.i.i, -1
  %and.i357.i.i = and i32 %neg.i356.i.i, %conv.i353.i.i
  %tobool.not.i358.i.i = icmp eq i32 %and.i357.i.i, 0
  br i1 %tobool.not.i358.i.i, label %for.body.i359.i.i.for.cond.i349.i.i_crit_edge, label %do.end.i361.i.i

for.body.i359.i.i.for.cond.i349.i.i_crit_edge:    ; preds = %for.body.i359.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i349.i.i

do.end.i361.i.i:                                  ; preds = %for.body.i359.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i346.i.i, i32 %140)
  %cmp.i347.le.i.i = icmp ult i32 %inc.i346.i.i, %140
  %call.i360.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i347.le.i.i, label %do.end.i361.i.i.do.end143.i.i_crit_edge, label %do.end.i361.i.i.if.end152.i.i_crit_edge

do.end.i361.i.i.if.end152.i.i_crit_edge:          ; preds = %do.end.i361.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

do.end.i361.i.i.do.end143.i.i_crit_edge:          ; preds = %do.end.i361.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end143.i.i

do.end143.i.i:                                    ; preds = %do.end.i361.i.i.do.end143.i.i_crit_edge, %do.end.i361.thread.i.i
  %149 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %matcher, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 8
  %mdev146.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %mdev146.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mdev146.i.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %157 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i364.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i364.i.i to ptr
  %task149.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %task149.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %task149.i.i, align 8
  %pid150.i.i = getelementptr inbounds %struct.task_struct, ptr %160, i32 0, i32 68
  %161 = ptrtoint ptr %pid150.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pid150.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.6, i32 noundef 973, i32 noundef %162) #13
  br label %if.then

if.end152.i.i:                                    ; preds = %do.end.i361.i.i.if.end152.i.i_crit_edge, %for.cond.i349.i.i.if.end152.i.i_crit_edge, %if.then130.i.i.if.end152.i.i_crit_edge, %if.end126.i.i.if.end152.i.i_crit_edge
  %and154.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i.i)
  %tobool155.not.i.i = icmp eq i32 %and154.i.i, 0
  br i1 %tobool155.not.i.i, label %if.end152.i.i.if.end.i_crit_edge, label %if.then156.i.i

if.end152.i.i.if.end.i_crit_edge:                 ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then156.i.i:                                   ; preds = %if.end152.i.i
  %163 = call i32 @llvm.umin.i32(i32 %8, i32 416) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %163)
  %cmp8.i365.i.i = icmp ugt i32 %163, 384
  br i1 %cmp8.i365.i.i, label %for.body.i379.preheader.i.i, label %if.then156.i.i.if.end.i_crit_edge

if.then156.i.i.if.end.i_crit_edge:                ; preds = %if.then156.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i379.preheader.i.i:                      ; preds = %if.then156.i.i
  %arrayidx.i372450.i.i = getelementptr inbounds i8, ptr %param.i, i32 384
  %164 = ptrtoint ptr %arrayidx.i372450.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i372450.i.i, align 4
  %conv.i373451.i.i = zext i8 %165 to i32
  %arrayidx1.i374452.i.i = getelementptr %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 6, i32 6
  %166 = ptrtoint ptr %arrayidx1.i374452.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx1.i374452.i.i, align 1
  %conv2.i375453.i.i = zext i8 %167 to i32
  %neg.i376454.i.i = xor i32 %conv2.i375453.i.i, -1
  %and.i377455.i.i = and i32 %neg.i376454.i.i, %conv.i373451.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i377455.i.i)
  %tobool.not.i378456.i.i = icmp eq i32 %and.i377455.i.i, 0
  br i1 %tobool.not.i378456.i.i, label %for.body.i379.preheader.i.i.for.cond.i369.i.i_crit_edge, label %do.end.i381.thread.i.i

for.body.i379.preheader.i.i.for.cond.i369.i.i_crit_edge: ; preds = %for.body.i379.preheader.i.i
  br label %for.cond.i369.i.i

do.end.i381.thread.i.i:                           ; preds = %for.body.i379.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i380479.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br label %do.end169.i.i

for.cond.i369.i.i:                                ; preds = %for.body.i379.i.i.for.cond.i369.i.i_crit_edge, %for.body.i379.preheader.i.i.for.cond.i369.i.i_crit_edge
  %i.09.i371457.i.i = phi i32 [ %inc.i366.i.i, %for.body.i379.i.i.for.cond.i369.i.i_crit_edge ], [ 384, %for.body.i379.preheader.i.i.for.cond.i369.i.i_crit_edge ]
  %inc.i366.i.i = add i32 %i.09.i371457.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i366.i.i, i32 %163)
  %exitcond.not.i368.i.i = icmp eq i32 %inc.i366.i.i, %163
  br i1 %exitcond.not.i368.i.i, label %for.cond.i369.i.i.if.end.i_crit_edge, label %for.body.i379.i.i

for.cond.i369.i.i.if.end.i_crit_edge:             ; preds = %for.cond.i369.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i379.i.i:                                ; preds = %for.cond.i369.i.i
  %arrayidx.i372.i.i = getelementptr i8, ptr %param.i, i32 %inc.i366.i.i
  %168 = ptrtoint ptr %arrayidx.i372.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i372.i.i, align 1
  %conv.i373.i.i = zext i8 %169 to i32
  %arrayidx1.i374.i.i = getelementptr i8, ptr %mask.i.i, i32 %inc.i366.i.i
  %170 = ptrtoint ptr %arrayidx1.i374.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx1.i374.i.i, align 1
  %conv2.i375.i.i = zext i8 %171 to i32
  %neg.i376.i.i = xor i32 %conv2.i375.i.i, -1
  %and.i377.i.i = and i32 %neg.i376.i.i, %conv.i373.i.i
  %tobool.not.i378.i.i = icmp eq i32 %and.i377.i.i, 0
  br i1 %tobool.not.i378.i.i, label %for.body.i379.i.i.for.cond.i369.i.i_crit_edge, label %do.end.i381.i.i

for.body.i379.i.i.for.cond.i369.i.i_crit_edge:    ; preds = %for.body.i379.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i369.i.i

do.end.i381.i.i:                                  ; preds = %for.body.i379.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i366.i.i, i32 %163)
  %cmp.i367.le.i.i = icmp ult i32 %inc.i366.i.i, %163
  %call.i380.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #13
  br i1 %cmp.i367.le.i.i, label %do.end.i381.i.i.do.end169.i.i_crit_edge, label %do.end.i381.i.i.if.end.i_crit_edge

do.end.i381.i.i.if.end.i_crit_edge:               ; preds = %do.end.i381.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i381.i.i.do.end169.i.i_crit_edge:          ; preds = %do.end.i381.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169.i.i

do.end169.i.i:                                    ; preds = %do.end.i381.i.i.do.end169.i.i_crit_edge, %do.end.i381.thread.i.i
  %172 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %matcher, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 8
  %mdev172.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %mdev172.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mdev172.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  %180 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i384.i.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i384.i.i to ptr
  %task175.i.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %task175.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %task175.i.i, align 8
  %pid176.i.i = getelementptr inbounds %struct.task_struct, ptr %183, i32 0, i32 68
  %184 = ptrtoint ptr %pid176.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pid176.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.6, i32 noundef 983, i32 noundef %185) #13
  br label %if.then

if.end.i:                                         ; preds = %do.end.i381.i.i.if.end.i_crit_edge, %for.cond.i369.i.i.if.end.i_crit_edge, %if.then156.i.i.if.end.i_crit_edge, %if.end152.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %186 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %186, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then_crit_edge, label %if.end4.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end4.i:                                        ; preds = %if.end.i
  %187 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %matcher, ptr %call7.i.i.i, align 8
  %flow_source6.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 5
  %188 = ptrtoint ptr %flow_source6.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %flow_source, ptr %flow_source6.i, align 4
  %rule_actions_list.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 3
  %189 = ptrtoint ptr %rule_actions_list.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %rule_actions_list.i, ptr %rule_actions_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %190 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %rule_actions_list.i, ptr %prev.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actions)
  %cmp13.not.i.i = icmp eq i32 %num_actions, 0
  br i1 %cmp13.not.i.i, label %if.end4.i.if.end10.i_crit_edge, label %if.end4.i.for.body.i.i_crit_edge

if.end4.i.for.body.i.i_crit_edge:                 ; preds = %if.end4.i
  br label %for.body.i.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

for.body.i.i:                                     ; preds = %refcount_inc.exit.i.i.for.body.i.i_crit_edge, %if.end4.i.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %refcount_inc.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.for.body.i.i_crit_edge ]
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 12, i32 noundef 3520, i32 noundef -1) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %dr_rule_add_action_members.exit.i, label %if.end.i66.i

if.end.i66.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %actions, i32 %i.014.i.i
  %191 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i.i, align 4
  %193 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %192, ptr %call.i.i.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.mlx5dr_rule_action_member, ptr %call.i.i.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mlx5dr_rule_action_member, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %195 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %196 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %prev.i.i, align 8
  %call.i.i12.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %197, ptr noundef %rule_actions_list.i) #10
  br i1 %call.i.i12.i.i, label %if.end.i.i.i.i, label %if.end.i66.i.list_add_tail.exit.i.i_crit_edge

if.end.i66.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %list.i.i, ptr %prev.i.i, align 8
  %199 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %rule_actions_list.i, ptr %list.i.i, align 4
  %200 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %197, ptr %prev.i.i.i, align 4
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %list.i.i, ptr %197, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i66.i.list_add_tail.exit.i.i_crit_edge
  %202 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %call.i.i.i.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_action, ptr %203, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %204 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %204, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_add_tail.exit.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

list_add_tail.exit.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_add_tail.exit.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %205 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %205)
  %.not.i.i.i.i.i = icmp sgt i32 %205, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_add_tail.exit.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %num_actions
  br i1 %exitcond.not.i.i, label %refcount_inc.exit.i.i.if.end10.i_crit_edge, label %refcount_inc.exit.i.i.for.body.i.i_crit_edge

refcount_inc.exit.i.i.for.body.i.i_crit_edge:     ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

refcount_inc.exit.i.i.if.end10.i_crit_edge:       ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

dr_rule_add_action_members.exit.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @dr_rule_remove_action_members(ptr noundef %call7.i.i.i) #10
  br label %free_rule.i

if.end10.i:                                       ; preds = %refcount_inc.exit.i.i.if.end10.i_crit_edge, %if.end4.i.if.end10.i_crit_edge
  %type.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 4
  %206 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %type.i, align 8
  %208 = zext i32 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values)
  switch i32 %207, label %if.end10.i.remove_action_members.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb14.i
    i32 2, label %sw.bb19.i
  ]

if.end10.i.remove_action_members.i_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_action_members.i

sw.bb.i:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 2
  %rx11.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 1
  %209 = ptrtoint ptr %rx11.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %rx.i, ptr %rx11.i, align 4
  %call13.i = call fastcc i32 @dr_rule_create_rule_nic(ptr noundef nonnull %call7.i.i.i, ptr noundef %rx11.i, ptr noundef nonnull %param.i, i32 noundef %num_actions, ptr noundef %actions) #10
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %tx.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 3
  %tx15.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 2
  %210 = ptrtoint ptr %tx15.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %tx.i, ptr %tx15.i, align 4
  %call18.i = call fastcc i32 @dr_rule_create_rule_nic(ptr noundef nonnull %call7.i.i.i, ptr noundef %tx15.i, ptr noundef nonnull %param.i, i32 noundef %num_actions, ptr noundef %actions) #10
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end10.i
  %rx20.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 2
  %rx21.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %rx21.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %rx20.i, ptr %rx21.i, align 4
  %tx23.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %matcher, i32 0, i32 3
  %tx24.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 2
  %212 = ptrtoint ptr %tx24.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %tx23.i, ptr %tx24.i, align 4
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %copy_param.i.i) #10
  %213 = call ptr @memcpy(ptr %copy_param.i.i, ptr %param.i, i32 416)
  %call.i.i = call fastcc i32 @dr_rule_create_rule_nic(ptr noundef %call7.i.i.i, ptr noundef %rx21.i, ptr noundef nonnull %param.i, i32 noundef %num_actions, ptr noundef %actions) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i68.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i68.i, label %if.end.i69.i, label %sw.bb19.i.dr_rule_create_rule_fdb.exit.i_crit_edge

sw.bb19.i.dr_rule_create_rule_fdb.exit.i_crit_edge: ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_create_rule_fdb.exit.i

if.end.i69.i:                                     ; preds = %sw.bb19.i
  %call1.i.i = call fastcc i32 @dr_rule_create_rule_nic(ptr noundef %call7.i.i.i, ptr noundef %tx24.i, ptr noundef nonnull %copy_param.i.i, i32 noundef %num_actions, ptr noundef %actions) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i69.i.dr_rule_create_rule_fdb.exit.i_crit_edge, label %destroy_rule_nic_rx.i.i

if.end.i69.i.dr_rule_create_rule_fdb.exit.i_crit_edge: ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_create_rule_fdb.exit.i

destroy_rule_nic_rx.i.i:                          ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @dr_rule_destroy_rule_nic(ptr noundef %call7.i.i.i, ptr noundef %rx21.i) #10
  br label %dr_rule_create_rule_fdb.exit.i

dr_rule_create_rule_fdb.exit.i:                   ; preds = %destroy_rule_nic_rx.i.i, %if.end.i69.i.dr_rule_create_rule_fdb.exit.i_crit_edge, %sw.bb19.i.dr_rule_create_rule_fdb.exit.i_crit_edge
  %retval.0.i70.i = phi i32 [ %call1.i.i, %destroy_rule_nic_rx.i.i ], [ %call.i.i, %sw.bb19.i.dr_rule_create_rule_fdb.exit.i_crit_edge ], [ 0, %if.end.i69.i.dr_rule_create_rule_fdb.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %copy_param.i.i) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %dr_rule_create_rule_fdb.exit.i, %sw.bb14.i, %sw.bb.i
  %ret.0.i = phi i32 [ %retval.0.i70.i, %dr_rule_create_rule_fdb.exit.i ], [ %call18.i, %sw.bb14.i ], [ %call13.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool27.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool27.not.i, label %dr_rule_create_rule.exit, label %sw.epilog.i.remove_action_members.i_crit_edge

sw.epilog.i.remove_action_members.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_action_members.i

remove_action_members.i:                          ; preds = %sw.epilog.i.remove_action_members.i_crit_edge, %if.end10.i.remove_action_members.i_crit_edge
  call fastcc void @dr_rule_remove_action_members(ptr noundef nonnull %call7.i.i.i) #10
  br label %free_rule.i

free_rule.i:                                      ; preds = %remove_action_members.i, %dr_rule_add_action_members.exit.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %214 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mdev.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 8
  %218 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i72.i = and i32 %218, -16384
  %219 = inttoptr i32 %and.i72.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %221, i32 0, i32 68
  %222 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1297, i32 noundef %223) #13
  br label %if.then

dr_rule_create_rule.exit:                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %dbg_node.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 4
  %224 = ptrtoint ptr %dbg_node.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %dbg_node.i, ptr %dbg_node.i, align 4
  %prev.i71.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %225 = ptrtoint ptr %prev.i71.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %dbg_node.i, ptr %prev.i71.i, align 8
  call void @mlx5dr_dbg_rule_add(ptr noundef nonnull %call7.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %param.i) #10
  br label %if.end

if.then:                                          ; preds = %free_rule.i, %if.end.i.if.then_crit_edge, %do.end169.i.i, %do.end143.i.i, %do.end117.i.i, %do.end91.i.i, %do.end65.i.i, %do.end39.i.i, %do.end13.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %param.i) #10
  %call.i.i.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %226 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !137
  %asmresult.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %226, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i6)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i6, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.if.end_crit_edge, !prof !134

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then.if.end_crit_edge, %dr_rule_create_rule.exit
  %retval.0.i9 = phi ptr [ %call7.i.i.i, %dr_rule_create_rule.exit ], [ null, %if.then.if.end_crit_edge ], [ null, %if.then3.i.i ]
  ret ptr %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_rule_destroy(ptr noundef %rule) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @mlx5dr_dbg_rule_del(ptr noundef %rule) #10
  %type.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb4.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 1
  br label %if.then

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 2
  br label %if.then

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx.i.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 1
  tail call fastcc void @dr_rule_destroy_rule_nic(ptr noundef %rule, ptr noundef %rx.i.i) #10
  %tx.i.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 2
  br label %if.then

if.then:                                          ; preds = %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %rx.i.sink = phi ptr [ %rx.i, %sw.bb.i ], [ %tx.i, %sw.bb2.i ], [ %tx.i.i, %sw.bb4.i ]
  tail call fastcc void @dr_rule_destroy_rule_nic(ptr noundef %rule, ptr noundef %rx.i.sink) #10
  tail call fastcc void @dr_rule_remove_action_members(ptr noundef %rule) #10
  tail call void @kfree(ptr noundef %rule) #10
  %refcount = getelementptr inbounds %struct.mlx5dr_matcher, ptr %1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !137
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.if.end_crit_edge, !prof !134

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i6 = phi i32 [ -22, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.then3.i.i ]
  ret i32 %retval.0.i6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_ste_get_miss_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_rule_create_rule_nic(ptr nocapture noundef readonly %rule, ptr noundef %nic_rule, ptr noundef %param, i32 noundef %num_actions, ptr noundef %actions) unnamed_addr #1 align 64 {
entry:
  %htbl = alloca ptr, align 4
  %send_ste_list = alloca %struct.list_head, align 4
  %new_hw_ste_arr_sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htbl) #10
  %6 = ptrtoint ptr %htbl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %htbl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %send_ste_list) #10
  %7 = getelementptr inbounds %struct.list_head, ptr %send_ste_list, i32 0, i32 1
  %8 = ptrtoint ptr %send_ste_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_ste_list, ptr %send_ste_list, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_ste_list, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_hw_ste_arr_sz) #10
  %10 = ptrtoint ptr %new_hw_ste_arr_sz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %new_hw_ste_arr_sz, align 4, !annotation !138
  %11 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nic_rule, align 4
  %nic_tbl = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nic_tbl, align 8
  %nic_dmn4 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %nic_dmn4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nic_dmn4, align 4
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 8
  %type5 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type5, align 8
  %flow_source = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 5
  %21 = ptrtoint ptr %flow_source to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp1.not.i = icmp eq i32 %18, 2
  br i1 %cmp1.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %misc.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %1, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 44)
  %bf.load.i = load i352, ptr %misc.i, align 4
  %24 = and i352 %bf.load.i, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  %tobool.not.i = icmp eq i352 %24, 0
  br i1 %tobool.not.i, label %if.end22.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %misc4.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %param, i32 0, i32 1
  %25 = ptrtoint ptr %misc4.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 44)
  %bf.load5.i = load i352, ptr %misc4.i, align 4
  %26 = and i352 %bf.load5.i, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true13.critedge.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %cmp9.not.i = icmp ne i352 %26, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp25.old.i = icmp eq i32 %22, 2
  %or.cond42.i = or i1 %cmp25.old.i, %cmp9.not.i
  br i1 %or.cond42.i, label %land.lhs.true.i.cleanup91_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.cleanup91_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

land.lhs.true13.critedge.i:                       ; preds = %if.then2.i
  %cmp19.i = icmp eq i352 %26, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp30.old.i = icmp eq i32 %22, 1
  %or.cond43.i = or i1 %cmp30.old.i, %cmp19.i
  br i1 %or.cond43.i, label %land.lhs.true13.critedge.i.cleanup91_crit_edge, label %land.lhs.true13.critedge.i.if.end_crit_edge

land.lhs.true13.critedge.i.if.end_crit_edge:      ; preds = %land.lhs.true13.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true13.critedge.i.cleanup91_crit_edge:   ; preds = %land.lhs.true13.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp25.i = icmp eq i32 %22, 2
  %or.cond.i = and i1 %cmp.i, %cmp25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp30.i = icmp ne i32 %22, 1
  %27 = or i1 %cmp.i, %cmp30.i
  %or.cond45.i = xor i1 %or.cond.i, %27
  br i1 %or.cond45.i, label %if.end22.i.if.end_crit_edge, label %if.end22.i.cleanup91_crit_edge

if.end22.i.cleanup91_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end22.i.if.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end22.i.if.end_crit_edge, %land.lhs.true13.critedge.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 1472) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup91_crit_edge, label %if.end8

if.end.cleanup91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end8:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %16, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %call9 = call i32 @mlx5dr_matcher_add_to_tbl_nic(ptr noundef %5, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup91.sink.split_crit_edge

if.end8.cleanup91.sink.split_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91.sink.split

if.end12:                                         ; preds = %if.end8
  %ip_version.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %param, i32 0, i32 3
  %29 = ptrtoint ptr %ip_version.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load.i162 = load i160, ptr %ip_version.i, align 4
  %30 = and i160 %bf.load.i162, 608472288109550112718417538580480
  %cmp.i163 = icmp eq i160 %30, 243388915243820045087367015432192
  br i1 %cmp.i163, label %if.end12.dr_rule_get_ipv.exit_crit_edge, label %lor.lhs.false.i

if.end12.dr_rule_get_ipv.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_get_ipv.exit

lor.lhs.false.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %ethertype.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %param, i32 0, i32 1
  %31 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load1.i = load i32, ptr %ethertype.i, align 4
  %bf.clear2.i = and i32 %bf.load1.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 34525, i32 %bf.clear2.i)
  %cmp3.i = icmp eq i32 %bf.clear2.i, 34525
  %spec.select.i = zext i1 %cmp3.i to i32
  br label %dr_rule_get_ipv.exit

dr_rule_get_ipv.exit:                             ; preds = %lor.lhs.false.i, %if.end12.dr_rule_get_ipv.exit_crit_edge
  %retval.0.i164 = phi i32 [ 1, %if.end12.dr_rule_get_ipv.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %ip_version.i165 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %param, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %ip_version.i165 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 20)
  %bf.load.i166 = load i160, ptr %ip_version.i165, align 4
  %33 = and i160 %bf.load.i166, 608472288109550112718417538580480
  %cmp.i167 = icmp eq i160 %33, 243388915243820045087367015432192
  br i1 %cmp.i167, label %dr_rule_get_ipv.exit.dr_rule_get_ipv.exit175_crit_edge, label %lor.lhs.false.i173

dr_rule_get_ipv.exit.dr_rule_get_ipv.exit175_crit_edge: ; preds = %dr_rule_get_ipv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_get_ipv.exit175

lor.lhs.false.i173:                               ; preds = %dr_rule_get_ipv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ethertype.i168 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %param, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %ethertype.i168 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load1.i169 = load i32, ptr %ethertype.i168, align 4
  %bf.clear2.i170 = and i32 %bf.load1.i169, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 34525, i32 %bf.clear2.i170)
  %cmp3.i171 = icmp eq i32 %bf.clear2.i170, 34525
  %spec.select.i172 = zext i1 %cmp3.i171 to i32
  br label %dr_rule_get_ipv.exit175

dr_rule_get_ipv.exit175:                          ; preds = %lor.lhs.false.i173, %dr_rule_get_ipv.exit.dr_rule_get_ipv.exit175_crit_edge
  %retval.0.i174 = phi i32 [ 1, %dr_rule_get_ipv.exit.dr_rule_get_ipv.exit175_crit_edge ], [ %spec.select.i172, %lor.lhs.false.i173 ]
  %call15 = call i32 @mlx5dr_matcher_select_builders(ptr noundef %1, ptr noundef %12, i32 noundef %retval.0.i164, i32 noundef %retval.0.i174) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %dr_rule_get_ipv.exit175.remove_from_nic_tbl_crit_edge

dr_rule_get_ipv.exit175.remove_from_nic_tbl_crit_edge: ; preds = %dr_rule_get_ipv.exit175
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_from_nic_tbl

if.end18:                                         ; preds = %dr_rule_get_ipv.exit175
  %call19 = call i32 @mlx5dr_ste_build_ste_arr(ptr noundef %1, ptr noundef %12, ptr noundef %param, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.remove_from_nic_tbl_crit_edge

if.end18.remove_from_nic_tbl_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_from_nic_tbl

if.end22:                                         ; preds = %if.end18
  %call23 = call i32 @mlx5dr_actions_build_ste_arr(ptr noundef %1, ptr noundef %12, ptr noundef %actions, i32 noundef %num_actions, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %new_hw_ste_arr_sz) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.remove_from_nic_tbl_crit_edge

if.end22.remove_from_nic_tbl_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_from_nic_tbl

if.end26:                                         ; preds = %if.end22
  %num_of_builders = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %12, i32 0, i32 4
  %35 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_of_builders, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp192.not = icmp eq i8 %36, 0
  br i1 %cmp192.not, label %if.end26.for.end_crit_edge, label %for.body.lr.ph

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %12, align 8
  %last_rule_ste.i = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %nic_rule, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %cur_htbl.0194 = phi ptr [ %38, %for.body.lr.ph ], [ %50, %cleanup.for.body_crit_edge ]
  %i.0193 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %mul = shl i32 %i.0193, 6
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %mul
  %add = add nuw nsw i32 %i.0193, 1
  %conv28 = trunc i32 %add to i8
  %call29 = call fastcc ptr @dr_rule_handle_ste_branch(ptr noundef %rule, ptr noundef %nic_rule, ptr noundef nonnull %send_ste_list, ptr noundef %cur_htbl.0194, ptr noundef %add.ptr, i8 noundef zeroext %conv28, ptr noundef nonnull %htbl)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1154, i32 noundef %48) #13
  br label %free_rule

cleanup:                                          ; preds = %for.body
  %next_htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %call29, i32 0, i32 4
  %49 = ptrtoint ptr %next_htbl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next_htbl, align 4
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %call29, i32 0, i32 1
  %51 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  %rule_rx_tx.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %call29, i32 0, i32 5
  %53 = ptrtoint ptr %rule_rx_tx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %nic_rule, ptr %rule_rx_tx.i, align 4
  %54 = ptrtoint ptr %last_rule_ste.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call29, ptr %last_rule_ste.i, align 4
  %55 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_of_builders, align 4
  %conv = zext i8 %56 to i32
  %cmp = icmp ult i32 %add, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end26.for.end_crit_edge
  %ste.0.lcssa = phi ptr [ null, %if.end26.for.end_crit_edge ], [ %call29, %cleanup.for.end_crit_edge ]
  %57 = ptrtoint ptr %new_hw_ste_arr_sz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %new_hw_ste_arr_sz, align 4
  %call34 = call fastcc i32 @dr_rule_handle_action_stes(ptr noundef %rule, ptr noundef %nic_rule, ptr noundef nonnull %send_ste_list, ptr noundef %ste.0.lcssa, ptr noundef nonnull %call7.i.i, i32 noundef %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end51, label %do.body37

do.body37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_create_rule_nic.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_create_rule_nic, %if.then42)) #10
          to label %free_rule [label %if.then42], !srcloc !139

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %mdev43 = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %59 = ptrtoint ptr %mdev43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mdev43, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %63 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i178 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i178 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task46, align 8
  %pid47 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_create_rule_nic.__UNIQUE_ID_ddebug570, ptr noundef %62, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 1169, i32 noundef %68) #10
  br label %free_rule

if.end51:                                         ; preds = %for.end
  %call52 = call fastcc i32 @dr_rule_send_update_list(ptr noundef nonnull %send_ste_list, ptr noundef %5, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end63, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %mdev58 = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %69 = ptrtoint ptr %mdev58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdev58, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %73 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i179 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i179 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid62, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef 1174, i32 noundef %78) #13
  br label %free_rule

if.end63:                                         ; preds = %if.end51
  %79 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %htbl, align 4
  %tobool64.not = icmp eq ptr %80, null
  br i1 %tobool64.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  %refcount.i180 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %refcount.i180 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %refcount.i180, align 4
  %dec.i = add i32 %82, -1
  store i32 %dec.i, ptr %refcount.i180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i181 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i181, label %if.then.i, label %if.then65.if.end66_crit_edge

if.then65.if.end66_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @mlx5dr_ste_htbl_free(ptr noundef nonnull %80) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then.i, %if.then65.if.end66_crit_edge, %if.end63.if.end66_crit_edge
  %rules = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %12, i32 0, i32 10
  %83 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rules, align 8
  %inc67 = add i32 %84, 1
  store i32 %inc67, ptr %rules, align 8
  br label %cleanup91.sink.split

free_rule:                                        ; preds = %do.end57, %if.then42, %do.body37, %cleanup.thread
  %ret.2 = phi i32 [ %call34, %if.then42 ], [ %call52, %do.end57 ], [ -2, %cleanup.thread ], [ %call34, %do.body37 ]
  call fastcc void @dr_rule_clean_rule_members(ptr noundef %rule, ptr noundef %nic_rule)
  %85 = ptrtoint ptr %send_ste_list to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %send_ste_list, align 4
  %cmp77.not195 = icmp eq ptr %86, %send_ste_list
  br i1 %cmp77.not195, label %free_rule.remove_from_nic_tbl_crit_edge, label %free_rule.for.body81_crit_edge

free_rule.for.body81_crit_edge:                   ; preds = %free_rule
  br label %for.body81

free_rule.remove_from_nic_tbl_crit_edge:          ; preds = %free_rule
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_from_nic_tbl

for.body81:                                       ; preds = %list_del.exit.for.body81_crit_edge, %free_rule.for.body81_crit_edge
  %.pn.in196 = phi ptr [ %.pn, %list_del.exit.for.body81_crit_edge ], [ %86, %free_rule.for.body81_crit_edge ]
  %ste_info.0 = getelementptr i8, ptr %.pn.in196, i32 -4
  %87 = ptrtoint ptr %.pn.in196 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn = load ptr, ptr %.pn.in196, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in196) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body81.list_del.exit_crit_edge

for.body81.list_del.exit_crit_edge:               ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in196, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i, align 4
  %90 = ptrtoint ptr %.pn.in196 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %.pn.in196, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body81.list_del.exit_crit_edge
  %94 = ptrtoint ptr %.pn.in196 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in196, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in196, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %ste_info.0) #10
  %cmp77.not = icmp eq ptr %.pn, %send_ste_list
  br i1 %cmp77.not, label %list_del.exit.remove_from_nic_tbl_crit_edge, label %list_del.exit.for.body81_crit_edge

list_del.exit.for.body81_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body81

list_del.exit.remove_from_nic_tbl_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_from_nic_tbl

remove_from_nic_tbl:                              ; preds = %list_del.exit.remove_from_nic_tbl_crit_edge, %free_rule.remove_from_nic_tbl_crit_edge, %if.end22.remove_from_nic_tbl_crit_edge, %if.end18.remove_from_nic_tbl_crit_edge, %dr_rule_get_ipv.exit175.remove_from_nic_tbl_crit_edge
  %ret.3 = phi i32 [ %call15, %dr_rule_get_ipv.exit175.remove_from_nic_tbl_crit_edge ], [ %call19, %if.end18.remove_from_nic_tbl_crit_edge ], [ %call23, %if.end22.remove_from_nic_tbl_crit_edge ], [ %ret.2, %free_rule.remove_from_nic_tbl_crit_edge ], [ %ret.2, %list_del.exit.remove_from_nic_tbl_crit_edge ]
  %call90 = call i32 @mlx5dr_matcher_remove_from_tbl_nic(ptr noundef %5, ptr noundef %12) #10
  br label %cleanup91.sink.split

cleanup91.sink.split:                             ; preds = %remove_from_nic_tbl, %if.end66, %if.end8.cleanup91.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end66 ], [ %call9, %if.end8.cleanup91.sink.split_crit_edge ], [ %ret.3, %remove_from_nic_tbl ]
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup91

cleanup91:                                        ; preds = %cleanup91.sink.split, %if.end.cleanup91_crit_edge, %if.end22.i.cleanup91_crit_edge, %land.lhs.true13.critedge.i.cleanup91_crit_edge, %land.lhs.true.i.cleanup91_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup91_crit_edge ], [ 0, %land.lhs.true.i.cleanup91_crit_edge ], [ 0, %land.lhs.true13.critedge.i.cleanup91_crit_edge ], [ 0, %if.end22.i.cleanup91_crit_edge ], [ %retval.0.ph, %cleanup91.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_hw_ste_arr_sz) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %send_ste_list) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htbl) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_dbg_rule_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_rule_remove_action_members(ptr noundef readonly %rule) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rule_actions_list = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 3
  %0 = ptrtoint ptr %rule_actions_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule_actions_list, align 4
  %cmp.not21 = icmp eq ptr %1, %rule_actions_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %refcount_dec.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in22 = phi ptr [ %.pn, %refcount_dec.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %action_mem.0 = getelementptr i8, ptr %.pn.in22, i32 -4
  %2 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in22, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %action_mem.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %action_mem.0, align 4
  %refcount = getelementptr inbounds %struct.mlx5dr_action, ptr %12, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !137
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %list_del.exit.refcount_dec.exit_crit_edge, !prof !134

list_del.exit.refcount_dec.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #10
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %list_del.exit.refcount_dec.exit_crit_edge
  tail call void @kvfree(ptr noundef %action_mem.0) #10
  %cmp.not = icmp eq ptr %.pn, %rule_actions_list
  br i1 %cmp.not, label %refcount_dec.exit.for.end_crit_edge, label %refcount_dec.exit.for.body_crit_edge

refcount_dec.exit.for.body_crit_edge:             ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

refcount_dec.exit.for.end_crit_edge:              ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %refcount_dec.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_copy_param(i8 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_matcher_add_to_tbl_nic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_matcher_select_builders(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_build_ste_arr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_actions_build_ste_arr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_rule_handle_ste_branch(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %nic_rule, ptr noundef %send_ste_list, ptr noundef %cur_htbl, ptr noundef %hw_ste, i8 noundef zeroext %ste_location, ptr nocapture noundef writeonly %put_htbl) unnamed_addr #1 align 64 {
entry:
  %info.i.i = alloca %struct.mlx5dr_htbl_connect_info, align 8
  %formatted_ste.i.i = alloca [64 x i8], align 1
  %rehash_table_send_list.i.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_rule, align 4
  %call152 = call i32 @mlx5dr_ste_calc_hash_index(ptr noundef %hw_ste, ptr noundef %cur_htbl) #10
  %chunk153 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl, i32 0, i32 3
  %8 = ptrtoint ptr %chunk153 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chunk153, align 4
  %miss_list5154 = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %miss_list5154 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %miss_list5154, align 4
  %arrayidx155 = getelementptr %struct.list_head, ptr %11, i32 %call152
  %ste_arr156 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl, i32 0, i32 4
  %12 = ptrtoint ptr %ste_arr156 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ste_arr156, align 4
  %refcount.i157 = getelementptr %struct.mlx5dr_ste, ptr %13, i32 %call152, i32 1
  %14 = ptrtoint ptr %refcount.i157 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refcount.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i158 = icmp eq i32 %15, 0
  br i1 %tobool.not.i158, label %entry.if.then_crit_edge, label %if.else.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.else.lr.ph:                                    ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %max_log_sw_icm_sz.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 9, i32 3
  %16 = getelementptr inbounds %struct.list_head, ptr %rehash_table_send_list.i.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info.i.i, i32 0, i32 1
  %conv.i.i = zext i8 %ste_location to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ste_location)
  %cmp.i.i124 = icmp eq i8 %ste_location, 1
  br label %if.else

if.then:                                          ; preds = %if.end39.if.then_crit_edge, %entry.if.then_crit_edge
  %call.lcssa151 = phi i32 [ %call152, %entry.if.then_crit_edge ], [ %call, %if.end39.if.then_crit_edge ]
  %.lcssa150 = phi ptr [ %13, %entry.if.then_crit_edge ], [ %221, %if.end39.if.then_crit_edge ]
  %cur_htbl.addr.0.lcssa = phi ptr [ %cur_htbl, %entry.if.then_crit_edge ], [ %cur_htbl.addr.1, %if.end39.if.then_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx155, %entry.if.then_crit_edge ], [ %arrayidx, %if.end39.if.then_crit_edge ]
  %arrayidx6.le149 = getelementptr %struct.mlx5dr_ste, ptr %.lcssa150, i32 %call.lcssa151
  %call8 = call fastcc i32 @dr_rule_handle_empty_entry(ptr noundef %1, ptr noundef %7, ptr noundef %cur_htbl.addr.0.lcssa, ptr noundef %arrayidx6.le149, i8 noundef zeroext %ste_location, ptr noundef %hw_ste, ptr noundef %arrayidx.lcssa, ptr noundef %send_ste_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then.if.end67_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end67_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.else:                                          ; preds = %if.end39.if.else_crit_edge, %if.else.lr.ph
  %18 = phi ptr [ %13, %if.else.lr.ph ], [ %221, %if.end39.if.else_crit_edge ]
  %arrayidx162 = phi ptr [ %arrayidx155, %if.else.lr.ph ], [ %arrayidx, %if.end39.if.else_crit_edge ]
  %call161 = phi i32 [ %call152, %if.else.lr.ph ], [ %call, %if.end39.if.else_crit_edge ]
  %cur_htbl.addr.0160 = phi ptr [ %cur_htbl, %if.else.lr.ph ], [ %cur_htbl.addr.1, %if.end39.if.else_crit_edge ]
  %skip_rehash.0.off0159 = phi i1 [ false, %if.else.lr.ph ], [ true, %if.end39.if.else_crit_edge ]
  %19 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx162, align 4
  %cmp.i.not.i = icmp eq ptr %20, %arrayidx162
  br i1 %cmp.i.not.i, label %if.else.if.end23_crit_edge, label %if.else.for.cond.i_crit_edge

if.else.for.cond.i_crit_edge:                     ; preds = %if.else
  br label %for.cond.i

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx162, %if.else.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx162
  br i1 %cmp.not.i, label %for.cond.i.if.end23_crit_edge, label %for.body.i

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body.i:                                       ; preds = %for.cond.i
  %ste.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %22 = ptrtoint ptr %ste.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ste.0.i, align 4
  %call2.i = call zeroext i1 @mlx5dr_ste_equal_tag(ptr noundef %23, ptr noundef %hw_ste) #10
  br i1 %call2.i, label %dr_rule_find_ste_in_miss_list.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

dr_rule_find_ste_in_miss_list.exit:               ; preds = %for.body.i
  %ste.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool11.not = icmp eq ptr %ste.0.i.le, null
  br i1 %tobool11.not, label %dr_rule_find_ste_in_miss_list.exit.if.end23_crit_edge, label %if.then12

dr_rule_find_ste_in_miss_list.exit.if.end23_crit_edge: ; preds = %dr_rule_find_ste_in_miss_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then12:                                        ; preds = %dr_rule_find_ste_in_miss_list.exit
  %call13 = call zeroext i1 @mlx5dr_ste_is_last_in_rule(ptr noundef %7, i8 noundef zeroext %ste_location) #10
  br i1 %call13, label %do.body, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_handle_ste_branch, %if.then20)) #10
          to label %if.end23 [label %if.then20], !srcloc !139

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug554, ptr noundef %27, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 844, i32 noundef %33) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.body, %dr_rule_find_ste_in_miss_list.exit.if.end23_crit_edge, %for.cond.i.if.end23_crit_edge, %if.else.if.end23_crit_edge
  br i1 %skip_rehash.0.off0159, label %if.end23.if.else40_crit_edge, label %land.lhs.true

if.end23.if.else40_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

land.lhs.true:                                    ; preds = %if.end23
  %ctrl1.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.0160, i32 0, i32 9
  %34 = ptrtoint ptr %max_log_sw_icm_sz.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_log_sw_icm_sz.i, align 4
  %chunk_size.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.0160, i32 0, i32 7
  %36 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chunk_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.not.i117 = icmp ule i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %37)
  %cmp.i.i = icmp eq i32 %37, 21
  %or.cond.i = or i1 %cmp.not.i117, %cmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.if.else40_crit_edge, label %mlx5dr_ste_htbl_may_grow.exit.i

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

mlx5dr_ste_htbl_may_grow.exit.i:                  ; preds = %land.lhs.true
  %byte_mask.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.0160, i32 0, i32 1
  %38 = ptrtoint ptr %byte_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %byte_mask.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i.not.i, label %mlx5dr_ste_htbl_may_grow.exit.i.if.else40_crit_edge, label %mlx5dr_ste_htbl_may_grow.exit.i.while.body.i.i_crit_edge

mlx5dr_ste_htbl_may_grow.exit.i.while.body.i.i_crit_edge: ; preds = %mlx5dr_ste_htbl_may_grow.exit.i
  br label %while.body.i.i

mlx5dr_ste_htbl_may_grow.exit.i.if.else40_crit_edge: ; preds = %mlx5dr_ste_htbl_may_grow.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %mlx5dr_ste_htbl_may_grow.exit.i.while.body.i.i_crit_edge
  %bits.08.i.i = phi i16 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %mlx5dr_ste_htbl_may_grow.exit.i.while.body.i.i_crit_edge ]
  %byte_mask.addr.07.i.i = phi i16 [ %41, %while.body.i.i.while.body.i.i_crit_edge ], [ %39, %mlx5dr_ste_htbl_may_grow.exit.i.while.body.i.i_crit_edge ]
  %40 = add i16 %byte_mask.addr.07.i.i, -1
  %41 = and i16 %40, %byte_mask.addr.07.i.i
  %inc.i.i = add i16 %bits.08.i.i, 1
  %tobool.not.i1.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i1.i, label %dr_get_bits_per_mask.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

dr_get_bits_per_mask.exit.i:                      ; preds = %while.body.i.i
  %phi.cast.i = zext i16 %inc.i.i to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.bo.i, i32 %37)
  %cmp6.not.i = icmp ugt i32 %phi.bo.i, %37
  br i1 %cmp6.not.i, label %if.end9.i, label %dr_get_bits_per_mask.exit.i.if.else40_crit_edge

dr_get_bits_per_mask.exit.i.if.else40_crit_edge:  ; preds = %dr_get_bits_per_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

if.end9.i:                                        ; preds = %dr_get_bits_per_mask.exit.i
  %shl.i.i.i = shl nuw i32 1, %37
  %add.i.i = add nuw i32 %shl.i.i.i, 1
  %div.i.i = sdiv i32 %add.i.i, 2
  %num_of_collisions.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.0160, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %num_of_collisions.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_of_collisions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %div.i.i)
  %cmp11.not.i = icmp ult i32 %43, %div.i.i
  br i1 %cmp11.not.i, label %if.end9.i.if.else40_crit_edge, label %land.lhs.true.i

if.end9.i.if.else40_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

land.lhs.true.i:                                  ; preds = %if.end9.i
  %44 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrl1.i, align 4
  %sub.i = sub i32 %45, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div.i.i)
  %cmp14.not.i = icmp ult i32 %sub.i, %div.i.i
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.else40_crit_edge, label %if.then26

land.lhs.true.i.if.else40_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

if.then26:                                        ; preds = %land.lhs.true.i
  %46 = ptrtoint ptr %put_htbl to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cur_htbl.addr.0160, ptr %put_htbl, align 4
  %refcount.i119 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.0160, i32 0, i32 2
  %47 = ptrtoint ptr %refcount.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %refcount.i119, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %refcount.i119, align 4
  %49 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rule, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %55 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chunk_size.i, align 4
  %add.i.i121 = add i32 %56, 2
  %max_log_sw_icm_sz.i122 = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 9, i32 3
  %57 = ptrtoint ptr %max_log_sw_icm_sz.i122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_log_sw_icm_sz.i122, align 4
  %59 = call i32 @llvm.umin.i32(i32 %add.i.i121, i32 %58) #10
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 22) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %56)
  %cmp3.i = icmp eq i32 %60, %56
  br i1 %cmp3.i, label %if.then26.do.end32_crit_edge, label %if.end.i

if.then26.do.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end.i:                                         ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #10
  %61 = call ptr @memset(ptr %info.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %formatted_ste.i.i) #10
  %62 = call ptr @memset(ptr %formatted_ste.i.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rehash_table_send_list.i.i) #10
  %63 = ptrtoint ptr %rehash_table_send_list.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %rehash_table_send_list.i.i, ptr %rehash_table_send_list.i.i, align 4
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rehash_table_send_list.i.i, ptr %16, align 4
  %65 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nic_rule, align 4
  %nic_tbl.i.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %nic_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nic_tbl.i.i, align 8
  %nic_dmn4.i.i = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %nic_dmn4.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nic_dmn4.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.dr_rule_rehash.exit.thread137_crit_edge, label %if.end.i.i

if.end.i.dr_rule_rehash.exit.thread137_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_rehash.exit.thread137

if.end.i.i:                                       ; preds = %if.end.i
  %ste_icm_pool.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 6
  %72 = ptrtoint ptr %ste_icm_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ste_icm_pool.i.i, align 8
  %74 = ptrtoint ptr %cur_htbl.addr.0160 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cur_htbl.addr.0160, align 4
  %76 = ptrtoint ptr %byte_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %byte_mask.i.i, align 2
  %call5.i.i = call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %73, i32 noundef %60, i16 noundef zeroext %75, i16 noundef zeroext %77) #10
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.end9.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 1
  %78 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mdev.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %82 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 68
  %86 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 395, i32 noundef %87) #13
  br label %free_ste_info.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %88 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %info.i.i, align 8
  %e_anchor.i.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %66, i32 0, i32 1
  %89 = ptrtoint ptr %e_anchor.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %e_anchor.i.i, align 4
  %chunk.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %chunk.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chunk.i.i, align 4
  %icm_addr.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %icm_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %icm_addr.i.i, align 8
  %95 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %17, align 8
  %ste_ctx.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 11
  %96 = ptrtoint ptr %ste_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ste_ctx.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 9, i32 7
  %98 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %caps.i.i, align 8
  %type11.i.i = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %70, i32 0, i32 2
  %100 = ptrtoint ptr %type11.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type11.i.i, align 8
  call void @mlx5dr_ste_set_formatted_ste(ptr noundef %97, i16 noundef zeroext %99, i32 noundef %101, ptr noundef nonnull %call5.i.i, ptr noundef nonnull %formatted_ste.i.i, ptr noundef nonnull %info.i.i) #10
  %pointing_ste.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.0160, i32 0, i32 8
  %102 = ptrtoint ptr %pointing_ste.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pointing_ste.i.i, align 4
  %pointing_ste12.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call5.i.i, i32 0, i32 8
  %104 = ptrtoint ptr %pointing_ste12.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %pointing_ste12.i.i, align 4
  %next_htbl.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %103, i32 0, i32 4
  %105 = ptrtoint ptr %next_htbl.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call5.i.i, ptr %next_htbl.i.i, align 4
  %call14.i.i = call fastcc i32 @dr_rule_rehash_copy_htbl(ptr noundef %50, ptr noundef %66, ptr noundef %cur_htbl.addr.0160, ptr noundef nonnull %call5.i.i, ptr noundef nonnull %rehash_table_send_list.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.end9.i.i.free_new_htbl.i.i_crit_edge

if.end9.i.i.free_new_htbl.i.i_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_new_htbl.i.i

if.end17.i.i:                                     ; preds = %if.end9.i.i
  %ste_builder.i.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %66, i32 0, i32 2
  %106 = ptrtoint ptr %ste_builder.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ste_builder.i.i, align 8
  %bit_mask.i.i = getelementptr %struct.mlx5dr_ste_build, ptr %107, i32 %sub.i.i, i32 5
  %call20.i.i = call i32 @mlx5dr_send_postsend_htbl(ptr noundef %54, ptr noundef nonnull %call5.i.i, ptr noundef nonnull %formatted_ste.i.i, ptr noundef %bit_mask.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end31.i.i, label %do.end25.i.i

do.end25.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev26.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 1
  %108 = ptrtoint ptr %mdev26.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mdev26.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %112 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i138.i.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i138.i.i to ptr
  %task29.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task29.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task29.i.i, align 8
  %pid30.i.i = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 68
  %116 = ptrtoint ptr %pid30.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pid30.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef 421, i32 noundef %117) #13
  br label %free_new_htbl.i.i

if.end31.i.i:                                     ; preds = %if.end17.i.i
  %118 = ptrtoint ptr %rehash_table_send_list.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rehash_table_send_list.i.i, align 4
  br label %for.cond21.i.i.i

for.cond21.i.i.i:                                 ; preds = %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i.for.cond21.i.i.i_crit_edge, %if.end31.i.i
  %.pn.in.i.i.i = phi ptr [ %119, %if.end31.i.i ], [ %.pn.i.i.i, %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i.for.cond21.i.i.i_crit_edge ]
  %120 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp23.not.i.i.i = icmp eq ptr %.pn.in.i.i.i, %rehash_table_send_list.i.i
  br i1 %cmp23.not.i.i.i, label %if.end43.i.i, label %for.body25.i.i.i

for.body25.i.i.i:                                 ; preds = %for.cond21.i.i.i
  %ste_info.1.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 -4
  %call.i.i.i60.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i.i) #10
  br i1 %call.i.i.i60.i.i.i, label %if.end.i.i.i63.i.i.i, label %for.body25.i.i.i.list_del.exit.i68.i.i.i_crit_edge

for.body25.i.i.i.list_del.exit.i68.i.i.i_crit_edge: ; preds = %for.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i68.i.i.i

if.end.i.i.i63.i.i.i:                             ; preds = %for.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i61.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 4
  %121 = ptrtoint ptr %prev.i.i.i61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i61.i.i.i, align 4
  %123 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %.pn.in.i.i.i, align 4
  %prev1.i.i.i.i62.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i62.i.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit.i68.i.i.i

list_del.exit.i68.i.i.i:                          ; preds = %if.end.i.i.i63.i.i.i, %for.body25.i.i.i.list_del.exit.i68.i.i.i_crit_edge
  %127 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i.i.i, align 4
  %prev.i.i64.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 4
  %128 = ptrtoint ptr %prev.i.i64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i64.i.i.i, align 4
  %size.i65.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 8
  %129 = ptrtoint ptr %size.i65.i.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %size.i65.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %130)
  %cmp.i66.i.i.i = icmp eq i16 %130, 32
  %131 = ptrtoint ptr %ste_info.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ste_info.1.i.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %data.i67.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 76
  %135 = ptrtoint ptr %data.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i67.i.i.i, align 4
  br i1 %cmp.i66.i.i.i, label %if.then.i69.i.i.i, label %if.else.i70.i.i.i

if.then.i69.i.i.i:                                ; preds = %list_del.exit.i68.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = call ptr @memcpy(ptr %134, ptr %136, i32 32)
  br label %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i

if.else.i70.i.i.i:                                ; preds = %list_del.exit.i68.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %138 = call ptr @memcpy(ptr %134, ptr %136, i32 48)
  br label %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i

dr_rule_handle_one_ste_in_update_list.exit74.i.i.i: ; preds = %if.else.i70.i.i.i, %if.then.i69.i.i.i
  %139 = ptrtoint ptr %ste_info.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ste_info.1.i.i.i, align 4
  %141 = ptrtoint ptr %data.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i67.i.i.i, align 4
  %143 = ptrtoint ptr %size.i65.i.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %size.i65.i.i.i, align 4
  %offset.i72.i.i.i = getelementptr i8, ptr %.pn.in.i.i.i, i32 10
  %145 = ptrtoint ptr %offset.i72.i.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %offset.i72.i.i.i, align 2
  %call.i73.i.i.i = call i32 @mlx5dr_send_postsend_ste(ptr noundef %54, ptr noundef %140, ptr noundef %142, i16 noundef zeroext %144, i16 noundef zeroext %146) #10
  call void @kfree(ptr noundef %ste_info.1.i.i.i) #10
  %tobool27.not.i.i.i = icmp eq i32 %call.i73.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i.for.cond21.i.i.i_crit_edge, label %do.end37.i.i

dr_rule_handle_one_ste_in_update_list.exit74.i.i.i.for.cond21.i.i.i_crit_edge: ; preds = %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond21.i.i.i

do.end37.i.i:                                     ; preds = %dr_rule_handle_one_ste_in_update_list.exit74.i.i.i
  %mdev38.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 1
  %147 = ptrtoint ptr %mdev38.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdev38.i.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %151 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i139.i.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i139.i.i to ptr
  %task41.i.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %task41.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task41.i.i, align 8
  %pid42.i.i = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 68
  %155 = ptrtoint ptr %pid42.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pid42.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef 430, i32 noundef %156) #13
  %157 = ptrtoint ptr %rehash_table_send_list.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rehash_table_send_list.i.i, align 4
  %cmp67.not143.i.i = icmp eq ptr %158, %rehash_table_send_list.i.i
  br i1 %cmp67.not143.i.i, label %do.end37.i.i.free_new_htbl.i.i_crit_edge, label %do.end37.i.i.for.body.i.i_crit_edge

do.end37.i.i.for.body.i.i_crit_edge:              ; preds = %do.end37.i.i
  br label %for.body.i.i

do.end37.i.i.free_new_htbl.i.i_crit_edge:         ; preds = %do.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_new_htbl.i.i

if.end43.i.i:                                     ; preds = %for.cond21.i.i.i
  br i1 %cmp.i.i124, label %if.then46.i.i, label %if.else.i.i

if.then46.i.i:                                    ; preds = %if.end43.i.i
  %159 = ptrtoint ptr %pointing_ste.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pointing_ste.i.i, align 4
  %htbl.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %htbl.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %htbl.i.i, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call5.i.i, i32 0, i32 2
  %163 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %refcount.i.i.i, align 4
  %inc.i.i.i = add i32 %164, 1
  store i32 %inc.i.i.i, ptr %refcount.i.i.i, align 4
  %165 = ptrtoint ptr %refcount.i119 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %refcount.i119, align 4
  %dec.i.i.i = add i32 %166, -1
  store i32 %dec.i.i.i, ptr %refcount.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then46.i.i.mlx5dr_htbl_put.exit.i.i_crit_edge

if.then46.i.i.mlx5dr_htbl_put.exit.i.i_crit_edge: ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5dr_htbl_put.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call i32 @mlx5dr_ste_htbl_free(ptr noundef %cur_htbl.addr.0160) #10
  br label %mlx5dr_htbl_put.exit.i.i

mlx5dr_htbl_put.exit.i.i:                         ; preds = %if.then.i.i.i, %if.then46.i.i.mlx5dr_htbl_put.exit.i.i_crit_edge
  %167 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call5.i.i, ptr %66, align 8
  %168 = ptrtoint ptr %ste_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ste_ctx.i.i, align 4
  %ste_arr.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %162, i32 0, i32 4
  %170 = ptrtoint ptr %ste_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ste_arr.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %chunk50.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call5.i.i, i32 0, i32 3
  %174 = ptrtoint ptr %chunk50.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %chunk50.i.i, align 4
  %icm_addr51.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %icm_addr51.i.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %icm_addr51.i.i, align 8
  %num_of_entries.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %175, i32 0, i32 3
  %178 = ptrtoint ptr %num_of_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %num_of_entries.i.i, align 8
  call void @mlx5dr_ste_set_hit_addr(ptr noundef %169, ptr noundef %173, i64 noundef %177, i32 noundef %179) #10
  br label %dr_rule_rehash.exit

if.else.i.i:                                      ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = ptrtoint ptr %ste_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ste_ctx.i.i, align 4
  %182 = ptrtoint ptr %pointing_ste.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pointing_ste.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  call void @mlx5dr_ste_set_hit_addr_by_next_htbl(ptr noundef %181, ptr noundef %185, ptr noundef nonnull %call5.i.i) #10
  br label %dr_rule_rehash.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %do.end37.i.i.for.body.i.i_crit_edge
  %.pn.in144.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %158, %do.end37.i.i.for.body.i.i_crit_edge ]
  %del_ste_info.0.i.i = getelementptr i8, ptr %.pn.in144.i.i, i32 -4
  %186 = ptrtoint ptr %.pn.in144.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %.pn.i.i = load ptr, ptr %.pn.in144.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in144.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in144.i.i, i32 0, i32 1
  %187 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i.i.i.i, align 4
  %189 = ptrtoint ptr %.pn.in144.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %.pn.in144.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev1.i.i.i.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %190, ptr %188, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %193 = ptrtoint ptr %.pn.in144.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in144.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in144.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %del_ste_info.0.i.i) #10
  %cmp67.not.i.i = icmp eq ptr %.pn.i.i, %rehash_table_send_list.i.i
  br i1 %cmp67.not.i.i, label %list_del.exit.i.i.free_new_htbl.i.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.free_new_htbl.i.i_crit_edge:    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_new_htbl.i.i

free_new_htbl.i.i:                                ; preds = %list_del.exit.i.i.free_new_htbl.i.i_crit_edge, %do.end37.i.i.free_new_htbl.i.i_crit_edge, %do.end25.i.i, %if.end9.i.i.free_new_htbl.i.i_crit_edge
  %call75.i.i = call i32 @mlx5dr_ste_htbl_free(ptr noundef nonnull %call5.i.i) #10
  br label %free_ste_info.i.i

free_ste_info.i.i:                                ; preds = %free_new_htbl.i.i, %do.end.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  %mdev79.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 1
  %195 = ptrtoint ptr %mdev79.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mdev79.i.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %198, ptr noundef nonnull @.str.52) #13
  br label %dr_rule_rehash.exit.thread137

dr_rule_rehash.exit.thread137:                    ; preds = %free_ste_info.i.i, %if.end.i.dr_rule_rehash.exit.thread137_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rehash_table_send_list.i.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %formatted_ste.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #10
  br label %do.end32

dr_rule_rehash.exit:                              ; preds = %if.else.i.i, %mlx5dr_htbl_put.exit.i.i
  %ste_to_update.0.in.i.i = phi ptr [ %ste_arr.i.i, %mlx5dr_htbl_put.exit.i.i ], [ %pointing_ste.i.i, %if.else.i.i ]
  %199 = ptrtoint ptr %ste_to_update.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %ste_to_update.0.i.i = load ptr, ptr %ste_to_update.0.in.i.i, align 4
  %200 = ptrtoint ptr %ste_to_update.0.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ste_to_update.0.i.i, align 4
  call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %ste_to_update.0.i.i, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef %201, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %send_ste_list, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rehash_table_send_list.i.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %formatted_ste.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #10
  br label %if.end39

do.end32:                                         ; preds = %dr_rule_rehash.exit.thread137, %if.then26.do.end32_crit_edge
  %202 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mdev, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 8
  %206 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i126 = and i32 %206, -16384
  %207 = inttoptr i32 %and.i126 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %209, i32 0, i32 68
  %210 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %pid37, align 8
  %212 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %chunk_size.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 861, i32 noundef %211, i32 noundef %213) #13
  %214 = ptrtoint ptr %refcount.i119 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %refcount.i119, align 4
  %dec.i = add i32 %215, -1
  store i32 %dec.i, ptr %refcount.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i128 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i128, label %if.then.i, label %do.end32.if.end39_crit_edge

do.end32.if.end39_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then.i:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @mlx5dr_ste_htbl_free(ptr noundef %cur_htbl.addr.0160) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then.i, %do.end32.if.end39_crit_edge, %dr_rule_rehash.exit
  %cur_htbl.addr.1 = phi ptr [ %call5.i.i, %dr_rule_rehash.exit ], [ %cur_htbl.addr.0160, %do.end32.if.end39_crit_edge ], [ %cur_htbl.addr.0160, %if.then.i ]
  %call = call i32 @mlx5dr_ste_calc_hash_index(ptr noundef %hw_ste, ptr noundef %cur_htbl.addr.1) #10
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.1, i32 0, i32 3
  %216 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %chunk, align 4
  %miss_list5 = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %217, i32 0, i32 10
  %218 = ptrtoint ptr %miss_list5 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %miss_list5, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %219, i32 %call
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl.addr.1, i32 0, i32 4
  %220 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ste_arr, align 4
  %refcount.i = getelementptr %struct.mlx5dr_ste, ptr %221, i32 %call, i32 1
  %222 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %refcount.i, align 4
  %tobool.not.i = icmp eq i32 %223, 0
  br i1 %tobool.not.i, label %if.end39.if.then_crit_edge, label %if.end39.if.else_crit_edge

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end39.if.then_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.else40:                                        ; preds = %land.lhs.true.i.if.else40_crit_edge, %if.end9.i.if.else40_crit_edge, %dr_get_bits_per_mask.exit.i.if.else40_crit_edge, %mlx5dr_ste_htbl_may_grow.exit.i.if.else40_crit_edge, %land.lhs.true.if.else40_crit_edge, %if.end23.if.else40_crit_edge
  %arrayidx6.le = getelementptr %struct.mlx5dr_ste, ptr %18, i32 %call161
  %call41 = call fastcc ptr @dr_rule_handle_collision(ptr noundef %1, ptr noundef %7, ptr noundef %arrayidx6.le, ptr noundef %hw_ste, ptr noundef %arrayidx162, ptr noundef %send_ste_list)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.body44, label %if.else40.if.end67_crit_edge

if.else40.if.end67_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.body44:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_handle_ste_branch, %if.then56)) #10
          to label %cleanup [label %if.then56], !srcloc !139

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mdev, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 8
  %228 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i130 = and i32 %228, -16384
  %229 = inttoptr i32 %and.i130 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %task60, align 8
  %pid61 = getelementptr inbounds %struct.task_struct, ptr %231, i32 0, i32 68
  %232 = ptrtoint ptr %pid61 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %pid61, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug555, ptr noundef %227, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37, i32 noundef 877, i32 noundef %233, i32 noundef %call161) #10
  br label %cleanup

if.end67:                                         ; preds = %if.else40.if.end67_crit_edge, %if.then.if.end67_crit_edge
  %ste.0 = phi ptr [ %arrayidx6.le149, %if.then.if.end67_crit_edge ], [ %call41, %if.else40.if.end67_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then56, %do.body44, %if.then12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %ste.0, %if.end67 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then56 ], [ null, %do.body44 ], [ %ste.0.i.le, %if.then12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_rule_handle_action_stes(ptr nocapture noundef readonly %rule, ptr noundef %nic_rule, ptr noundef %send_ste_list, ptr noundef %last_ste, ptr noundef %hw_ste_arr, i32 noundef %new_hw_ste_arr_sz) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_rule, align 4
  %num_of_builders2 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_of_builders2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_of_builders2, align 4
  %4 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %new_hw_ste_arr_sz)
  %cmp69 = icmp ult i32 %conv, %new_hw_ste_arr_sz
  br i1 %cmp69, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %e_anchor.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %1, i32 0, i32 1
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 11
  %last_rule_ste.i = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %nic_rule, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %last_ste.addr.070 = phi ptr [ %last_ste, %for.body.lr.ph ], [ %retval.0.i, %if.end16.for.body_crit_edge ]
  %mul = shl i32 %i.071, 6
  %add.ptr = getelementptr i8, ptr %hw_ste_arr, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.071)
  %cmp6 = icmp eq i32 %i.071, 0
  %mul8 = add i32 %mul, -64
  %add.ptr9 = getelementptr i8, ptr %hw_ste_arr, i32 %mul8
  %cond = select i1 %cmp6, ptr %add.ptr, ptr %add.ptr9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ste_ctx2.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %ste_ctx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ste_ctx2.i, align 4
  %ste_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %ste_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ste_icm_pool.i, align 8
  %call.i = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %17, i32 noundef 0, i16 noundef zeroext 15, i16 noundef zeroext 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_handle_action_stes, %dr_rule_create_collision_htbl.exit.thread)) #10
          to label %dr_rule_create_collision_htbl.exit [label %dr_rule_create_collision_htbl.exit.thread], !srcloc !139

dr_rule_create_collision_htbl.exit.thread:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, ptr noundef %21, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef 51, i32 noundef %27) #10
  br label %cleanup

if.end9.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ste_arr.i, align 4
  %30 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %e_anchor.i, align 4
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chunk.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %icm_addr.i, align 8
  tail call void @mlx5dr_ste_set_miss_addr(ptr noundef %15, ptr noundef %add.ptr, i64 noundef %35) #10
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  br label %dr_rule_create_collision_htbl.exit

dr_rule_create_collision_htbl.exit:               ; preds = %if.end9.i, %do.body.i
  %retval.0.i = phi ptr [ %29, %if.end9.i ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %dr_rule_create_collision_htbl.exit.cleanup_crit_edge, label %if.end

dr_rule_create_collision_htbl.exit.cleanup_crit_edge: ; preds = %dr_rule_create_collision_htbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dr_rule_create_collision_htbl.exit
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i, i32 0, i32 3
  %40 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %htbl, align 4
  %pointing_ste = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %pointing_ste to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %last_ste.addr.070, ptr %pointing_ste, align 4
  %43 = load ptr, ptr %htbl, align 4
  %next_htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %last_ste.addr.070, i32 0, i32 4
  %44 = ptrtoint ptr %next_htbl to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %next_htbl, align 4
  %miss_list_node = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i, i32 0, i32 2
  %call11 = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef nonnull %retval.0.i) #10
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call11, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %miss_list_node, ptr noundef %46, ptr noundef %call11) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %miss_list_node, ptr %prev.i, align 4
  %48 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call11, ptr %miss_list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %miss_list_node, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 84) #14
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %err_exit, label %if.end16

if.end16:                                         ; preds = %list_add_tail.exit
  %52 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ste_ctx, align 4
  %54 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %htbl, align 4
  tail call void @mlx5dr_ste_set_hit_addr_by_next_htbl(ptr noundef %53, ptr noundef %cond, ptr noundef %55) #10
  %rule_rx_tx.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i, i32 0, i32 5
  %56 = ptrtoint ptr %rule_rx_tx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %nic_rule, ptr %rule_rx_tx.i, align 4
  %57 = ptrtoint ptr %last_rule_ste.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %retval.0.i, ptr %last_rule_ste.i, align 4
  tail call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef nonnull %retval.0.i, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, ptr noundef %send_ste_list, i1 noundef zeroext false) #10
  %inc = add i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %new_hw_ste_arr_sz
  br i1 %exitcond.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  %last_ste.addr.0.lcssa = phi ptr [ %last_ste, %entry.for.end_crit_edge ], [ %retval.0.i, %if.end16.for.end_crit_edge ]
  %next_htbl20 = getelementptr inbounds %struct.mlx5dr_ste, ptr %last_ste.addr.0.lcssa, i32 0, i32 4
  %58 = ptrtoint ptr %next_htbl20 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %next_htbl20, align 4
  br label %cleanup

err_exit:                                         ; preds = %list_add_tail.exit
  %refcount.i.le = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i, i32 0, i32 1
  %59 = ptrtoint ptr %refcount.i.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %refcount.i.le, align 4
  %dec.i = add i32 %60, -1
  store i32 %dec.i, ptr %refcount.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i60 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i60, label %if.then.i, label %err_exit.cleanup_crit_edge

err_exit.cleanup_crit_edge:                       ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5dr_ste_free(ptr noundef nonnull %retval.0.i, ptr noundef %5, ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_exit.cleanup_crit_edge, %for.end, %dr_rule_create_collision_htbl.exit.cleanup_crit_edge, %dr_rule_create_collision_htbl.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %dr_rule_create_collision_htbl.exit.thread ], [ -12, %err_exit.cleanup_crit_edge ], [ -12, %if.then.i ], [ -12, %dr_rule_create_collision_htbl.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_rule_send_update_list(ptr noundef readonly %send_ste_list, ptr noundef %dmn, i1 noundef zeroext %is_reverse) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_reverse, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %send_ste_list, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  br label %for.cond

for.cond:                                         ; preds = %dr_rule_handle_one_ste_in_update_list.exit.for.cond_crit_edge, %if.then
  %.pn56 = phi ptr [ %1, %if.then ], [ %.pn55, %dr_rule_handle_one_ste_in_update_list.exit.for.cond_crit_edge ]
  %.pn55.in = getelementptr %struct.list_head, ptr %.pn56, i32 0, i32 1
  %2 = ptrtoint ptr %.pn55.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn55 = load ptr, ptr %.pn55.in, align 4
  %cmp.not = icmp eq ptr %.pn56, %send_ste_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %ste_info.0 = getelementptr i8, ptr %.pn56, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn56) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %.pn55.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %.pn55.in, align 4
  %5 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn56, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn56, align 4
  %10 = ptrtoint ptr %.pn55.in to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %.pn55.in, align 4
  %size.i = getelementptr i8, ptr %.pn56, i32 8
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %12)
  %cmp.i = icmp eq i16 %12, 32
  %13 = ptrtoint ptr %ste_info.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ste_info.0, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %data.i = getelementptr i8, ptr %.pn56, i32 76
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memcpy(ptr %16, ptr %18, i32 32)
  br label %dr_rule_handle_one_ste_in_update_list.exit

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call ptr @memcpy(ptr %16, ptr %18, i32 48)
  br label %dr_rule_handle_one_ste_in_update_list.exit

dr_rule_handle_one_ste_in_update_list.exit:       ; preds = %if.else.i, %if.then.i
  %21 = ptrtoint ptr %ste_info.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ste_info.0, align 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size.i, align 4
  %offset.i = getelementptr i8, ptr %.pn56, i32 10
  %27 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset.i, align 2
  %call.i = tail call i32 @mlx5dr_send_postsend_ste(ptr noundef %dmn, ptr noundef %22, ptr noundef %24, i16 noundef zeroext %26, i16 noundef zeroext %28) #10
  tail call void @kfree(ptr noundef %ste_info.0) #10
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %dr_rule_handle_one_ste_in_update_list.exit.for.cond_crit_edge, label %dr_rule_handle_one_ste_in_update_list.exit.cleanup_crit_edge

dr_rule_handle_one_ste_in_update_list.exit.cleanup_crit_edge: ; preds = %dr_rule_handle_one_ste_in_update_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dr_rule_handle_one_ste_in_update_list.exit.for.cond_crit_edge: ; preds = %dr_rule_handle_one_ste_in_update_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.else:                                          ; preds = %entry
  %29 = ptrtoint ptr %send_ste_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %send_ste_list, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %dr_rule_handle_one_ste_in_update_list.exit74.for.cond21_crit_edge, %if.else
  %.pn.in = phi ptr [ %30, %if.else ], [ %.pn, %dr_rule_handle_one_ste_in_update_list.exit74.for.cond21_crit_edge ]
  %31 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp23.not = icmp eq ptr %.pn.in, %send_ste_list
  br i1 %cmp23.not, label %for.cond21.cleanup_crit_edge, label %for.body25

for.cond21.cleanup_crit_edge:                     ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body25:                                       ; preds = %for.cond21
  %ste_info.1 = getelementptr i8, ptr %.pn.in, i32 -4
  %call.i.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i.i60, label %if.end.i.i.i63, label %for.body25.list_del.exit.i68_crit_edge

for.body25.list_del.exit.i68_crit_edge:           ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i68

if.end.i.i.i63:                                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i61 = getelementptr i8, ptr %.pn.in, i32 4
  %32 = ptrtoint ptr %prev.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i61, align 4
  %34 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i62, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i68

list_del.exit.i68:                                ; preds = %if.end.i.i.i63, %for.body25.list_del.exit.i68_crit_edge
  %38 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i.i64 = getelementptr i8, ptr %.pn.in, i32 4
  %39 = ptrtoint ptr %prev.i.i64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i64, align 4
  %size.i65 = getelementptr i8, ptr %.pn.in, i32 8
  %40 = ptrtoint ptr %size.i65 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %41)
  %cmp.i66 = icmp eq i16 %41, 32
  %42 = ptrtoint ptr %ste_info.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ste_info.1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %data.i67 = getelementptr i8, ptr %.pn.in, i32 76
  %46 = ptrtoint ptr %data.i67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i67, align 4
  br i1 %cmp.i66, label %if.then.i69, label %if.else.i70

if.then.i69:                                      ; preds = %list_del.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  %48 = call ptr @memcpy(ptr %45, ptr %47, i32 32)
  br label %dr_rule_handle_one_ste_in_update_list.exit74

if.else.i70:                                      ; preds = %list_del.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  %49 = call ptr @memcpy(ptr %45, ptr %47, i32 48)
  br label %dr_rule_handle_one_ste_in_update_list.exit74

dr_rule_handle_one_ste_in_update_list.exit74:     ; preds = %if.else.i70, %if.then.i69
  %50 = ptrtoint ptr %ste_info.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ste_info.1, align 4
  %52 = ptrtoint ptr %data.i67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i67, align 4
  %54 = ptrtoint ptr %size.i65 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %size.i65, align 4
  %offset.i72 = getelementptr i8, ptr %.pn.in, i32 10
  %56 = ptrtoint ptr %offset.i72 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %offset.i72, align 2
  %call.i73 = tail call i32 @mlx5dr_send_postsend_ste(ptr noundef %dmn, ptr noundef %51, ptr noundef %53, i16 noundef zeroext %55, i16 noundef zeroext %57) #10
  tail call void @kfree(ptr noundef %ste_info.1) #10
  %tobool27.not = icmp eq i32 %call.i73, 0
  br i1 %tobool27.not, label %dr_rule_handle_one_ste_in_update_list.exit74.for.cond21_crit_edge, label %dr_rule_handle_one_ste_in_update_list.exit74.cleanup_crit_edge

dr_rule_handle_one_ste_in_update_list.exit74.cleanup_crit_edge: ; preds = %dr_rule_handle_one_ste_in_update_list.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dr_rule_handle_one_ste_in_update_list.exit74.for.cond21_crit_edge: ; preds = %dr_rule_handle_one_ste_in_update_list.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond21

cleanup:                                          ; preds = %dr_rule_handle_one_ste_in_update_list.exit74.cleanup_crit_edge, %for.cond21.cleanup_crit_edge, %dr_rule_handle_one_ste_in_update_list.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.cleanup_crit_edge ], [ %call.i, %dr_rule_handle_one_ste_in_update_list.exit.cleanup_crit_edge ], [ 0, %for.cond21.cleanup_crit_edge ], [ %call.i73, %dr_rule_handle_one_ste_in_update_list.exit74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_rule_clean_rule_members(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %nic_rule) unnamed_addr #1 align 64 {
entry:
  %ste_arr = alloca [23 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %ste_arr) #10
  %0 = call ptr @memset(ptr %ste_arr, i32 255, i32 92)
  %last_rule_ste = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %nic_rule, i32 0, i32 1
  %1 = ptrtoint ptr %last_rule_ste to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %last_rule_ste, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %i.0 = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %curr_ste.addr.08.i = phi ptr [ %11, %while.body.i.while.body.i_crit_edge ], [ %2, %entry.while.body.i_crit_edge ]
  %ste_chain_location.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %curr_ste.addr.08.i, i32 0, i32 6
  %3 = ptrtoint ptr %ste_chain_location.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ste_chain_location.i, align 4
  %cmp.i = icmp eq i8 %4, 1
  %arrayidx.i = getelementptr ptr, ptr %ste_arr, i32 %i.0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %curr_ste.addr.08.i, ptr %arrayidx.i, align 4
  %add.i = add i32 %i.0, 1
  %call.i.i = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %curr_ste.addr.08.i) #10
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 4
  %htbl.i.i = getelementptr i8, ptr %7, i32 8
  %8 = ptrtoint ptr %htbl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %htbl.i.i, align 4
  %pointing_ste.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %pointing_ste.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pointing_ste.i.i, align 4
  br i1 %cmp.i, label %while.cond.preheader, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.preheader:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool1.not12 = icmp eq i32 %add.i, 0
  br i1 %tobool1.not12, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %mlx5dr_ste_put.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec13 = phi i32 [ %dec, %mlx5dr_ste_put.exit.while.body_crit_edge ], [ %i.0, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx = getelementptr [23 x ptr], ptr %ste_arr, i32 0, i32 %dec13
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rule, align 4
  %16 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nic_rule, align 4
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i5 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i5, label %if.then.i, label %while.body.mlx5dr_ste_put.exit_crit_edge

while.body.mlx5dr_ste_put.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5dr_ste_put.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5dr_ste_free(ptr noundef %13, ptr noundef %15, ptr noundef %17) #10
  br label %mlx5dr_ste_put.exit

mlx5dr_ste_put.exit:                              ; preds = %if.then.i, %while.body.mlx5dr_ste_put.exit_crit_edge
  %dec = add i32 %dec13, -1
  %tobool1.not = icmp eq i32 %dec13, 0
  br i1 %tobool1.not, label %mlx5dr_ste_put.exit.cleanup_crit_edge, label %mlx5dr_ste_put.exit.while.body_crit_edge

mlx5dr_ste_put.exit.while.body_crit_edge:         ; preds = %mlx5dr_ste_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

mlx5dr_ste_put.exit.cleanup_crit_edge:            ; preds = %mlx5dr_ste_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %mlx5dr_ste_put.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %ste_arr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_matcher_remove_from_tbl_nic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_calc_hash_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_rule_handle_empty_entry(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %cur_htbl, ptr noundef %ste, i8 noundef zeroext %ste_location, ptr noundef %hw_ste, ptr noundef %miss_list, ptr noundef %send_list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl, i32 0, i32 2
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  %miss_list_node = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.list_head, ptr %miss_list, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %miss_list_node, ptr noundef %7, ptr noundef %miss_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %miss_list_node, ptr %prev.i, align 4
  %9 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %miss_list, ptr %miss_list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %miss_list_node, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ste_ctx, align 4
  %e_anchor = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %14 = ptrtoint ptr %e_anchor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e_anchor, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %icm_addr, align 8
  tail call void @mlx5dr_ste_set_miss_addr(ptr noundef %13, ptr noundef %hw_ste, i64 noundef %19) #10
  %ste_chain_location = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 6
  %20 = ptrtoint ptr %ste_chain_location to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %ste_location, ptr %ste_chain_location, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %list_add_tail.exit.clean_ste_setting_crit_edge, label %if.end

list_add_tail.exit.clean_ste_setting_crit_edge:   ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_ste_setting

if.end:                                           ; preds = %list_add_tail.exit
  %call2 = tail call i32 @mlx5dr_ste_create_next_htbl(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %ste, ptr noundef %hw_ste, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_handle_empty_entry.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_handle_empty_entry, %if.then9)) #10
          to label %clean_ste_info [label %if.then9], !srcloc !139

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_handle_empty_entry.__UNIQUE_ID_ddebug553, ptr noundef %25, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef 779, i32 noundef %31) #10
  br label %clean_ste_info

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl, i32 0, i32 9
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %ctrl, align 4
  tail call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %ste, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef %hw_ste, ptr noundef nonnull %call7.i.i, ptr noundef %send_list, i1 noundef zeroext false) #10
  br label %cleanup

clean_ste_info:                                   ; preds = %if.then9, %do.body
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %clean_ste_setting

clean_ste_setting:                                ; preds = %clean_ste_info, %list_add_tail.exit.clean_ste_setting_crit_edge
  %call.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %miss_list_node) #10
  br i1 %call.i.i29, label %if.end.i.i30, label %clean_ste_setting.list_del_init.exit_crit_edge

clean_ste_setting.list_del_init.exit_crit_edge:   ; preds = %clean_ste_setting
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i30:                                     ; preds = %clean_ste_setting
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %miss_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i30, %clean_ste_setting.list_del_init.exit_crit_edge
  %40 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %miss_list_node, ptr %miss_list_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %miss_list_node, ptr %prev.i3.i, align 4
  %42 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %refcount.i, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_del_init.exit.cleanup_crit_edge

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %cur_htbl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %list_del_init.exit.cleanup_crit_edge, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %list_del_init.exit.cleanup_crit_edge ], [ -12, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5dr_ste_is_last_in_rule(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_rule_handle_collision(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %ste, ptr noundef %hw_ste, ptr noundef %miss_list, ptr noundef %send_list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @dr_rule_create_collision_entry(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %hw_ste, ptr noundef %ste)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.free_send_info_crit_edge, label %if.end6

if.end.free_send_info_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_send_info

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @dr_rule_append_to_miss_list(ptr noundef %5, ptr noundef nonnull %call3, ptr noundef %miss_list, ptr noundef %send_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_handle_collision.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_handle_collision, %if.then14)) #10
          to label %err_exit [label %if.then14], !srcloc !139

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !123) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_handle_collision.__UNIQUE_ID_ddebug552, ptr noundef %10, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef 525, i32 noundef %16) #10
  br label %err_exit

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef nonnull %call3, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef %hw_ste, ptr noundef nonnull %call7.i.i, ptr noundef %send_list, i1 noundef zeroext false) #10
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 3
  %17 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %htbl, align 4
  %num_of_collisions = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %18, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %num_of_collisions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_of_collisions, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %num_of_collisions, align 4
  %21 = load ptr, ptr %htbl, align 4
  %ctrl19 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %ctrl19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrl19, align 4
  %inc20 = add i32 %23, 1
  store i32 %inc20, ptr %ctrl19, align 4
  br label %cleanup

err_exit:                                         ; preds = %if.then14, %do.body
  tail call void @mlx5dr_ste_free(ptr noundef nonnull %call3, ptr noundef %matcher, ptr noundef %nic_matcher) #10
  br label %free_send_info

free_send_info:                                   ; preds = %err_exit, %if.end.free_send_info_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_send_info, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_send_info ], [ %call3, %if.end17 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_miss_addr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_create_next_htbl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5dr_ste_equal_tag(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_ste_htbl_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_formatted_ste(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_rule_rehash_copy_htbl(ptr noundef %matcher, ptr noundef %nic_matcher, ptr nocapture noundef readonly %cur_htbl, ptr noundef %new_htbl, ptr noundef %update_list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_size = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl, i32 0, i32 7
  %0 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk_size, align 4
  %shl.i = shl nuw i32 1, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl.i)
  %cmp = icmp slt i32 %shl.i, 1
  br i1 %cmp, label %do.body, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %cur_htbl, i32 0, i32 4
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_rehash_copy_htbl.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_rehash_copy_htbl, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !139

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %matcher, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_rehash_copy_htbl.__UNIQUE_ID_ddebug549, ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef 340, i32 noundef %15) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ste_arr, align 4
  %refcount.i = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.031, i32 1
  %18 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.mlx5dr_ste, ptr %17, i32 %i.031
  %call11 = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %arrayidx) #10
  %20 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %call11, align 4
  %cmp.i.not.i = icmp eq ptr %21, %call11
  br i1 %cmp.i.not.i, label %if.end10.for.inc_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i:                                       ; preds = %mlx5dr_htbl_put.exit.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %.pn.in53.i = phi ptr [ %.pn55.i, %mlx5dr_htbl_put.exit.i.for.body.i_crit_edge ], [ %21, %if.end10.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn55.i = load ptr, ptr %.pn.in53.i, align 4
  %cur_ste.0.i = getelementptr i8, ptr %.pn.in53.i, i32 -8
  %call6.i = tail call fastcc ptr @dr_rule_rehash_copy_ste(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %cur_ste.0.i, ptr noundef %new_htbl, ptr noundef %update_list) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %dr_rule_rehash_copy_miss_list.exit, label %if.end9.i

if.end9.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.list_del.exit.i_crit_edge

if.end9.i.list_del.exit.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in53.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end9.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in53.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %htbl.i = getelementptr i8, ptr %.pn.in53.i, i32 8
  %31 = ptrtoint ptr %htbl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %htbl.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %refcount.i.i, align 4
  %dec.i.i = add i32 %34, -1
  store i32 %dec.i.i, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_del.exit.i.mlx5dr_htbl_put.exit.i_crit_edge

list_del.exit.i.mlx5dr_htbl_put.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5dr_htbl_put.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %32) #10
  br label %mlx5dr_htbl_put.exit.i

mlx5dr_htbl_put.exit.i:                           ; preds = %if.then.i.i, %list_del.exit.i.mlx5dr_htbl_put.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn55.i, %call11
  br i1 %cmp.not.i, label %mlx5dr_htbl_put.exit.i.for.inc_crit_edge, label %mlx5dr_htbl_put.exit.i.for.body.i_crit_edge

mlx5dr_htbl_put.exit.i.for.body.i_crit_edge:      ; preds = %mlx5dr_htbl_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlx5dr_htbl_put.exit.i.for.inc_crit_edge:         ; preds = %mlx5dr_htbl_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

dr_rule_rehash_copy_miss_list.exit:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %matcher, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 321, i32 noundef %48) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 322, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

for.inc:                                          ; preds = %mlx5dr_htbl_put.exit.i.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %shl.i
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dr_rule_rehash_copy_miss_list.exit, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %dr_rule_rehash_copy_miss_list.exit ], [ -22, %do.body ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_postsend_htbl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_hit_addr(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_hit_addr_by_next_htbl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_htbl_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_rule_rehash_copy_ste(ptr noundef %matcher, ptr noundef %nic_matcher, ptr nocapture noundef readonly %cur_ste, ptr noundef %new_htbl, ptr noundef %update_list) unnamed_addr #1 align 64 {
entry:
  %hw_ste = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw_ste) #10
  %4 = call ptr @memset(ptr %hw_ste, i32 0, i32 64)
  %ste_chain_location = getelementptr inbounds %struct.mlx5dr_ste, ptr %cur_ste, i32 0, i32 6
  %5 = ptrtoint ptr %ste_chain_location to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ste_chain_location, align 4
  %sub = add i8 %6, -1
  %ste_builder = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 2
  %7 = ptrtoint ptr %ste_builder to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ste_builder, align 8
  %idxprom = zext i8 %sub to i32
  %bit_mask = getelementptr %struct.mlx5dr_ste_build, ptr %8, i32 %idxprom, i32 5
  call void @mlx5dr_ste_set_bit_mask(ptr noundef nonnull %hw_ste, ptr noundef %bit_mask) #10
  %9 = ptrtoint ptr %cur_ste to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_ste, align 4
  %11 = call ptr @memcpy(ptr %hw_ste, ptr %10, i32 48)
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ste_ctx, align 4
  %e_anchor = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %14 = ptrtoint ptr %e_anchor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e_anchor, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %icm_addr, align 8
  call void @mlx5dr_ste_set_miss_addr(ptr noundef %13, ptr noundef nonnull %hw_ste, i64 noundef %19) #10
  %call = call i32 @mlx5dr_ste_calc_hash_index(ptr noundef nonnull %hw_ste, ptr noundef %new_htbl) #10
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %new_htbl, i32 0, i32 4
  %20 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ste_arr, align 4
  %arrayidx8 = getelementptr %struct.mlx5dr_ste, ptr %21, i32 %call
  %refcount.i = getelementptr %struct.mlx5dr_ste, ptr %21, i32 %call, i32 1
  %22 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %refcount.i66 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %new_htbl, i32 0, i32 2
  %24 = ptrtoint ptr %refcount.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %refcount.i66, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %refcount.i66, align 4
  %miss_list_node = getelementptr %struct.mlx5dr_ste, ptr %21, i32 %call, i32 2
  %call10 = call ptr @mlx5dr_ste_get_miss_list(ptr noundef %arrayidx8) #10
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call10, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %miss_list_node, ptr noundef %27, ptr noundef %call10) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %miss_list_node, ptr %prev.i, align 4
  %29 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call10, ptr %miss_list_node, align 4
  %prev3.i.i = getelementptr %struct.mlx5dr_ste, ptr %21, i32 %call, i32 2, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %miss_list_node, ptr %27, align 4
  br label %if.end21

if.else:                                          ; preds = %entry
  %call12 = call fastcc ptr @dr_rule_rehash_handle_collision(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %update_list, ptr noundef %arrayidx8, ptr noundef nonnull %hw_ste)
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %do.body, label %if.end20

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_rehash_copy_ste.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_rehash_copy_ste, %if.then18)) #10
          to label %cleanup [label %if.then18], !srcloc !139

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_rehash_copy_ste.__UNIQUE_ID_ddebug548, ptr noundef %35, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef 265, i32 noundef %41, i32 noundef %call) #10
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %num_of_collisions = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %new_htbl, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %num_of_collisions to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_of_collisions, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %num_of_collisions, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end.i.i, %if.then.if.end21_crit_edge
  %new_ste.0 = phi ptr [ %call12, %if.end20 ], [ %arrayidx8, %if.then.if.end21_crit_edge ], [ %arrayidx8, %if.end.i.i ]
  %44 = ptrtoint ptr %new_ste.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %new_ste.0, align 4
  %46 = call ptr @memcpy(ptr %45, ptr %hw_ste, i32 48)
  %ctrl24 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %new_htbl, i32 0, i32 9
  %47 = ptrtoint ptr %ctrl24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrl24, align 4
  %inc25 = add i32 %48, 1
  store i32 %inc25, ptr %ctrl24, align 4
  br i1 %tobool.not.i, label %if.end21.if.end33_crit_edge, label %if.then27

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then27:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 84) #14
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %err_exit, label %if.end31

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %new_ste.0, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull %hw_ste, ptr noundef nonnull %call7.i.i, ptr noundef %update_list, i1 noundef zeroext true) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end21.if.end33_crit_edge
  %next_htbl.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %cur_ste, i32 0, i32 4
  %50 = ptrtoint ptr %next_htbl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next_htbl.i, align 4
  %next_htbl1.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_ste.0, i32 0, i32 4
  %52 = ptrtoint ptr %next_htbl1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %next_htbl1.i, align 4
  %53 = ptrtoint ptr %ste_chain_location to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ste_chain_location, align 4
  %ste_chain_location2.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_ste.0, i32 0, i32 6
  %55 = ptrtoint ptr %ste_chain_location2.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ste_chain_location2.i, align 4
  %tobool.not.i68 = icmp eq ptr %51, null
  br i1 %tobool.not.i68, label %if.end.i.thread, label %if.end.i

if.end.i.thread:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %refcount.i6972 = getelementptr inbounds %struct.mlx5dr_ste, ptr %cur_ste, i32 0, i32 1
  %56 = ptrtoint ptr %refcount.i6972 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %refcount.i6972, align 4
  %refcount5.i73 = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_ste.0, i32 0, i32 1
  %58 = ptrtoint ptr %refcount5.i73 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %refcount5.i73, align 4
  br label %if.end.i.i70

if.end.i:                                         ; preds = %if.end33
  %pointing_ste.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %51, i32 0, i32 8
  %59 = ptrtoint ptr %pointing_ste.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %new_ste.0, ptr %pointing_ste.i, align 4
  %60 = ptrtoint ptr %next_htbl1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load ptr, ptr %next_htbl1.i, align 4
  %refcount.i69 = getelementptr inbounds %struct.mlx5dr_ste, ptr %cur_ste, i32 0, i32 1
  %61 = ptrtoint ptr %refcount.i69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %refcount.i69, align 4
  %refcount5.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_ste.0, i32 0, i32 1
  %63 = ptrtoint ptr %refcount5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %refcount5.i, align 4
  %tobool.not.i.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i70_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.if.end.i.i70_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i70

if.end.i.i70:                                     ; preds = %if.end.i.if.end.i.i70_crit_edge, %if.end.i.thread
  %rule_rx_tx.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %cur_ste, i32 0, i32 5
  %64 = ptrtoint ptr %rule_rx_tx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rule_rx_tx.i, align 4
  %rule_rx_tx.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_ste.0, i32 0, i32 5
  %66 = ptrtoint ptr %rule_rx_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %rule_rx_tx.i.i, align 4
  %last_rule_ste.i.i = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %last_rule_ste.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %new_ste.0, ptr %last_rule_ste.i.i, align 4
  br label %cleanup

err_exit:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5dr_ste_free(ptr noundef %new_ste.0, ptr noundef %matcher, ptr noundef %nic_matcher) #10
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end.i.i70, %if.end.i.cleanup_crit_edge, %if.then18, %do.body
  %retval.0 = phi ptr [ null, %err_exit ], [ null, %if.then18 ], [ null, %do.body ], [ %new_ste.0, %if.end.i.cleanup_crit_edge ], [ %new_ste.0, %if.end.i.i70 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_ste) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_bit_mask(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_rule_rehash_handle_collision(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %update_list, ptr noundef %col_ste, ptr noundef %hw_ste) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ste_ctx2.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ste_ctx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ste_ctx2.i, align 4
  %ste_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ste_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ste_icm_pool.i, align 8
  %call.i = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %7, i32 noundef 0, i16 noundef zeroext 15, i16 noundef zeroext 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_rehash_handle_collision, %dr_rule_create_collision_htbl.exit.thread)) #10
          to label %dr_rule_create_collision_htbl.exit [label %dr_rule_create_collision_htbl.exit.thread], !srcloc !139

dr_rule_create_collision_htbl.exit.thread:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef 51, i32 noundef %17) #10
  br label %cleanup

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ste_arr.i, align 4
  %e_anchor.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %20 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %e_anchor.i, align 4
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chunk.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %icm_addr.i, align 8
  tail call void @mlx5dr_ste_set_miss_addr(ptr noundef %5, ptr noundef %hw_ste, i64 noundef %25) #10
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  br label %dr_rule_create_collision_htbl.exit

dr_rule_create_collision_htbl.exit:               ; preds = %if.end9.i, %do.body.i
  %retval.0.i31 = phi ptr [ %19, %if.end9.i ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i31, null
  br i1 %tobool.not, label %dr_rule_create_collision_htbl.exit.cleanup_crit_edge, label %if.end

dr_rule_create_collision_htbl.exit.cleanup_crit_edge: ; preds = %dr_rule_create_collision_htbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dr_rule_create_collision_htbl.exit
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %col_ste, i32 0, i32 3
  %28 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %htbl, align 4
  %pointing_ste = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %pointing_ste to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pointing_ste, align 4
  %htbl2 = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i31, i32 0, i32 3
  %32 = ptrtoint ptr %htbl2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %htbl2, align 4
  %pointing_ste3 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %pointing_ste3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %pointing_ste3, align 4
  %call4 = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %col_ste) #10
  %35 = ptrtoint ptr %htbl2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %htbl2, align 4
  %miss_list = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %miss_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call4, ptr %miss_list, align 4
  %38 = ptrtoint ptr %ste_ctx2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ste_ctx2.i, align 4
  %call6 = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %col_ste) #10
  %call7 = tail call fastcc i32 @dr_rule_append_to_miss_list(ptr noundef %39, ptr noundef nonnull %retval.0.i31, ptr noundef %call6, ptr noundef %update_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_rehash_handle_collision.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_rehash_handle_collision, %if.then14)) #10
          to label %err_exit [label %if.then14], !srcloc !139

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %44 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_rehash_handle_collision.__UNIQUE_ID_ddebug547, ptr noundef %43, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef 195, i32 noundef %49) #10
  br label %err_exit

err_exit:                                         ; preds = %if.then14, %do.body
  tail call void @mlx5dr_ste_free(ptr noundef nonnull %retval.0.i31, ptr noundef %matcher, ptr noundef %nic_matcher) #10
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end.cleanup_crit_edge, %dr_rule_create_collision_htbl.exit.cleanup_crit_edge, %dr_rule_create_collision_htbl.exit.thread
  %retval.0 = phi ptr [ null, %err_exit ], [ null, %dr_rule_create_collision_htbl.exit.cleanup_crit_edge ], [ %retval.0.i31, %if.end.cleanup_crit_edge ], [ null, %dr_rule_create_collision_htbl.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_rule_append_to_miss_list(ptr noundef %ste_ctx, ptr noundef %new_last_ste, ptr noundef %miss_list, ptr noundef %send_list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr inbounds %struct.list_head, ptr %miss_list, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !134

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 18, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 84) #14
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call25 = tail call i64 @mlx5dr_ste_get_icm_addr(ptr noundef %new_last_ste) #10
  tail call void @mlx5dr_ste_set_miss_addr(ptr noundef %ste_ctx, ptr noundef %4, i64 noundef %call25) #10
  %miss_list_node = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_last_ste, i32 0, i32 2
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %miss_list_node, ptr noundef %6, ptr noundef %miss_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.list_add_tail.exit_crit_edge

if.end24.list_add_tail.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %miss_list_node, ptr %prev, align 4
  %8 = ptrtoint ptr %miss_list_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %miss_list, ptr %miss_list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %new_last_ste, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %miss_list_node, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end24.list_add_tail.exit_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %add.ptr, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef %12, ptr noundef nonnull %call7.i.i, ptr noundef %send_list, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5dr_ste_get_icm_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_rule_create_collision_entry(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef %hw_ste, ptr noundef %orig_ste) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matcher, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ste_ctx2.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ste_ctx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ste_ctx2.i, align 4
  %ste_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ste_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ste_icm_pool.i, align 8
  %call.i = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %7, i32 noundef 0, i16 noundef zeroext 15, i16 noundef zeroext 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_create_collision_entry, %dr_rule_create_collision_htbl.exit.thread)) #10
          to label %dr_rule_create_collision_htbl.exit [label %dr_rule_create_collision_htbl.exit.thread], !srcloc !139

dr_rule_create_collision_htbl.exit.thread:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef 51, i32 noundef %17) #10
  br label %do.body

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ste_arr.i, align 4
  %e_anchor.i = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 1
  %20 = ptrtoint ptr %e_anchor.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %e_anchor.i, align 4
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chunk.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %icm_addr.i, align 8
  tail call void @mlx5dr_ste_set_miss_addr(ptr noundef %5, ptr noundef %hw_ste, i64 noundef %25) #10
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  br label %dr_rule_create_collision_htbl.exit

dr_rule_create_collision_htbl.exit:               ; preds = %if.end9.i, %do.body.i
  %retval.0.i58 = phi ptr [ %19, %if.end9.i ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i58, null
  br i1 %tobool.not, label %dr_rule_create_collision_htbl.exit.do.body_crit_edge, label %if.end7

dr_rule_create_collision_htbl.exit.do.body_crit_edge: ; preds = %dr_rule_create_collision_htbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %dr_rule_create_collision_htbl.exit.do.body_crit_edge, %dr_rule_create_collision_htbl.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_create_collision_entry.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_create_collision_entry, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !139

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %matcher, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_create_collision_entry.__UNIQUE_ID_ddebug545, ptr noundef %35, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef 74, i32 noundef %41) #10
  br label %cleanup

if.end7:                                          ; preds = %dr_rule_create_collision_htbl.exit
  %ste_chain_location = getelementptr inbounds %struct.mlx5dr_ste, ptr %orig_ste, i32 0, i32 6
  %42 = ptrtoint ptr %ste_chain_location to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ste_chain_location, align 4
  %ste_chain_location8 = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i58, i32 0, i32 6
  %44 = ptrtoint ptr %ste_chain_location8 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %ste_chain_location8, align 4
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %orig_ste, i32 0, i32 3
  %45 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %htbl, align 4
  %pointing_ste = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %pointing_ste to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pointing_ste, align 4
  %htbl9 = getelementptr inbounds %struct.mlx5dr_ste, ptr %retval.0.i58, i32 0, i32 3
  %49 = ptrtoint ptr %htbl9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %htbl9, align 4
  %pointing_ste10 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %pointing_ste10 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %pointing_ste10, align 4
  %call11 = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %orig_ste) #10
  %52 = ptrtoint ptr %htbl9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %htbl9, align 4
  %miss_list = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %miss_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call11, ptr %miss_list, align 4
  %call13 = tail call i32 @mlx5dr_ste_create_next_htbl(ptr noundef %matcher, ptr noundef %nic_matcher, ptr noundef nonnull %retval.0.i58, ptr noundef %hw_ste, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end7.cleanup_crit_edge, label %do.body16

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body16:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_rule_create_collision_entry.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_rule_create_collision_entry, %if.then28)) #10
          to label %free_tbl [label %if.then28], !srcloc !139

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %matcher, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %mdev31 = getelementptr inbounds %struct.mlx5dr_domain, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %mdev31 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mdev31, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %63 = tail call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i59 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i59 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_rule_create_collision_entry.__UNIQUE_ID_ddebug546, ptr noundef %62, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.67, i32 noundef 87, i32 noundef %68) #10
  br label %free_tbl

free_tbl:                                         ; preds = %if.then28, %do.body16
  tail call void @mlx5dr_ste_free(ptr noundef nonnull %retval.0.i58, ptr noundef %matcher, ptr noundef %nic_matcher) #10
  br label %cleanup

cleanup:                                          ; preds = %free_tbl, %if.end7.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi ptr [ null, %free_tbl ], [ null, %if.then5 ], [ %retval.0.i58, %if.end7.cleanup_crit_edge ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_postsend_ste(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_rule_destroy_rule_nic(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %nic_rule) unnamed_addr #1 align 64 {
entry:
  %ste_arr.i = alloca [23 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %last_rule_ste = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %nic_rule, i32 0, i32 1
  %0 = ptrtoint ptr %last_rule_ste to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_rule_ste, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_rule, align 4
  %nic_tbl = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_tbl, align 8
  %nic_dmn = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nic_dmn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_dmn, align 4
  %mutex.i = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %ste_arr.i) #10
  %8 = call ptr @memset(ptr %ste_arr.i, i32 255, i32 92)
  %9 = ptrtoint ptr %last_rule_ste to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last_rule_ste, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.dr_rule_clean_rule_members.exit_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.dr_rule_clean_rule_members.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_clean_rule_members.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %i.0.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.while.body.i.i_crit_edge ]
  %curr_ste.addr.08.i.i = phi ptr [ %19, %while.body.i.i.while.body.i.i_crit_edge ], [ %10, %if.end.while.body.i.i_crit_edge ]
  %ste_chain_location.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %curr_ste.addr.08.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %ste_chain_location.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ste_chain_location.i.i, align 4
  %cmp.i.i = icmp eq i8 %12, 1
  %arrayidx.i.i = getelementptr ptr, ptr %ste_arr.i, i32 %i.0.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %curr_ste.addr.08.i.i, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %i.0.i, 1
  %call.i.i.i = tail call ptr @mlx5dr_ste_get_miss_list(ptr noundef %curr_ste.addr.08.i.i) #10
  %14 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i.i.i, align 4
  %htbl.i.i.i = getelementptr i8, ptr %15, i32 8
  %16 = ptrtoint ptr %htbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %htbl.i.i.i, align 4
  %pointing_ste.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %pointing_ste.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pointing_ste.i.i.i, align 4
  br i1 %cmp.i.i, label %while.cond.preheader.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.cond.preheader.i:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool1.not12.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool1.not12.i, label %while.cond.preheader.i.dr_rule_clean_rule_members.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.dr_rule_clean_rule_members.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_clean_rule_members.exit

while.body.i:                                     ; preds = %mlx5dr_ste_put.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec13.i = phi i32 [ %dec.i, %mlx5dr_ste_put.exit.i.while.body.i_crit_edge ], [ %i.0.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr [23 x ptr], ptr %ste_arr.i, i32 0, i32 %dec13.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rule, align 4
  %24 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nic_rule, align 4
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_ste, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcount.i.i, align 4
  %dec.i.i = add i32 %27, -1
  store i32 %dec.i.i, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i5.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i5.i, label %if.then.i.i, label %while.body.i.mlx5dr_ste_put.exit.i_crit_edge

while.body.i.mlx5dr_ste_put.exit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5dr_ste_put.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5dr_ste_free(ptr noundef %21, ptr noundef %23, ptr noundef %25) #10
  br label %mlx5dr_ste_put.exit.i

mlx5dr_ste_put.exit.i:                            ; preds = %if.then.i.i, %while.body.i.mlx5dr_ste_put.exit.i_crit_edge
  %dec.i = add i32 %dec13.i, -1
  %tobool1.not.i = icmp eq i32 %dec13.i, 0
  br i1 %tobool1.not.i, label %mlx5dr_ste_put.exit.i.dr_rule_clean_rule_members.exit_crit_edge, label %mlx5dr_ste_put.exit.i.while.body.i_crit_edge

mlx5dr_ste_put.exit.i.while.body.i_crit_edge:     ; preds = %mlx5dr_ste_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

mlx5dr_ste_put.exit.i.dr_rule_clean_rule_members.exit_crit_edge: ; preds = %mlx5dr_ste_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_rule_clean_rule_members.exit

dr_rule_clean_rule_members.exit:                  ; preds = %mlx5dr_ste_put.exit.i.dr_rule_clean_rule_members.exit_crit_edge, %while.cond.preheader.i.dr_rule_clean_rule_members.exit_crit_edge, %if.end.dr_rule_clean_rule_members.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %ste_arr.i) #10
  %28 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nic_rule, align 4
  %rules = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rules, align 8
  %dec = add i32 %31, -1
  store i32 %dec, ptr %rules, align 8
  %32 = load ptr, ptr %nic_rule, align 4
  %rules3 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %rules3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rules3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool4.not = icmp eq i32 %34, 0
  br i1 %tobool4.not, label %if.then5, label %dr_rule_clean_rule_members.exit.if.end7_crit_edge

dr_rule_clean_rule_members.exit.if.end7_crit_edge: ; preds = %dr_rule_clean_rule_members.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %dr_rule_clean_rule_members.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rule, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %call = tail call i32 @mlx5dr_matcher_remove_from_tbl_nic(ptr noundef %40, ptr noundef %32) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %dr_rule_clean_rule_members.exit.if.end7_crit_edge
  %41 = ptrtoint ptr %nic_rule to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nic_rule, align 4
  %nic_tbl9 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %nic_tbl9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nic_tbl9, align 8
  %nic_dmn10 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %nic_dmn10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nic_dmn10, align 4
  %mutex.i1 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %46, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i1) #10
  br label %return

return:                                           ; preds = %if.end7, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_dbg_rule_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 1297, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dr_rule_create_rule._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dr_rule_create_rule._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 911, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dr_rule_verify._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @dr_rule_verify._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 922, i32 4}
!15 = !{ptr @dr_rule_verify._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @dr_rule_verify._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 932, i32 4}
!19 = !{ptr @dr_rule_verify._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @dr_rule_verify._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 942, i32 4}
!23 = !{ptr @dr_rule_verify._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @dr_rule_verify._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 952, i32 4}
!27 = !{ptr @dr_rule_verify._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dr_rule_verify._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 962, i32 4}
!31 = !{ptr @dr_rule_verify._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dr_rule_verify._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 972, i32 4}
!35 = !{ptr @dr_rule_verify._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @dr_rule_verify._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 983, i32 4}
!39 = !{ptr @dr_rule_verify._entry.25, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dr_rule_verify._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 892, i32 4}
!43 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dr_rule_cmp_value_to_mask._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dr_rule_cmp_value_to_mask._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 1154, i32 4}
!48 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dr_rule_create_rule_nic._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dr_rule_create_rule_nic._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 1169, i32 3}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dr_rule_create_rule_nic.__UNIQUE_ID_ddebug570, !52, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 1174, i32 3}
!57 = !{ptr @dr_rule_create_rule_nic._entry.34, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dr_rule_create_rule_nic._entry_ptr.36, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 844, i32 4}
!61 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug554, !60, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 860, i32 5}
!65 = !{ptr @dr_rule_handle_ste_branch._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dr_rule_handle_ste_branch._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 876, i32 5}
!69 = !{ptr @dr_rule_handle_ste_branch.__UNIQUE_ID_ddebug555, !68, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 779, i32 3}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @dr_rule_handle_empty_entry.__UNIQUE_ID_ddebug553, !71, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 395, i32 3}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dr_rule_rehash_htbl._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @dr_rule_rehash_htbl._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 421, i32 3}
!81 = !{ptr @dr_rule_rehash_htbl._entry.45, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @dr_rule_rehash_htbl._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 430, i32 3}
!85 = !{ptr @dr_rule_rehash_htbl._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dr_rule_rehash_htbl._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 479, i32 2}
!89 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dr_rule_rehash_htbl._entry.51, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @dr_rule_rehash_htbl._entry_ptr.54, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 340, i32 3}
!94 = !{ptr @.str.56, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dr_rule_rehash_copy_htbl.__UNIQUE_ID_ddebug549, !93, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 321, i32 2}
!98 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dr_rule_rehash_copy_miss_list._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @dr_rule_rehash_copy_miss_list._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 264, i32 4}
!103 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @dr_rule_rehash_copy_ste.__UNIQUE_ID_ddebug548, !102, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 195, i32 3}
!107 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dr_rule_rehash_handle_collision.__UNIQUE_ID_ddebug547, !106, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 51, i32 3}
!111 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dr_rule_create_collision_htbl.__UNIQUE_ID_ddebug544, !110, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 525, i32 3}
!115 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @dr_rule_handle_collision.__UNIQUE_ID_ddebug552, !114, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 74, i32 3}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dr_rule_create_collision_entry.__UNIQUE_ID_ddebug545, !118, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!121 = !{ptr @dr_rule_create_collision_entry.__UNIQUE_ID_ddebug546, !122, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_rule.c", i32 87, i32 3}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148325638, i64 2148325670, i64 2148325699, i64 2148325733, i64 2148325764, i64 2148325787}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2148413639}
!137 = !{i64 2148328103, i64 2148328135, i64 2148328164, i64 2148328198, i64 2148328229, i64 2148328252}
!138 = !{!"auto-init"}
!139 = !{i64 2148805923, i64 2148805928, i64 2148805941, i64 2148805985, i64 2148806019, i64 2148806040}
