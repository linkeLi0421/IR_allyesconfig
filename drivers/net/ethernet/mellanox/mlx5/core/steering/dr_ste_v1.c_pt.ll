; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5dr_ste_action_modify_field = type { i16, i8, i8, i8, i8 }
%struct.mlx5dr_ste_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc2, %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc4, %struct.mlx5dr_match_misc5 }
%struct.mlx5dr_match_misc = type { [44 x i8], i32, i32, [3 x i32] }
%struct.mlx5dr_match_spec = type { i32, i32, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc2 = type { i128, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc4 = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5dr_match_misc5 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.mlx5dr_ste_actions_attr = type { i32, i16, i32, i16, i8, i64, i32, i32, i16, i16, %struct.anon.172, %struct.anon.173 }
%struct.anon.172 = type { i32, i32, i8, i8 }
%struct.anon.173 = type { i32, [2 x i32] }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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

@dr_ste_v1_action_modify_field_arr = internal constant { [113 x %struct.mlx5dr_ste_action_modify_field], [186 x i8] } { [113 x %struct.mlx5dr_ste_action_modify_field] [%struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 8, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 9, i8 16, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 1, i8 0, i8 15, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 0, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 1, i8 16, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 14, i8 18, i8 23, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 25, i8 16, i8 24, i8 0, i8 1 }, %struct.mlx5dr_ste_action_modify_field { i16 24, i8 16, i8 31, i8 0, i8 1 }, %struct.mlx5dr_ste_action_modify_field { i16 24, i8 0, i8 15, i8 0, i8 1 }, %struct.mlx5dr_ste_action_modify_field { i16 14, i8 8, i8 15, i8 1, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 24, i8 16, i8 31, i8 0, i8 2 }, %struct.mlx5dr_ste_action_modify_field { i16 24, i8 0, i8 15, i8 0, i8 2 }, %struct.mlx5dr_ste_action_modify_field { i16 76, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 77, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 78, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 79, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 68, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 69, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 70, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 71, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 64, i8 0, i8 31, i8 1, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 65, i8 0, i8 31, i8 1, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 2, i8 0, i8 15, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 14, i8 8, i8 15, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 124, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 123, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 144, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 145, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 142, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 143, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 140, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 141, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 94, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 95, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 111, i8 0, i8 15, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 112, i8 0, i8 31, i8 0, i8 0 }], [186 x i8] zeroinitializer }, align 32
@ste_ctx_v1 = dso_local global { %struct.mlx5dr_ste_ctx, [32 x i8] } { %struct.mlx5dr_ste_ctx { ptr @dr_ste_v1_build_eth_l2_src_dst_init, ptr @dr_ste_v1_build_eth_l3_ipv6_src_init, ptr @dr_ste_v1_build_eth_l3_ipv6_dst_init, ptr @dr_ste_v1_build_eth_l3_ipv4_5_tuple_init, ptr @dr_ste_v1_build_eth_l2_src_init, ptr @dr_ste_v1_build_eth_l2_dst_init, ptr @dr_ste_v1_build_eth_l2_tnl_init, ptr @dr_ste_v1_build_eth_l3_ipv4_misc_init, ptr @dr_ste_v1_build_eth_ipv6_l3_l4_init, ptr @dr_ste_v1_build_mpls_init, ptr @dr_ste_v1_build_tnl_gre_init, ptr @dr_ste_v1_build_tnl_mpls_init, ptr @dr_ste_v1_build_tnl_mpls_over_gre_init, ptr @dr_ste_v1_build_tnl_mpls_over_udp_init, ptr @dr_ste_v1_build_icmp_init, ptr @dr_ste_v1_build_general_purpose_init, ptr @dr_ste_v1_build_eth_l4_misc_init, ptr @dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_init, ptr @dr_ste_v1_build_flex_parser_tnl_geneve_init, ptr @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_init, ptr @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_init, ptr @dr_ste_v1_build_register_0_init, ptr @dr_ste_v1_build_register_1_init, ptr @dr_ste_v1_build_src_gvmi_qpn_init, ptr @dr_ste_v1_build_flex_parser_0_init, ptr @dr_ste_v1_build_flex_parser_1_init, ptr @dr_ste_v1_build_flex_parser_tnl_gtpu_init, ptr @dr_ste_v1_build_tnl_header_0_1_init, ptr @dr_ste_v1_build_tnl_gtpu_flex_parser_0_init, ptr @dr_ste_v1_build_tnl_gtpu_flex_parser_1_init, ptr @dr_ste_v1_init, ptr @dr_ste_v1_set_next_lu_type, ptr @dr_ste_v1_get_next_lu_type, ptr @dr_ste_v1_set_miss_addr, ptr @dr_ste_v1_get_miss_addr, ptr @dr_ste_v1_set_hit_addr, ptr @dr_ste_v1_set_byte_mask, ptr @dr_ste_v1_get_byte_mask, i32 7, ptr @dr_ste_v1_set_actions_rx, ptr @dr_ste_v1_set_actions_tx, i32 113, ptr @dr_ste_v1_action_modify_field_arr, ptr @dr_ste_v1_set_action_set, ptr @dr_ste_v1_set_action_add, ptr @dr_ste_v1_set_action_copy, ptr @dr_ste_v1_set_action_decap_l3_list, ptr @dr_ste_v1_prepare_for_postsend }, [32 x i8] zeroinitializer }, align 32
@dr_ste_v1_build_src_gvmi_qpn_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1829, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Vport 0x%x is disabled or invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dr_ste_v1_build_src_gvmi_qpn_tag\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_ste_v1_build_src_gvmi_qpn_tag._entry_ptr = internal global ptr @dr_ste_v1_build_src_gvmi_qpn_tag._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@___asan_gen_.8 = private unnamed_addr constant [34 x i8] c"dr_ste_v1_action_modify_field_arr\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 132, i32 52 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"ste_ctx_v1\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 2049, i32 23 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [64 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1828, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @dr_ste_v1_build_src_gvmi_qpn_tag._entry, ptr @dr_ste_v1_build_src_gvmi_qpn_tag._entry_ptr, ptr @dr_ste_v1_action_modify_field_arr, ptr @ste_ctx_v1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_ste_v1_action_modify_field_arr to i32), i32 678, i32 864, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ste_ctx_v1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_ste_v1_build_src_gvmi_qpn_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l2_src_dst_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %entry.do.body13.i_crit_edge, label %do.body3.i

entry.do.body13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13.i

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body3.i, %entry.do.body13.i_crit_edge
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr.i = lshr i160 %bf.load.i, 144
  %bf.cast.i = trunc i160 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool14.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool14.not.i, label %do.body13.i.do.body38.i_crit_edge, label %do.body16.i

do.body13.i.do.body38.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body38.i

do.body16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr25.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr25.i, align 4
  %and26.i = and i32 %7, 65535
  %shl28.i = shl nuw i32 %bf.cast.i, 16
  %or29.i = or i32 %and26.i, %shl28.i
  store i32 %or29.i, ptr %add.ptr25.i, align 4
  %8 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load34.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear.i = and i160 %bf.load34.i, 22300745198530623141535718272648361505980415
  store i160 %bf.clear.i, ptr %dmac_15_0.i, align 4
  br label %do.body38.i

do.body38.i:                                      ; preds = %do.body16.i, %do.body13.i.do.body38.i_crit_edge
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool39.not.i = icmp eq i32 %10, 0
  br i1 %tobool39.not.i, label %do.body38.i.do.body59.i_crit_edge, label %do.body41.i

do.body38.i.do.body59.i_crit_edge:                ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59.i

do.body41.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr47.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr47.i, align 4
  %12 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cond.i, align 4
  br label %do.body59.i

do.body59.i:                                      ; preds = %do.body41.i, %do.body38.i.do.body59.i_crit_edge
  %smac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %13 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load60.i = load i32, ptr %smac_15_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load60.i)
  %tobool62.not.i = icmp ult i32 %bf.load60.i, 65536
  br i1 %tobool62.not.i, label %do.body59.i.do.body87.i_crit_edge, label %do.body64.i

do.body59.i.do.body87.i_crit_edge:                ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body87.i

do.body64.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr61.i = lshr i32 %bf.load60.i, 16
  %add.ptr72.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %add.ptr72.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr72.i, align 4
  %and73.i = and i32 %15, -65536
  %or76.i = or i32 %and73.i, %bf.lshr61.i
  store i32 %or76.i, ptr %add.ptr72.i, align 4
  %16 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load81.i = load i32, ptr %smac_15_0.i, align 4
  %bf.clear82.i = and i32 %bf.load81.i, 65535
  store i32 %bf.clear82.i, ptr %smac_15_0.i, align 4
  br label %do.body87.i

do.body87.i:                                      ; preds = %do.body64.i, %do.body59.i.do.body87.i_crit_edge
  %17 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 20)
  %bf.load88.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr89.i = lshr i160 %bf.load88.i, 128
  %18 = trunc i160 %bf.lshr89.i to i32
  %bf.cast91.i = and i32 %18, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast91.i)
  %tobool92.not.i = icmp eq i32 %bf.cast91.i, 0
  br i1 %tobool92.not.i, label %do.body87.i.do.body119.i_crit_edge, label %do.body94.i

do.body87.i.do.body119.i_crit_edge:               ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119.i

do.body94.i:                                      ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr104.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %19 = ptrtoint ptr %add.ptr104.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr104.i, align 4
  %and105.i = and i32 %20, -268369921
  %shl107.i = shl nuw nsw i32 %bf.cast91.i, 16
  %or108.i = or i32 %and105.i, %shl107.i
  store i32 %or108.i, ptr %add.ptr104.i, align 4
  %21 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 20)
  %bf.load113.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear114.i = and i160 %bf.load113.i, -1393456292541243007882519017433090825912321
  store i160 %bf.clear114.i, ptr %dmac_15_0.i, align 4
  br label %do.body119.i

do.body119.i:                                     ; preds = %do.body94.i, %do.body87.i.do.body119.i_crit_edge
  %22 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 20)
  %bf.load120.i = load i160, ptr %dmac_15_0.i, align 4
  %23 = and i160 %bf.load120.i, 1393796574908163946345982392040522594123776
  %tobool124.not.i = icmp eq i160 %23, 0
  br i1 %tobool124.not.i, label %do.body119.i.do.body151.i_crit_edge, label %do.body126.i

do.body119.i.do.body151.i_crit_edge:              ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body151.i

do.body126.i:                                     ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr136.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %24 = ptrtoint ptr %add.ptr136.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr136.i, align 4
  %or140.i = or i32 %25, 268435456
  store i32 %or140.i, ptr %add.ptr136.i, align 4
  %26 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 20)
  %bf.load145.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear146.i = and i160 %bf.load145.i, -1393796574908163946345982392040522594123777
  store i160 %bf.clear146.i, ptr %dmac_15_0.i, align 4
  br label %do.body151.i

do.body151.i:                                     ; preds = %do.body126.i, %do.body119.i.do.body151.i_crit_edge
  %27 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 20)
  %bf.load152.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr153.i = lshr i160 %bf.load152.i, 141
  %28 = trunc i160 %bf.lshr153.i to i32
  %bf.cast155.i = and i32 %28, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast155.i)
  %tobool156.not.i = icmp eq i32 %bf.cast155.i, 0
  br i1 %tobool156.not.i, label %do.body151.i.do.body183.i_crit_edge, label %do.body158.i

do.body151.i.do.body183.i_crit_edge:              ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body183.i

do.body158.i:                                     ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr168.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %29 = ptrtoint ptr %add.ptr168.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr168.i, align 4
  %and169.i = and i32 %30, 536870911
  %shl171.i = shl i32 %28, 29
  %or172.i = or i32 %and169.i, %shl171.i
  store i32 %or172.i, ptr %add.ptr168.i, align 4
  %31 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 20)
  %bf.load177.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear178.i = and i160 %bf.load177.i, -19513152048714295248843753488567316317732865
  store i160 %bf.clear178.i, ptr %dmac_15_0.i, align 4
  br label %do.body183.i

do.body183.i:                                     ; preds = %do.body158.i, %do.body151.i.do.body183.i_crit_edge
  %32 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 20)
  %bf.load184.i = load i160, ptr %dmac_15_0.i, align 4
  %33 = and i160 %bf.load184.i, 608472288109550112718417538580480
  %tobool188.not.i = icmp eq i160 %33, 0
  br i1 %tobool188.not.i, label %do.body183.i.do.end209.i_crit_edge, label %do.body190.i

do.body183.i.do.end209.i_crit_edge:               ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end209.i

do.body190.i:                                     ; preds = %do.body183.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr195.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %add.ptr195.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr195.i, align 4
  %or199.i = or i32 %35, 48
  store i32 %or199.i, ptr %add.ptr195.i, align 4
  %36 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 20)
  %bf.load204.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear205.i = and i160 %bf.load204.i, -608472288109550112718417538580481
  store i160 %bf.clear205.i, ptr %dmac_15_0.i, align 4
  br label %do.end209.i

do.end209.i:                                      ; preds = %do.body190.i, %do.body183.i.do.end209.i_crit_edge
  %37 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load210.i = load i160, ptr %dmac_15_0.i, align 4
  %38 = and i160 %bf.load210.i, 2596148429267413814265248164610048
  %tobool214.not.i = icmp eq i160 %38, 0
  br i1 %tobool214.not.i, label %if.else.i, label %do.end209.i.if.end257.sink.split.i_crit_edge

do.end209.i.if.end257.sink.split.i_crit_edge:     ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.sink.split.i

if.else.i:                                        ; preds = %do.end209.i
  %39 = and i160 %bf.load210.i, 1298074214633706907132624082305024
  %tobool237.not.i = icmp eq i160 %39, 0
  br i1 %tobool237.not.i, label %if.else.i.dr_ste_v1_build_eth_l2_src_dst_bit_mask.exit_crit_edge, label %if.else.i.if.end257.sink.split.i_crit_edge

if.else.i.if.end257.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.sink.split.i

if.else.i.dr_ste_v1_build_eth_l2_src_dst_bit_mask.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l2_src_dst_bit_mask.exit

if.end257.sink.split.i:                           ; preds = %if.else.i.if.end257.sink.split.i_crit_edge, %do.end209.i.if.end257.sink.split.i_crit_edge
  %.sink.i = phi i160 [ -2596148429267413814265248164610049, %do.end209.i.if.end257.sink.split.i_crit_edge ], [ -1298074214633706907132624082305025, %if.else.i.if.end257.sink.split.i_crit_edge ]
  %add.ptr221.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %40 = ptrtoint ptr %add.ptr221.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr221.i, align 4
  %or248.i = or i32 %41, 3
  store i32 %or248.i, ptr %add.ptr221.i, align 4
  %42 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load253.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear254.i = and i160 %bf.load253.i, %.sink.i
  store i160 %bf.clear254.i, ptr %dmac_15_0.i, align 4
  br label %dr_ste_v1_build_eth_l2_src_dst_bit_mask.exit

dr_ste_v1_build_eth_l2_src_dst_bit_mask.exit:     ; preds = %if.end257.sink.split.i, %if.else.i.dr_ste_v1_build_eth_l2_src_dst_bit_mask.exit_crit_edge
  %43 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load1 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool3.not = icmp sgt i8 %bf.load1, -1
  %conv4 = select i1 %tobool3.not, i16 11, i16 12
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %44 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv4, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %45 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %46 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @dr_ste_v1_build_eth_l2_src_dst_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l3_ipv6_src_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not97.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not97.i, ptr %inner.i, ptr %mask
  %src_ip_127_96.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 4
  %1 = ptrtoint ptr %src_ip_127_96.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_ip_127_96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %src_ip_127_96.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %src_ip_127_96.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %src_ip_95_64.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 5
  %5 = ptrtoint ptr %src_ip_95_64.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_ip_95_64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21.i, align 4
  %8 = ptrtoint ptr %src_ip_95_64.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src_ip_95_64.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %src_ip_63_32.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 6
  %9 = ptrtoint ptr %src_ip_63_32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip_63_32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not.i = icmp eq i32 %10, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42.i, align 4
  %12 = ptrtoint ptr %src_ip_63_32.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_ip_63_32.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %src_ip_31_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 7
  %13 = ptrtoint ptr %src_ip_31_0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_ip_31_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not.i = icmp eq i32 %14, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v1_build_eth_l3_ipv6_src_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v1_build_eth_l3_ipv6_src_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l3_ipv6_src_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63.i, align 4
  %16 = ptrtoint ptr %src_ip_31_0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %src_ip_31_0.i, align 4
  br label %dr_ste_v1_build_eth_l3_ipv6_src_tag.exit

dr_ste_v1_build_eth_l3_ipv6_src_tag.exit:         ; preds = %do.body57.i, %do.body54.i.dr_ste_v1_build_eth_l3_ipv6_src_tag.exit_crit_edge
  %17 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %conv1 = select i1 %tobool.not, i16 265, i16 266
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1, ptr %lu_type, align 4
  %call4 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %19 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call4, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %20 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dr_ste_v1_build_eth_l3_ipv6_src_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l3_ipv6_dst_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not97.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not97.i, ptr %inner.i, ptr %mask
  %dst_ip_127_96.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 8
  %1 = ptrtoint ptr %dst_ip_127_96.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_ip_127_96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %dst_ip_127_96.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst_ip_127_96.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %dst_ip_95_64.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 9
  %5 = ptrtoint ptr %dst_ip_95_64.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_ip_95_64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21.i, align 4
  %8 = ptrtoint ptr %dst_ip_95_64.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dst_ip_95_64.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %dst_ip_63_32.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 10
  %9 = ptrtoint ptr %dst_ip_63_32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_ip_63_32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not.i = icmp eq i32 %10, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42.i, align 4
  %12 = ptrtoint ptr %dst_ip_63_32.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dst_ip_63_32.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %dst_ip_31_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 11
  %13 = ptrtoint ptr %dst_ip_31_0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_ip_31_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not.i = icmp eq i32 %14, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v1_build_eth_l3_ipv6_dst_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v1_build_eth_l3_ipv6_dst_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l3_ipv6_dst_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63.i, align 4
  %16 = ptrtoint ptr %dst_ip_31_0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_ip_31_0.i, align 4
  br label %dr_ste_v1_build_eth_l3_ipv6_dst_tag.exit

dr_ste_v1_build_eth_l3_ipv6_dst_tag.exit:         ; preds = %do.body57.i, %do.body54.i.dr_ste_v1_build_eth_l3_ipv6_dst_tag.exit_crit_edge
  %17 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %conv1 = select i1 %tobool.not, i16 263, i16 264
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1, ptr %lu_type, align 4
  %call4 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %19 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call4, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %20 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dr_ste_v1_build_eth_l3_ipv6_dst_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l3_ipv4_5_tuple_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_eth_l3_ipv4_5_tuple_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %conv1 = select i1 %tobool.not, i16 7, i16 8
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv1, ptr %lu_type, align 4
  %call4 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %2 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call4, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %3 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dr_ste_v1_build_eth_l3_ipv4_5_tuple_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l2_src_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %1 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %entry.do.body13.i_crit_edge, label %do.body3.i

entry.do.body13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13.i

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cond.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body3.i, %entry.do.body13.i_crit_edge
  %smac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %5 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %smac_15_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load.i)
  %tobool14.not.i = icmp ult i32 %bf.load.i, 65536
  br i1 %tobool14.not.i, label %do.body13.i.dr_ste_v1_build_eth_l2_src_bit_mask.exit_crit_edge, label %do.body16.i

do.body13.i.dr_ste_v1_build_eth_l2_src_bit_mask.exit_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l2_src_bit_mask.exit

do.body16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr.i = and i32 %bf.load.i, -65536
  %add.ptr24.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr24.i, align 4
  %and25.i = and i32 %7, 65535
  %or28.i = or i32 %and25.i, %bf.lshr.i
  store i32 %or28.i, ptr %add.ptr24.i, align 4
  %8 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load33.i = load i32, ptr %smac_15_0.i, align 4
  %bf.clear.i = and i32 %bf.load33.i, 65535
  store i32 %bf.clear.i, ptr %smac_15_0.i, align 4
  br label %dr_ste_v1_build_eth_l2_src_bit_mask.exit

dr_ste_v1_build_eth_l2_src_bit_mask.exit:         ; preds = %do.body16.i, %do.body13.i.dr_ste_v1_build_eth_l2_src_bit_mask.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  tail call fastcc void @dr_ste_v1_build_eth_l2_src_or_dst_bit_mask(ptr noundef %mask, i1 noundef zeroext %tobool, ptr noundef %bit_mask) #11
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load1 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool3.not = icmp sgt i8 %bf.load1, -1
  %conv4 = select i1 %tobool3.not, i16 5, i16 6
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %11 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dr_ste_v1_build_eth_l2_src_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l2_dst_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %entry.do.body13.i_crit_edge, label %do.body3.i

entry.do.body13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13.i

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body3.i, %entry.do.body13.i_crit_edge
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr.i = lshr i160 %bf.load.i, 144
  %bf.cast.i = trunc i160 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool14.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool14.not.i, label %do.body13.i.dr_ste_v1_build_eth_l2_dst_bit_mask.exit_crit_edge, label %do.body16.i

do.body13.i.dr_ste_v1_build_eth_l2_dst_bit_mask.exit_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l2_dst_bit_mask.exit

do.body16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr25.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr25.i, align 4
  %and26.i = and i32 %7, 65535
  %shl28.i = shl nuw i32 %bf.cast.i, 16
  %or29.i = or i32 %and26.i, %shl28.i
  store i32 %or29.i, ptr %add.ptr25.i, align 4
  %8 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load34.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear.i = and i160 %bf.load34.i, 22300745198530623141535718272648361505980415
  store i160 %bf.clear.i, ptr %dmac_15_0.i, align 4
  br label %dr_ste_v1_build_eth_l2_dst_bit_mask.exit

dr_ste_v1_build_eth_l2_dst_bit_mask.exit:         ; preds = %do.body16.i, %do.body13.i.dr_ste_v1_build_eth_l2_dst_bit_mask.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  tail call fastcc void @dr_ste_v1_build_eth_l2_src_or_dst_bit_mask(ptr noundef %mask, i1 noundef zeroext %tobool, ptr noundef %bit_mask) #11
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load1 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool3.not = icmp sgt i8 %bf.load1, -1
  %conv4 = select i1 %tobool3.not, i16 3, i16 4
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %11 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dr_ste_v1_build_eth_l2_dst_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l2_tnl_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %misc2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not.i = icmp eq i32 %2, 0
  br i1 %tobool3.not.i, label %entry.do.body14.i_crit_edge, label %do.body4.i

entry.do.body14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16.i, align 4
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body4.i, %entry.do.body14.i_crit_edge
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr.i = lshr i160 %bf.load.i, 144
  %bf.cast.i = trunc i160 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool15.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool15.not.i, label %do.body14.i.do.body39.i_crit_edge, label %do.body17.i

do.body14.i.do.body39.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39.i

do.body17.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26.i, align 4
  %and27.i = and i32 %7, 65535
  %shl29.i = shl nuw i32 %bf.cast.i, 16
  %or30.i = or i32 %and27.i, %shl29.i
  store i32 %or30.i, ptr %add.ptr26.i, align 4
  %8 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear.i = and i160 %bf.load35.i, 22300745198530623141535718272648361505980415
  store i160 %bf.clear.i, ptr %dmac_15_0.i, align 4
  br label %do.body39.i

do.body39.i:                                      ; preds = %do.body17.i, %do.body14.i.do.body39.i_crit_edge
  %9 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load40.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr41.i = lshr i160 %bf.load40.i, 128
  %10 = trunc i160 %bf.lshr41.i to i32
  %bf.cast43.i = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast43.i)
  %tobool44.not.i = icmp eq i32 %bf.cast43.i, 0
  br i1 %tobool44.not.i, label %do.body39.i.do.body71.i_crit_edge, label %do.body46.i

do.body39.i.do.body71.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71.i

do.body46.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr56.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %11 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr56.i, align 4
  %and57.i = and i32 %12, -4096
  %or60.i = or i32 %and57.i, %bf.cast43.i
  store i32 %or60.i, ptr %add.ptr56.i, align 4
  %13 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load65.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear66.i = and i160 %bf.load65.i, -1393456292541243007882519017433090825912321
  store i160 %bf.clear66.i, ptr %dmac_15_0.i, align 4
  br label %do.body71.i

do.body71.i:                                      ; preds = %do.body46.i, %do.body39.i.do.body71.i_crit_edge
  %14 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load72.i = load i160, ptr %dmac_15_0.i, align 4
  %15 = and i160 %bf.load72.i, 1393796574908163946345982392040522594123776
  %tobool76.not.i = icmp eq i160 %15, 0
  br i1 %tobool76.not.i, label %do.body71.i.do.body103.i_crit_edge, label %do.body78.i

do.body71.i.do.body103.i_crit_edge:               ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103.i

do.body78.i:                                      ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr88.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %16 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr88.i, align 4
  %or92.i = or i32 %17, 4096
  store i32 %or92.i, ptr %add.ptr88.i, align 4
  %18 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 20)
  %bf.load97.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear98.i = and i160 %bf.load97.i, -1393796574908163946345982392040522594123777
  store i160 %bf.clear98.i, ptr %dmac_15_0.i, align 4
  br label %do.body103.i

do.body103.i:                                     ; preds = %do.body78.i, %do.body71.i.do.body103.i_crit_edge
  %19 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load104.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr105.i = lshr i160 %bf.load104.i, 141
  %20 = trunc i160 %bf.lshr105.i to i32
  %bf.cast107.i = and i32 %20, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast107.i)
  %tobool108.not.i = icmp eq i32 %bf.cast107.i, 0
  br i1 %tobool108.not.i, label %do.body103.i.do.body135.i_crit_edge, label %do.body110.i

do.body103.i.do.body135.i_crit_edge:              ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body135.i

do.body110.i:                                     ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr120.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %21 = ptrtoint ptr %add.ptr120.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr120.i, align 4
  %and121.i = and i32 %22, -57345
  %shl123.i = shl nuw nsw i32 %bf.cast107.i, 13
  %or124.i = or i32 %and121.i, %shl123.i
  store i32 %or124.i, ptr %add.ptr120.i, align 4
  %23 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load129.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear130.i = and i160 %bf.load129.i, -19513152048714295248843753488567316317732865
  store i160 %bf.clear130.i, ptr %dmac_15_0.i, align 4
  br label %do.body135.i

do.body135.i:                                     ; preds = %do.body110.i, %do.body103.i.do.body135.i_crit_edge
  %24 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load136.i = load i160, ptr %dmac_15_0.i, align 4
  %25 = and i160 %bf.load136.i, 649037107316853453566312041152512
  %tobool140.not.i = icmp eq i160 %25, 0
  br i1 %tobool140.not.i, label %do.body135.i.do.body167.i_crit_edge, label %do.body142.i

do.body135.i.do.body167.i_crit_edge:              ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body167.i

do.body142.i:                                     ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr152.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %26 = ptrtoint ptr %add.ptr152.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr152.i, align 4
  %or156.i = or i32 %27, 268435456
  store i32 %or156.i, ptr %add.ptr152.i, align 4
  %28 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load161.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear162.i = and i160 %bf.load161.i, -649037107316853453566312041152513
  store i160 %bf.clear162.i, ptr %dmac_15_0.i, align 4
  br label %do.body167.i

do.body167.i:                                     ; preds = %do.body142.i, %do.body135.i.do.body167.i_crit_edge
  %ethertype.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %29 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load168.i = load i32, ptr %ethertype.i, align 4
  %bf.clear169.i = and i32 %bf.load168.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear169.i)
  %tobool170.not.i = icmp eq i32 %bf.clear169.i, 0
  br i1 %tobool170.not.i, label %do.body167.i.do.body195.i_crit_edge, label %do.body172.i

do.body167.i.do.body195.i_crit_edge:              ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body195.i

do.body172.i:                                     ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr180.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %add.ptr180.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr180.i, align 4
  %and181.i = and i32 %31, -65536
  %or184.i = or i32 %and181.i, %bf.clear169.i
  store i32 %or184.i, ptr %add.ptr180.i, align 4
  %32 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load189.i = load i32, ptr %ethertype.i, align 4
  %bf.clear190.i = and i32 %bf.load189.i, -65536
  store i32 %bf.clear190.i, ptr %ethertype.i, align 4
  br label %do.body195.i

do.body195.i:                                     ; preds = %do.body172.i, %do.body167.i.do.body195.i_crit_edge
  %33 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 20)
  %bf.load196.i = load i160, ptr %dmac_15_0.i, align 4
  %34 = and i160 %bf.load196.i, 608472288109550112718417538580480
  %tobool200.not.i = icmp eq i160 %34, 0
  br i1 %tobool200.not.i, label %do.body195.i.do.end221.i_crit_edge, label %do.body202.i

do.body195.i.do.end221.i_crit_edge:               ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end221.i

do.body202.i:                                     ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr207.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %35 = ptrtoint ptr %add.ptr207.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr207.i, align 4
  %or211.i = or i32 %36, 3145728
  store i32 %or211.i, ptr %add.ptr207.i, align 4
  %37 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load216.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear217.i = and i160 %bf.load216.i, -608472288109550112718417538580481
  store i160 %bf.clear217.i, ptr %dmac_15_0.i, align 4
  br label %do.end221.i

do.end221.i:                                      ; preds = %do.body202.i, %do.body195.i.do.end221.i_crit_edge
  %38 = ptrtoint ptr %misc2.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 44)
  %bf.load222.i = load i352, ptr %misc2.i, align 4
  %bf.lshr223.i = lshr i352 %bf.load222.i, 168
  %39 = trunc i352 %bf.lshr223.i to i32
  %bf.cast225.i = and i32 %39, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast225.i)
  %tobool226.not.i = icmp eq i32 %bf.cast225.i, 0
  br i1 %tobool226.not.i, label %do.end221.i.if.end249.i_crit_edge, label %do.body228.i

do.end221.i.if.end249.i_crit_edge:                ; preds = %do.end221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end249.i

do.body228.i:                                     ; preds = %do.end221.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl234.i = shl i32 %39, 8
  %40 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl234.i, ptr %bit_mask, align 4
  %41 = ptrtoint ptr %misc2.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 44)
  %bf.load246.i = load i352, ptr %misc2.i, align 4
  %bf.clear247.i = and i352 %bf.load246.i, -6277101361242261607124642363064349240733902412545303511041
  store i352 %bf.clear247.i, ptr %misc2.i, align 4
  br label %if.end249.i

if.end249.i:                                      ; preds = %do.body228.i, %do.end221.i.if.end249.i_crit_edge
  %42 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load250.i = load i160, ptr %dmac_15_0.i, align 4
  %43 = and i160 %bf.load250.i, 3894222643901120721397872246915072
  %44 = icmp eq i160 %43, 0
  br i1 %44, label %if.end249.i.dr_ste_v1_build_eth_l2_tnl_bit_mask.exit_crit_edge, label %do.body261.i

if.end249.i.dr_ste_v1_build_eth_l2_tnl_bit_mask.exit_crit_edge: ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l2_tnl_bit_mask.exit

do.body261.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr266.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %45 = ptrtoint ptr %add.ptr266.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr266.i, align 4
  %or270.i = or i32 %46, 196608
  store i32 %or270.i, ptr %add.ptr266.i, align 4
  %47 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 20)
  %bf.load275.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear280.i = and i160 %bf.load275.i, -3894222643901120721397872246915073
  store i160 %bf.clear280.i, ptr %dmac_15_0.i, align 4
  br label %dr_ste_v1_build_eth_l2_tnl_bit_mask.exit

dr_ste_v1_build_eth_l2_tnl_bit_mask.exit:         ; preds = %do.body261.i, %if.end249.i.dr_ste_v1_build_eth_l2_tnl_bit_mask.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %48 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %49 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %50 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @dr_ste_v1_build_eth_l2_tnl_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l3_ipv4_misc_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not24.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not24.i, ptr %inner.i, ptr %mask
  %ttl_hoplimit.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %1 = ptrtoint ptr %ttl_hoplimit.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 20)
  %bf.load1.i = load i160, ptr %ttl_hoplimit.i, align 4
  %bf.lshr2.i = lshr i160 %bf.load1.i, 32
  %2 = trunc i160 %bf.lshr2.i to i32
  %bf.cast.i = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool3.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool3.not.i, label %entry.dr_ste_v1_build_eth_l3_ipv4_misc_tag.exit_crit_edge, label %do.body4.i

entry.dr_ste_v1_build_eth_l3_ipv4_misc_tag.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l3_ipv4_misc_tag.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %4, -16711681
  %shl.i = shl nuw nsw i32 %bf.cast.i, 16
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %5 = ptrtoint ptr %ttl_hoplimit.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load16.i = load i160, ptr %ttl_hoplimit.i, align 4
  %bf.clear17.i = and i160 %bf.load16.i, -1095216660481
  store i160 %bf.clear17.i, ptr %ttl_hoplimit.i, align 4
  br label %dr_ste_v1_build_eth_l3_ipv4_misc_tag.exit

dr_ste_v1_build_eth_l3_ipv4_misc_tag.exit:        ; preds = %do.body4.i, %entry.dr_ste_v1_build_eth_l3_ipv4_misc_tag.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %6 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %conv1 = select i1 %tobool.not, i16 13, i16 15
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %lu_type, align 4
  %call4 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %8 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call4, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %9 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dr_ste_v1_build_eth_l3_ipv4_misc_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_ipv6_l3_l4_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_eth_ipv6_l3_l4_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %conv1 = select i1 %tobool.not, i16 9, i16 10
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv1, ptr %lu_type, align 4
  %call4 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %2 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call4, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %3 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dr_ste_v1_build_eth_ipv6_l3_l4_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_mpls_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_mpls_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %conv1 = select i1 %tobool.not, i16 267, i16 268
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv1, ptr %lu_type, align 4
  %call4 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %2 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call4, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %3 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dr_ste_v1_build_mpls_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_gre_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_tnl_gre_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 269, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v1_build_tnl_gre_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_mpls_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_tnl_mpls_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 268, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v1_build_tnl_mpls_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_mpls_over_gre_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc21.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %0 = ptrtoint ptr %misc21.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load.i = load i128, ptr %misc21.i, align 4
  %sh.diff.i = lshr i128 %bf.load.i, 32
  %tr.sh.diff.i = trunc i128 %sh.diff.i to i32
  %bf.clear28.i = and i128 %bf.load.i, -18446744069414584321
  store i128 %bf.clear28.i, ptr %misc21.i, align 4
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_mpls_over_gre.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flex_parser_id_mpls_over_gre.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flex_parser_id_mpls_over_gre.i, align 1
  %5 = shl i8 %4, 2
  %6 = and i8 %5, 12
  %7 = xor i8 %6, 12
  %mul.i.i = zext i8 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tr.sh.diff.i, ptr %add.ptr.i.i, align 4
  %9 = load i8, ptr %flex_parser_id_mpls_over_gre.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp ugt i8 %9, 3
  %conv2 = select i1 %cmp, i16 274, i16 273
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2, ptr %lu_type, align 4
  %call5 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %11 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call5, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dr_ste_v1_build_tnl_mpls_over_gre_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_mpls_over_udp_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc21.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %0 = ptrtoint ptr %misc21.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load.i = load i128, ptr %misc21.i, align 4
  %1 = trunc i128 %bf.load.i to i32
  %bf.clear27.i = and i128 %bf.load.i, -4294967296
  store i128 %bf.clear27.i, ptr %misc21.i, align 4
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_mpls_over_udp.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flex_parser_id_mpls_over_udp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flex_parser_id_mpls_over_udp.i, align 2
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 12
  %8 = xor i8 %7, 12
  %mul.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %add.ptr.i.i, align 4
  %10 = load i8, ptr %flex_parser_id_mpls_over_udp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp = icmp ugt i8 %10, 3
  %conv2 = select i1 %cmp, i16 274, i16 273
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %11 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2, ptr %lu_type, align 4
  %call5 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %12 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call5, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dr_ste_v1_build_tnl_mpls_over_udp_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_icmp_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icmpv4_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %icmpv4_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %icmpv4_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %icmpv4_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %icmpv4_code.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %icmpv4_code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not.i = icmp eq i8 %3, 0
  br i1 %tobool3.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %icmpv4_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %icmpv4_header_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icmpv4_header_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %if.else.i, label %lor.rhs.i.if.then.i_crit_edge

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %icmpv4_header_data6.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 5
  %icmpv4_code8.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 8
  br label %dr_ste_v1_build_icmp_tag.exit

if.else.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %icmpv6_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 6
  %icmpv6_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 9
  %icmpv6_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 10
  br label %dr_ste_v1_build_icmp_tag.exit

dr_ste_v1_build_icmp_tag.exit:                    ; preds = %if.else.i, %if.then.i
  %icmp_type.0.i = phi ptr [ %icmpv4_type.i, %if.then.i ], [ %icmpv6_type.i, %if.else.i ]
  %icmp_code.0.i = phi ptr [ %icmpv4_code8.i, %if.then.i ], [ %icmpv6_code.i, %if.else.i ]
  %icmp_header_data.0.i = phi ptr [ %icmpv4_header_data6.i, %if.then.i ], [ %icmpv6_header_data.i, %if.else.i ]
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %6 = ptrtoint ptr %icmp_header_data.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icmp_header_data.0.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr.i, align 4
  %9 = ptrtoint ptr %icmp_type.0.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %icmp_type.0.i, align 1
  %conv16.i = zext i8 %10 to i32
  %add.ptr20.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr20.i, align 4
  %and21.i = and i32 %12, 16777215
  %shl23.i = shl nuw i32 %conv16.i, 24
  %or24.i = or i32 %and21.i, %shl23.i
  store i32 %or24.i, ptr %add.ptr20.i, align 4
  %13 = ptrtoint ptr %icmp_code.0.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %icmp_code.0.i, align 1
  %conv30.i = zext i8 %14 to i32
  %and35.i = and i32 %or24.i, -16711681
  %shl37.i = shl nuw nsw i32 %conv30.i, 16
  %or38.i = or i32 %shl37.i, %and35.i
  store i32 %or38.i, ptr %add.ptr20.i, align 4
  store i32 0, ptr %icmp_header_data.0.i, align 4
  store i8 0, ptr %icmp_type.0.i, align 1
  store i8 0, ptr %icmp_code.0.i, align 1
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %15 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 275, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %16 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %17 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dr_ste_v1_build_icmp_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_general_purpose_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %metadata_reg_a.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %metadata_reg_a.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_a.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.dr_ste_v1_build_general_purpose_tag.exit_crit_edge, label %do.body2.i

entry.dr_ste_v1_build_general_purpose_tag.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_general_purpose_tag.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bit_mask, align 4
  %3 = ptrtoint ptr %metadata_reg_a.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_a.i, align 4
  br label %dr_ste_v1_build_general_purpose_tag.exit

dr_ste_v1_build_general_purpose_tag.exit:         ; preds = %do.body2.i, %entry.dr_ste_v1_build_general_purpose_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 270, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %5 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %6 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dr_ste_v1_build_general_purpose_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_eth_l4_misc_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc31.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %do.body35.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %misc31.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %misc31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body14.i_crit_edge, label %do.body4.i

do.body.i.do.body14.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %misc31.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %misc31.i, align 4
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body4.i, %do.body.i.do.body14.i_crit_edge
  %inner_tcp_ack_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %inner_tcp_ack_num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inner_tcp_ack_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not.i = icmp eq i32 %6, 0
  br i1 %tobool15.not.i, label %do.body14.i.dr_ste_v1_build_eth_l4_misc_tag.exit_crit_edge, label %do.body14.i.if.end77.sink.split.i_crit_edge

do.body14.i.if.end77.sink.split.i_crit_edge:      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split.i

do.body14.i.dr_ste_v1_build_eth_l4_misc_tag.exit_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l4_misc_tag.exit

do.body35.i:                                      ; preds = %entry
  %outer_tcp_seq_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %outer_tcp_seq_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outer_tcp_seq_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool36.not.i = icmp eq i32 %8, 0
  br i1 %tobool36.not.i, label %do.body35.i.do.body56.i_crit_edge, label %do.body38.i

do.body35.i.do.body56.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body56.i

do.body38.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr44.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr44.i, align 4
  %10 = ptrtoint ptr %outer_tcp_seq_num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outer_tcp_seq_num.i, align 4
  br label %do.body56.i

do.body56.i:                                      ; preds = %do.body38.i, %do.body35.i.do.body56.i_crit_edge
  %outer_tcp_ack_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %outer_tcp_ack_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outer_tcp_ack_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool57.not.i = icmp eq i32 %12, 0
  br i1 %tobool57.not.i, label %do.body56.i.dr_ste_v1_build_eth_l4_misc_tag.exit_crit_edge, label %do.body56.i.if.end77.sink.split.i_crit_edge

do.body56.i.if.end77.sink.split.i_crit_edge:      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split.i

do.body56.i.dr_ste_v1_build_eth_l4_misc_tag.exit_crit_edge: ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_eth_l4_misc_tag.exit

if.end77.sink.split.i:                            ; preds = %do.body56.i.if.end77.sink.split.i_crit_edge, %do.body14.i.if.end77.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %6, %do.body14.i.if.end77.sink.split.i_crit_edge ], [ %12, %do.body56.i.if.end77.sink.split.i_crit_edge ]
  %outer_tcp_ack_num.sink.i = phi ptr [ %inner_tcp_ack_num.i, %do.body14.i.if.end77.sink.split.i_crit_edge ], [ %outer_tcp_ack_num.i, %do.body56.i.if.end77.sink.split.i_crit_edge ]
  %add.ptr65.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %add.ptr65.i, align 4
  %14 = ptrtoint ptr %outer_tcp_ack_num.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outer_tcp_ack_num.sink.i, align 4
  br label %dr_ste_v1_build_eth_l4_misc_tag.exit

dr_ste_v1_build_eth_l4_misc_tag.exit:             ; preds = %if.end77.sink.split.i, %do.body56.i.dr_ste_v1_build_eth_l4_misc_tag.exit_crit_edge, %do.body14.i.dr_ste_v1_build_eth_l4_misc_tag.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %15 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 275, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %16 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %17 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dr_ste_v1_build_eth_l4_misc_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %outer_vxlan_gpe_flags.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %1 = trunc i64 %bf.load.i to i32
  %2 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.body18.i_crit_edge, label %do.body2.i

entry.do.body18.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bit_mask, align 4
  %and.i = and i32 %4, 16777215
  %5 = shl i32 %1, 8
  %shl.i = and i32 %5, -16777216
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %bit_mask, align 4
  %6 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load14.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.clear15.i = and i64 %bf.load14.i, -16711681
  store i64 %bf.clear15.i, ptr %outer_vxlan_gpe_flags.i, align 4
  br label %do.body18.i

do.body18.i:                                      ; preds = %do.body2.i, %entry.do.body18.i_crit_edge
  %7 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load19.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %8 = trunc i64 %bf.load19.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %tobool23.not.i = icmp ult i32 %8, 16777216
  br i1 %tobool23.not.i, label %do.body18.i.do.body50.i_crit_edge, label %do.body25.i

do.body18.i.do.body50.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50.i

do.body25.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = lshr i32 %8, 24
  %10 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit_mask, align 4
  %and36.i = and i32 %11, -256
  %or39.i = or i32 %and36.i, %9
  store i32 %or39.i, ptr %bit_mask, align 4
  %12 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load44.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.clear45.i = and i64 %bf.load44.i, -4278190081
  store i64 %bf.clear45.i, ptr %outer_vxlan_gpe_flags.i, align 4
  br label %do.body50.i

do.body50.i:                                      ; preds = %do.body25.i, %do.body18.i.do.body50.i_crit_edge
  %13 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load51.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.lshr52.i = lshr i64 %bf.load51.i, 32
  %14 = trunc i64 %bf.lshr52.i to i32
  %bf.cast54.i = and i32 %14, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast54.i)
  %tobool55.not.i = icmp eq i32 %bf.cast54.i, 0
  br i1 %tobool55.not.i, label %do.body50.i.dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag.exit_crit_edge, label %do.body57.i

do.body50.i.dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag.exit_crit_edge: ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag.exit

do.body57.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr67.i, align 4
  %and68.i = and i32 %16, 255
  %shl70.i = shl i32 %14, 8
  %or71.i = or i32 %and68.i, %shl70.i
  store i32 %or71.i, ptr %add.ptr67.i, align 4
  %17 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load76.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.clear77.i = and i64 %bf.load76.i, -72057589742960641
  store i64 %bf.clear77.i, ptr %outer_vxlan_gpe_flags.i, align 4
  br label %dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag.exit

dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag.exit: ; preds = %do.body57.i, %do.body50.i.dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 14, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %19 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %20 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_tnl_geneve_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load.i = load i352, ptr %misc1.i, align 4
  %bf.lshr.i = lshr i352 %bf.load.i, 32
  %1 = trunc i352 %bf.lshr.i to i32
  %bf.cast.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool.not.i, label %entry.do.body16.i_crit_edge, label %do.body2.i

entry.do.body16.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %and.i = and i32 %3, -65536
  %or.i = or i32 %and.i, %bf.cast.i
  store i32 %or.i, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load12.i = load i352, ptr %misc1.i, align 4
  %bf.clear13.i = and i352 %bf.load12.i, -281470681743361
  store i352 %bf.clear13.i, ptr %misc1.i, align 4
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.body2.i, %entry.do.body16.i_crit_edge
  %5 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load17.i = load i352, ptr %misc1.i, align 4
  %6 = and i352 %bf.load17.i, 340282366920938463463374607431768211456
  %tobool21.not.i = icmp eq i352 %6, 0
  br i1 %tobool21.not.i, label %do.body16.i.do.body46.i_crit_edge, label %do.body23.i

do.body16.i.do.body46.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46.i

do.body23.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit_mask, align 4
  %or36.i = or i32 %8, 8388608
  store i32 %or36.i, ptr %bit_mask, align 4
  %9 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load40.i = load i352, ptr %misc1.i, align 4
  %bf.clear41.i = and i352 %bf.load40.i, -340282366920938463463374607431768211457
  store i352 %bf.clear41.i, ptr %misc1.i, align 4
  br label %do.body46.i

do.body46.i:                                      ; preds = %do.body23.i, %do.body16.i.do.body46.i_crit_edge
  %10 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load47.i = load i352, ptr %misc1.i, align 4
  %bf.lshr48.i = lshr i352 %bf.load47.i, 48
  %11 = trunc i352 %bf.lshr48.i to i32
  %bf.cast50.i = and i32 %11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast50.i)
  %tobool51.not.i = icmp eq i32 %bf.cast50.i, 0
  br i1 %tobool51.not.i, label %do.body46.i.do.body76.i_crit_edge, label %do.body53.i

do.body46.i.do.body76.i_crit_edge:                ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body76.i

do.body53.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit_mask, align 4
  %and63.i = and i32 %13, -1056964609
  %shl65.i = shl nuw nsw i32 %bf.cast50.i, 24
  %or66.i = or i32 %and63.i, %shl65.i
  store i32 %or66.i, ptr %bit_mask, align 4
  %14 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 44)
  %bf.load70.i = load i352, ptr %misc1.i, align 4
  %bf.clear71.i = and i352 %bf.load70.i, -17732923532771329
  store i352 %bf.clear71.i, ptr %misc1.i, align 4
  br label %do.body76.i

do.body76.i:                                      ; preds = %do.body53.i, %do.body46.i.do.body76.i_crit_edge
  %15 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 44)
  %bf.load77.i = load i352, ptr %misc1.i, align 4
  %bf.lshr78.i = lshr i352 %bf.load77.i, 136
  %16 = trunc i352 %bf.lshr78.i to i32
  %bf.cast80.i = and i32 %16, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast80.i)
  %tobool81.not.i = icmp eq i32 %bf.cast80.i, 0
  br i1 %tobool81.not.i, label %do.body76.i.dr_ste_v1_build_flex_parser_tnl_geneve_tag.exit_crit_edge, label %do.body83.i

do.body76.i.dr_ste_v1_build_flex_parser_tnl_geneve_tag.exit_crit_edge: ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_flex_parser_tnl_geneve_tag.exit

do.body83.i:                                      ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr92.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr92.i, align 4
  %and93.i = and i32 %18, 255
  %shl95.i = shl i32 %16, 8
  %or96.i = or i32 %and93.i, %shl95.i
  store i32 %or96.i, ptr %add.ptr92.i, align 4
  %19 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load100.i = load i352, ptr %misc1.i, align 4
  %bf.clear101.i = and i352 %bf.load100.i, -1461501550218616986443438186092383517123270410241
  store i352 %bf.clear101.i, ptr %misc1.i, align 4
  br label %dr_ste_v1_build_flex_parser_tnl_geneve_tag.exit

dr_ste_v1_build_flex_parser_tnl_geneve_tag.exit:  ; preds = %do.body83.i, %do.body76.i.dr_ste_v1_build_flex_parser_tnl_geneve_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %20 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 14, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %21 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %22 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dr_ste_v1_build_flex_parser_tnl_geneve_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_geneve_tlv_option_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_geneve_tlv_option_0.i, align 8
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %geneve_tlv_option_0_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %geneve_tlv_option_0_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %geneve_tlv_option_0_data.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i.i, align 4
  store i32 0, ptr %geneve_tlv_option_0_data.i, align 4
  %10 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_geneve_tlv_option_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flex_parser_id_geneve_tlv_option_0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp ugt i8 %12, 3
  %conv2 = select i1 %cmp, i16 274, i16 273
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %13 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv2, ptr %lu_type, align 4
  %call5 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %14 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call5, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %15 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 17, ptr %lu_type, align 4
  %misc1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %1 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 44)
  %bf.load.i = load i352, ptr %misc1.i, align 4
  %2 = and i352 %bf.load.i, 680564733841876926926749214863536422912
  %tobool.not.i = icmp eq i352 %2, 0
  br i1 %tobool.not.i, label %entry.dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag.exit_crit_edge, label %do.body.i

entry.dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_geneve_tlv_option_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flex_parser_id_geneve_tlv_option_0.i, align 8
  %conv.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %8, 16777215
  %shl4.i = shl i32 16777216, %conv.i
  %or.i = or i32 %and.i, %shl4.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %9 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load8.i = load i352, ptr %misc1.i, align 4
  %bf.clear9.i = and i352 %bf.load8.i, -680564733841876926926749214863536422913
  store i352 %bf.clear9.i, ptr %misc1.i, align 4
  br label %dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag.exit

dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag.exit: ; preds = %do.body.i, %entry.dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %10 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %11 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_register_0_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %metadata_reg_c_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %metadata_reg_c_0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bit_mask, align 4
  %3 = ptrtoint ptr %metadata_reg_c_0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_0.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %metadata_reg_c_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %metadata_reg_c_1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not.i = icmp eq i32 %5, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21.i, align 4
  %7 = ptrtoint ptr %metadata_reg_c_1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_1.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %metadata_reg_c_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %metadata_reg_c_2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not.i = icmp eq i32 %9, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42.i, align 4
  %11 = ptrtoint ptr %metadata_reg_c_2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_2.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %metadata_reg_c_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %metadata_reg_c_3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not.i = icmp eq i32 %13, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v1_build_register_0_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v1_build_register_0_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_register_0_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63.i, align 4
  %15 = ptrtoint ptr %metadata_reg_c_3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_3.i, align 4
  br label %dr_ste_v1_build_register_0_tag.exit

dr_ste_v1_build_register_0_tag.exit:              ; preds = %do.body57.i, %do.body54.i.dr_ste_v1_build_register_0_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %16 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 271, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %17 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %18 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dr_ste_v1_build_register_0_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_register_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %metadata_reg_c_4.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %metadata_reg_c_4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bit_mask, align 4
  %3 = ptrtoint ptr %metadata_reg_c_4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_4.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %metadata_reg_c_5.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %metadata_reg_c_5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not.i = icmp eq i32 %5, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21.i, align 4
  %7 = ptrtoint ptr %metadata_reg_c_5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_5.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %metadata_reg_c_6.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %metadata_reg_c_6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not.i = icmp eq i32 %9, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42.i, align 4
  %11 = ptrtoint ptr %metadata_reg_c_6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_6.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %metadata_reg_c_7.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %metadata_reg_c_7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not.i = icmp eq i32 %13, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v1_build_register_1_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v1_build_register_1_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_register_1_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63.i, align 4
  %15 = ptrtoint ptr %metadata_reg_c_7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_7.i, align 4
  br label %dr_ste_v1_build_register_1_tag.exit

dr_ste_v1_build_register_1_tag.exit:              ; preds = %do.body57.i, %do.body54.i.dr_ste_v1_build_register_1_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %16 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 272, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %17 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %18 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dr_ste_v1_build_register_1_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_src_gvmi_qpn_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load.i = load i352, ptr %misc.i, align 4
  %1 = and i352 %bf.load.i, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  %tobool.not.i = icmp eq i352 %1, 0
  br i1 %tobool.not.i, label %entry.do.body11.i_crit_edge, label %do.body1.i

entry.do.body11.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %or.i = or i32 %3, 65535
  store i32 %or.i, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load7.i = load i352, ptr %misc.i, align 4
  %bf.clear8.i = and i352 %bf.load7.i, -32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824961
  store i352 %bf.clear8.i, ptr %misc.i, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %do.body1.i, %entry.do.body11.i_crit_edge
  %5 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load12.i = load i352, ptr %misc.i, align 4
  %6 = and i352 %bf.load12.i, 35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915840
  %tobool16.not.i = icmp eq i352 %6, 0
  br i1 %tobool16.not.i, label %do.body11.i.dr_ste_v1_build_src_gvmi_qpn_bit_mask.exit_crit_edge, label %do.body18.i

do.body11.i.dr_ste_v1_build_src_gvmi_qpn_bit_mask.exit_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_src_gvmi_qpn_bit_mask.exit

do.body18.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr23.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr23.i, align 4
  %or27.i = or i32 %8, 16777215
  store i32 %or27.i, ptr %add.ptr23.i, align 4
  %9 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load31.i = load i352, ptr %misc.i, align 4
  %bf.clear32.i = and i352 %bf.load31.i, -35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915841
  store i352 %bf.clear32.i, ptr %misc.i, align 4
  br label %dr_ste_v1_build_src_gvmi_qpn_bit_mask.exit

dr_ste_v1_build_src_gvmi_qpn_bit_mask.exit:       ; preds = %do.body18.i, %do.body11.i.dr_ste_v1_build_src_gvmi_qpn_bit_mask.exit_crit_edge
  %10 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load37.i = load i352, ptr %misc.i, align 4
  %bf.clear38.i = and i352 %bf.load37.i, -2135954443345288730617641411038537564552127698862354114967031429575030055679844336635663152578561
  store i352 %bf.clear38.i, ptr %misc.i, align 4
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %11 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 260, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %12 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dr_ste_v1_build_src_gvmi_qpn_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_0_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 273, ptr %lu_type, align 4
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_felx_parser_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v1_build_felx_parser_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 274, ptr %lu_type, align 4
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v1_build_felx_parser_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v1_build_felx_parser_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_flex_parser_tnl_gtpu_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %gtpu_msg_flags.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 14
  %0 = ptrtoint ptr %gtpu_msg_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gtpu_msg_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %and.i = and i32 %3, -117440513
  %4 = and i8 %1, 7
  %and5.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %and5.i, 24
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %bit_mask, align 4
  %5 = ptrtoint ptr %gtpu_msg_flags.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %gtpu_msg_flags.i, align 1
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %gtpu_msg_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %gtpu_msg_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gtpu_msg_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not.i = icmp eq i8 %7, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body34.i_crit_edge, label %do.body15.i

do.body12.i.do.body34.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv18.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit_mask, align 4
  %and23.i = and i32 %9, -16711681
  %shl25.i = shl nuw nsw i32 %conv18.i, 16
  %or26.i = or i32 %and23.i, %shl25.i
  store i32 %or26.i, ptr %bit_mask, align 4
  %10 = ptrtoint ptr %gtpu_msg_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %gtpu_msg_type.i, align 4
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body34.i_crit_edge
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %11 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not.i = icmp eq i32 %12, 0
  br i1 %tobool35.not.i, label %do.body34.i.dr_ste_v1_build_flex_parser_tnl_gtpu_tag.exit_crit_edge, label %do.body37.i

do.body34.i.dr_ste_v1_build_flex_parser_tnl_gtpu_tag.exit_crit_edge: ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_flex_parser_tnl_gtpu_tag.exit

do.body37.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr43.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr43.i, align 4
  %14 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %gtpu_teid.i, align 4
  br label %dr_ste_v1_build_flex_parser_tnl_gtpu_tag.exit

dr_ste_v1_build_flex_parser_tnl_gtpu_tag.exit:    ; preds = %do.body37.i, %do.body34.i.dr_ste_v1_build_flex_parser_tnl_gtpu_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %15 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 14, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %16 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %17 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dr_ste_v1_build_flex_parser_tnl_gtpu_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_header_0_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 14, ptr %lu_type, align 4
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %tunnel_header_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %tunnel_header_0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tunnel_header_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %tunnel_header_0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tunnel_header_0.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %tunnel_header_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6, i32 5
  %5 = ptrtoint ptr %tunnel_header_1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tunnel_header_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  br i1 %tobool13.not.i, label %do.body12.i.dr_ste_v1_build_tnl_header_0_1_tag.exit_crit_edge, label %do.body15.i

do.body12.i.dr_ste_v1_build_tnl_header_0_1_tag.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_tnl_header_0_1_tag.exit

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21.i, align 4
  %8 = ptrtoint ptr %tunnel_header_1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tunnel_header_1.i, align 4
  br label %dr_ste_v1_build_tnl_header_0_1_tag.exit

dr_ste_v1_build_tnl_header_0_1_tag.exit:          ; preds = %do.body15.i, %do.body12.i.dr_ste_v1_build_tnl_header_0_1_tag.exit_crit_edge
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %9 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %10 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dr_ste_v1_build_tnl_header_0_1_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_gtpu_flex_parser_0_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.i.i = icmp ult i8 %3, 4
  br i1 %cmp.i.i, label %do.body.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = shl nuw nsw i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i.i, align 4
  store i32 0, ptr %gtpu_dw_0.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i65.i = icmp ult i8 %13, 4
  br i1 %cmp.i65.i, label %do.body9.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = shl nuw nsw i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66.i = zext i8 %16 to i32
  %add.ptr.i67.i = getelementptr i8, ptr %bit_mask, i32 %mul.i66.i
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid.i, align 4
  %19 = ptrtoint ptr %add.ptr.i67.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67.i, align 4
  store i32 0, ptr %gtpu_teid.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body9.i, %if.end.i.if.end19.i_crit_edge
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i68.i = icmp ult i8 %23, 4
  br i1 %cmp.i68.i, label %do.body23.i, label %if.end19.i.if.end33.i_crit_edge

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

do.body23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = shl nuw nsw i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69.i = zext i8 %26 to i32
  %add.ptr.i70.i = getelementptr i8, ptr %bit_mask, i32 %mul.i69.i
  %gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2.i, align 4
  %29 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70.i, align 4
  store i32 0, ptr %gtpu_dw_2.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body23.i, %if.end19.i.if.end33.i_crit_edge
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp.i71.i = icmp ult i8 %33, 4
  br i1 %cmp.i71.i, label %do.body37.i, label %if.end33.i.dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag.exit_crit_edge

if.end33.i.dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag.exit

do.body37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = shl nuw nsw i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72.i = zext i8 %36 to i32
  %add.ptr.i73.i = getelementptr i8, ptr %bit_mask, i32 %mul.i72.i
  %gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0.i, align 4
  %39 = ptrtoint ptr %add.ptr.i73.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73.i, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0.i, align 4
  br label %dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag.exit

dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag.exit:  ; preds = %do.body37.i, %if.end33.i.dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %40 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 273, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %41 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %42 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_build_tnl_gtpu_flex_parser_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i.i = icmp ugt i8 %3, 3
  br i1 %cmp.i.i, label %do.body.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i.i, align 4
  store i32 0, ptr %gtpu_dw_0.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i65.i = icmp ugt i8 %13, 3
  br i1 %cmp.i65.i, label %do.body9.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66.i = zext i8 %16 to i32
  %add.ptr.i67.i = getelementptr i8, ptr %bit_mask, i32 %mul.i66.i
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid.i, align 4
  %19 = ptrtoint ptr %add.ptr.i67.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67.i, align 4
  store i32 0, ptr %gtpu_teid.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body9.i, %if.end.i.if.end19.i_crit_edge
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i68.i = icmp ugt i8 %23, 3
  br i1 %cmp.i68.i, label %do.body23.i, label %if.end19.i.if.end33.i_crit_edge

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

do.body23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = shl i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69.i = zext i8 %26 to i32
  %add.ptr.i70.i = getelementptr i8, ptr %bit_mask, i32 %mul.i69.i
  %gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2.i, align 4
  %29 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70.i, align 4
  store i32 0, ptr %gtpu_dw_2.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body23.i, %if.end19.i.if.end33.i_crit_edge
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i71.i = icmp ugt i8 %33, 3
  br i1 %cmp.i71.i, label %do.body37.i, label %if.end33.i.dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag.exit_crit_edge

if.end33.i.dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag.exit

do.body37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72.i = zext i8 %36 to i32
  %add.ptr.i73.i = getelementptr i8, ptr %bit_mask, i32 %mul.i72.i
  %gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0.i, align 4
  %39 = ptrtoint ptr %add.ptr.i73.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73.i, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0.i, align 4
  br label %dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag.exit

dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag.exit:  ; preds = %do.body37.i, %if.end33.i.dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %40 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 274, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #11
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %41 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %42 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_init(ptr nocapture noundef %hw_ste_p, i16 noundef zeroext %lu_type, i1 noundef zeroext %is_rx, i16 noundef zeroext %gvmi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %lu_type to i32
  %0 = ptrtoint ptr %hw_ste_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ste_p, align 4
  %and.i = and i32 %1, 16777215
  %2 = shl nuw i32 %conv.i, 16
  %shl.i = and i32 %2, -16777216
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %hw_ste_p, align 4
  %add.ptr13.i = getelementptr i32, ptr %hw_ste_p, i32 1
  %3 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %4, 255
  %and9.i = shl nuw nsw i32 %conv.i, 8
  %add.ptr.i = getelementptr i32, ptr %hw_ste_p, i32 5
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %add.ptr13.i44 = getelementptr i32, ptr %hw_ste_p, i32 3
  %7 = ptrtoint ptr %add.ptr13.i44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr13.i44, align 4
  %conv = zext i16 %gvmi to i32
  %and = and i32 %6, -49152
  %and2 = and i32 %conv, 16383
  %or = or i32 %and, %and2
  store i32 %or, ptr %add.ptr.i, align 4
  %or17.i46 = and i32 %8, 255
  %shl15 = shl nuw i32 %conv, 16
  %and13 = or i32 %or17.i46, %shl15
  %or16 = or i32 %and13, 3840
  store i32 %or16, ptr %add.ptr13.i44, align 4
  %and9.i.masked = and i32 %and9.i, 65280
  %and27 = or i32 %and14.i, %and9.i.masked
  %or30 = or i32 %and27, %shl15
  store i32 %or30, ptr %add.ptr13.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_next_lu_type(ptr nocapture noundef %hw_ste_p, i16 noundef zeroext %lu_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %lu_type to i32
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, -32769
  %2 = shl nuw nsw i32 %conv, 7
  %shl = and i32 %2, 32768
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr13 = getelementptr i32, ptr %hw_ste_p, i32 3
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %4, -65281
  %and9 = shl nuw nsw i32 %conv, 8
  %shl16 = and i32 %and9, 65280
  %or17 = or i32 %and14, %shl16
  store i32 %or17, ptr %add.ptr13, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dr_ste_v1_get_next_lu_type(ptr nocapture noundef readonly %hw_ste_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i32, ptr %hw_ste_p, i32 3
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %shr2 = lshr i32 %3, 8
  %4 = lshr i32 %1, 7
  %shl = and i32 %4, 256
  %conv6 = and i32 %shr2, 255
  %or = or i32 %conv6, %shl
  %conv7 = trunc i32 %or to i16
  ret i16 %conv7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_miss_addr(ptr nocapture noundef %hw_ste_p, i64 noundef %miss_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shr1 = lshr i64 %miss_addr, 32
  %conv = trunc i64 %shr1 to i32
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, -256
  %and3 = and i32 %conv, 255
  %or = or i32 %and, %and3
  store i32 %or, ptr %add.ptr, align 4
  %2 = trunc i64 %miss_addr to i32
  %3 = and i32 %2, -64
  %add.ptr13 = getelementptr i32, ptr %hw_ste_p, i32 2
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %5, 63
  %or17 = or i32 %and14, %3
  store i32 %or17, ptr %add.ptr13, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @dr_ste_v1_get_miss_addr(ptr nocapture noundef readonly %hw_ste_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shr = and i32 %1, -64
  %add.ptr1 = getelementptr i32, ptr %hw_ste_p, i32 1
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %and3 = and i32 %3, 255
  %conv4 = zext i32 %and3 to i64
  %4 = shl nuw nsw i64 %conv4, 32
  %5 = zext i32 %shr to i64
  %shl5 = or i64 %4, %5
  ret i64 %shl5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_hit_addr(ptr nocapture noundef %hw_ste_p, i64 noundef %icm_addr, i32 noundef %ht_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %icm_addr, 5
  %conv = zext i32 %ht_size to i64
  %or = or i64 %shr, %conv
  %shr1 = lshr i64 %or, 27
  %conv2 = trunc i64 %shr1 to i32
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 3
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, -256
  %and4 = and i32 %conv2, 255
  %or5 = or i32 %and, %and4
  store i32 %or5, ptr %add.ptr, align 4
  %conv11 = trunc i64 %or to i32
  %add.ptr15 = getelementptr i32, ptr %hw_ste_p, i32 4
  %2 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr15, align 4
  %and16 = and i32 %3, 31
  %shl18 = shl i32 %conv11, 5
  %or19 = or i32 %and16, %shl18
  store i32 %or19, ptr %add.ptr15, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_byte_mask(ptr nocapture noundef %hw_ste_p, i16 noundef zeroext %byte_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %byte_mask to i32
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, 65535
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dr_ste_v1_get_byte_mask(ptr nocapture noundef readonly %hw_ste_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %1, 16
  %conv = trunc i32 %shr to i16
  ret i16 %conv
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_set_actions_rx(ptr nocapture noundef readnone %dmn, ptr nocapture noundef readonly %action_type_set, ptr noundef %last_ste, ptr noundef readonly %attr, ptr nocapture noundef %added_stes) #3 align 64 {
entry:
  %last_ste.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %last_ste, ptr %last_ste.addr, align 4
  %add.ptr = getelementptr i8, ptr %last_ste, i32 24
  %arrayidx = getelementptr i8, ptr %action_type_set, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.end10.thread

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %action_type_set to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %action_type_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.else.if.end10_crit_edge, label %if.then5

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %and.i = and i32 %6, 16761075
  %or41.i = or i32 %and.i, 150999820
  store i32 %or41.i, ptr %add.ptr, align 4
  %add.ptr.i.i283 = getelementptr i32, ptr %last_ste, i32 2
  %7 = ptrtoint ptr %add.ptr.i.i283 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i283, align 4
  %or.i.i284 = or i32 %8, 8
  store i32 %or.i.i284, ptr %add.ptr.i.i283, align 4
  %add.ptr9 = getelementptr i8, ptr %last_ste, i32 28
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else.if.end10_crit_edge
  %action.0 = phi ptr [ %add.ptr9, %if.then5 ], [ %add.ptr, %if.else.if.end10_crit_edge ]
  %action_sz.0 = phi i8 [ 4, %if.then5 ], [ 8, %if.else.if.end10_crit_edge ]
  %arrayidx11 = getelementptr i8, ptr %action_type_set, i32 8
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %if.end10.if.end23_crit_edge, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end10.thread:                                  ; preds = %entry
  %decap_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 3
  %11 = ptrtoint ptr %decap_actions to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %decap_actions, align 4
  %decap_index = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %decap_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %decap_index, align 8
  %15 = and i16 %12, 255
  %and13.i = zext i16 %15 to i32
  %shl14.i = shl nuw nsw i32 %and13.i, 16
  %and26.i = and i32 %14, 65535
  %or15.i = or i32 %shl14.i, %and26.i
  %or28.i = or i32 %or15.i, 251658240
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or28.i, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %last_ste, i32 2
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %18, 8
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.ptr2 = getelementptr i8, ptr %last_ste, i32 32
  %arrayidx11493 = getelementptr i8, ptr %action_type_set, i32 8
  %19 = ptrtoint ptr %arrayidx11493 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx11493, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not494 = icmp eq i8 %20, 0
  br i1 %tobool12.not494, label %if.end10.thread.if.end23_crit_edge, label %if.then16

if.end10.thread.if.end23_crit_edge:               ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then16:                                        ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %21 = ptrtoint ptr %gvmi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gvmi, align 8
  %23 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %added_stes, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %added_stes, align 4
  %add.ptr.i = getelementptr i8, ptr %last_ste, i32 64
  %25 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %last_ste.addr, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %and.i.i.i = and i32 %27, 16777215
  %add.ptr13.i.i.i = getelementptr i8, ptr %last_ste, i32 68
  %28 = ptrtoint ptr %add.ptr13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr13.i.i.i, align 4
  %and14.i.i.i = and i32 %29, 255
  %add.ptr.i.i.i = getelementptr i8, ptr %last_ste, i32 84
  %add.ptr13.i44.i.i = getelementptr i8, ptr %last_ste, i32 76
  %30 = ptrtoint ptr %add.ptr13.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr13.i44.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %or17.i46.i.i = and i32 %31, 255
  %shl15.i.i = shl nuw i32 %conv.i.i, 16
  %and13.i.i = or i32 %shl15.i.i, %or17.i46.i.i
  %or16.i.i = or i32 %and13.i.i, 3840
  store i32 %or16.i.i, ptr %add.ptr13.i44.i.i, align 4
  %and27.i.i = or i32 %shl15.i.i, %and14.i.i.i
  %or30.i.i = or i32 %and27.i.i, 3840
  store i32 %or30.i.i, ptr %add.ptr13.i.i.i, align 4
  %or.i6.i = or i32 %and.i.i.i, 33554432
  store i32 %or.i6.i, ptr %add.ptr.i, align 4
  %32 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 12)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end10.if.end18_crit_edge
  %action.1 = phi ptr [ %add.ptr.i.i.i, %if.then16 ], [ %action.0, %if.end10.if.end18_crit_edge ]
  %action_sz.1 = phi i8 [ 12, %if.then16 ], [ %action_sz.0, %if.end10.if.end18_crit_edge ]
  %allow_modify_hdr.1.off0 = phi i1 [ true, %if.then16 ], [ %tobool4.not, %if.end10.if.end18_crit_edge ]
  %flow_tag = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 6
  %33 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flow_tag, align 8
  %and13.i286 = and i32 %34, 16777215
  %or15.i287 = or i32 %and13.i286, 201326592
  %35 = ptrtoint ptr %action.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or15.i287, ptr %action.1, align 4
  %sub20 = add nsw i8 %action_sz.1, -4
  %add.ptr22 = getelementptr i8, ptr %action.1, i32 4
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.end10.thread.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %action.2 = phi ptr [ %add.ptr22, %if.end18 ], [ %action.0, %if.end10.if.end23_crit_edge ], [ %add.ptr2, %if.end10.thread.if.end23_crit_edge ]
  %action_sz.2 = phi i8 [ %sub20, %if.end18 ], [ %action_sz.0, %if.end10.if.end23_crit_edge ], [ 0, %if.end10.thread.if.end23_crit_edge ]
  %allow_modify_hdr.2.off0 = phi i1 [ %allow_modify_hdr.1.off0, %if.end18 ], [ %tobool4.not, %if.end10.if.end23_crit_edge ], [ false, %if.end10.thread.if.end23_crit_edge ]
  %arrayidx24 = getelementptr i8, ptr %action_type_set, i32 11
  %36 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool25.not = icmp eq i8 %37, 0
  br i1 %tobool25.not, label %if.end23.if.end40_crit_edge, label %if.then26

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %action_sz.2)
  %cmp28 = icmp ugt i8 %action_sz.2, 3
  %38 = and i1 %allow_modify_hdr.2.off0, %cmp28
  br i1 %38, label %if.then26.if.end34_crit_edge, label %if.then31

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi32 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %39 = ptrtoint ptr %gvmi32 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gvmi32, align 8
  %41 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %added_stes, align 4
  %inc.i288 = add i32 %42, 1
  store i32 %inc.i288, ptr %added_stes, align 4
  %43 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i289 = getelementptr i8, ptr %44, i32 64
  store ptr %add.ptr.i289, ptr %last_ste.addr, align 4
  %45 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i289, align 4
  %and.i.i.i290 = and i32 %46, 16777215
  store i32 %and.i.i.i290, ptr %add.ptr.i289, align 4
  %add.ptr13.i.i.i291 = getelementptr i8, ptr %44, i32 68
  %47 = ptrtoint ptr %add.ptr13.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr13.i.i.i291, align 4
  %and14.i.i.i292 = and i32 %48, 255
  %add.ptr.i.i.i293 = getelementptr i8, ptr %44, i32 84
  %49 = ptrtoint ptr %add.ptr.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i.i293, align 4
  %add.ptr13.i44.i.i294 = getelementptr i8, ptr %44, i32 76
  %51 = ptrtoint ptr %add.ptr13.i44.i.i294 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr13.i44.i.i294, align 4
  %conv.i.i295 = zext i16 %40 to i32
  %and.i.i296 = and i32 %50, -49152
  %and2.i.i297 = and i32 %conv.i.i295, 16383
  %or.i.i298 = or i32 %and.i.i296, %and2.i.i297
  store i32 %or.i.i298, ptr %add.ptr.i.i.i293, align 4
  %or17.i46.i.i299 = and i32 %52, 255
  %shl15.i.i300 = shl nuw i32 %conv.i.i295, 16
  %and13.i.i301 = or i32 %shl15.i.i300, %or17.i46.i.i299
  %or16.i.i302 = or i32 %and13.i.i301, 3840
  store i32 %or16.i.i302, ptr %add.ptr13.i44.i.i294, align 4
  %and27.i.i303 = or i32 %shl15.i.i300, %and14.i.i.i292
  %or30.i.i304 = or i32 %and27.i.i303, 3840
  store i32 %or30.i.i304, ptr %add.ptr13.i.i.i291, align 4
  %53 = load ptr, ptr %last_ste.addr, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %and.i5.i305 = and i32 %55, 16777215
  %or.i6.i306 = or i32 %and.i5.i305, 33554432
  store i32 %or.i6.i306, ptr %53, align 4
  %56 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i307 = getelementptr i8, ptr %56, i32 20
  %57 = call ptr @memset(ptr %add.ptr1.i307, i32 0, i32 12)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then26.if.end34_crit_edge
  %action.3 = phi ptr [ %add.ptr1.i307, %if.then31 ], [ %action.2, %if.then26.if.end34_crit_edge ]
  %action_sz.3 = phi i8 [ 12, %if.then31 ], [ %action_sz.2, %if.then26.if.end34_crit_edge ]
  %58 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %last_ste.addr, align 4
  %vlans = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %60 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vlans, align 8
  %62 = ptrtoint ptr %action.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %action.3, align 4
  %and.i308 = and i32 %63, 12648384
  %conv.i = shl i32 %61, 1
  %and26.i309 = and i32 %conv.i, 62
  %or15.i310 = or i32 %and.i308, %and26.i309
  %or28.i311 = or i32 %or15.i310, 134348800
  store i32 %or28.i311, ptr %action.3, align 4
  %add.ptr.i.i312 = getelementptr i32, ptr %59, i32 2
  %64 = ptrtoint ptr %add.ptr.i.i312 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i312, align 4
  %or.i.i313 = or i32 %65, 8
  store i32 %or.i.i313, ptr %add.ptr.i.i312, align 4
  %sub37 = add nsw i8 %action_sz.3, -4
  %add.ptr39 = getelementptr i8, ptr %action.3, i32 4
  br label %if.end40

if.end40:                                         ; preds = %if.end34, %if.end23.if.end40_crit_edge
  %action.4 = phi ptr [ %add.ptr39, %if.end34 ], [ %action.2, %if.end23.if.end40_crit_edge ]
  %action_sz.4 = phi i8 [ %sub37, %if.end34 ], [ %action_sz.2, %if.end23.if.end40_crit_edge ]
  %allow_modify_hdr.4.off0 = phi i1 [ %38, %if.end34 ], [ %allow_modify_hdr.2.off0, %if.end23.if.end40_crit_edge ]
  %arrayidx41 = getelementptr i8, ptr %action_type_set, i32 9
  %66 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool42.not = icmp eq i8 %67, 0
  br i1 %tobool42.not, label %if.end40.if.end57_crit_edge, label %if.then43

if.end40.if.end57_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then43:                                        ; preds = %if.end40
  %allow_modify_hdr.4.off0.not = xor i1 %allow_modify_hdr.4.off0, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.4)
  %cmp47 = icmp ult i8 %action_sz.4, 8
  %or.cond = select i1 %allow_modify_hdr.4.off0.not, i1 true, i1 %cmp47
  br i1 %or.cond, label %if.then49, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi50 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %68 = ptrtoint ptr %gvmi50 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %gvmi50, align 8
  %70 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %added_stes, align 4
  %inc.i314 = add i32 %71, 1
  store i32 %inc.i314, ptr %added_stes, align 4
  %72 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i315 = getelementptr i8, ptr %73, i32 64
  store ptr %add.ptr.i315, ptr %last_ste.addr, align 4
  %74 = ptrtoint ptr %add.ptr.i315 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i315, align 4
  %and.i.i.i316 = and i32 %75, 16777215
  store i32 %and.i.i.i316, ptr %add.ptr.i315, align 4
  %add.ptr13.i.i.i317 = getelementptr i8, ptr %73, i32 68
  %76 = ptrtoint ptr %add.ptr13.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr13.i.i.i317, align 4
  %and14.i.i.i318 = and i32 %77, 255
  %add.ptr.i.i.i319 = getelementptr i8, ptr %73, i32 84
  %78 = ptrtoint ptr %add.ptr.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i.i319, align 4
  %add.ptr13.i44.i.i320 = getelementptr i8, ptr %73, i32 76
  %80 = ptrtoint ptr %add.ptr13.i44.i.i320 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr13.i44.i.i320, align 4
  %conv.i.i321 = zext i16 %69 to i32
  %and.i.i322 = and i32 %79, -49152
  %and2.i.i323 = and i32 %conv.i.i321, 16383
  %or.i.i324 = or i32 %and.i.i322, %and2.i.i323
  store i32 %or.i.i324, ptr %add.ptr.i.i.i319, align 4
  %or17.i46.i.i325 = and i32 %81, 255
  %shl15.i.i326 = shl nuw i32 %conv.i.i321, 16
  %and13.i.i327 = or i32 %shl15.i.i326, %or17.i46.i.i325
  %or16.i.i328 = or i32 %and13.i.i327, 3840
  store i32 %or16.i.i328, ptr %add.ptr13.i44.i.i320, align 4
  %and27.i.i329 = or i32 %shl15.i.i326, %and14.i.i.i318
  %or30.i.i330 = or i32 %and27.i.i329, 3840
  store i32 %or30.i.i330, ptr %add.ptr13.i.i.i317, align 4
  %82 = load ptr, ptr %last_ste.addr, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %and.i5.i331 = and i32 %84, 16777215
  %or.i6.i332 = or i32 %and.i5.i331, 33554432
  store i32 %or.i6.i332, ptr %82, align 4
  %85 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i333 = getelementptr i8, ptr %85, i32 20
  %86 = call ptr @memset(ptr %add.ptr1.i333, i32 0, i32 12)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then43.if.end52_crit_edge
  %action.5 = phi ptr [ %add.ptr1.i333, %if.then49 ], [ %action.4, %if.then43.if.end52_crit_edge ]
  %action_sz.5 = phi i8 [ 4, %if.then49 ], [ 0, %if.then43.if.end52_crit_edge ]
  %allow_modify_hdr.5.off0 = phi i1 [ true, %if.then49 ], [ %allow_modify_hdr.4.off0, %if.then43.if.end52_crit_edge ]
  %87 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %last_ste.addr, align 4
  %modify_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 1
  %89 = ptrtoint ptr %modify_actions to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %modify_actions, align 4
  %91 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %attr, align 8
  %93 = and i16 %90, 255
  %and13.i334 = zext i16 %93 to i32
  %shl14.i335 = shl nuw nsw i32 %and13.i334, 16
  %and26.i336 = and i32 %92, 65535
  %or15.i337 = or i32 %shl14.i335, %and26.i336
  %or28.i338 = or i32 %or15.i337, 251658240
  %94 = ptrtoint ptr %action.5 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or28.i338, ptr %action.5, align 4
  %add.ptr.i.i339 = getelementptr i32, ptr %88, i32 2
  %95 = ptrtoint ptr %add.ptr.i.i339 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i.i339, align 4
  %or.i.i340 = or i32 %96, 8
  store i32 %or.i.i340, ptr %add.ptr.i.i339, align 4
  %add.ptr56 = getelementptr i8, ptr %action.5, i32 8
  br label %if.end57

if.end57:                                         ; preds = %if.end52, %if.end40.if.end57_crit_edge
  %action.6 = phi ptr [ %add.ptr56, %if.end52 ], [ %action.4, %if.end40.if.end57_crit_edge ]
  %action_sz.6 = phi i8 [ %action_sz.5, %if.end52 ], [ %action_sz.4, %if.end40.if.end57_crit_edge ]
  %allow_modify_hdr.6.off0 = phi i1 [ %allow_modify_hdr.5.off0, %if.end52 ], [ %allow_modify_hdr.4.off0, %if.end40.if.end57_crit_edge ]
  %arrayidx58 = getelementptr i8, ptr %action_type_set, i32 12
  %97 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool59.not = icmp eq i8 %98, 0
  br i1 %tobool59.not, label %if.end57.if.end80_crit_edge, label %for.cond.preheader

if.end57.if.end80_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

for.cond.preheader:                               ; preds = %if.end57
  %vlans61 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %99 = ptrtoint ptr %vlans61 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vlans61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp63501 = icmp sgt i32 %100, 0
  br i1 %cmp63501, label %for.body.lr.ph, label %for.cond.preheader.if.end80_crit_edge

for.cond.preheader.if.end80_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %allow_modify_hdr.6.off0.not = xor i1 %allow_modify_hdr.6.off0, true
  %gvmi71 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end73.for.body_crit_edge, %for.body.lr.ph
  %i.0504 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end73.for.body_crit_edge ]
  %action_sz.7503 = phi i8 [ %action_sz.6, %for.body.lr.ph ], [ %sub77, %if.end73.for.body_crit_edge ]
  %action.7502 = phi ptr [ %action.6, %for.body.lr.ph ], [ %add.ptr79, %if.end73.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.7503)
  %cmp66 = icmp ult i8 %action_sz.7503, 8
  %brmerge281 = select i1 %cmp66, i1 true, i1 %allow_modify_hdr.6.off0.not
  br i1 %brmerge281, label %if.then70, label %for.body.if.end73_crit_edge

for.body.if.end73_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then70:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %gvmi71 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %gvmi71, align 8
  %103 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %added_stes, align 4
  %inc.i341 = add i32 %104, 1
  store i32 %inc.i341, ptr %added_stes, align 4
  %105 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i342 = getelementptr i8, ptr %106, i32 64
  store ptr %add.ptr.i342, ptr %last_ste.addr, align 4
  %107 = ptrtoint ptr %add.ptr.i342 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i342, align 4
  %and.i.i.i343 = and i32 %108, 16777215
  store i32 %and.i.i.i343, ptr %add.ptr.i342, align 4
  %add.ptr13.i.i.i344 = getelementptr i8, ptr %106, i32 68
  %109 = ptrtoint ptr %add.ptr13.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr13.i.i.i344, align 4
  %and14.i.i.i345 = and i32 %110, 255
  %add.ptr.i.i.i346 = getelementptr i8, ptr %106, i32 84
  %111 = ptrtoint ptr %add.ptr.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i.i.i346, align 4
  %add.ptr13.i44.i.i347 = getelementptr i8, ptr %106, i32 76
  %113 = ptrtoint ptr %add.ptr13.i44.i.i347 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr13.i44.i.i347, align 4
  %conv.i.i348 = zext i16 %102 to i32
  %and.i.i349 = and i32 %112, -49152
  %and2.i.i350 = and i32 %conv.i.i348, 16383
  %or.i.i351 = or i32 %and.i.i349, %and2.i.i350
  store i32 %or.i.i351, ptr %add.ptr.i.i.i346, align 4
  %or17.i46.i.i352 = and i32 %114, 255
  %shl15.i.i353 = shl nuw i32 %conv.i.i348, 16
  %and13.i.i354 = or i32 %shl15.i.i353, %or17.i46.i.i352
  %or16.i.i355 = or i32 %and13.i.i354, 3840
  store i32 %or16.i.i355, ptr %add.ptr13.i44.i.i347, align 4
  %and27.i.i356 = or i32 %shl15.i.i353, %and14.i.i.i345
  %or30.i.i357 = or i32 %and27.i.i356, 3840
  store i32 %or30.i.i357, ptr %add.ptr13.i.i.i344, align 4
  %115 = load ptr, ptr %last_ste.addr, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %and.i5.i358 = and i32 %117, 16777215
  %or.i6.i359 = or i32 %and.i5.i358, 33554432
  store i32 %or.i6.i359, ptr %115, align 4
  %118 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i360 = getelementptr i8, ptr %118, i32 20
  %119 = call ptr @memset(ptr %add.ptr1.i360, i32 0, i32 12)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %for.body.if.end73_crit_edge
  %action.8 = phi ptr [ %add.ptr1.i360, %if.then70 ], [ %action.7502, %for.body.if.end73_crit_edge ]
  %action_sz.8 = phi i8 [ 12, %if.then70 ], [ %action_sz.7503, %for.body.if.end73_crit_edge ]
  %120 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %last_ste.addr, align 4
  %arrayidx75 = getelementptr %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11, i32 1, i32 %i.0504
  %122 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx75, align 4
  %124 = ptrtoint ptr %action.8 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %action.8, align 4
  %and.i361 = and i32 %125, 16712191
  %or15.i362 = or i32 %and.i361, 167775232
  store i32 %or15.i362, ptr %action.8, align 4
  %add.ptr24.i = getelementptr i32, ptr %action.8, i32 1
  %126 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %add.ptr24.i, align 4
  %add.ptr.i.i363 = getelementptr i32, ptr %121, i32 2
  %127 = ptrtoint ptr %add.ptr.i.i363 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i.i363, align 4
  %or.i.i364 = or i32 %128, 8
  store i32 %or.i.i364, ptr %add.ptr.i.i363, align 4
  %sub77 = add i8 %action_sz.8, -8
  %add.ptr79 = getelementptr i8, ptr %action.8, i32 8
  %inc = add nuw nsw i32 %i.0504, 1
  %129 = ptrtoint ptr %vlans61 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vlans61, align 8
  %cmp63 = icmp slt i32 %inc, %130
  br i1 %cmp63, label %if.end73.for.body_crit_edge, label %if.end73.if.end80_crit_edge

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end80:                                         ; preds = %if.end73.if.end80_crit_edge, %for.cond.preheader.if.end80_crit_edge, %if.end57.if.end80_crit_edge
  %action.9 = phi ptr [ %action.6, %if.end57.if.end80_crit_edge ], [ %action.6, %for.cond.preheader.if.end80_crit_edge ], [ %add.ptr79, %if.end73.if.end80_crit_edge ]
  %action_sz.9 = phi i8 [ %action_sz.6, %if.end57.if.end80_crit_edge ], [ %action_sz.6, %for.cond.preheader.if.end80_crit_edge ], [ %sub77, %if.end73.if.end80_crit_edge ]
  %arrayidx81 = getelementptr i8, ptr %action_type_set, i32 7
  %131 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool82.not = icmp eq i8 %132, 0
  br i1 %tobool82.not, label %if.end80.if.end89_crit_edge, label %if.then83

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then83:                                        ; preds = %if.end80
  br i1 %allow_modify_hdr.6.off0, label %if.then83.if.end88_crit_edge, label %if.then85

if.then83.if.end88_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then85:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi86 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %133 = ptrtoint ptr %gvmi86 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %gvmi86, align 8
  %135 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %added_stes, align 4
  %inc.i365 = add i32 %136, 1
  store i32 %inc.i365, ptr %added_stes, align 4
  %137 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i366 = getelementptr i8, ptr %138, i32 64
  store ptr %add.ptr.i366, ptr %last_ste.addr, align 4
  %139 = ptrtoint ptr %add.ptr.i366 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i366, align 4
  %and.i.i.i367 = and i32 %140, 16777215
  store i32 %and.i.i.i367, ptr %add.ptr.i366, align 4
  %add.ptr13.i.i.i368 = getelementptr i8, ptr %138, i32 68
  %141 = ptrtoint ptr %add.ptr13.i.i.i368 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr13.i.i.i368, align 4
  %and14.i.i.i369 = and i32 %142, 255
  %add.ptr.i.i.i370 = getelementptr i8, ptr %138, i32 84
  %143 = ptrtoint ptr %add.ptr.i.i.i370 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i.i.i370, align 4
  %add.ptr13.i44.i.i371 = getelementptr i8, ptr %138, i32 76
  %145 = ptrtoint ptr %add.ptr13.i44.i.i371 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr13.i44.i.i371, align 4
  %conv.i.i372 = zext i16 %134 to i32
  %and.i.i373 = and i32 %144, -49152
  %and2.i.i374 = and i32 %conv.i.i372, 16383
  %or.i.i375 = or i32 %and.i.i373, %and2.i.i374
  store i32 %or.i.i375, ptr %add.ptr.i.i.i370, align 4
  %or17.i46.i.i376 = and i32 %146, 255
  %shl15.i.i377 = shl nuw i32 %conv.i.i372, 16
  %and13.i.i378 = or i32 %shl15.i.i377, %or17.i46.i.i376
  %or16.i.i379 = or i32 %and13.i.i378, 3840
  store i32 %or16.i.i379, ptr %add.ptr13.i44.i.i371, align 4
  %and27.i.i380 = or i32 %shl15.i.i377, %and14.i.i.i369
  %or30.i.i381 = or i32 %and27.i.i380, 3840
  store i32 %or30.i.i381, ptr %add.ptr13.i.i.i368, align 4
  %147 = load ptr, ptr %last_ste.addr, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %and.i5.i382 = and i32 %149, 16777215
  %or.i6.i383 = or i32 %and.i5.i382, 33554432
  store i32 %or.i6.i383, ptr %147, align 4
  %150 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i384 = getelementptr i8, ptr %150, i32 20
  %151 = call ptr @memset(ptr %add.ptr1.i384, i32 0, i32 12)
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.then83.if.end88_crit_edge
  %action.10 = phi ptr [ %action.9, %if.then83.if.end88_crit_edge ], [ %add.ptr1.i384, %if.then85 ]
  %action_sz.10 = phi i8 [ %action_sz.9, %if.then83.if.end88_crit_edge ], [ 12, %if.then85 ]
  %152 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %last_ste.addr, align 4
  %ctr_id = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 7
  %154 = ptrtoint ptr %ctr_id to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ctr_id, align 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %153, align 4
  %and.i385 = and i32 %157, -16777216
  %and2.i = and i32 %155, 16777215
  %or.i = or i32 %and.i385, %and2.i
  store i32 %or.i, ptr %153, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end80.if.end89_crit_edge
  %action.11 = phi ptr [ %action.10, %if.end88 ], [ %action.9, %if.end80.if.end89_crit_edge ]
  %action_sz.11 = phi i8 [ %action_sz.10, %if.end88 ], [ %action_sz.9, %if.end80.if.end89_crit_edge ]
  %allow_modify_hdr.8.off0 = phi i1 [ true, %if.end88 ], [ %allow_modify_hdr.6.off0, %if.end80.if.end89_crit_edge ]
  %arrayidx90 = getelementptr i8, ptr %action_type_set, i32 1
  %158 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool91.not = icmp eq i8 %159, 0
  br i1 %tobool91.not, label %if.else105, label %if.then92

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.11)
  %cmp94 = icmp ult i8 %action_sz.11, 8
  br i1 %cmp94, label %if.then96, label %if.then92.if.end99_crit_edge

if.then92.if.end99_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi97 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %160 = ptrtoint ptr %gvmi97 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %gvmi97, align 8
  %162 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %added_stes, align 4
  %inc.i386 = add i32 %163, 1
  store i32 %inc.i386, ptr %added_stes, align 4
  %164 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i387 = getelementptr i8, ptr %165, i32 64
  store ptr %add.ptr.i387, ptr %last_ste.addr, align 4
  %166 = ptrtoint ptr %add.ptr.i387 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i387, align 4
  %and.i.i.i388 = and i32 %167, 16777215
  store i32 %and.i.i.i388, ptr %add.ptr.i387, align 4
  %add.ptr13.i.i.i389 = getelementptr i8, ptr %165, i32 68
  %168 = ptrtoint ptr %add.ptr13.i.i.i389 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr13.i.i.i389, align 4
  %and14.i.i.i390 = and i32 %169, 255
  %add.ptr.i.i.i391 = getelementptr i8, ptr %165, i32 84
  %170 = ptrtoint ptr %add.ptr.i.i.i391 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr.i.i.i391, align 4
  %add.ptr13.i44.i.i392 = getelementptr i8, ptr %165, i32 76
  %172 = ptrtoint ptr %add.ptr13.i44.i.i392 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr13.i44.i.i392, align 4
  %conv.i.i393 = zext i16 %161 to i32
  %and.i.i394 = and i32 %171, -49152
  %and2.i.i395 = and i32 %conv.i.i393, 16383
  %or.i.i396 = or i32 %and.i.i394, %and2.i.i395
  store i32 %or.i.i396, ptr %add.ptr.i.i.i391, align 4
  %or17.i46.i.i397 = and i32 %173, 255
  %shl15.i.i398 = shl nuw i32 %conv.i.i393, 16
  %and13.i.i399 = or i32 %shl15.i.i398, %or17.i46.i.i397
  %or16.i.i400 = or i32 %and13.i.i399, 3840
  store i32 %or16.i.i400, ptr %add.ptr13.i44.i.i392, align 4
  %and27.i.i401 = or i32 %shl15.i.i398, %and14.i.i.i390
  %or30.i.i402 = or i32 %and27.i.i401, 3840
  store i32 %or30.i.i402, ptr %add.ptr13.i.i.i389, align 4
  %174 = load ptr, ptr %last_ste.addr, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %and.i5.i403 = and i32 %176, 16777215
  %or.i6.i404 = or i32 %and.i5.i403, 33554432
  store i32 %or.i6.i404, ptr %174, align 4
  %177 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i405 = getelementptr i8, ptr %177, i32 20
  %178 = call ptr @memset(ptr %add.ptr1.i405, i32 0, i32 12)
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.then92.if.end99_crit_edge
  %action.12 = phi ptr [ %add.ptr1.i405, %if.then96 ], [ %action.11, %if.then92.if.end99_crit_edge ]
  %179 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %last_ste.addr, align 4
  %reformat = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %181 = ptrtoint ptr %reformat to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %reformat, align 4
  %size = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %183 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size, align 4
  %185 = ptrtoint ptr %action.12 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %action.12, align 4
  %and.i406 = and i32 %186, 16776704
  %div.i = sdiv i32 %184, 2
  %and13.i407 = shl i32 %div.i, 3
  %shl14.i408 = and i32 %and13.i407, 504
  %add.ptr24.i410 = getelementptr i32, ptr %action.12, i32 1
  %187 = ptrtoint ptr %add.ptr24.i410 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %182, ptr %add.ptr24.i410, align 4
  %or.i409 = or i32 %and.i406, %shl14.i408
  %or41.i411 = or i32 %or.i409, 184549377
  store i32 %or41.i411, ptr %action.12, align 4
  br label %if.end171.sink.split

if.else105:                                       ; preds = %if.end89
  %arrayidx106 = getelementptr i8, ptr %action_type_set, i32 3
  %188 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool107.not = icmp eq i8 %189, 0
  br i1 %tobool107.not, label %if.else124, label %if.then108

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %action_sz.11)
  %cmp110 = icmp ult i8 %action_sz.11, 12
  br i1 %cmp110, label %if.then112, label %if.then108.if.end115_crit_edge

if.then108.if.end115_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then112:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi113 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %190 = ptrtoint ptr %gvmi113 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %gvmi113, align 8
  %192 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %added_stes, align 4
  %inc.i414 = add i32 %193, 1
  store i32 %inc.i414, ptr %added_stes, align 4
  %194 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i415 = getelementptr i8, ptr %195, i32 64
  store ptr %add.ptr.i415, ptr %last_ste.addr, align 4
  %196 = ptrtoint ptr %add.ptr.i415 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr.i415, align 4
  %and.i.i.i416 = and i32 %197, 16777215
  store i32 %and.i.i.i416, ptr %add.ptr.i415, align 4
  %add.ptr13.i.i.i417 = getelementptr i8, ptr %195, i32 68
  %198 = ptrtoint ptr %add.ptr13.i.i.i417 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %add.ptr13.i.i.i417, align 4
  %and14.i.i.i418 = and i32 %199, 255
  %add.ptr.i.i.i419 = getelementptr i8, ptr %195, i32 84
  %200 = ptrtoint ptr %add.ptr.i.i.i419 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %add.ptr.i.i.i419, align 4
  %add.ptr13.i44.i.i420 = getelementptr i8, ptr %195, i32 76
  %202 = ptrtoint ptr %add.ptr13.i44.i.i420 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr13.i44.i.i420, align 4
  %conv.i.i421 = zext i16 %191 to i32
  %and.i.i422 = and i32 %201, -49152
  %and2.i.i423 = and i32 %conv.i.i421, 16383
  %or.i.i424 = or i32 %and.i.i422, %and2.i.i423
  store i32 %or.i.i424, ptr %add.ptr.i.i.i419, align 4
  %or17.i46.i.i425 = and i32 %203, 255
  %shl15.i.i426 = shl nuw i32 %conv.i.i421, 16
  %and13.i.i427 = or i32 %shl15.i.i426, %or17.i46.i.i425
  %or16.i.i428 = or i32 %and13.i.i427, 3840
  store i32 %or16.i.i428, ptr %add.ptr13.i44.i.i420, align 4
  %and27.i.i429 = or i32 %shl15.i.i426, %and14.i.i.i418
  %or30.i.i430 = or i32 %and27.i.i429, 3840
  store i32 %or30.i.i430, ptr %add.ptr13.i.i.i417, align 4
  %204 = load ptr, ptr %last_ste.addr, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 4
  %and.i5.i431 = and i32 %206, 16777215
  %or.i6.i432 = or i32 %and.i5.i431, 33554432
  store i32 %or.i6.i432, ptr %204, align 4
  %207 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i433 = getelementptr i8, ptr %207, i32 20
  %208 = call ptr @memset(ptr %add.ptr1.i433, i32 0, i32 12)
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.then108.if.end115_crit_edge
  %action.13 = phi ptr [ %add.ptr1.i433, %if.then112 ], [ %action.11, %if.then108.if.end115_crit_edge ]
  %add.ptr116 = getelementptr i8, ptr %action.13, i32 4
  %209 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %last_ste.addr, align 4
  %reformat117 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %211 = ptrtoint ptr %reformat117 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %reformat117, align 4
  %size120 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %213 = ptrtoint ptr %size120 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %size120, align 4
  %215 = ptrtoint ptr %action.13 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %action.13, align 4
  %and.i434 = and i32 %216, 16761087
  %or15.i435 = or i32 %and.i434, 150996736
  store i32 %or15.i435, ptr %action.13, align 4
  %217 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %add.ptr116, align 4
  %and25.i = and i32 %218, 16776704
  %div.i436 = sdiv i32 %214, 2
  %and39.i = shl i32 %div.i436, 3
  %shl40.i = and i32 %and39.i, 504
  %add.ptr50.i = getelementptr i8, ptr %action.13, i32 8
  %219 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %212, ptr %add.ptr50.i, align 4
  %or28.i437 = or i32 %shl40.i, %and25.i
  %or67.i = or i32 %or28.i437, 184549377
  store i32 %or67.i, ptr %add.ptr116, align 4
  br label %if.end171.sink.split

if.else124:                                       ; preds = %if.else105
  %arrayidx125 = getelementptr i8, ptr %action_type_set, i32 13
  %220 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool126.not = icmp eq i8 %221, 0
  br i1 %tobool126.not, label %if.else147, label %if.then127

if.then127:                                       ; preds = %if.else124
  %allow_modify_hdr.8.off0.not = xor i1 %allow_modify_hdr.8.off0, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.11)
  %cmp131 = icmp ult i8 %action_sz.11, 8
  %or.cond282 = select i1 %allow_modify_hdr.8.off0.not, i1 true, i1 %cmp131
  br i1 %or.cond282, label %if.then133, label %if.then127.if.end136_crit_edge

if.then127.if.end136_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then133:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi134 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %222 = ptrtoint ptr %gvmi134 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %gvmi134, align 8
  %224 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %added_stes, align 4
  %inc.i440 = add i32 %225, 1
  store i32 %inc.i440, ptr %added_stes, align 4
  %226 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i441 = getelementptr i8, ptr %227, i32 64
  store ptr %add.ptr.i441, ptr %last_ste.addr, align 4
  %228 = ptrtoint ptr %add.ptr.i441 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %add.ptr.i441, align 4
  %and.i.i.i442 = and i32 %229, 16777215
  store i32 %and.i.i.i442, ptr %add.ptr.i441, align 4
  %add.ptr13.i.i.i443 = getelementptr i8, ptr %227, i32 68
  %230 = ptrtoint ptr %add.ptr13.i.i.i443 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %add.ptr13.i.i.i443, align 4
  %and14.i.i.i444 = and i32 %231, 255
  %add.ptr.i.i.i445 = getelementptr i8, ptr %227, i32 84
  %232 = ptrtoint ptr %add.ptr.i.i.i445 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %add.ptr.i.i.i445, align 4
  %add.ptr13.i44.i.i446 = getelementptr i8, ptr %227, i32 76
  %234 = ptrtoint ptr %add.ptr13.i44.i.i446 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %add.ptr13.i44.i.i446, align 4
  %conv.i.i447 = zext i16 %223 to i32
  %and.i.i448 = and i32 %233, -49152
  %and2.i.i449 = and i32 %conv.i.i447, 16383
  %or.i.i450 = or i32 %and.i.i448, %and2.i.i449
  store i32 %or.i.i450, ptr %add.ptr.i.i.i445, align 4
  %or17.i46.i.i451 = and i32 %235, 255
  %shl15.i.i452 = shl nuw i32 %conv.i.i447, 16
  %and13.i.i453 = or i32 %shl15.i.i452, %or17.i46.i.i451
  %or16.i.i454 = or i32 %and13.i.i453, 3840
  store i32 %or16.i.i454, ptr %add.ptr13.i44.i.i446, align 4
  %and27.i.i455 = or i32 %shl15.i.i452, %and14.i.i.i444
  %or30.i.i456 = or i32 %and27.i.i455, 3840
  store i32 %or30.i.i456, ptr %add.ptr13.i.i.i443, align 4
  %236 = load ptr, ptr %last_ste.addr, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %and.i5.i457 = and i32 %238, 16777215
  %or.i6.i458 = or i32 %and.i5.i457, 33554432
  store i32 %or.i6.i458, ptr %236, align 4
  %239 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i459 = getelementptr i8, ptr %239, i32 20
  %240 = call ptr @memset(ptr %add.ptr1.i459, i32 0, i32 12)
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.then127.if.end136_crit_edge
  %action.14 = phi ptr [ %add.ptr1.i459, %if.then133 ], [ %action.11, %if.then127.if.end136_crit_edge ]
  %241 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %last_ste.addr, align 4
  %reformat137 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %243 = ptrtoint ptr %reformat137 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %reformat137, align 4
  %param_0 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 2
  %245 = ptrtoint ptr %param_0 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %param_0, align 4
  %param_1 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 3
  %247 = ptrtoint ptr %param_1 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %param_1, align 1
  %size142 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %249 = ptrtoint ptr %size142 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %size142, align 4
  %251 = ptrtoint ptr %action.14 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %action.14, align 4
  %and.i460 = and i32 %252, 12582912
  %253 = and i8 %246, 63
  %and13.i461 = zext i8 %253 to i32
  %shl14.i462 = shl nuw nsw i32 %and13.i461, 16
  %or.i463 = or i32 %and.i460, %shl14.i462
  %div.i464 = sdiv i32 %250, 2
  %and26.i465 = shl i32 %div.i464, 3
  %shl27.i = and i32 %and26.i465, 504
  %or15.i466 = or i32 %or.i463, %shl27.i
  %254 = lshr i8 %248, 1
  %div35.i = zext i8 %254 to i32
  %shl42.i = shl nuw nsw i32 %div35.i, 9
  %or28.i467 = or i32 %or15.i466, %shl42.i
  %or43.i = or i32 %or28.i467, 184549376
  %add.ptr52.i = getelementptr i32, ptr %action.14, i32 1
  %255 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %244, ptr %add.ptr52.i, align 4
  store i32 %or43.i, ptr %action.14, align 4
  br label %if.end171.sink.split

if.else147:                                       ; preds = %if.else124
  %arrayidx148 = getelementptr i8, ptr %action_type_set, i32 14
  %256 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool149.not = icmp eq i8 %257, 0
  br i1 %tobool149.not, label %if.else147.if.end171_crit_edge, label %if.then150

if.else147.if.end171_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then150:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %action_sz.11)
  %cmp152 = icmp ult i8 %action_sz.11, 4
  br i1 %cmp152, label %if.then154, label %if.then150.if.end157_crit_edge

if.then150.if.end157_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then154:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi155 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %258 = ptrtoint ptr %gvmi155 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %gvmi155, align 8
  call fastcc void @dr_ste_v1_arr_init_next_match(ptr noundef nonnull %last_ste.addr, ptr noundef %added_stes, i16 noundef zeroext %259)
  %260 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr156 = getelementptr i8, ptr %261, i32 20
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.then150.if.end157_crit_edge
  %action.15 = phi ptr [ %add.ptr156, %if.then154 ], [ %action.11, %if.then150.if.end157_crit_edge ]
  %262 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %last_ste.addr, align 4
  %param_0159 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 2
  %264 = ptrtoint ptr %param_0159 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %param_0159, align 4
  %param_1161 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 3
  %266 = ptrtoint ptr %param_1161 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %param_1161, align 1
  %size163 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %268 = ptrtoint ptr %size163 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %size163, align 4
  %270 = ptrtoint ptr %action.15 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %action.15, align 4
  %and.i470 = and i32 %271, 12632128
  %272 = and i8 %265, 63
  %and13.i471 = zext i8 %272 to i32
  %shl14.i472 = shl nuw nsw i32 %and13.i471, 16
  %or.i473 = or i32 %and.i470, %shl14.i472
  %div.i474 = sdiv i32 %269, 2
  %and26.i475 = and i32 %div.i474, 63
  %or15.i476 = or i32 %or.i473, %and26.i475
  %273 = lshr i8 %267, 1
  %div35.i477 = zext i8 %273 to i32
  %shl42.i478 = shl nuw nsw i32 %div35.i477, 7
  %or28.i479 = or i32 %or15.i476, %shl42.i478
  %or43.i480 = or i32 %or28.i479, 134217728
  store i32 %or43.i480, ptr %action.15, align 4
  br label %if.end171.sink.split

if.end171.sink.split:                             ; preds = %if.end157, %if.end136, %if.end115, %if.end99
  %.sink = phi ptr [ %180, %if.end99 ], [ %242, %if.end136 ], [ %263, %if.end157 ], [ %210, %if.end115 ]
  %add.ptr.i.i412 = getelementptr i32, ptr %.sink, i32 2
  %274 = ptrtoint ptr %add.ptr.i.i412 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %add.ptr.i.i412, align 4
  %or.i.i439 = or i32 %275, 8
  store i32 %or.i.i439, ptr %add.ptr.i.i412, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.end171.sink.split, %if.else147.if.end171_crit_edge
  %276 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %last_ste.addr, align 4
  %hit_gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 9
  %278 = ptrtoint ptr %hit_gvmi to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %hit_gvmi, align 2
  %conv.i483 = zext i16 %279 to i32
  %add.ptr.i484 = getelementptr i32, ptr %277, i32 3
  %280 = ptrtoint ptr %add.ptr.i484 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %add.ptr.i484, align 4
  %and.i485 = and i32 %281, 65535
  %shl.i = shl nuw i32 %conv.i483, 16
  %or.i486 = or i32 %and.i485, %shl.i
  store i32 %or.i486, ptr %add.ptr.i484, align 4
  %282 = load ptr, ptr %last_ste.addr, align 4
  %final_icm_addr = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 5
  %283 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %final_icm_addr, align 8
  %shr1.i = lshr i64 %284, 32
  %conv2.i = trunc i64 %shr1.i to i32
  %add.ptr.i488 = getelementptr i32, ptr %282, i32 3
  %285 = ptrtoint ptr %add.ptr.i488 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %add.ptr.i488, align 4
  %and.i489 = and i32 %286, -256
  %and4.i = and i32 %conv2.i, 255
  %or5.i = or i32 %and4.i, %and.i489
  store i32 %or5.i, ptr %add.ptr.i488, align 4
  %287 = trunc i64 %284 to i32
  %288 = and i32 %287, -64
  %add.ptr15.i = getelementptr i32, ptr %282, i32 4
  %289 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %290, 31
  %conv11.i = or i32 %288, %and16.i
  %or19.i = or i32 %conv11.i, 32
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_set_actions_tx(ptr nocapture noundef readnone %dmn, ptr nocapture noundef readonly %action_type_set, ptr noundef %last_ste, ptr noundef readonly %attr, ptr nocapture noundef %added_stes) #3 align 64 {
entry:
  %last_ste.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %last_ste, ptr %last_ste.addr, align 4
  %add.ptr = getelementptr i8, ptr %last_ste, i32 24
  %arrayidx = getelementptr i8, ptr %action_type_set, i32 11
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vlans = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %3 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vlans, align 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %and.i = and i32 %6, 12648384
  %conv.i = shl i32 %4, 1
  %and26.i = and i32 %conv.i, 62
  %or15.i = or i32 %and.i, %and26.i
  %or28.i = or i32 %or15.i, 134348800
  store i32 %or28.i, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i32, ptr %last_ste, i32 2
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %8, 8
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.ptr7 = getelementptr i8, ptr %last_ste, i32 28
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %action.1 = phi ptr [ %add.ptr7, %if.end ], [ %add.ptr, %entry.if.end8_crit_edge ]
  %action_sz.1 = phi i8 [ 4, %if.end ], [ 8, %entry.if.end8_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %action_type_set, i32 7
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %last_ste.addr, align 4
  %ctr_id = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 7
  %13 = ptrtoint ptr %ctr_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctr_id, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %and.i211 = and i32 %16, -16777216
  %and2.i = and i32 %14, 16777215
  %or.i = or i32 %and.i211, %and2.i
  store i32 %or.i, ptr %12, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %arrayidx13 = getelementptr i8, ptr %action_type_set, i32 9
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool14.not, label %if.end12.if.end28_crit_edge, label %if.then15

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then15:                                        ; preds = %if.end12
  br i1 %tobool.not, label %if.then15.if.end23_crit_edge, label %if.then20

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi21 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %19 = ptrtoint ptr %gvmi21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gvmi21, align 8
  %21 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %added_stes, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %added_stes, align 4
  %23 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 64
  store ptr %add.ptr.i, ptr %last_ste.addr, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %and.i.i.i = and i32 %26, 16777215
  store i32 %and.i.i.i, ptr %add.ptr.i, align 4
  %add.ptr13.i.i.i = getelementptr i8, ptr %24, i32 68
  %27 = ptrtoint ptr %add.ptr13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr13.i.i.i, align 4
  %and14.i.i.i = and i32 %28, 255
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 84
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.i, align 4
  %add.ptr13.i44.i.i = getelementptr i8, ptr %24, i32 76
  %31 = ptrtoint ptr %add.ptr13.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr13.i44.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %and.i.i = and i32 %30, -49152
  %and2.i.i = and i32 %conv.i.i, 16383
  %or.i.i212 = or i32 %and.i.i, %and2.i.i
  store i32 %or.i.i212, ptr %add.ptr.i.i.i, align 4
  %or17.i46.i.i = and i32 %32, 255
  %shl15.i.i = shl nuw i32 %conv.i.i, 16
  %and13.i.i = or i32 %shl15.i.i, %or17.i46.i.i
  %or16.i.i = or i32 %and13.i.i, 3840
  store i32 %or16.i.i, ptr %add.ptr13.i44.i.i, align 4
  %and27.i.i = or i32 %shl15.i.i, %and14.i.i.i
  %or30.i.i = or i32 %and27.i.i, 3840
  store i32 %or30.i.i, ptr %add.ptr13.i.i.i, align 4
  %33 = load ptr, ptr %last_ste.addr, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and.i5.i = and i32 %35, 16777215
  %or.i6.i = or i32 %and.i5.i, 33554432
  store i32 %or.i6.i, ptr %33, align 4
  %36 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i = getelementptr i8, ptr %36, i32 20
  %37 = call ptr @memset(ptr %add.ptr1.i, i32 0, i32 12)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then15.if.end23_crit_edge
  %action.2 = phi ptr [ %add.ptr1.i, %if.then20 ], [ %action.1, %if.then15.if.end23_crit_edge ]
  %action_sz.2 = phi i8 [ 12, %if.then20 ], [ %action_sz.1, %if.then15.if.end23_crit_edge ]
  %38 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %last_ste.addr, align 4
  %modify_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 1
  %40 = ptrtoint ptr %modify_actions to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %modify_actions, align 4
  %42 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attr, align 8
  %44 = and i16 %41, 255
  %and13.i = zext i16 %44 to i32
  %shl14.i = shl nuw nsw i32 %and13.i, 16
  %and26.i213 = and i32 %43, 65535
  %or15.i214 = or i32 %shl14.i, %and26.i213
  %or28.i215 = or i32 %or15.i214, 251658240
  %45 = ptrtoint ptr %action.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or28.i215, ptr %action.2, align 4
  %add.ptr.i.i216 = getelementptr i32, ptr %39, i32 2
  %46 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i216, align 4
  %or.i.i217 = or i32 %47, 8
  store i32 %or.i.i217, ptr %add.ptr.i.i216, align 4
  %sub25 = add nsw i8 %action_sz.2, -8
  %add.ptr27 = getelementptr i8, ptr %action.2, i32 8
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end12.if.end28_crit_edge
  %action.3 = phi ptr [ %add.ptr27, %if.end23 ], [ %action.1, %if.end12.if.end28_crit_edge ]
  %action_sz.3 = phi i8 [ %sub25, %if.end23 ], [ %action_sz.1, %if.end12.if.end28_crit_edge ]
  %arrayidx29 = getelementptr i8, ptr %action_type_set, i32 12
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool30.not = icmp eq i8 %49, 0
  br i1 %tobool30.not, label %if.end28.if.end51_crit_edge, label %for.cond.preheader

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

for.cond.preheader:                               ; preds = %if.end28
  %vlans32 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %50 = ptrtoint ptr %vlans32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vlans32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp34345 = icmp sgt i32 %51, 0
  br i1 %cmp34345, label %for.body.lr.ph, label %for.cond.preheader.if.end51_crit_edge

for.cond.preheader.if.end51_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gvmi42 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %i.0349 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end44.for.body_crit_edge ]
  %allow_encap.1.off0348 = phi i1 [ %tobool14.not, %for.body.lr.ph ], [ %allow_encap.2.off0, %if.end44.for.body_crit_edge ]
  %action_sz.4347 = phi i8 [ %action_sz.3, %for.body.lr.ph ], [ %sub48, %if.end44.for.body_crit_edge ]
  %action.4346 = phi ptr [ %action.3, %for.body.lr.ph ], [ %add.ptr50, %if.end44.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.4347)
  %cmp37 = icmp ult i8 %action_sz.4347, 8
  %allow_encap.1.off0.not = xor i1 %allow_encap.1.off0348, true
  %brmerge = select i1 %cmp37, i1 true, i1 %allow_encap.1.off0.not
  br i1 %brmerge, label %if.then41, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %gvmi42 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %gvmi42, align 8
  %54 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %added_stes, align 4
  %inc.i218 = add i32 %55, 1
  store i32 %inc.i218, ptr %added_stes, align 4
  %56 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i219 = getelementptr i8, ptr %57, i32 64
  store ptr %add.ptr.i219, ptr %last_ste.addr, align 4
  %58 = ptrtoint ptr %add.ptr.i219 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i219, align 4
  %and.i.i.i220 = and i32 %59, 16777215
  store i32 %and.i.i.i220, ptr %add.ptr.i219, align 4
  %add.ptr13.i.i.i221 = getelementptr i8, ptr %57, i32 68
  %60 = ptrtoint ptr %add.ptr13.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr13.i.i.i221, align 4
  %and14.i.i.i222 = and i32 %61, 255
  %add.ptr.i.i.i223 = getelementptr i8, ptr %57, i32 84
  %62 = ptrtoint ptr %add.ptr.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i223, align 4
  %add.ptr13.i44.i.i224 = getelementptr i8, ptr %57, i32 76
  %64 = ptrtoint ptr %add.ptr13.i44.i.i224 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr13.i44.i.i224, align 4
  %conv.i.i225 = zext i16 %53 to i32
  %and.i.i226 = and i32 %63, -49152
  %and2.i.i227 = and i32 %conv.i.i225, 16383
  %or.i.i228 = or i32 %and.i.i226, %and2.i.i227
  store i32 %or.i.i228, ptr %add.ptr.i.i.i223, align 4
  %or17.i46.i.i229 = and i32 %65, 255
  %shl15.i.i230 = shl nuw i32 %conv.i.i225, 16
  %and13.i.i231 = or i32 %shl15.i.i230, %or17.i46.i.i229
  %or16.i.i232 = or i32 %and13.i.i231, 3840
  store i32 %or16.i.i232, ptr %add.ptr13.i44.i.i224, align 4
  %and27.i.i233 = or i32 %shl15.i.i230, %and14.i.i.i222
  %or30.i.i234 = or i32 %and27.i.i233, 3840
  store i32 %or30.i.i234, ptr %add.ptr13.i.i.i221, align 4
  %66 = load ptr, ptr %last_ste.addr, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %and.i5.i235 = and i32 %68, 16777215
  %or.i6.i236 = or i32 %and.i5.i235, 33554432
  store i32 %or.i6.i236, ptr %66, align 4
  %69 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i237 = getelementptr i8, ptr %69, i32 20
  %70 = call ptr @memset(ptr %add.ptr1.i237, i32 0, i32 12)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %for.body.if.end44_crit_edge
  %action.5 = phi ptr [ %add.ptr1.i237, %if.then41 ], [ %action.4346, %for.body.if.end44_crit_edge ]
  %action_sz.5 = phi i8 [ 12, %if.then41 ], [ %action_sz.4347, %for.body.if.end44_crit_edge ]
  %allow_encap.2.off0 = phi i1 [ true, %if.then41 ], [ %allow_encap.1.off0348, %for.body.if.end44_crit_edge ]
  %71 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %last_ste.addr, align 4
  %arrayidx46 = getelementptr %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11, i32 1, i32 %i.0349
  %73 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx46, align 4
  %75 = ptrtoint ptr %action.5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %action.5, align 4
  %and.i238 = and i32 %76, 16712191
  %or15.i239 = or i32 %and.i238, 167775232
  store i32 %or15.i239, ptr %action.5, align 4
  %add.ptr24.i = getelementptr i32, ptr %action.5, i32 1
  %77 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %add.ptr24.i, align 4
  %add.ptr.i.i240 = getelementptr i32, ptr %72, i32 2
  %78 = ptrtoint ptr %add.ptr.i.i240 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i240, align 4
  %or.i.i241 = or i32 %79, 8
  store i32 %or.i.i241, ptr %add.ptr.i.i240, align 4
  %sub48 = add i8 %action_sz.5, -8
  %add.ptr50 = getelementptr i8, ptr %action.5, i32 8
  %inc = add nuw nsw i32 %i.0349, 1
  %80 = ptrtoint ptr %vlans32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vlans32, align 8
  %cmp34 = icmp slt i32 %inc, %81
  br i1 %cmp34, label %if.end44.for.body_crit_edge, label %if.end44.if.end51_crit_edge

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end51:                                         ; preds = %if.end44.if.end51_crit_edge, %for.cond.preheader.if.end51_crit_edge, %if.end28.if.end51_crit_edge
  %action.6 = phi ptr [ %action.3, %if.end28.if.end51_crit_edge ], [ %action.3, %for.cond.preheader.if.end51_crit_edge ], [ %add.ptr50, %if.end44.if.end51_crit_edge ]
  %action_sz.6 = phi i8 [ %action_sz.3, %if.end28.if.end51_crit_edge ], [ %action_sz.3, %for.cond.preheader.if.end51_crit_edge ], [ %sub48, %if.end44.if.end51_crit_edge ]
  %allow_encap.3.off0 = phi i1 [ %tobool14.not, %if.end28.if.end51_crit_edge ], [ %tobool14.not, %for.cond.preheader.if.end51_crit_edge ], [ %allow_encap.2.off0, %if.end44.if.end51_crit_edge ]
  %arrayidx52 = getelementptr i8, ptr %action_type_set, i32 1
  %82 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool53.not = icmp eq i8 %83, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end51
  %allow_encap.3.off0.not = xor i1 %allow_encap.3.off0, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.6)
  %cmp58 = icmp ult i8 %action_sz.6, 8
  %or.cond = select i1 %allow_encap.3.off0.not, i1 true, i1 %cmp58
  br i1 %or.cond, label %if.then60, label %if.then54.if.end63_crit_edge

if.then54.if.end63_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi61 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %84 = ptrtoint ptr %gvmi61 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %gvmi61, align 8
  %86 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %added_stes, align 4
  %inc.i242 = add i32 %87, 1
  store i32 %inc.i242, ptr %added_stes, align 4
  %88 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i243 = getelementptr i8, ptr %89, i32 64
  store ptr %add.ptr.i243, ptr %last_ste.addr, align 4
  %90 = ptrtoint ptr %add.ptr.i243 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i243, align 4
  %and.i.i.i244 = and i32 %91, 16777215
  store i32 %and.i.i.i244, ptr %add.ptr.i243, align 4
  %add.ptr13.i.i.i245 = getelementptr i8, ptr %89, i32 68
  %92 = ptrtoint ptr %add.ptr13.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr13.i.i.i245, align 4
  %and14.i.i.i246 = and i32 %93, 255
  %add.ptr.i.i.i247 = getelementptr i8, ptr %89, i32 84
  %94 = ptrtoint ptr %add.ptr.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i.i.i247, align 4
  %add.ptr13.i44.i.i248 = getelementptr i8, ptr %89, i32 76
  %96 = ptrtoint ptr %add.ptr13.i44.i.i248 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr13.i44.i.i248, align 4
  %conv.i.i249 = zext i16 %85 to i32
  %and.i.i250 = and i32 %95, -49152
  %and2.i.i251 = and i32 %conv.i.i249, 16383
  %or.i.i252 = or i32 %and.i.i250, %and2.i.i251
  store i32 %or.i.i252, ptr %add.ptr.i.i.i247, align 4
  %or17.i46.i.i253 = and i32 %97, 255
  %shl15.i.i254 = shl nuw i32 %conv.i.i249, 16
  %and13.i.i255 = or i32 %shl15.i.i254, %or17.i46.i.i253
  %or16.i.i256 = or i32 %and13.i.i255, 3840
  store i32 %or16.i.i256, ptr %add.ptr13.i44.i.i248, align 4
  %and27.i.i257 = or i32 %shl15.i.i254, %and14.i.i.i246
  %or30.i.i258 = or i32 %and27.i.i257, 3840
  store i32 %or30.i.i258, ptr %add.ptr13.i.i.i245, align 4
  %98 = load ptr, ptr %last_ste.addr, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %and.i5.i259 = and i32 %100, 16777215
  %or.i6.i260 = or i32 %and.i5.i259, 33554432
  store i32 %or.i6.i260, ptr %98, align 4
  %101 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i261 = getelementptr i8, ptr %101, i32 20
  %102 = call ptr @memset(ptr %add.ptr1.i261, i32 0, i32 12)
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.then54.if.end63_crit_edge
  %action.7 = phi ptr [ %add.ptr1.i261, %if.then60 ], [ %action.6, %if.then54.if.end63_crit_edge ]
  %103 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %last_ste.addr, align 4
  %reformat = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %105 = ptrtoint ptr %reformat to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reformat, align 4
  %size = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %107 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size, align 4
  %109 = ptrtoint ptr %action.7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %action.7, align 4
  %and.i262 = and i32 %110, 16776704
  %div.i = sdiv i32 %108, 2
  %and13.i263 = shl i32 %div.i, 3
  %shl14.i264 = and i32 %and13.i263, 504
  %add.ptr24.i266 = getelementptr i32, ptr %action.7, i32 1
  %111 = ptrtoint ptr %add.ptr24.i266 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %106, ptr %add.ptr24.i266, align 4
  %or.i265 = or i32 %and.i262, %shl14.i264
  %or41.i = or i32 %or.i265, 184549377
  store i32 %or41.i, ptr %action.7, align 4
  br label %if.end135.sink.split

if.else:                                          ; preds = %if.end51
  %arrayidx69 = getelementptr i8, ptr %action_type_set, i32 3
  %112 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool70.not = icmp eq i8 %113, 0
  br i1 %tobool70.not, label %if.else88, label %if.then71

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %action_sz.6)
  %cmp73 = icmp ult i8 %action_sz.6, 12
  br i1 %cmp73, label %if.then75, label %if.then71.if.end78_crit_edge

if.then71.if.end78_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi76 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %114 = ptrtoint ptr %gvmi76 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %gvmi76, align 8
  %116 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %added_stes, align 4
  %inc.i269 = add i32 %117, 1
  store i32 %inc.i269, ptr %added_stes, align 4
  %118 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i270 = getelementptr i8, ptr %119, i32 64
  store ptr %add.ptr.i270, ptr %last_ste.addr, align 4
  %120 = ptrtoint ptr %add.ptr.i270 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i270, align 4
  %and.i.i.i271 = and i32 %121, 16777215
  store i32 %and.i.i.i271, ptr %add.ptr.i270, align 4
  %add.ptr13.i.i.i272 = getelementptr i8, ptr %119, i32 68
  %122 = ptrtoint ptr %add.ptr13.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr13.i.i.i272, align 4
  %and14.i.i.i273 = and i32 %123, 255
  %add.ptr.i.i.i274 = getelementptr i8, ptr %119, i32 84
  %124 = ptrtoint ptr %add.ptr.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i.i.i274, align 4
  %add.ptr13.i44.i.i275 = getelementptr i8, ptr %119, i32 76
  %126 = ptrtoint ptr %add.ptr13.i44.i.i275 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr13.i44.i.i275, align 4
  %conv.i.i276 = zext i16 %115 to i32
  %and.i.i277 = and i32 %125, -49152
  %and2.i.i278 = and i32 %conv.i.i276, 16383
  %or.i.i279 = or i32 %and.i.i277, %and2.i.i278
  store i32 %or.i.i279, ptr %add.ptr.i.i.i274, align 4
  %or17.i46.i.i280 = and i32 %127, 255
  %shl15.i.i281 = shl nuw i32 %conv.i.i276, 16
  %and13.i.i282 = or i32 %shl15.i.i281, %or17.i46.i.i280
  %or16.i.i283 = or i32 %and13.i.i282, 3840
  store i32 %or16.i.i283, ptr %add.ptr13.i44.i.i275, align 4
  %and27.i.i284 = or i32 %shl15.i.i281, %and14.i.i.i273
  %or30.i.i285 = or i32 %and27.i.i284, 3840
  store i32 %or30.i.i285, ptr %add.ptr13.i.i.i272, align 4
  %128 = load ptr, ptr %last_ste.addr, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %and.i5.i286 = and i32 %130, 16777215
  %or.i6.i287 = or i32 %and.i5.i286, 33554432
  store i32 %or.i6.i287, ptr %128, align 4
  %131 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i288 = getelementptr i8, ptr %131, i32 20
  %132 = call ptr @memset(ptr %add.ptr1.i288, i32 0, i32 12)
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.then71.if.end78_crit_edge
  %action.8 = phi ptr [ %add.ptr1.i288, %if.then75 ], [ %action.6, %if.then71.if.end78_crit_edge ]
  %add.ptr79 = getelementptr i8, ptr %action.8, i32 4
  %133 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %last_ste.addr, align 4
  %reformat80 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %135 = ptrtoint ptr %reformat80 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %reformat80, align 4
  %size83 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %137 = ptrtoint ptr %size83 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size83, align 4
  %139 = ptrtoint ptr %action.8 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %action.8, align 4
  %and.i289 = and i32 %140, 16761087
  %or15.i290 = or i32 %and.i289, 150996736
  store i32 %or15.i290, ptr %action.8, align 4
  %141 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr79, align 4
  %and25.i = and i32 %142, 16776704
  %div.i291 = sdiv i32 %138, 2
  %and39.i = shl i32 %div.i291, 3
  %shl40.i = and i32 %and39.i, 504
  %add.ptr50.i = getelementptr i8, ptr %action.8, i32 8
  %143 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %136, ptr %add.ptr50.i, align 4
  %or28.i292 = or i32 %shl40.i, %and25.i
  %or67.i = or i32 %or28.i292, 184549377
  store i32 %or67.i, ptr %add.ptr79, align 4
  br label %if.end135.sink.split

if.else88:                                        ; preds = %if.else
  %arrayidx89 = getelementptr i8, ptr %action_type_set, i32 13
  %144 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool90.not = icmp eq i8 %145, 0
  br i1 %tobool90.not, label %if.else111, label %if.then91

if.then91:                                        ; preds = %if.else88
  %allow_encap.3.off0.not209 = xor i1 %allow_encap.3.off0, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %action_sz.6)
  %cmp95 = icmp ult i8 %action_sz.6, 8
  %or.cond210 = select i1 %allow_encap.3.off0.not209, i1 true, i1 %cmp95
  br i1 %or.cond210, label %if.then97, label %if.then91.if.end100_crit_edge

if.then91.if.end100_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then97:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi98 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %146 = ptrtoint ptr %gvmi98 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %gvmi98, align 8
  %148 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %added_stes, align 4
  %inc.i295 = add i32 %149, 1
  store i32 %inc.i295, ptr %added_stes, align 4
  %150 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr.i296 = getelementptr i8, ptr %151, i32 64
  store ptr %add.ptr.i296, ptr %last_ste.addr, align 4
  %152 = ptrtoint ptr %add.ptr.i296 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr.i296, align 4
  %and.i.i.i297 = and i32 %153, 16777215
  store i32 %and.i.i.i297, ptr %add.ptr.i296, align 4
  %add.ptr13.i.i.i298 = getelementptr i8, ptr %151, i32 68
  %154 = ptrtoint ptr %add.ptr13.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr13.i.i.i298, align 4
  %and14.i.i.i299 = and i32 %155, 255
  %add.ptr.i.i.i300 = getelementptr i8, ptr %151, i32 84
  %156 = ptrtoint ptr %add.ptr.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr.i.i.i300, align 4
  %add.ptr13.i44.i.i301 = getelementptr i8, ptr %151, i32 76
  %158 = ptrtoint ptr %add.ptr13.i44.i.i301 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr13.i44.i.i301, align 4
  %conv.i.i302 = zext i16 %147 to i32
  %and.i.i303 = and i32 %157, -49152
  %and2.i.i304 = and i32 %conv.i.i302, 16383
  %or.i.i305 = or i32 %and.i.i303, %and2.i.i304
  store i32 %or.i.i305, ptr %add.ptr.i.i.i300, align 4
  %or17.i46.i.i306 = and i32 %159, 255
  %shl15.i.i307 = shl nuw i32 %conv.i.i302, 16
  %and13.i.i308 = or i32 %shl15.i.i307, %or17.i46.i.i306
  %or16.i.i309 = or i32 %and13.i.i308, 3840
  store i32 %or16.i.i309, ptr %add.ptr13.i44.i.i301, align 4
  %and27.i.i310 = or i32 %shl15.i.i307, %and14.i.i.i299
  %or30.i.i311 = or i32 %and27.i.i310, 3840
  store i32 %or30.i.i311, ptr %add.ptr13.i.i.i298, align 4
  %160 = load ptr, ptr %last_ste.addr, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %and.i5.i312 = and i32 %162, 16777215
  %or.i6.i313 = or i32 %and.i5.i312, 33554432
  store i32 %or.i6.i313, ptr %160, align 4
  %163 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr1.i314 = getelementptr i8, ptr %163, i32 20
  %164 = call ptr @memset(ptr %add.ptr1.i314, i32 0, i32 12)
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.then91.if.end100_crit_edge
  %action.9 = phi ptr [ %add.ptr1.i314, %if.then97 ], [ %action.6, %if.then91.if.end100_crit_edge ]
  %165 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %last_ste.addr, align 4
  %reformat101 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %167 = ptrtoint ptr %reformat101 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %reformat101, align 4
  %param_0 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 2
  %169 = ptrtoint ptr %param_0 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %param_0, align 4
  %param_1 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 3
  %171 = ptrtoint ptr %param_1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %param_1, align 1
  %size106 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %173 = ptrtoint ptr %size106 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %size106, align 4
  %175 = ptrtoint ptr %action.9 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %action.9, align 4
  %and.i315 = and i32 %176, 12582912
  %177 = and i8 %170, 63
  %and13.i316 = zext i8 %177 to i32
  %shl14.i317 = shl nuw nsw i32 %and13.i316, 16
  %or.i318 = or i32 %and.i315, %shl14.i317
  %div.i319 = sdiv i32 %174, 2
  %and26.i320 = shl i32 %div.i319, 3
  %shl27.i = and i32 %and26.i320, 504
  %or15.i321 = or i32 %or.i318, %shl27.i
  %178 = lshr i8 %172, 1
  %div35.i = zext i8 %178 to i32
  %shl42.i = shl nuw nsw i32 %div35.i, 9
  %or28.i322 = or i32 %or15.i321, %shl42.i
  %or43.i = or i32 %or28.i322, 184549376
  %add.ptr52.i = getelementptr i32, ptr %action.9, i32 1
  %179 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %168, ptr %add.ptr52.i, align 4
  store i32 %or43.i, ptr %action.9, align 4
  br label %if.end135.sink.split

if.else111:                                       ; preds = %if.else88
  %arrayidx112 = getelementptr i8, ptr %action_type_set, i32 14
  %180 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool113.not = icmp eq i8 %181, 0
  br i1 %tobool113.not, label %if.else111.if.end135_crit_edge, label %if.then114

if.else111.if.end135_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then114:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %action_sz.6)
  %cmp116 = icmp ult i8 %action_sz.6, 4
  br i1 %cmp116, label %if.then118, label %if.then114.if.end121_crit_edge

if.then114.if.end121_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then118:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %gvmi119 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %182 = ptrtoint ptr %gvmi119 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %gvmi119, align 8
  call fastcc void @dr_ste_v1_arr_init_next_match(ptr noundef nonnull %last_ste.addr, ptr noundef %added_stes, i16 noundef zeroext %183)
  %184 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %last_ste.addr, align 4
  %add.ptr120 = getelementptr i8, ptr %185, i32 20
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.then114.if.end121_crit_edge
  %action.10 = phi ptr [ %add.ptr120, %if.then118 ], [ %action.6, %if.then114.if.end121_crit_edge ]
  %186 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %last_ste.addr, align 4
  %param_0123 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 2
  %188 = ptrtoint ptr %param_0123 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %param_0123, align 4
  %param_1125 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 3
  %190 = ptrtoint ptr %param_1125 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %param_1125, align 1
  %size127 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %192 = ptrtoint ptr %size127 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %size127, align 4
  %194 = ptrtoint ptr %action.10 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %action.10, align 4
  %and.i325 = and i32 %195, 12632128
  %196 = and i8 %189, 63
  %and13.i326 = zext i8 %196 to i32
  %shl14.i327 = shl nuw nsw i32 %and13.i326, 16
  %or.i328 = or i32 %and.i325, %shl14.i327
  %div.i329 = sdiv i32 %193, 2
  %and26.i330 = and i32 %div.i329, 63
  %or15.i331 = or i32 %or.i328, %and26.i330
  %197 = lshr i8 %191, 1
  %div35.i332 = zext i8 %197 to i32
  %shl42.i333 = shl nuw nsw i32 %div35.i332, 7
  %or28.i334 = or i32 %or15.i331, %shl42.i333
  %or43.i335 = or i32 %or28.i334, 134217728
  store i32 %or43.i335, ptr %action.10, align 4
  br label %if.end135.sink.split

if.end135.sink.split:                             ; preds = %if.end121, %if.end100, %if.end78, %if.end63
  %.sink = phi ptr [ %104, %if.end63 ], [ %166, %if.end100 ], [ %187, %if.end121 ], [ %134, %if.end78 ]
  %add.ptr.i.i267 = getelementptr i32, ptr %.sink, i32 2
  %198 = ptrtoint ptr %add.ptr.i.i267 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %add.ptr.i.i267, align 4
  %or.i.i294 = or i32 %199, 8
  store i32 %or.i.i294, ptr %add.ptr.i.i267, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.end135.sink.split, %if.else111.if.end135_crit_edge
  %200 = ptrtoint ptr %last_ste.addr to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %last_ste.addr, align 4
  %hit_gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 9
  %202 = ptrtoint ptr %hit_gvmi to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %hit_gvmi, align 2
  %conv.i338 = zext i16 %203 to i32
  %add.ptr.i339 = getelementptr i32, ptr %201, i32 3
  %204 = ptrtoint ptr %add.ptr.i339 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %add.ptr.i339, align 4
  %and.i340 = and i32 %205, 65535
  %shl.i = shl nuw i32 %conv.i338, 16
  %or.i341 = or i32 %and.i340, %shl.i
  store i32 %or.i341, ptr %add.ptr.i339, align 4
  %206 = load ptr, ptr %last_ste.addr, align 4
  %final_icm_addr = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 5
  %207 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %final_icm_addr, align 8
  %shr1.i = lshr i64 %208, 32
  %conv2.i = trunc i64 %shr1.i to i32
  %add.ptr.i343 = getelementptr i32, ptr %206, i32 3
  %209 = ptrtoint ptr %add.ptr.i343 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %add.ptr.i343, align 4
  %and.i344 = and i32 %210, -256
  %and4.i = and i32 %conv2.i, 255
  %or5.i = or i32 %and4.i, %and.i344
  store i32 %or5.i, ptr %add.ptr.i343, align 4
  %211 = trunc i64 %208 to i32
  %212 = and i32 %211, -64
  %add.ptr15.i = getelementptr i32, ptr %206, i32 4
  %213 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %214, 31
  %conv11.i = or i32 %212, %and16.i
  %or19.i = or i32 %conv11.i, 32
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_action_set(ptr nocapture noundef %d_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i8 %shifter, 32
  %0 = ptrtoint ptr %d_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_action, align 4
  %and = and i32 %1, 49344
  %conv9 = zext i8 %hw_field to i32
  %shl16 = shl nuw nsw i32 %conv9, 16
  %or = or i32 %and, %shl16
  %2 = and i8 %add, 63
  %and29 = zext i8 %2 to i32
  %shl30 = shl nuw nsw i32 %and29, 8
  %or17 = or i32 %or, %shl30
  %3 = and i8 %length, 63
  %and43 = zext i8 %3 to i32
  %or31 = or i32 %or17, %and43
  %or45 = or i32 %or31, 100663296
  store i32 %or45, ptr %d_action, align 4
  %add.ptr54 = getelementptr i32, ptr %d_action, i32 1
  %4 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %add.ptr54, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_action_add(ptr nocapture noundef %d_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i8 %shifter, 32
  %0 = ptrtoint ptr %d_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_action, align 4
  %and = and i32 %1, 49344
  %conv9 = zext i8 %hw_field to i32
  %shl16 = shl nuw nsw i32 %conv9, 16
  %or = or i32 %and, %shl16
  %2 = and i8 %add, 63
  %and29 = zext i8 %2 to i32
  %shl30 = shl nuw nsw i32 %and29, 8
  %or17 = or i32 %or, %shl30
  %3 = and i8 %length, 63
  %and43 = zext i8 %3 to i32
  %or31 = or i32 %or17, %and43
  %or45 = or i32 %or31, 117440512
  store i32 %or45, ptr %d_action, align 4
  %add.ptr54 = getelementptr i32, ptr %d_action, i32 1
  %4 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %add.ptr54, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v1_set_action_copy(ptr nocapture noundef %d_action, i8 noundef zeroext %dst_hw_field, i8 noundef zeroext %dst_shifter, i8 noundef zeroext %dst_len, i8 noundef zeroext %src_hw_field, i8 noundef zeroext %src_shifter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i8 %dst_shifter, 32
  %add3 = add i8 %src_shifter, 32
  %0 = ptrtoint ptr %d_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_action, align 4
  %and = and i32 %1, 49344
  %conv12 = zext i8 %dst_hw_field to i32
  %shl19 = shl nuw nsw i32 %conv12, 16
  %or = or i32 %and, %shl19
  %2 = and i8 %add, 63
  %and32 = zext i8 %2 to i32
  %shl33 = shl nuw nsw i32 %and32, 8
  %or20 = or i32 %or, %shl33
  %3 = and i8 %dst_len, 63
  %and46 = zext i8 %3 to i32
  %or34 = or i32 %or20, %and46
  %or48 = or i32 %or34, 83886080
  store i32 %or48, ptr %d_action, align 4
  %conv54 = zext i8 %src_hw_field to i32
  %add.ptr58 = getelementptr i32, ptr %d_action, i32 1
  %4 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr58, align 4
  %and59 = and i32 %5, -16727809
  %shl61 = shl nuw nsw i32 %conv54, 16
  %or62 = or i32 %and59, %shl61
  %6 = and i8 %add3, 63
  %and74 = zext i8 %6 to i32
  %shl75 = shl nuw nsw i32 %and74, 8
  %or76 = or i32 %or62, %shl75
  store i32 %or76, ptr %add.ptr58, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_ste_v1_set_action_decap_l3_list(ptr nocapture noundef readonly %data, i32 noundef %data_sz, ptr nocapture noundef %hw_action, i32 noundef %hw_action_sz, ptr nocapture noundef writeonly %used_hw_action_num) #3 align 64 {
entry:
  %padded_data = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %padded_data) #11
  %0 = call ptr @memset(ptr %padded_data, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %hw_action_sz)
  %cmp = icmp ult i32 %hw_action_sz, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %data_sz, 3
  %add.ptr = getelementptr i8, ptr %padded_data, i32 %rem
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %data_sz)
  %2 = ptrtoint ptr %hw_action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_action, align 4
  %and = and i32 %3, 16761075
  %or43 = or i32 %and, 151001356
  store i32 %or43, ptr %hw_action, align 4
  %div48163 = lshr i32 %data_sz, 2
  %mul = and i32 %data_sz, -4
  %add.ptr49 = getelementptr i8, ptr %padded_data, i32 %mul
  %hw_action.addr.0164 = getelementptr i8, ptr %hw_action, i32 8
  %4 = trunc i32 %div48163 to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %hw_action.addr.0168 = phi ptr [ %hw_action.addr.0164, %if.end ], [ %hw_action.addr.0, %for.body.for.body_crit_edge ]
  %hw_action.pn167 = phi ptr [ %hw_action, %if.end ], [ %hw_action.addr.0168, %for.body.for.body_crit_edge ]
  %i.0165 = phi i32 [ 0, %if.end ], [ %inc83, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %hw_action.addr.0168 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_action.addr.0168, align 4
  %and58 = and i32 %6, 16712191
  %or61 = or i32 %and58, 167772160
  store i32 %or61, ptr %hw_action.addr.0168, align 4
  %add.ptr78 = getelementptr i8, ptr %hw_action.pn167, i32 12
  %mul79.neg = mul i32 %i.0165, -4
  %add.ptr80 = getelementptr i8, ptr %add.ptr49, i32 %mul79.neg
  %7 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr80, align 1
  %9 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %add.ptr78, align 1
  %inc83 = add nuw nsw i32 %i.0165, 1
  %hw_action.addr.0 = getelementptr i8, ptr %hw_action.addr.0168, i32 8
  %exitcond = icmp eq i32 %i.0165, %div48163
  br i1 %exitcond, label %do.body84, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body84:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = add i16 %4, 3
  %11 = ptrtoint ptr %hw_action.addr.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_action.addr.0, align 4
  %and90 = and i32 %12, 16760896
  %or119 = or i32 %and90, 134217729
  store i32 %or119, ptr %hw_action.addr.0, align 4
  %13 = ptrtoint ptr %used_hw_action_num to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %10, ptr %used_hw_action_num, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.body84, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body84 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %padded_data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v1_prepare_for_postsend(ptr nocapture noundef %hw_ste_p, i32 noundef %ste_size) #0 align 64 {
entry:
  %tmp_tag = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw_ste_p, i32 32
  %add.ptr1 = getelementptr i8, ptr %hw_ste_p, i32 48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_tag)
  %0 = zext i32 %ste_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ste_size, label %do.end [
    i32 32, label %entry.cleanup_crit_edge
    i32 64, label %entry.if.end16_crit_edge
  ], !prof !22

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef 9, ptr noundef null) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %entry.if.end16_crit_edge
  %1 = call ptr @memcpy(ptr %tmp_tag, ptr %add.ptr, i32 16)
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr1, i32 16)
  %3 = call ptr @memcpy(ptr %add.ptr1, ptr %tmp_tag, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_tag)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l2_src_dst_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not347 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not347, ptr %inner, ptr %value
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load13 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr14 = lshr i160 %bf.load13, 144
  %bf.cast = trunc i160 %bf.lshr14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool15.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool15.not, label %do.body12.do.body39_crit_edge, label %do.body17

do.body12.do.body39_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26 = getelementptr i32, ptr %tag, i32 2
  %6 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26, align 4
  %and27 = and i32 %7, 65535
  %shl29 = shl nuw i32 %bf.cast, 16
  %or30 = or i32 %and27, %shl29
  store i32 %or30, ptr %add.ptr26, align 4
  %8 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35 = load i160, ptr %dmac_15_0, align 4
  %bf.clear = and i160 %bf.load35, 22300745198530623141535718272648361505980415
  store i160 %bf.clear, ptr %dmac_15_0, align 4
  br label %do.body39

do.body39:                                        ; preds = %do.body17, %do.body12.do.body39_crit_edge
  %9 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool40.not = icmp eq i32 %10, 0
  br i1 %tobool40.not, label %do.body39.do.body60_crit_edge, label %do.body42

do.body39.do.body60_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body60

do.body42:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr48 = getelementptr i32, ptr %tag, i32 1
  %11 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr48, align 4
  %12 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cond, align 4
  br label %do.body60

do.body60:                                        ; preds = %do.body42, %do.body39.do.body60_crit_edge
  %smac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %13 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load61 = load i32, ptr %smac_15_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load61)
  %tobool63.not = icmp ult i32 %bf.load61, 65536
  br i1 %tobool63.not, label %do.body60.do.end87_crit_edge, label %do.body65

do.body60.do.end87_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end87

do.body65:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr62 = lshr i32 %bf.load61, 16
  %add.ptr73 = getelementptr i32, ptr %tag, i32 3
  %14 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr73, align 4
  %and74 = and i32 %15, -65536
  %or77 = or i32 %and74, %bf.lshr62
  store i32 %or77, ptr %add.ptr73, align 4
  %16 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load82 = load i32, ptr %smac_15_0, align 4
  %bf.clear83 = and i32 %bf.load82, 65535
  store i32 %bf.clear83, ptr %smac_15_0, align 4
  br label %do.end87

do.end87:                                         ; preds = %do.body65, %do.body60.do.end87_crit_edge
  %17 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 20)
  %bf.load88 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr89 = lshr i160 %bf.load88, 105
  %18 = trunc i160 %bf.lshr89 to i32
  %bf.cast91 = and i32 %18, 15
  %19 = zext i32 %bf.cast91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %bf.cast91, label %do.end87.cleanup_crit_edge [
    i32 4, label %do.end87.do.body147.sink.split_crit_edge
    i32 6, label %do.body119
    i32 0, label %do.end87.do.body147_crit_edge
  ]

do.end87.do.body147_crit_edge:                    ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

do.end87.do.body147.sink.split_crit_edge:         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147.sink.split

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body119:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147.sink.split

do.body147.sink.split:                            ; preds = %do.body119, %do.end87.do.body147.sink.split_crit_edge
  %.sink = phi i32 [ 32, %do.body119 ], [ 16, %do.end87.do.body147.sink.split_crit_edge ]
  %add.ptr124 = getelementptr i32, ptr %tag, i32 2
  %20 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr124, align 4
  %and100 = and i32 %21, -49
  %or103 = or i32 %and100, %.sink
  store i32 %or103, ptr %add.ptr124, align 4
  %22 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 20)
  %bf.load108 = load i160, ptr %dmac_15_0, align 4
  %bf.clear109 = and i160 %bf.load108, -608472288109550112718417538580481
  store i160 %bf.clear109, ptr %dmac_15_0, align 4
  br label %do.body147

do.body147:                                       ; preds = %do.body147.sink.split, %do.end87.do.body147_crit_edge
  %23 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load148 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr149 = lshr i160 %bf.load148, 128
  %24 = trunc i160 %bf.lshr149 to i32
  %bf.cast151 = and i32 %24, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast151)
  %tobool152.not = icmp eq i32 %bf.cast151, 0
  br i1 %tobool152.not, label %do.body147.do.body179_crit_edge, label %do.body154

do.body147.do.body179_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body179

do.body154:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr164 = getelementptr i32, ptr %tag, i32 3
  %25 = ptrtoint ptr %add.ptr164 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr164, align 4
  %and165 = and i32 %26, -268369921
  %shl167 = shl nuw nsw i32 %bf.cast151, 16
  %or168 = or i32 %and165, %shl167
  store i32 %or168, ptr %add.ptr164, align 4
  %27 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 20)
  %bf.load173 = load i160, ptr %dmac_15_0, align 4
  %bf.clear174 = and i160 %bf.load173, -1393456292541243007882519017433090825912321
  store i160 %bf.clear174, ptr %dmac_15_0, align 4
  br label %do.body179

do.body179:                                       ; preds = %do.body154, %do.body147.do.body179_crit_edge
  %28 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load180 = load i160, ptr %dmac_15_0, align 4
  %29 = and i160 %bf.load180, 1393796574908163946345982392040522594123776
  %tobool184.not = icmp eq i160 %29, 0
  br i1 %tobool184.not, label %do.body179.do.body211_crit_edge, label %do.body186

do.body179.do.body211_crit_edge:                  ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211

do.body186:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr196 = getelementptr i32, ptr %tag, i32 3
  %30 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr196, align 4
  %or200 = or i32 %31, 268435456
  store i32 %or200, ptr %add.ptr196, align 4
  %32 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 20)
  %bf.load205 = load i160, ptr %dmac_15_0, align 4
  %bf.clear206 = and i160 %bf.load205, -1393796574908163946345982392040522594123777
  store i160 %bf.clear206, ptr %dmac_15_0, align 4
  br label %do.body211

do.body211:                                       ; preds = %do.body186, %do.body179.do.body211_crit_edge
  %33 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 20)
  %bf.load212 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr213 = lshr i160 %bf.load212, 141
  %34 = trunc i160 %bf.lshr213 to i32
  %bf.cast215 = and i32 %34, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast215)
  %tobool216.not = icmp eq i32 %bf.cast215, 0
  br i1 %tobool216.not, label %do.body211.do.end242_crit_edge, label %do.body218

do.body211.do.end242_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end242

do.body218:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr228 = getelementptr i32, ptr %tag, i32 3
  %35 = ptrtoint ptr %add.ptr228 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr228, align 4
  %and229 = and i32 %36, 536870911
  %shl231 = shl i32 %34, 29
  %or232 = or i32 %and229, %shl231
  store i32 %or232, ptr %add.ptr228, align 4
  %37 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load237 = load i160, ptr %dmac_15_0, align 4
  %bf.clear238 = and i160 %bf.load237, -19513152048714295248843753488567316317732865
  store i160 %bf.clear238, ptr %dmac_15_0, align 4
  br label %do.end242

do.end242:                                        ; preds = %do.body218, %do.body211.do.end242_crit_edge
  %38 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 20)
  %bf.load243 = load i160, ptr %dmac_15_0, align 4
  %39 = and i160 %bf.load243, 2596148429267413814265248164610048
  %tobool247.not = icmp eq i160 %39, 0
  br i1 %tobool247.not, label %if.else266, label %do.end242.cleanup.sink.split_crit_edge

do.end242.cleanup.sink.split_crit_edge:           ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else266:                                       ; preds = %do.end242
  %40 = and i160 %bf.load243, 1298074214633706907132624082305024
  %tobool271.not = icmp eq i160 %40, 0
  br i1 %tobool271.not, label %if.else266.cleanup_crit_edge, label %if.else266.cleanup.sink.split_crit_edge

if.else266.cleanup.sink.split_crit_edge:          ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else266.cleanup_crit_edge:                     ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else266.cleanup.sink.split_crit_edge, %do.end242.cleanup.sink.split_crit_edge
  %.sink351 = phi i32 [ 2, %do.end242.cleanup.sink.split_crit_edge ], [ 1, %if.else266.cleanup.sink.split_crit_edge ]
  %.sink350 = phi i160 [ -2596148429267413814265248164610049, %do.end242.cleanup.sink.split_crit_edge ], [ -1298074214633706907132624082305025, %if.else266.cleanup.sink.split_crit_edge ]
  %add.ptr278 = getelementptr i32, ptr %tag, i32 2
  %41 = ptrtoint ptr %add.ptr278 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr278, align 4
  %and255 = and i32 %42, -4
  %or258 = or i32 %and255, %.sink351
  store i32 %or258, ptr %add.ptr278, align 4
  %43 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 20)
  %bf.load263 = load i160, ptr %dmac_15_0, align 4
  %bf.clear264 = and i160 %bf.load263, %.sink350
  store i160 %bf.clear264, ptr %dmac_15_0, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else266.cleanup_crit_edge, %do.end87.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end87.cleanup_crit_edge ], [ 0, %if.else266.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l3_ipv6_src_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not97 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not97, ptr %inner, ptr %value
  %src_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 4
  %1 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %src_ip_127_96, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %src_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 5
  %5 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21, align 4
  %8 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src_ip_95_64, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %src_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 6
  %9 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not = icmp eq i32 %10, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42, align 4
  %12 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_ip_63_32, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 7
  %13 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %15 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63, align 4
  %16 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %src_ip_31_0, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l3_ipv6_dst_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not97 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not97, ptr %inner, ptr %value
  %dst_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 8
  %1 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst_ip_127_96, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %dst_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 9
  %5 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21, align 4
  %8 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dst_ip_95_64, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %dst_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 10
  %9 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not = icmp eq i32 %10, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42, align 4
  %12 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dst_ip_63_32, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 11
  %13 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %15 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63, align 4
  %16 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_ip_31_0, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l3_ipv4_5_tuple_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not613 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not613, ptr %inner, ptr %value
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 11
  %1 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst_ip_31_0, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 7
  %5 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tag, align 4
  %8 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src_ip_31_0, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %tcp_dport = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %9 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load34 = load i160, ptr %tcp_dport, align 4
  %bf.lshr35 = lshr i160 %bf.load34, 64
  %10 = trunc i160 %bf.lshr35 to i32
  %bf.cast = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool36.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool36.not, label %do.body33.do.body62_crit_edge, label %do.body38

do.body33.do.body62_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body62

do.body38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr48 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr48, align 4
  %and49 = and i32 %12, -65536
  %or52 = or i32 %and49, %bf.cast
  store i32 %or52, ptr %add.ptr48, align 4
  %13 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load57 = load i160, ptr %tcp_dport, align 4
  %bf.clear58 = and i160 %bf.load57, -1208907372870555465154561
  store i160 %bf.clear58, ptr %tcp_dport, align 4
  br label %do.body62

do.body62:                                        ; preds = %do.body38, %do.body33.do.body62_crit_edge
  %14 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load63 = load i160, ptr %tcp_dport, align 4
  %15 = trunc i160 %bf.load63 to i32
  %bf.cast65 = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast65)
  %tobool66.not = icmp eq i32 %bf.cast65, 0
  br i1 %tobool66.not, label %do.body62.do.body92_crit_edge, label %do.body68

do.body62.do.body92_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body92

do.body68:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr77 = getelementptr i32, ptr %tag, i32 2
  %16 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr77, align 4
  %and78 = and i32 %17, -65536
  %or81 = or i32 %and78, %bf.cast65
  store i32 %or81, ptr %add.ptr77, align 4
  %18 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %18, i32 20)
  %bf.load86 = load i160, ptr %tcp_dport, align 4
  %bf.clear87 = and i160 %bf.load86, -65536
  store i160 %bf.clear87, ptr %tcp_dport, align 4
  br label %do.body92

do.body92:                                        ; preds = %do.body68, %do.body62.do.body92_crit_edge
  %19 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load93 = load i160, ptr %tcp_dport, align 4
  %bf.lshr94 = lshr i160 %bf.load93, 80
  %20 = trunc i160 %bf.lshr94 to i32
  %bf.cast96 = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast96)
  %tobool97.not = icmp eq i32 %bf.cast96, 0
  br i1 %tobool97.not, label %do.body92.do.body124_crit_edge, label %do.body99

do.body92.do.body124_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body124

do.body99:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr109 = getelementptr i32, ptr %tag, i32 2
  %21 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr109, align 4
  %and110 = and i32 %22, 65535
  %shl112 = shl i32 %20, 16
  %or113 = or i32 %and110, %shl112
  store i32 %or113, ptr %add.ptr109, align 4
  %23 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load118 = load i160, ptr %tcp_dport, align 4
  %bf.clear119 = and i160 %bf.load118, -79226953588444722964369244161
  store i160 %bf.clear119, ptr %tcp_dport, align 4
  br label %do.body124

do.body124:                                       ; preds = %do.body99, %do.body92.do.body124_crit_edge
  %24 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load125 = load i160, ptr %tcp_dport, align 4
  %25 = trunc i160 %bf.load125 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %tobool129.not = icmp ult i32 %25, 65536
  br i1 %tobool129.not, label %do.body124.do.body156_crit_edge, label %do.body131

do.body124.do.body156_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body156

do.body131:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #13
  %26 = and i32 %25, -65536
  %add.ptr141 = getelementptr i32, ptr %tag, i32 2
  %27 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr141, align 4
  %and142 = and i32 %28, 65535
  %or145 = or i32 %and142, %26
  store i32 %or145, ptr %add.ptr141, align 4
  %29 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load150 = load i160, ptr %tcp_dport, align 4
  %bf.clear151 = and i160 %bf.load150, -4294901761
  store i160 %bf.clear151, ptr %tcp_dport, align 4
  br label %do.body156

do.body156:                                       ; preds = %do.body131, %do.body124.do.body156_crit_edge
  %30 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %30, i32 20)
  %bf.load157 = load i160, ptr %tcp_dport, align 4
  %bf.lshr158 = lshr i160 %bf.load157, 120
  %31 = trunc i160 %bf.lshr158 to i32
  %bf.cast160 = and i32 %31, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast160)
  %tobool161.not = icmp eq i32 %bf.cast160, 0
  br i1 %tobool161.not, label %do.body156.do.body188_crit_edge, label %do.body163

do.body156.do.body188_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body188

do.body163:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr173 = getelementptr i32, ptr %tag, i32 3
  %32 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr173, align 4
  %and174 = and i32 %33, -256
  %or177 = or i32 %and174, %bf.cast160
  store i32 %or177, ptr %add.ptr173, align 4
  %34 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %34, i32 20)
  %bf.load182 = load i160, ptr %tcp_dport, align 4
  %bf.clear183 = and i160 %bf.load182, -338953138925153547590470800371487866881
  store i160 %bf.clear183, ptr %tcp_dport, align 4
  br label %do.body188

do.body188:                                       ; preds = %do.body163, %do.body156.do.body188_crit_edge
  %35 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %35, i32 20)
  %bf.load189 = load i160, ptr %tcp_dport, align 4
  %36 = and i160 %bf.load189, 649037107316853453566312041152512
  %tobool193.not = icmp eq i160 %36, 0
  br i1 %tobool193.not, label %do.body188.do.body220_crit_edge, label %do.body195

do.body188.do.body220_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body220

do.body195:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr205 = getelementptr i32, ptr %tag, i32 3
  %37 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr205, align 4
  %or209 = or i32 %38, 33554432
  store i32 %or209, ptr %add.ptr205, align 4
  %39 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %39, i32 20)
  %bf.load214 = load i160, ptr %tcp_dport, align 4
  %bf.clear215 = and i160 %bf.load214, -649037107316853453566312041152513
  store i160 %bf.clear215, ptr %tcp_dport, align 4
  br label %do.body220

do.body220:                                       ; preds = %do.body195, %do.body188.do.body220_crit_edge
  %40 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %40, i32 20)
  %bf.load221 = load i160, ptr %tcp_dport, align 4
  %bf.lshr222 = lshr i160 %bf.load221, 114
  %41 = trunc i160 %bf.lshr222 to i32
  %bf.cast224 = and i32 %41, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast224)
  %tobool225.not = icmp eq i32 %bf.cast224, 0
  br i1 %tobool225.not, label %do.body220.do.body252_crit_edge, label %do.body227

do.body220.do.body252_crit_edge:                  ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body252

do.body227:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr237 = getelementptr i32, ptr %tag, i32 3
  %42 = ptrtoint ptr %add.ptr237 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr237, align 4
  %and238 = and i32 %43, -64513
  %shl240 = shl nuw nsw i32 %bf.cast224, 10
  %or241 = or i32 %and238, %shl240
  store i32 %or241, ptr %add.ptr237, align 4
  %44 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %44, i32 20)
  %bf.load246 = load i160, ptr %tcp_dport, align 4
  %bf.clear247 = and i160 %bf.load246, -1308458808350776562389685074963464193
  store i160 %bf.clear247, ptr %tcp_dport, align 4
  br label %do.body252

do.body252:                                       ; preds = %do.body227, %do.body220.do.body252_crit_edge
  %45 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %45, i32 20)
  %bf.load253 = load i160, ptr %tcp_dport, align 4
  %bf.lshr254 = lshr i160 %bf.load253, 112
  %46 = trunc i160 %bf.lshr254 to i32
  %bf.cast256 = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast256)
  %tobool257.not = icmp eq i32 %bf.cast256, 0
  br i1 %tobool257.not, label %do.body252.do.end283_crit_edge, label %do.body259

do.body252.do.end283_crit_edge:                   ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end283

do.body259:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr269 = getelementptr i32, ptr %tag, i32 3
  %47 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr269, align 4
  %and270 = and i32 %48, -769
  %shl272 = shl nuw nsw i32 %bf.cast256, 8
  %or273 = or i32 %and270, %shl272
  store i32 %or273, ptr %add.ptr269, align 4
  %49 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %49, i32 20)
  %bf.load278 = load i160, ptr %tcp_dport, align 4
  %bf.clear279 = and i160 %bf.load278, -15576890575604482885591488987660289
  store i160 %bf.clear279, ptr %tcp_dport, align 4
  br label %do.end283

do.end283:                                        ; preds = %do.body259, %do.body252.do.end283_crit_edge
  %50 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %50, i32 20)
  %bf.load284 = load i160, ptr %tcp_dport, align 4
  %bf.lshr285 = lshr i160 %bf.load284, 96
  %51 = trunc i160 %bf.lshr285 to i32
  %bf.cast287 = and i32 %51, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast287)
  %tobool288.not = icmp eq i32 %bf.cast287, 0
  br i1 %tobool288.not, label %do.end283.if.end510_crit_edge, label %do.body291

do.end283.if.end510_crit_edge:                    ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end510

do.body291:                                       ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr304 = getelementptr i32, ptr %tag, i32 3
  %52 = ptrtoint ptr %add.ptr304 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr304, align 4
  %and305 = and i32 %53, -16777217
  %54 = shl i32 %51, 16
  %shl307 = and i32 %54, 16777216
  %or308 = or i32 %and305, %shl307
  store i32 %or308, ptr %add.ptr304, align 4
  %55 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %55, i32 20)
  %bf.load315 = load i160, ptr %tcp_dport, align 4
  %and329 = and i32 %or308, -8388609
  %sh.diff = lshr i160 %bf.load315, 80
  %tr.sh.diff = trunc i160 %sh.diff to i32
  %shl331 = and i32 %tr.sh.diff, 8388608
  %or332 = or i32 %shl331, %and329
  store i32 %or332, ptr %add.ptr304, align 4
  %bf.load339 = load i160, ptr %tcp_dport, align 4
  %and353 = and i32 %or332, -4194305
  %sh.diff593 = lshr i160 %bf.load339, 80
  %tr.sh.diff594 = trunc i160 %sh.diff593 to i32
  %shl355 = and i32 %tr.sh.diff594, 4194304
  %or356 = or i32 %and353, %shl355
  store i32 %or356, ptr %add.ptr304, align 4
  %bf.load363 = load i160, ptr %tcp_dport, align 4
  %and377 = and i32 %or356, -2097153
  %sh.diff596 = lshr i160 %bf.load363, 80
  %tr.sh.diff597 = trunc i160 %sh.diff596 to i32
  %shl379 = and i32 %tr.sh.diff597, 2097152
  %or380 = or i32 %and377, %shl379
  store i32 %or380, ptr %add.ptr304, align 4
  %bf.load387 = load i160, ptr %tcp_dport, align 4
  %and401 = and i32 %or380, -1048577
  %sh.diff599 = lshr i160 %bf.load387, 80
  %tr.sh.diff600 = trunc i160 %sh.diff599 to i32
  %shl403 = and i32 %tr.sh.diff600, 1048576
  %or404 = or i32 %and401, %shl403
  store i32 %or404, ptr %add.ptr304, align 4
  %bf.load411 = load i160, ptr %tcp_dport, align 4
  %and425 = and i32 %or404, -524289
  %sh.diff602 = lshr i160 %bf.load411, 80
  %tr.sh.diff603 = trunc i160 %sh.diff602 to i32
  %shl427 = and i32 %tr.sh.diff603, 524288
  %or428 = or i32 %and425, %shl427
  store i32 %or428, ptr %add.ptr304, align 4
  %bf.load435 = load i160, ptr %tcp_dport, align 4
  %and449 = and i32 %or428, -262145
  %sh.diff605 = lshr i160 %bf.load435, 80
  %tr.sh.diff606 = trunc i160 %sh.diff605 to i32
  %shl451 = and i32 %tr.sh.diff606, 262144
  %or452 = or i32 %and449, %shl451
  store i32 %or452, ptr %add.ptr304, align 4
  %bf.load459 = load i160, ptr %tcp_dport, align 4
  %and473 = and i32 %or452, -131073
  %sh.diff608 = lshr i160 %bf.load459, 80
  %tr.sh.diff609 = trunc i160 %sh.diff608 to i32
  %shl475 = and i32 %tr.sh.diff609, 131072
  %or476 = or i32 %and473, %shl475
  store i32 %or476, ptr %add.ptr304, align 4
  %bf.load483 = load i160, ptr %tcp_dport, align 4
  %and497 = and i32 %or476, -65537
  %sh.diff611 = lshr i160 %bf.load483, 80
  %tr.sh.diff612 = trunc i160 %sh.diff611 to i32
  %shl499 = and i32 %tr.sh.diff612, 65536
  %or500 = or i32 %and497, %shl499
  store i32 %or500, ptr %add.ptr304, align 4
  %bf.load507 = load i160, ptr %tcp_dport, align 4
  %bf.clear508 = and i160 %bf.load507, -40485591044789076510300958621697
  store i160 %bf.clear508, ptr %tcp_dport, align 4
  br label %if.end510

if.end510:                                        ; preds = %do.body291, %do.end283.if.end510_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l2_src_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not53 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not53, ptr %inner, ptr %value
  %1 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cond, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %smac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %5 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13 = load i32, ptr %smac_15_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load13)
  %tobool15.not = icmp ult i32 %bf.load13, 65536
  br i1 %tobool15.not, label %do.body12.do.end37_crit_edge, label %do.body17

do.body12.do.end37_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr14 = and i32 %bf.load13, -65536
  %add.ptr25 = getelementptr i32, ptr %tag, i32 2
  %6 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %7, 65535
  %or29 = or i32 %and26, %bf.lshr14
  store i32 %or29, ptr %add.ptr25, align 4
  %8 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load34 = load i32, ptr %smac_15_0, align 4
  %bf.clear = and i32 %bf.load34, 65535
  store i32 %bf.clear, ptr %smac_15_0, align 4
  br label %do.end37

do.end37:                                         ; preds = %do.body17, %do.body12.do.end37_crit_edge
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load38 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load38)
  %tobool40 = icmp slt i8 %bf.load38, 0
  %call = tail call fastcc i32 @dr_ste_v1_build_eth_l2_src_or_dst_tag(ptr noundef %value, i1 noundef zeroext %tobool40, ptr noundef %tag)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @dr_ste_v1_build_eth_l2_src_or_dst_bit_mask(ptr noundef %value, i1 noundef zeroext %inner, ptr noundef %bit_mask) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inner1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  %cond = select i1 %inner, ptr %inner1, ptr %value
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %first_vid = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %0 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 20)
  %bf.load = load i160, ptr %first_vid, align 4
  %bf.lshr = lshr i160 %bf.load, 128
  %1 = trunc i160 %bf.lshr to i32
  %bf.cast = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool2.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool2.not, label %entry.do.body19_crit_edge, label %do.body3

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %and = and i32 %3, -4096
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 20)
  %bf.load15 = load i160, ptr %first_vid, align 4
  %bf.clear16 = and i160 %bf.load15, -1393456292541243007882519017433090825912321
  store i160 %bf.clear16, ptr %first_vid, align 4
  br label %do.body19

do.body19:                                        ; preds = %do.body3, %entry.do.body19_crit_edge
  %5 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load20 = load i160, ptr %first_vid, align 4
  %6 = and i160 %bf.load20, 1393796574908163946345982392040522594123776
  %tobool24.not = icmp eq i160 %6, 0
  br i1 %tobool24.not, label %do.body19.do.body51_crit_edge, label %do.body26

do.body19.do.body51_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

do.body26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit_mask, align 4
  %or40 = or i32 %8, 4096
  store i32 %or40, ptr %bit_mask, align 4
  %9 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load45 = load i160, ptr %first_vid, align 4
  %bf.clear46 = and i160 %bf.load45, -1393796574908163946345982392040522594123777
  store i160 %bf.clear46, ptr %first_vid, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.body26, %do.body19.do.body51_crit_edge
  %10 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 20)
  %bf.load52 = load i160, ptr %first_vid, align 4
  %bf.lshr53 = lshr i160 %bf.load52, 141
  %11 = trunc i160 %bf.lshr53 to i32
  %bf.cast55 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast55)
  %tobool56.not = icmp eq i32 %bf.cast55, 0
  br i1 %tobool56.not, label %do.body51.do.body83_crit_edge, label %do.body58

do.body51.do.body83_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body83

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit_mask, align 4
  %and69 = and i32 %13, -57345
  %shl71 = shl nuw nsw i32 %bf.cast55, 13
  %or72 = or i32 %and69, %shl71
  store i32 %or72, ptr %bit_mask, align 4
  %14 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load77 = load i160, ptr %first_vid, align 4
  %bf.clear78 = and i160 %bf.load77, -19513152048714295248843753488567316317732865
  store i160 %bf.clear78, ptr %first_vid, align 4
  br label %do.body83

do.body83:                                        ; preds = %do.body58, %do.body51.do.body83_crit_edge
  %15 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 20)
  %bf.load84 = load i160, ptr %first_vid, align 4
  %16 = and i160 %bf.load84, 649037107316853453566312041152512
  %tobool88.not = icmp eq i160 %16, 0
  br i1 %tobool88.not, label %do.body83.do.body115_crit_edge, label %do.body90

do.body83.do.body115_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

do.body90:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit_mask, align 4
  %or104 = or i32 %18, 268435456
  store i32 %or104, ptr %bit_mask, align 4
  %19 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load109 = load i160, ptr %first_vid, align 4
  %bf.clear110 = and i160 %bf.load109, -649037107316853453566312041152513
  store i160 %bf.clear110, ptr %first_vid, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body90, %do.body83.do.body115_crit_edge
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load116 = load i32, ptr %ethertype, align 4
  %bf.clear117 = and i32 %bf.load116, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear117)
  %tobool118.not = icmp eq i32 %bf.clear117, 0
  br i1 %tobool118.not, label %do.body115.do.body143_crit_edge, label %do.body120

do.body115.do.body143_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body143

do.body120:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr128 = getelementptr i32, ptr %bit_mask, i32 2
  %21 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr128, align 4
  %and129 = and i32 %22, -65536
  %or132 = or i32 %and129, %bf.clear117
  store i32 %or132, ptr %add.ptr128, align 4
  %23 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load137 = load i32, ptr %ethertype, align 4
  %bf.clear138 = and i32 %bf.load137, -65536
  store i32 %bf.clear138, ptr %ethertype, align 4
  br label %do.body143

do.body143:                                       ; preds = %do.body120, %do.body115.do.body143_crit_edge
  %24 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load144 = load i160, ptr %first_vid, align 4
  %25 = and i160 %bf.load144, 608472288109550112718417538580480
  %tobool148.not = icmp eq i160 %25, 0
  br i1 %tobool148.not, label %do.body143.do.end169_crit_edge, label %do.body150

do.body143.do.end169_crit_edge:                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end169

do.body150:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bit_mask, align 4
  %or159 = or i32 %27, 3145728
  store i32 %or159, ptr %bit_mask, align 4
  %28 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load164 = load i160, ptr %first_vid, align 4
  %bf.clear165 = and i160 %bf.load164, -608472288109550112718417538580481
  store i160 %bf.clear165, ptr %first_vid, align 4
  br label %do.end169

do.end169:                                        ; preds = %do.body150, %do.body143.do.end169_crit_edge
  %29 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load170 = load i160, ptr %first_vid, align 4
  %30 = and i160 %bf.load170, 3894222643901120721397872246915072
  %31 = icmp eq i160 %30, 0
  br i1 %31, label %do.end169.if.end202_crit_edge, label %do.body181

do.end169.if.end202_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

do.body181:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bit_mask, align 4
  %or190 = or i32 %33, 196608
  store i32 %or190, ptr %bit_mask, align 4
  %34 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %34, i32 20)
  %bf.load195 = load i160, ptr %first_vid, align 4
  %bf.clear200 = and i160 %bf.load195, -3894222643901120721397872246915073
  store i160 %bf.clear200, ptr %first_vid, align 4
  br label %if.end202

if.end202:                                        ; preds = %do.body181, %do.end169.if.end202_crit_edge
  %35 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %35, i32 44)
  %bf.load205 = load i352, ptr %misc, align 4
  br i1 %inner, label %if.then204, label %if.else

if.then204:                                       ; preds = %if.end202
  %36 = and i352 %bf.load205, 36185027886661311069865932815214971204146870208012676262330495002472853012480
  %37 = icmp eq i352 %36, 0
  br i1 %37, label %if.then204.do.body237_crit_edge, label %do.body217

if.then204.do.body237_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body237

do.body217:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr222 = getelementptr i32, ptr %bit_mask, i32 3
  %38 = ptrtoint ptr %add.ptr222 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr222, align 4
  %or226 = or i32 %39, 196608
  store i32 %or226, ptr %add.ptr222, align 4
  %40 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %40, i32 44)
  %bf.load230 = load i352, ptr %misc, align 4
  %bf.clear234 = and i352 %bf.load230, -36185027886661311069865932815214971204146870208012676262330495002472853012481
  store i352 %bf.clear234, ptr %misc, align 4
  br label %do.body237

do.body237:                                       ; preds = %do.body217, %if.then204.do.body237_crit_edge
  %41 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %41, i32 44)
  %bf.load238 = load i352, ptr %misc, align 4
  %bf.lshr239 = lshr i352 %bf.load238, 256
  %42 = trunc i352 %bf.lshr239 to i32
  %bf.cast241 = and i32 %42, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast241)
  %tobool242.not = icmp eq i32 %bf.cast241, 0
  br i1 %tobool242.not, label %do.body237.do.body267_crit_edge, label %do.body244

do.body237.do.body267_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body267

do.body244:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr253 = getelementptr i32, ptr %bit_mask, i32 3
  %43 = ptrtoint ptr %add.ptr253 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr253, align 4
  %and254 = and i32 %44, -4096
  %or257 = or i32 %and254, %bf.cast241
  store i32 %or257, ptr %add.ptr253, align 4
  %45 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %45, i32 44)
  %bf.load261 = load i352, ptr %misc, align 4
  %bf.clear262 = and i352 %bf.load261, -474168605426809820259523183610576982659140587205798109741578806512404265875537921
  store i352 %bf.clear262, ptr %misc, align 4
  br label %do.body267

do.body267:                                       ; preds = %do.body244, %do.body237.do.body267_crit_edge
  %46 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %46, i32 44)
  %bf.load268 = load i352, ptr %misc, align 4
  %47 = and i352 %bf.load268, 474284397516047136454946754595585670566993857190463750305618264096412179005177856
  %tobool272.not = icmp eq i352 %47, 0
  br i1 %tobool272.not, label %do.body267.do.body297_crit_edge, label %do.body274

do.body267.do.body297_crit_edge:                  ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body297

do.body274:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr283 = getelementptr i32, ptr %bit_mask, i32 3
  %48 = ptrtoint ptr %add.ptr283 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr283, align 4
  %or287 = or i32 %49, 4096
  store i32 %or287, ptr %add.ptr283, align 4
  %50 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %50, i32 44)
  %bf.load291 = load i352, ptr %misc, align 4
  %bf.clear292 = and i352 %bf.load291, -474284397516047136454946754595585670566993857190463750305618264096412179005177857
  store i352 %bf.clear292, ptr %misc, align 4
  br label %do.body297

do.body297:                                       ; preds = %do.body274, %do.body267.do.body297_crit_edge
  %51 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %51, i32 44)
  %bf.load298 = load i352, ptr %misc, align 4
  %bf.lshr299 = lshr i352 %bf.load298, 269
  %52 = trunc i352 %bf.lshr299 to i32
  %bf.cast301 = and i32 %52, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast301)
  %tobool302.not = icmp eq i32 %bf.cast301, 0
  br i1 %tobool302.not, label %do.body297.if.end449_crit_edge, label %do.body297.if.end449.sink.split_crit_edge

do.body297.if.end449.sink.split_crit_edge:        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449.sink.split

do.body297.if.end449_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

if.else:                                          ; preds = %if.end202
  %53 = and i352 %bf.load205, 72370055773322622139731865630429942408293740416025352524660990004945706024960
  %54 = icmp eq i352 %53, 0
  br i1 %54, label %if.else.do.body359_crit_edge, label %do.body339

if.else.do.body359_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body359

do.body339:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr344 = getelementptr i32, ptr %bit_mask, i32 3
  %55 = ptrtoint ptr %add.ptr344 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr344, align 4
  %or348 = or i32 %56, 196608
  store i32 %or348, ptr %add.ptr344, align 4
  %57 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %57, i32 44)
  %bf.load352 = load i352, ptr %misc, align 4
  %bf.clear356 = and i352 %bf.load352, -72370055773322622139731865630429942408293740416025352524660990004945706024961
  store i352 %bf.clear356, ptr %misc, align 4
  br label %do.body359

do.body359:                                       ; preds = %do.body339, %if.else.do.body359_crit_edge
  %58 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %58, i32 44)
  %bf.load360 = load i352, ptr %misc, align 4
  %bf.lshr361 = lshr i352 %bf.load360, 272
  %59 = trunc i352 %bf.lshr361 to i32
  %bf.cast363 = and i32 %59, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast363)
  %tobool364.not = icmp eq i32 %bf.cast363, 0
  br i1 %tobool364.not, label %do.body359.do.body389_crit_edge, label %do.body366

do.body359.do.body389_crit_edge:                  ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body389

do.body366:                                       ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr375 = getelementptr i32, ptr %bit_mask, i32 3
  %60 = ptrtoint ptr %add.ptr375 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr375, align 4
  %and376 = and i32 %61, -4096
  %or379 = or i32 %and376, %bf.cast363
  store i32 %or379, ptr %add.ptr375, align 4
  %62 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %62, i32 44)
  %bf.load383 = load i352, ptr %misc, align 4
  %bf.clear384 = and i352 %bf.load383, -31075113725251408380528111361102773135549437523119184920024108663596925968419253125121
  store i352 %bf.clear384, ptr %misc, align 4
  br label %do.body389

do.body389:                                       ; preds = %do.body366, %do.body359.do.body389_crit_edge
  %63 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %63, i32 44)
  %bf.load390 = load i352, ptr %misc, align 4
  %64 = and i352 %bf.load390, 31082702275611665134711390509176302506278509424834232340028998555822468563283335970816
  %tobool394.not = icmp eq i352 %64, 0
  br i1 %tobool394.not, label %do.body389.do.body419_crit_edge, label %do.body396

do.body389.do.body419_crit_edge:                  ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body419

do.body396:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr405 = getelementptr i32, ptr %bit_mask, i32 3
  %65 = ptrtoint ptr %add.ptr405 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr405, align 4
  %or409 = or i32 %66, 4096
  store i32 %or409, ptr %add.ptr405, align 4
  %67 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %67, i32 44)
  %bf.load413 = load i352, ptr %misc, align 4
  %bf.clear414 = and i352 %bf.load413, -31082702275611665134711390509176302506278509424834232340028998555822468563283335970817
  store i352 %bf.clear414, ptr %misc, align 4
  br label %do.body419

do.body419:                                       ; preds = %do.body396, %do.body389.do.body419_crit_edge
  %68 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %68, i32 44)
  %bf.load420 = load i352, ptr %misc, align 4
  %bf.lshr421 = lshr i352 %bf.load420, 285
  %69 = trunc i352 %bf.lshr421 to i32
  %bf.cast423 = and i32 %69, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast423)
  %tobool424.not = icmp eq i32 %bf.cast423, 0
  br i1 %tobool424.not, label %do.body419.if.end449_crit_edge, label %do.body419.if.end449.sink.split_crit_edge

do.body419.if.end449.sink.split_crit_edge:        ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449.sink.split

do.body419.if.end449_crit_edge:                   ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

if.end449.sink.split:                             ; preds = %do.body419.if.end449.sink.split_crit_edge, %do.body297.if.end449.sink.split_crit_edge
  %bf.cast423.sink = phi i32 [ %bf.cast301, %do.body297.if.end449.sink.split_crit_edge ], [ %bf.cast423, %do.body419.if.end449.sink.split_crit_edge ]
  %.sink = phi i352 [ -6639981565224659910369254564338199387937914000666492504278655697349770506072489985, %do.body297.if.end449.sink.split_crit_edge ], [ -435157831858563311885959467128468235087899131947679252760405979781514559885966703591425, %do.body419.if.end449.sink.split_crit_edge ]
  %add.ptr313 = getelementptr i32, ptr %bit_mask, i32 3
  %70 = ptrtoint ptr %add.ptr313 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr313, align 4
  %and436 = and i32 %71, -57345
  %shl438 = shl nuw nsw i32 %bf.cast423.sink, 13
  %or439 = or i32 %and436, %shl438
  store i32 %or439, ptr %add.ptr313, align 4
  %72 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %72, i32 44)
  %bf.load443 = load i352, ptr %misc, align 4
  %bf.clear444 = and i352 %bf.load443, %.sink
  store i352 %bf.clear444, ptr %misc, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.end449.sink.split, %do.body419.if.end449_crit_edge, %do.body297.if.end449_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @dr_ste_v1_build_eth_l2_src_or_dst_tag(ptr noundef %value, i1 noundef zeroext %inner, ptr noundef %tag) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inner1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  %cond = select i1 %inner, ptr %inner1, ptr %value
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %first_vid = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %0 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 20)
  %bf.load = load i160, ptr %first_vid, align 4
  %bf.lshr = lshr i160 %bf.load, 128
  %1 = trunc i160 %bf.lshr to i32
  %bf.cast = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool2.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool2.not, label %entry.do.body19_crit_edge, label %do.body3

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -4096
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %tag, align 4
  %4 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 20)
  %bf.load15 = load i160, ptr %first_vid, align 4
  %bf.clear16 = and i160 %bf.load15, -1393456292541243007882519017433090825912321
  store i160 %bf.clear16, ptr %first_vid, align 4
  br label %do.body19

do.body19:                                        ; preds = %do.body3, %entry.do.body19_crit_edge
  %5 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load20 = load i160, ptr %first_vid, align 4
  %6 = and i160 %bf.load20, 1393796574908163946345982392040522594123776
  %tobool24.not = icmp eq i160 %6, 0
  br i1 %tobool24.not, label %do.body19.do.body51_crit_edge, label %do.body26

do.body19.do.body51_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

do.body26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %or40 = or i32 %8, 4096
  store i32 %or40, ptr %tag, align 4
  %9 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load45 = load i160, ptr %first_vid, align 4
  %bf.clear46 = and i160 %bf.load45, -1393796574908163946345982392040522594123777
  store i160 %bf.clear46, ptr %first_vid, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.body26, %do.body19.do.body51_crit_edge
  %10 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 20)
  %bf.load52 = load i160, ptr %first_vid, align 4
  %bf.lshr53 = lshr i160 %bf.load52, 141
  %11 = trunc i160 %bf.lshr53 to i32
  %bf.cast55 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast55)
  %tobool56.not = icmp eq i32 %bf.cast55, 0
  br i1 %tobool56.not, label %do.body51.do.body83_crit_edge, label %do.body58

do.body51.do.body83_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body83

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  %and69 = and i32 %13, -57345
  %shl71 = shl nuw nsw i32 %bf.cast55, 13
  %or72 = or i32 %and69, %shl71
  store i32 %or72, ptr %tag, align 4
  %14 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load77 = load i160, ptr %first_vid, align 4
  %bf.clear78 = and i160 %bf.load77, -19513152048714295248843753488567316317732865
  store i160 %bf.clear78, ptr %first_vid, align 4
  br label %do.body83

do.body83:                                        ; preds = %do.body58, %do.body51.do.body83_crit_edge
  %15 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 20)
  %bf.load84 = load i160, ptr %first_vid, align 4
  %16 = and i160 %bf.load84, 649037107316853453566312041152512
  %tobool88.not = icmp eq i160 %16, 0
  br i1 %tobool88.not, label %do.body83.do.body115_crit_edge, label %do.body90

do.body83.do.body115_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

do.body90:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tag, align 4
  %or104 = or i32 %18, 268435456
  store i32 %or104, ptr %tag, align 4
  %19 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load109 = load i160, ptr %first_vid, align 4
  %bf.clear110 = and i160 %bf.load109, -649037107316853453566312041152513
  store i160 %bf.clear110, ptr %first_vid, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body90, %do.body83.do.body115_crit_edge
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load116 = load i32, ptr %ethertype, align 4
  %bf.clear117 = and i32 %bf.load116, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear117)
  %tobool118.not = icmp eq i32 %bf.clear117, 0
  br i1 %tobool118.not, label %do.body115.do.end142_crit_edge, label %do.body120

do.body115.do.end142_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end142

do.body120:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr128 = getelementptr i32, ptr %tag, i32 2
  %21 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr128, align 4
  %and129 = and i32 %22, -65536
  %or132 = or i32 %and129, %bf.clear117
  store i32 %or132, ptr %add.ptr128, align 4
  %23 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load137 = load i32, ptr %ethertype, align 4
  %bf.clear138 = and i32 %bf.load137, -65536
  store i32 %bf.clear138, ptr %ethertype, align 4
  br label %do.end142

do.end142:                                        ; preds = %do.body120, %do.body115.do.end142_crit_edge
  %24 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load143 = load i160, ptr %first_vid, align 4
  %bf.lshr144 = lshr i160 %bf.load143, 105
  %25 = trunc i160 %bf.lshr144 to i32
  %bf.cast146 = and i32 %25, 15
  %26 = zext i32 %bf.cast146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %bf.cast146, label %do.end142.cleanup_crit_edge [
    i32 4, label %do.end142.if.end199.sink.split_crit_edge
    i32 6, label %do.body172
    i32 0, label %do.end142.if.end199_crit_edge
  ]

do.end142.if.end199_crit_edge:                    ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

do.end142.if.end199.sink.split_crit_edge:         ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199.sink.split

do.end142.cleanup_crit_edge:                      ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body172:                                       ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199.sink.split

if.end199.sink.split:                             ; preds = %do.body172, %do.end142.if.end199.sink.split_crit_edge
  %.sink = phi i32 [ 2097152, %do.body172 ], [ 1048576, %do.end142.if.end199.sink.split_crit_edge ]
  %27 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tag, align 4
  %and178 = and i32 %28, -3145729
  %or181 = or i32 %and178, %.sink
  store i32 %or181, ptr %tag, align 4
  %29 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load186 = load i160, ptr %first_vid, align 4
  %bf.clear187 = and i160 %bf.load186, -608472288109550112718417538580481
  store i160 %bf.clear187, ptr %first_vid, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.end199.sink.split, %do.end142.if.end199_crit_edge
  %30 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %30, i32 20)
  %bf.load200 = load i160, ptr %first_vid, align 4
  %31 = and i160 %bf.load200, 2596148429267413814265248164610048
  %tobool204.not = icmp eq i160 %31, 0
  br i1 %tobool204.not, label %if.else223, label %if.end199.if.end248.sink.split_crit_edge

if.end199.if.end248.sink.split_crit_edge:         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248.sink.split

if.else223:                                       ; preds = %if.end199
  %32 = and i160 %bf.load200, 1298074214633706907132624082305024
  %tobool228.not = icmp eq i160 %32, 0
  br i1 %tobool228.not, label %if.else223.if.end248_crit_edge, label %if.else223.if.end248.sink.split_crit_edge

if.else223.if.end248.sink.split_crit_edge:        ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248.sink.split

if.else223.if.end248_crit_edge:                   ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

if.end248.sink.split:                             ; preds = %if.else223.if.end248.sink.split_crit_edge, %if.end199.if.end248.sink.split_crit_edge
  %.sink628 = phi i32 [ 131072, %if.end199.if.end248.sink.split_crit_edge ], [ 65536, %if.else223.if.end248.sink.split_crit_edge ]
  %.sink627 = phi i160 [ -2596148429267413814265248164610049, %if.end199.if.end248.sink.split_crit_edge ], [ -1298074214633706907132624082305025, %if.else223.if.end248.sink.split_crit_edge ]
  %33 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tag, align 4
  %and236 = and i32 %34, -196609
  %or239 = or i32 %and236, %.sink628
  store i32 %or239, ptr %tag, align 4
  %35 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %35, i32 20)
  %bf.load244 = load i160, ptr %first_vid, align 4
  %bf.clear245 = and i160 %bf.load244, %.sink627
  store i160 %bf.clear245, ptr %first_vid, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.end248.sink.split, %if.else223.if.end248_crit_edge
  %36 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %36, i32 44)
  %bf.load251 = load i352, ptr %misc, align 4
  br i1 %inner, label %if.then250, label %if.else388

if.then250:                                       ; preds = %if.end248
  %37 = and i352 %bf.load251, 28948022309329048855892746252171976963317496166410141009864396001978282409984
  %tobool255.not = icmp eq i352 %37, 0
  br i1 %tobool255.not, label %if.else273, label %if.then250.do.body298.sink.split_crit_edge

if.then250.do.body298.sink.split_crit_edge:       ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body298.sink.split

if.else273:                                       ; preds = %if.then250
  %38 = and i352 %bf.load251, 7237005577332262213973186563042994240829374041602535252466099000494570602496
  %tobool278.not = icmp eq i352 %38, 0
  br i1 %tobool278.not, label %if.else273.do.body298_crit_edge, label %if.else273.do.body298.sink.split_crit_edge

if.else273.do.body298.sink.split_crit_edge:       ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body298.sink.split

if.else273.do.body298_crit_edge:                  ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body298

do.body298.sink.split:                            ; preds = %if.else273.do.body298.sink.split_crit_edge, %if.then250.do.body298.sink.split_crit_edge
  %.sink631 = phi i32 [ 131072, %if.then250.do.body298.sink.split_crit_edge ], [ 65536, %if.else273.do.body298.sink.split_crit_edge ]
  %.sink630 = phi i352 [ -28948022309329048855892746252171976963317496166410141009864396001978282409985, %if.then250.do.body298.sink.split_crit_edge ], [ -7237005577332262213973186563042994240829374041602535252466099000494570602497, %if.else273.do.body298.sink.split_crit_edge ]
  %add.ptr285 = getelementptr i32, ptr %tag, i32 3
  %39 = ptrtoint ptr %add.ptr285 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr285, align 4
  %and263 = and i32 %40, -196609
  %or266 = or i32 %and263, %.sink631
  store i32 %or266, ptr %add.ptr285, align 4
  %41 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %41, i32 44)
  %bf.load270 = load i352, ptr %misc, align 4
  %bf.clear271 = and i352 %bf.load270, %.sink630
  store i352 %bf.clear271, ptr %misc, align 4
  br label %do.body298

do.body298:                                       ; preds = %do.body298.sink.split, %if.else273.do.body298_crit_edge
  %42 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %42, i32 44)
  %bf.load299 = load i352, ptr %misc, align 4
  %bf.lshr300 = lshr i352 %bf.load299, 256
  %43 = trunc i352 %bf.lshr300 to i32
  %bf.cast302 = and i32 %43, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast302)
  %tobool303.not = icmp eq i32 %bf.cast302, 0
  br i1 %tobool303.not, label %do.body298.do.body328_crit_edge, label %do.body305

do.body298.do.body328_crit_edge:                  ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body328

do.body305:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr314 = getelementptr i32, ptr %tag, i32 3
  %44 = ptrtoint ptr %add.ptr314 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr314, align 4
  %and315 = and i32 %45, -4096
  %or318 = or i32 %and315, %bf.cast302
  store i32 %or318, ptr %add.ptr314, align 4
  %46 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %46, i32 44)
  %bf.load322 = load i352, ptr %misc, align 4
  %bf.clear323 = and i352 %bf.load322, -474168605426809820259523183610576982659140587205798109741578806512404265875537921
  store i352 %bf.clear323, ptr %misc, align 4
  br label %do.body328

do.body328:                                       ; preds = %do.body305, %do.body298.do.body328_crit_edge
  %47 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %47, i32 44)
  %bf.load329 = load i352, ptr %misc, align 4
  %48 = and i352 %bf.load329, 474284397516047136454946754595585670566993857190463750305618264096412179005177856
  %tobool333.not = icmp eq i352 %48, 0
  br i1 %tobool333.not, label %do.body328.do.body358_crit_edge, label %do.body335

do.body328.do.body358_crit_edge:                  ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body358

do.body335:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr344 = getelementptr i32, ptr %tag, i32 3
  %49 = ptrtoint ptr %add.ptr344 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr344, align 4
  %or348 = or i32 %50, 4096
  store i32 %or348, ptr %add.ptr344, align 4
  %51 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %51, i32 44)
  %bf.load352 = load i352, ptr %misc, align 4
  %bf.clear353 = and i352 %bf.load352, -474284397516047136454946754595585670566993857190463750305618264096412179005177857
  store i352 %bf.clear353, ptr %misc, align 4
  br label %do.body358

do.body358:                                       ; preds = %do.body335, %do.body328.do.body358_crit_edge
  %52 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %52, i32 44)
  %bf.load359 = load i352, ptr %misc, align 4
  %bf.lshr360 = lshr i352 %bf.load359, 269
  %53 = trunc i352 %bf.lshr360 to i32
  %bf.cast362 = and i32 %53, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast362)
  %tobool363.not = icmp eq i32 %bf.cast362, 0
  br i1 %tobool363.not, label %do.body358.cleanup_crit_edge, label %do.body358.cleanup.sink.split_crit_edge

do.body358.cleanup.sink.split_crit_edge:          ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.body358.cleanup_crit_edge:                     ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else388:                                       ; preds = %if.end248
  %54 = and i352 %bf.load251, 57896044618658097711785492504343953926634992332820282019728792003956564819968
  %tobool393.not = icmp eq i352 %54, 0
  br i1 %tobool393.not, label %if.else411, label %if.else388.do.body436.sink.split_crit_edge

if.else388.do.body436.sink.split_crit_edge:       ; preds = %if.else388
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body436.sink.split

if.else411:                                       ; preds = %if.else388
  %55 = and i352 %bf.load251, 14474011154664524427946373126085988481658748083205070504932198000989141204992
  %tobool416.not = icmp eq i352 %55, 0
  br i1 %tobool416.not, label %if.else411.do.body436_crit_edge, label %if.else411.do.body436.sink.split_crit_edge

if.else411.do.body436.sink.split_crit_edge:       ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body436.sink.split

if.else411.do.body436_crit_edge:                  ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body436

do.body436.sink.split:                            ; preds = %if.else411.do.body436.sink.split_crit_edge, %if.else388.do.body436.sink.split_crit_edge
  %.sink635 = phi i32 [ 131072, %if.else388.do.body436.sink.split_crit_edge ], [ 65536, %if.else411.do.body436.sink.split_crit_edge ]
  %.sink634 = phi i352 [ -57896044618658097711785492504343953926634992332820282019728792003956564819969, %if.else388.do.body436.sink.split_crit_edge ], [ -14474011154664524427946373126085988481658748083205070504932198000989141204993, %if.else411.do.body436.sink.split_crit_edge ]
  %add.ptr423 = getelementptr i32, ptr %tag, i32 3
  %56 = ptrtoint ptr %add.ptr423 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr423, align 4
  %and401 = and i32 %57, -196609
  %or404 = or i32 %and401, %.sink635
  store i32 %or404, ptr %add.ptr423, align 4
  %58 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %58, i32 44)
  %bf.load408 = load i352, ptr %misc, align 4
  %bf.clear409 = and i352 %bf.load408, %.sink634
  store i352 %bf.clear409, ptr %misc, align 4
  br label %do.body436

do.body436:                                       ; preds = %do.body436.sink.split, %if.else411.do.body436_crit_edge
  %59 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %59, i32 44)
  %bf.load437 = load i352, ptr %misc, align 4
  %bf.lshr438 = lshr i352 %bf.load437, 272
  %60 = trunc i352 %bf.lshr438 to i32
  %bf.cast440 = and i32 %60, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast440)
  %tobool441.not = icmp eq i32 %bf.cast440, 0
  br i1 %tobool441.not, label %do.body436.do.body466_crit_edge, label %do.body443

do.body436.do.body466_crit_edge:                  ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body466

do.body443:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr452 = getelementptr i32, ptr %tag, i32 3
  %61 = ptrtoint ptr %add.ptr452 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr452, align 4
  %and453 = and i32 %62, -4096
  %or456 = or i32 %and453, %bf.cast440
  store i32 %or456, ptr %add.ptr452, align 4
  %63 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %63, i32 44)
  %bf.load460 = load i352, ptr %misc, align 4
  %bf.clear461 = and i352 %bf.load460, -31075113725251408380528111361102773135549437523119184920024108663596925968419253125121
  store i352 %bf.clear461, ptr %misc, align 4
  br label %do.body466

do.body466:                                       ; preds = %do.body443, %do.body436.do.body466_crit_edge
  %64 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %64, i32 44)
  %bf.load467 = load i352, ptr %misc, align 4
  %65 = and i352 %bf.load467, 31082702275611665134711390509176302506278509424834232340028998555822468563283335970816
  %tobool471.not = icmp eq i352 %65, 0
  br i1 %tobool471.not, label %do.body466.do.body496_crit_edge, label %do.body473

do.body466.do.body496_crit_edge:                  ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body496

do.body473:                                       ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr482 = getelementptr i32, ptr %tag, i32 3
  %66 = ptrtoint ptr %add.ptr482 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr482, align 4
  %or486 = or i32 %67, 4096
  store i32 %or486, ptr %add.ptr482, align 4
  %68 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %68, i32 44)
  %bf.load490 = load i352, ptr %misc, align 4
  %bf.clear491 = and i352 %bf.load490, -31082702275611665134711390509176302506278509424834232340028998555822468563283335970817
  store i352 %bf.clear491, ptr %misc, align 4
  br label %do.body496

do.body496:                                       ; preds = %do.body473, %do.body466.do.body496_crit_edge
  %69 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %69, i32 44)
  %bf.load497 = load i352, ptr %misc, align 4
  %bf.lshr498 = lshr i352 %bf.load497, 285
  %70 = trunc i352 %bf.lshr498 to i32
  %bf.cast500 = and i32 %70, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast500)
  %tobool501.not = icmp eq i32 %bf.cast500, 0
  br i1 %tobool501.not, label %do.body496.cleanup_crit_edge, label %do.body496.cleanup.sink.split_crit_edge

do.body496.cleanup.sink.split_crit_edge:          ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.body496.cleanup_crit_edge:                     ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body496.cleanup.sink.split_crit_edge, %do.body358.cleanup.sink.split_crit_edge
  %bf.cast362.sink = phi i32 [ %bf.cast362, %do.body358.cleanup.sink.split_crit_edge ], [ %bf.cast500, %do.body496.cleanup.sink.split_crit_edge ]
  %.sink638 = phi i352 [ -6639981565224659910369254564338199387937914000666492504278655697349770506072489985, %do.body358.cleanup.sink.split_crit_edge ], [ -435157831858563311885959467128468235087899131947679252760405979781514559885966703591425, %do.body496.cleanup.sink.split_crit_edge ]
  %add.ptr512 = getelementptr i32, ptr %tag, i32 3
  %71 = ptrtoint ptr %add.ptr512 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr512, align 4
  %and375 = and i32 %72, -57345
  %shl377 = shl nuw nsw i32 %bf.cast362.sink, 13
  %or378 = or i32 %and375, %shl377
  store i32 %or378, ptr %add.ptr512, align 4
  %73 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %73, i32 44)
  %bf.load382 = load i352, ptr %misc, align 4
  %bf.clear383 = and i352 %bf.load382, %.sink638
  store i352 %bf.clear383, ptr %misc, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body496.cleanup_crit_edge, %do.body358.cleanup_crit_edge, %do.end142.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end142.cleanup_crit_edge ], [ 0, %do.body496.cleanup_crit_edge ], [ 0, %do.body358.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l2_dst_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not54 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not54, ptr %inner, ptr %value
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load13 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr14 = lshr i160 %bf.load13, 144
  %bf.cast = trunc i160 %bf.lshr14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool15.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool15.not, label %do.body12.do.end38_crit_edge, label %do.body17

do.body12.do.end38_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr26 = getelementptr i32, ptr %tag, i32 2
  %6 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26, align 4
  %and27 = and i32 %7, 65535
  %shl29 = shl nuw i32 %bf.cast, 16
  %or30 = or i32 %and27, %shl29
  store i32 %or30, ptr %add.ptr26, align 4
  %8 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35 = load i160, ptr %dmac_15_0, align 4
  %bf.clear = and i160 %bf.load35, 22300745198530623141535718272648361505980415
  store i160 %bf.clear, ptr %dmac_15_0, align 4
  br label %do.end38

do.end38:                                         ; preds = %do.body17, %do.body12.do.end38_crit_edge
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load39 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load39)
  %tobool41 = icmp slt i8 %bf.load39, 0
  %call = tail call fastcc i32 @dr_ste_v1_build_eth_l2_src_or_dst_tag(ptr noundef %value, i1 noundef zeroext %tobool41, ptr noundef %tag)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l2_tnl_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not393 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not393, ptr %inner, ptr %value
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %entry.do.body13_crit_edge, label %do.body3

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16, align 4
  br label %do.body13

do.body13:                                        ; preds = %do.body3, %entry.do.body13_crit_edge
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load14 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr15 = lshr i160 %bf.load14, 144
  %bf.cast = trunc i160 %bf.lshr15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool16.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool16.not, label %do.body13.do.body40_crit_edge, label %do.body18

do.body13.do.body40_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

do.body18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr27 = getelementptr i32, ptr %tag, i32 2
  %6 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr27, align 4
  %and28 = and i32 %7, 65535
  %shl30 = shl nuw i32 %bf.cast, 16
  %or31 = or i32 %and28, %shl30
  store i32 %or31, ptr %add.ptr27, align 4
  %8 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load36 = load i160, ptr %dmac_15_0, align 4
  %bf.clear = and i160 %bf.load36, 22300745198530623141535718272648361505980415
  store i160 %bf.clear, ptr %dmac_15_0, align 4
  br label %do.body40

do.body40:                                        ; preds = %do.body18, %do.body13.do.body40_crit_edge
  %9 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load41 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr42 = lshr i160 %bf.load41, 128
  %10 = trunc i160 %bf.lshr42 to i32
  %bf.cast44 = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast44)
  %tobool45.not = icmp eq i32 %bf.cast44, 0
  br i1 %tobool45.not, label %do.body40.do.body72_crit_edge, label %do.body47

do.body40.do.body72_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body72

do.body47:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr57 = getelementptr i32, ptr %tag, i32 3
  %11 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr57, align 4
  %and58 = and i32 %12, -4096
  %or61 = or i32 %and58, %bf.cast44
  store i32 %or61, ptr %add.ptr57, align 4
  %13 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load66 = load i160, ptr %dmac_15_0, align 4
  %bf.clear67 = and i160 %bf.load66, -1393456292541243007882519017433090825912321
  store i160 %bf.clear67, ptr %dmac_15_0, align 4
  br label %do.body72

do.body72:                                        ; preds = %do.body47, %do.body40.do.body72_crit_edge
  %14 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load73 = load i160, ptr %dmac_15_0, align 4
  %15 = and i160 %bf.load73, 1393796574908163946345982392040522594123776
  %tobool77.not = icmp eq i160 %15, 0
  br i1 %tobool77.not, label %do.body72.do.body104_crit_edge, label %do.body79

do.body72.do.body104_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body104

do.body79:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr89 = getelementptr i32, ptr %tag, i32 3
  %16 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr89, align 4
  %or93 = or i32 %17, 4096
  store i32 %or93, ptr %add.ptr89, align 4
  %18 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 20)
  %bf.load98 = load i160, ptr %dmac_15_0, align 4
  %bf.clear99 = and i160 %bf.load98, -1393796574908163946345982392040522594123777
  store i160 %bf.clear99, ptr %dmac_15_0, align 4
  br label %do.body104

do.body104:                                       ; preds = %do.body79, %do.body72.do.body104_crit_edge
  %19 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load105 = load i160, ptr %dmac_15_0, align 4
  %20 = and i160 %bf.load105, 649037107316853453566312041152512
  %tobool109.not = icmp eq i160 %20, 0
  br i1 %tobool109.not, label %do.body104.do.body136_crit_edge, label %do.body111

do.body104.do.body136_crit_edge:                  ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

do.body111:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr121 = getelementptr i32, ptr %tag, i32 3
  %21 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr121, align 4
  %or125 = or i32 %22, 268435456
  store i32 %or125, ptr %add.ptr121, align 4
  %23 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load130 = load i160, ptr %dmac_15_0, align 4
  %bf.clear131 = and i160 %bf.load130, -649037107316853453566312041152513
  store i160 %bf.clear131, ptr %dmac_15_0, align 4
  br label %do.body136

do.body136:                                       ; preds = %do.body111, %do.body104.do.body136_crit_edge
  %24 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load137 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr138 = lshr i160 %bf.load137, 141
  %25 = trunc i160 %bf.lshr138 to i32
  %bf.cast140 = and i32 %25, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast140)
  %tobool141.not = icmp eq i32 %bf.cast140, 0
  br i1 %tobool141.not, label %do.body136.do.body168_crit_edge, label %do.body143

do.body136.do.body168_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body168

do.body143:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr153 = getelementptr i32, ptr %tag, i32 3
  %26 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr153, align 4
  %and154 = and i32 %27, -57345
  %shl156 = shl nuw nsw i32 %bf.cast140, 13
  %or157 = or i32 %and154, %shl156
  store i32 %or157, ptr %add.ptr153, align 4
  %28 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load162 = load i160, ptr %dmac_15_0, align 4
  %bf.clear163 = and i160 %bf.load162, -19513152048714295248843753488567316317732865
  store i160 %bf.clear163, ptr %dmac_15_0, align 4
  br label %do.body168

do.body168:                                       ; preds = %do.body143, %do.body136.do.body168_crit_edge
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %29 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load169 = load i32, ptr %ethertype, align 4
  %bf.clear170 = and i32 %bf.load169, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear170)
  %tobool171.not = icmp eq i32 %bf.clear170, 0
  br i1 %tobool171.not, label %do.body168.do.end195_crit_edge, label %do.body173

do.body168.do.end195_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end195

do.body173:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr181 = getelementptr i32, ptr %tag, i32 2
  %30 = ptrtoint ptr %add.ptr181 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr181, align 4
  %and182 = and i32 %31, -65536
  %or185 = or i32 %and182, %bf.clear170
  store i32 %or185, ptr %add.ptr181, align 4
  %32 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load190 = load i32, ptr %ethertype, align 4
  %bf.clear191 = and i32 %bf.load190, -65536
  store i32 %bf.clear191, ptr %ethertype, align 4
  br label %do.end195

do.end195:                                        ; preds = %do.body173, %do.body168.do.end195_crit_edge
  %33 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 44)
  %bf.load196 = load i352, ptr %misc1, align 4
  %bf.lshr197 = lshr i352 %bf.load196, 168
  %34 = trunc i352 %bf.lshr197 to i32
  %bf.cast199 = and i32 %34, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast199)
  %tobool200.not = icmp eq i32 %bf.cast199, 0
  br i1 %tobool200.not, label %do.end195.if.end223_crit_edge, label %do.body202

do.end195.if.end223_crit_edge:                    ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

do.body202:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #13
  %shl208 = shl i32 %34, 8
  %35 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl208, ptr %tag, align 4
  %36 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 44)
  %bf.load220 = load i352, ptr %misc1, align 4
  %bf.clear221 = and i352 %bf.load220, -6277101361242261607124642363064349240733902412545303511041
  store i352 %bf.clear221, ptr %misc1, align 4
  br label %if.end223

if.end223:                                        ; preds = %do.body202, %do.end195.if.end223_crit_edge
  %37 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load224 = load i160, ptr %dmac_15_0, align 4
  %38 = and i160 %bf.load224, 2596148429267413814265248164610048
  %tobool228.not = icmp eq i160 %38, 0
  br i1 %tobool228.not, label %if.else, label %if.end223.if.end271.sink.split_crit_edge

if.end223.if.end271.sink.split_crit_edge:         ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271.sink.split

if.else:                                          ; preds = %if.end223
  %39 = and i160 %bf.load224, 1298074214633706907132624082305024
  %tobool251.not = icmp eq i160 %39, 0
  br i1 %tobool251.not, label %if.else.if.end271_crit_edge, label %if.else.if.end271.sink.split_crit_edge

if.else.if.end271.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271.sink.split

if.else.if.end271_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.end271.sink.split:                             ; preds = %if.else.if.end271.sink.split_crit_edge, %if.end223.if.end271.sink.split_crit_edge
  %.sink394 = phi i32 [ 131072, %if.end223.if.end271.sink.split_crit_edge ], [ 65536, %if.else.if.end271.sink.split_crit_edge ]
  %.sink = phi i160 [ -2596148429267413814265248164610049, %if.end223.if.end271.sink.split_crit_edge ], [ -1298074214633706907132624082305025, %if.else.if.end271.sink.split_crit_edge ]
  %add.ptr235 = getelementptr i32, ptr %tag, i32 3
  %40 = ptrtoint ptr %add.ptr235 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr235, align 4
  %and259 = and i32 %41, -196609
  %or262 = or i32 %and259, %.sink394
  store i32 %or262, ptr %add.ptr235, align 4
  %42 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load267 = load i160, ptr %dmac_15_0, align 4
  %bf.clear268 = and i160 %bf.load267, %.sink
  store i160 %bf.clear268, ptr %dmac_15_0, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.end271.sink.split, %if.else.if.end271_crit_edge
  %43 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 20)
  %bf.load272 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr273 = lshr i160 %bf.load272, 105
  %44 = trunc i160 %bf.lshr273 to i32
  %bf.cast275 = and i32 %44, 15
  %45 = zext i32 %bf.cast275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %bf.cast275, label %if.end271.cleanup_crit_edge [
    i32 4, label %if.end271.if.end331.sink.split_crit_edge
    i32 6, label %do.body304
    i32 0, label %if.end271.if.end331_crit_edge
  ]

if.end271.if.end331_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end331

if.end271.if.end331.sink.split_crit_edge:         ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end331.sink.split

if.end271.cleanup_crit_edge:                      ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body304:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end331.sink.split

if.end331.sink.split:                             ; preds = %do.body304, %if.end271.if.end331.sink.split_crit_edge
  %.sink397 = phi i32 [ 2097152, %do.body304 ], [ 1048576, %if.end271.if.end331.sink.split_crit_edge ]
  %add.ptr283 = getelementptr i32, ptr %tag, i32 3
  %46 = ptrtoint ptr %add.ptr283 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr283, align 4
  %and310 = and i32 %47, -3145729
  %or313 = or i32 %and310, %.sink397
  store i32 %or313, ptr %add.ptr283, align 4
  %48 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 20)
  %bf.load318 = load i160, ptr %dmac_15_0, align 4
  %bf.clear319 = and i160 %bf.load318, -608472288109550112718417538580481
  store i160 %bf.clear319, ptr %dmac_15_0, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.end331.sink.split, %if.end271.if.end331_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end331, %if.end271.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end331 ], [ -22, %if.end271.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l3_ipv4_misc_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not24 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not24, ptr %inner, ptr %value
  %ttl_hoplimit = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %1 = ptrtoint ptr %ttl_hoplimit to i32
  call void @__asan_loadN_noabort(i32 %1, i32 20)
  %bf.load1 = load i160, ptr %ttl_hoplimit, align 4
  %bf.lshr2 = lshr i160 %bf.load1, 32
  %2 = trunc i160 %bf.lshr2 to i32
  %bf.cast = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool3.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool3.not, label %entry.do.end19_crit_edge, label %do.body4

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %and = and i32 %4, -16711681
  %shl = shl nuw nsw i32 %bf.cast, 16
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %ttl_hoplimit to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load16 = load i160, ptr %ttl_hoplimit, align 4
  %bf.clear17 = and i160 %bf.load16, -1095216660481
  store i160 %bf.clear17, ptr %ttl_hoplimit, align 4
  br label %do.end19

do.end19:                                         ; preds = %do.body4, %entry.do.end19_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_ipv6_l3_l4_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not674 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not674, ptr %inner, ptr %value
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %tcp_dport = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %1 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %1, i32 20)
  %bf.load2 = load i160, ptr %tcp_dport, align 4
  %bf.lshr3 = lshr i160 %bf.load2, 64
  %2 = trunc i160 %bf.lshr3 to i32
  %bf.cast = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool4.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool4.not, label %entry.do.body21_crit_edge, label %do.body5

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %and = and i32 %4, -65536
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load17 = load i160, ptr %tcp_dport, align 4
  %bf.clear18 = and i160 %bf.load17, -1208907372870555465154561
  store i160 %bf.clear18, ptr %tcp_dport, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.body5, %entry.do.body21_crit_edge
  %6 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %6, i32 20)
  %bf.load22 = load i160, ptr %tcp_dport, align 4
  %bf.lshr23 = lshr i160 %bf.load22, 80
  %7 = trunc i160 %bf.lshr23 to i32
  %bf.cast25 = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast25)
  %tobool26.not = icmp eq i32 %bf.cast25, 0
  br i1 %tobool26.not, label %do.body21.do.body53_crit_edge, label %do.body28

do.body21.do.body53_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

do.body28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr38 = getelementptr i32, ptr %tag, i32 1
  %8 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr38, align 4
  %and39 = and i32 %9, 65535
  %shl41 = shl i32 %7, 16
  %or42 = or i32 %and39, %shl41
  store i32 %or42, ptr %add.ptr38, align 4
  %10 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %10, i32 20)
  %bf.load47 = load i160, ptr %tcp_dport, align 4
  %bf.clear48 = and i160 %bf.load47, -79226953588444722964369244161
  store i160 %bf.clear48, ptr %tcp_dport, align 4
  br label %do.body53

do.body53:                                        ; preds = %do.body28, %do.body21.do.body53_crit_edge
  %11 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %11, i32 20)
  %bf.load54 = load i160, ptr %tcp_dport, align 4
  %12 = trunc i160 %bf.load54 to i32
  %bf.cast56 = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast56)
  %tobool57.not = icmp eq i32 %bf.cast56, 0
  br i1 %tobool57.not, label %do.body53.do.body83_crit_edge, label %do.body59

do.body53.do.body83_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body83

do.body59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr68 = getelementptr i32, ptr %tag, i32 1
  %13 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr68, align 4
  %and69 = and i32 %14, -65536
  %or72 = or i32 %and69, %bf.cast56
  store i32 %or72, ptr %add.ptr68, align 4
  %15 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %15, i32 20)
  %bf.load77 = load i160, ptr %tcp_dport, align 4
  %bf.clear78 = and i160 %bf.load77, -65536
  store i160 %bf.clear78, ptr %tcp_dport, align 4
  br label %do.body83

do.body83:                                        ; preds = %do.body59, %do.body53.do.body83_crit_edge
  %16 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %16, i32 20)
  %bf.load84 = load i160, ptr %tcp_dport, align 4
  %17 = trunc i160 %bf.load84 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %tobool88.not = icmp ult i32 %17, 65536
  br i1 %tobool88.not, label %do.body83.do.body115_crit_edge, label %do.body90

do.body83.do.body115_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

do.body90:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %18 = and i32 %17, -65536
  %add.ptr100 = getelementptr i32, ptr %tag, i32 1
  %19 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr100, align 4
  %and101 = and i32 %20, 65535
  %or104 = or i32 %and101, %18
  store i32 %or104, ptr %add.ptr100, align 4
  %21 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %21, i32 20)
  %bf.load109 = load i160, ptr %tcp_dport, align 4
  %bf.clear110 = and i160 %bf.load109, -4294901761
  store i160 %bf.clear110, ptr %tcp_dport, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body90, %do.body83.do.body115_crit_edge
  %22 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %22, i32 20)
  %bf.load116 = load i160, ptr %tcp_dport, align 4
  %bf.lshr117 = lshr i160 %bf.load116, 120
  %23 = trunc i160 %bf.lshr117 to i32
  %bf.cast119 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast119)
  %tobool120.not = icmp eq i32 %bf.cast119, 0
  br i1 %tobool120.not, label %do.body115.do.body147_crit_edge, label %do.body122

do.body115.do.body147_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

do.body122:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tag, align 4
  %and133 = and i32 %25, -256
  %or136 = or i32 %and133, %bf.cast119
  store i32 %or136, ptr %tag, align 4
  %26 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %26, i32 20)
  %bf.load141 = load i160, ptr %tcp_dport, align 4
  %bf.clear142 = and i160 %bf.load141, -338953138925153547590470800371487866881
  store i160 %bf.clear142, ptr %tcp_dport, align 4
  br label %do.body147

do.body147:                                       ; preds = %do.body122, %do.body115.do.body147_crit_edge
  %27 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %27, i32 20)
  %bf.load148 = load i160, ptr %tcp_dport, align 4
  %28 = and i160 %bf.load148, 649037107316853453566312041152512
  %tobool152.not = icmp eq i160 %28, 0
  br i1 %tobool152.not, label %do.body147.do.body179_crit_edge, label %do.body154

do.body147.do.body179_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body179

do.body154:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr164 = getelementptr i32, ptr %tag, i32 3
  %29 = ptrtoint ptr %add.ptr164 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr164, align 4
  %or168 = or i32 %30, 33554432
  store i32 %or168, ptr %add.ptr164, align 4
  %31 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %31, i32 20)
  %bf.load173 = load i160, ptr %tcp_dport, align 4
  %bf.clear174 = and i160 %bf.load173, -649037107316853453566312041152513
  store i160 %bf.clear174, ptr %tcp_dport, align 4
  br label %do.body179

do.body179:                                       ; preds = %do.body154, %do.body147.do.body179_crit_edge
  %32 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %32, i32 20)
  %bf.load180 = load i160, ptr %tcp_dport, align 4
  %bf.lshr181 = lshr i160 %bf.load180, 114
  %33 = trunc i160 %bf.lshr181 to i32
  %bf.cast183 = and i32 %33, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast183)
  %tobool184.not = icmp eq i32 %bf.cast183, 0
  br i1 %tobool184.not, label %do.body179.do.body211_crit_edge, label %do.body186

do.body179.do.body211_crit_edge:                  ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body211

do.body186:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tag, align 4
  %and197 = and i32 %35, -16515073
  %shl199 = shl nuw nsw i32 %bf.cast183, 18
  %or200 = or i32 %and197, %shl199
  store i32 %or200, ptr %tag, align 4
  %36 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %36, i32 20)
  %bf.load205 = load i160, ptr %tcp_dport, align 4
  %bf.clear206 = and i160 %bf.load205, -1308458808350776562389685074963464193
  store i160 %bf.clear206, ptr %tcp_dport, align 4
  br label %do.body211

do.body211:                                       ; preds = %do.body186, %do.body179.do.body211_crit_edge
  %37 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load212 = load i160, ptr %tcp_dport, align 4
  %bf.lshr213 = lshr i160 %bf.load212, 112
  %38 = trunc i160 %bf.lshr213 to i32
  %bf.cast215 = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast215)
  %tobool216.not = icmp eq i32 %bf.cast215, 0
  br i1 %tobool216.not, label %do.body211.do.body243_crit_edge, label %do.body218

do.body211.do.body243_crit_edge:                  ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body243

do.body218:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tag, align 4
  %and229 = and i32 %40, -196609
  %shl231 = shl nuw nsw i32 %bf.cast215, 16
  %or232 = or i32 %and229, %shl231
  store i32 %or232, ptr %tag, align 4
  %41 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %41, i32 20)
  %bf.load237 = load i160, ptr %tcp_dport, align 4
  %bf.clear238 = and i160 %bf.load237, -15576890575604482885591488987660289
  store i160 %bf.clear238, ptr %tcp_dport, align 4
  br label %do.body243

do.body243:                                       ; preds = %do.body218, %do.body211.do.body243_crit_edge
  %42 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load244 = load i160, ptr %tcp_dport, align 4
  %bf.lshr245 = lshr i160 %bf.load244, 32
  %43 = trunc i160 %bf.lshr245 to i32
  %bf.cast247 = and i32 %43, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast247)
  %tobool248.not = icmp eq i32 %bf.cast247, 0
  br i1 %tobool248.not, label %do.body243.do.end274_crit_edge, label %do.body250

do.body243.do.end274_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end274

do.body250:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tag, align 4
  %and261 = and i32 %45, -65281
  %shl263 = shl nuw nsw i32 %bf.cast247, 8
  %or264 = or i32 %and261, %shl263
  store i32 %or264, ptr %tag, align 4
  %46 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %46, i32 20)
  %bf.load269 = load i160, ptr %tcp_dport, align 4
  %bf.clear270 = and i160 %bf.load269, -1095216660481
  store i160 %bf.clear270, ptr %tcp_dport, align 4
  br label %do.end274

do.end274:                                        ; preds = %do.body250, %do.body243.do.end274_crit_edge
  %47 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load275 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load275)
  %tobool277.not = icmp sgt i8 %bf.load275, -1
  %48 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 44)
  %bf.load310 = load i352, ptr %misc1, align 4
  br i1 %tobool277.not, label %do.body309, label %do.body279

do.body279:                                       ; preds = %do.end274
  %bf.lshr281 = lshr i352 %bf.load310, 64
  %49 = trunc i352 %bf.lshr281 to i32
  %bf.cast283 = and i32 %49, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast283)
  %tobool284.not = icmp eq i32 %bf.cast283, 0
  br i1 %tobool284.not, label %do.body279.if.end339_crit_edge, label %do.body279.if.end339.sink.split_crit_edge

do.body279.if.end339.sink.split_crit_edge:        ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339.sink.split

do.body279.if.end339_crit_edge:                   ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

do.body309:                                       ; preds = %do.end274
  %bf.lshr311 = lshr i352 %bf.load310, 96
  %50 = trunc i352 %bf.lshr311 to i32
  %bf.cast313 = and i32 %50, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast313)
  %tobool314.not = icmp eq i32 %bf.cast313, 0
  br i1 %tobool314.not, label %do.body309.if.end339_crit_edge, label %do.body309.if.end339.sink.split_crit_edge

do.body309.if.end339.sink.split_crit_edge:        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339.sink.split

do.body309.if.end339_crit_edge:                   ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

if.end339.sink.split:                             ; preds = %do.body309.if.end339.sink.split_crit_edge, %do.body279.if.end339.sink.split_crit_edge
  %bf.cast313.sink = phi i32 [ %bf.cast283, %do.body279.if.end339.sink.split_crit_edge ], [ %bf.cast313, %do.body309.if.end339.sink.split_crit_edge ]
  %.sink = phi i352 [ -19342794667089993085747201, %do.body279.if.end339.sink.split_crit_edge ], [ -83076670508394727792150347723571201, %do.body309.if.end339.sink.split_crit_edge ]
  %add.ptr295 = getelementptr i32, ptr %tag, i32 2
  %51 = ptrtoint ptr %add.ptr295 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr295, align 4
  %and326 = and i32 %52, -1048576
  %or329 = or i32 %and326, %bf.cast313.sink
  store i32 %or329, ptr %add.ptr295, align 4
  %53 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 44)
  %bf.load333 = load i352, ptr %misc1, align 4
  %bf.clear334 = and i352 %bf.load333, %.sink
  store i352 %bf.clear334, ptr %misc1, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.end339.sink.split, %do.body309.if.end339_crit_edge, %do.body279.if.end339_crit_edge
  %54 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %54, i32 20)
  %bf.load340 = load i160, ptr %tcp_dport, align 4
  %bf.lshr341 = lshr i160 %bf.load340, 96
  %55 = trunc i160 %bf.lshr341 to i32
  %bf.cast343 = and i32 %55, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast343)
  %tobool344.not = icmp eq i32 %bf.cast343, 0
  br i1 %tobool344.not, label %if.end339.if.end566_crit_edge, label %do.body347

if.end339.if.end566_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end566

do.body347:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr360 = getelementptr i32, ptr %tag, i32 3
  %56 = ptrtoint ptr %add.ptr360 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr360, align 4
  %and361 = and i32 %57, -16777217
  %58 = shl i32 %55, 16
  %shl363 = and i32 %58, 16777216
  %or364 = or i32 %and361, %shl363
  store i32 %or364, ptr %add.ptr360, align 4
  %59 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %59, i32 20)
  %bf.load371 = load i160, ptr %tcp_dport, align 4
  %and385 = and i32 %or364, -8388609
  %sh.diff = lshr i160 %bf.load371, 80
  %tr.sh.diff = trunc i160 %sh.diff to i32
  %shl387 = and i32 %tr.sh.diff, 8388608
  %or388 = or i32 %shl387, %and385
  store i32 %or388, ptr %add.ptr360, align 4
  %bf.load395 = load i160, ptr %tcp_dport, align 4
  %and409 = and i32 %or388, -4194305
  %sh.diff654 = lshr i160 %bf.load395, 80
  %tr.sh.diff655 = trunc i160 %sh.diff654 to i32
  %shl411 = and i32 %tr.sh.diff655, 4194304
  %or412 = or i32 %and409, %shl411
  store i32 %or412, ptr %add.ptr360, align 4
  %bf.load419 = load i160, ptr %tcp_dport, align 4
  %and433 = and i32 %or412, -2097153
  %sh.diff657 = lshr i160 %bf.load419, 80
  %tr.sh.diff658 = trunc i160 %sh.diff657 to i32
  %shl435 = and i32 %tr.sh.diff658, 2097152
  %or436 = or i32 %and433, %shl435
  store i32 %or436, ptr %add.ptr360, align 4
  %bf.load443 = load i160, ptr %tcp_dport, align 4
  %and457 = and i32 %or436, -1048577
  %sh.diff660 = lshr i160 %bf.load443, 80
  %tr.sh.diff661 = trunc i160 %sh.diff660 to i32
  %shl459 = and i32 %tr.sh.diff661, 1048576
  %or460 = or i32 %and457, %shl459
  store i32 %or460, ptr %add.ptr360, align 4
  %bf.load467 = load i160, ptr %tcp_dport, align 4
  %and481 = and i32 %or460, -524289
  %sh.diff663 = lshr i160 %bf.load467, 80
  %tr.sh.diff664 = trunc i160 %sh.diff663 to i32
  %shl483 = and i32 %tr.sh.diff664, 524288
  %or484 = or i32 %and481, %shl483
  store i32 %or484, ptr %add.ptr360, align 4
  %bf.load491 = load i160, ptr %tcp_dport, align 4
  %and505 = and i32 %or484, -262145
  %sh.diff666 = lshr i160 %bf.load491, 80
  %tr.sh.diff667 = trunc i160 %sh.diff666 to i32
  %shl507 = and i32 %tr.sh.diff667, 262144
  %or508 = or i32 %and505, %shl507
  store i32 %or508, ptr %add.ptr360, align 4
  %bf.load515 = load i160, ptr %tcp_dport, align 4
  %and529 = and i32 %or508, -131073
  %sh.diff669 = lshr i160 %bf.load515, 80
  %tr.sh.diff670 = trunc i160 %sh.diff669 to i32
  %shl531 = and i32 %tr.sh.diff670, 131072
  %or532 = or i32 %and529, %shl531
  store i32 %or532, ptr %add.ptr360, align 4
  %bf.load539 = load i160, ptr %tcp_dport, align 4
  %and553 = and i32 %or532, -65537
  %sh.diff672 = lshr i160 %bf.load539, 80
  %tr.sh.diff673 = trunc i160 %sh.diff672 to i32
  %shl555 = and i32 %tr.sh.diff673, 65536
  %or556 = or i32 %and553, %shl555
  store i32 %or556, ptr %add.ptr360, align 4
  %bf.load563 = load i160, ptr %tcp_dport, align 4
  %bf.clear564 = and i160 %bf.load563, -40485591044789076510300958621697
  store i160 %bf.clear564, ptr %tcp_dport, align 4
  br label %if.end566

if.end566:                                        ; preds = %do.body347, %if.end339.if.end566_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_mpls_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 16)
  %bf.load117 = load i128, ptr %misc21, align 4
  br i1 %tobool.not, label %do.body113, label %do.body

do.body:                                          ; preds = %entry
  %bf.lshr4 = lshr i128 %bf.load117, 76
  %2 = trunc i128 %bf.lshr4 to i32
  %bf.cast = and i32 %2, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool5.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool5.not, label %do.body.do.body21_crit_edge, label %do.body7

do.body.do.body21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %and = and i32 %4, 4095
  %shl = shl i32 %2, 12
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 16)
  %bf.load17 = load i128, ptr %misc21, align 4
  %bf.clear18 = and i128 %bf.load17, -79228086956400611679220531201
  store i128 %bf.clear18, ptr %misc21, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.body7, %do.body.do.body21_crit_edge
  %6 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %bf.load22 = load i128, ptr %misc21, align 4
  %7 = and i128 %bf.load22, 4722366482869645213696
  %tobool26.not = icmp eq i128 %7, 0
  br i1 %tobool26.not, label %do.body21.do.body51_crit_edge, label %do.body28

do.body21.do.body51_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

do.body28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr37 = getelementptr i32, ptr %tag, i32 1
  %8 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr37, align 4
  %or41 = or i32 %9, 256
  store i32 %or41, ptr %add.ptr37, align 4
  %10 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %bf.load45 = load i128, ptr %misc21, align 4
  %bf.clear46 = and i128 %bf.load45, -4722366482869645213697
  store i128 %bf.clear46, ptr %misc21, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.body28, %do.body21.do.body51_crit_edge
  %11 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 16)
  %bf.load52 = load i128, ptr %misc21, align 4
  %bf.lshr53 = lshr i128 %bf.load52, 73
  %12 = trunc i128 %bf.lshr53 to i32
  %bf.cast55 = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast55)
  %tobool56.not = icmp eq i32 %bf.cast55, 0
  br i1 %tobool56.not, label %do.body51.do.body81_crit_edge, label %do.body58

do.body51.do.body81_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body81

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67 = getelementptr i32, ptr %tag, i32 1
  %13 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr67, align 4
  %and68 = and i32 %14, -3585
  %shl70 = shl nuw nsw i32 %bf.cast55, 9
  %or71 = or i32 %and68, %shl70
  store i32 %or71, ptr %add.ptr67, align 4
  %15 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 16)
  %bf.load75 = load i128, ptr %misc21, align 4
  %bf.clear76 = and i128 %bf.load75, -66113130760175032991745
  store i128 %bf.clear76, ptr %misc21, align 4
  br label %do.body81

do.body81:                                        ; preds = %do.body58, %do.body51.do.body81_crit_edge
  %16 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 16)
  %bf.load82 = load i128, ptr %misc21, align 4
  %bf.lshr83 = lshr i128 %bf.load82, 64
  %17 = trunc i128 %bf.lshr83 to i32
  %bf.cast85 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast85)
  %tobool86.not = icmp eq i32 %bf.cast85, 0
  br i1 %tobool86.not, label %do.body81.if.end236_crit_edge, label %do.body81.if.end236.sink.split_crit_edge

do.body81.if.end236.sink.split_crit_edge:         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end236.sink.split

do.body81.if.end236_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end236

do.body113:                                       ; preds = %entry
  %bf.lshr118 = lshr i128 %bf.load117, 108
  %bf.cast119 = trunc i128 %bf.lshr118 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast119)
  %tobool120.not = icmp eq i32 %bf.cast119, 0
  br i1 %tobool120.not, label %do.body113.do.body144_crit_edge, label %do.body122

do.body113.do.body144_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body144

do.body122:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr130 = getelementptr i32, ptr %tag, i32 1
  %18 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr130, align 4
  %and131 = and i32 %19, 4095
  %shl133 = shl nuw i32 %bf.cast119, 12
  %or134 = or i32 %and131, %shl133
  store i32 %or134, ptr %add.ptr130, align 4
  %20 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 16)
  %bf.load138 = load i128, ptr %misc21, align 4
  %bf.clear139 = and i128 %bf.load138, 324518553658426726783156020576255
  store i128 %bf.clear139, ptr %misc21, align 4
  br label %do.body144

do.body144:                                       ; preds = %do.body122, %do.body113.do.body144_crit_edge
  %21 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 16)
  %bf.load145 = load i128, ptr %misc21, align 4
  %22 = and i128 %bf.load145, 20282409603651670423947251286016
  %tobool149.not = icmp eq i128 %22, 0
  br i1 %tobool149.not, label %do.body144.do.body174_crit_edge, label %do.body151

do.body144.do.body174_crit_edge:                  ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body174

do.body151:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr160 = getelementptr i32, ptr %tag, i32 1
  %23 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr160, align 4
  %or164 = or i32 %24, 256
  store i32 %or164, ptr %add.ptr160, align 4
  %25 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 16)
  %bf.load168 = load i128, ptr %misc21, align 4
  %bf.clear169 = and i128 %bf.load168, -20282409603651670423947251286017
  store i128 %bf.clear169, ptr %misc21, align 4
  br label %do.body174

do.body174:                                       ; preds = %do.body151, %do.body144.do.body174_crit_edge
  %26 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 16)
  %bf.load175 = load i128, ptr %misc21, align 4
  %bf.lshr176 = lshr i128 %bf.load175, 105
  %27 = trunc i128 %bf.lshr176 to i32
  %bf.cast178 = and i32 %27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast178)
  %tobool179.not = icmp eq i32 %bf.cast178, 0
  br i1 %tobool179.not, label %do.body174.do.body204_crit_edge, label %do.body181

do.body174.do.body204_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body204

do.body181:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr190 = getelementptr i32, ptr %tag, i32 1
  %28 = ptrtoint ptr %add.ptr190 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr190, align 4
  %and191 = and i32 %29, -3585
  %shl193 = shl nuw nsw i32 %bf.cast178, 9
  %or194 = or i32 %and191, %shl193
  store i32 %or194, ptr %add.ptr190, align 4
  %30 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 16)
  %bf.load198 = load i128, ptr %misc21, align 4
  %bf.clear199 = and i128 %bf.load198, -283953734451123385935261518004225
  store i128 %bf.clear199, ptr %misc21, align 4
  br label %do.body204

do.body204:                                       ; preds = %do.body181, %do.body174.do.body204_crit_edge
  %31 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 16)
  %bf.load205 = load i128, ptr %misc21, align 4
  %bf.lshr206 = lshr i128 %bf.load205, 96
  %32 = trunc i128 %bf.lshr206 to i32
  %bf.cast208 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast208)
  %tobool209.not = icmp eq i32 %bf.cast208, 0
  br i1 %tobool209.not, label %do.body204.if.end236_crit_edge, label %do.body204.if.end236.sink.split_crit_edge

do.body204.if.end236.sink.split_crit_edge:        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end236.sink.split

do.body204.if.end236_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end236

if.end236.sink.split:                             ; preds = %do.body204.if.end236.sink.split_crit_edge, %do.body81.if.end236.sink.split_crit_edge
  %bf.cast208.sink = phi i32 [ %bf.cast85, %do.body81.if.end236.sink.split_crit_edge ], [ %bf.cast208, %do.body204.if.end236.sink.split_crit_edge ]
  %.sink = phi i128 [ -4703919738795935662081, %do.body81.if.end236.sink.split_crit_edge ], [ -20203181441137406086353707335681, %do.body204.if.end236.sink.split_crit_edge ]
  %add.ptr97 = getelementptr i32, ptr %tag, i32 1
  %33 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr97, align 4
  %and221 = and i32 %34, -256
  %or224 = or i32 %and221, %bf.cast208.sink
  store i32 %or224, ptr %add.ptr97, align 4
  %35 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 16)
  %bf.load228 = load i128, ptr %misc21, align 4
  %bf.clear229 = and i128 %bf.load228, %.sink
  store i128 %bf.clear229, ptr %misc21, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.end236.sink.split, %do.body204.if.end236_crit_edge, %do.body81.if.end236_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_gre_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %0 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %bf.lshr = lshr i352 %bf.load, 224
  %1 = trunc i352 %bf.lshr to i32
  %bf.cast = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %do.body2

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -65536
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %tag, align 4
  %4 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load12 = load i352, ptr %misc1, align 4
  %bf.clear13 = and i352 %bf.load12, -1766820104831717178943502833727831496196810259731196417549125097682370561
  store i352 %bf.clear13, ptr %misc1, align 4
  br label %do.body16

do.body16:                                        ; preds = %do.body2, %entry.do.body16_crit_edge
  %5 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load17 = load i352, ptr %misc1, align 4
  %6 = and i352 %bf.load17, 1146749307995035755805410447651043470398282494584140561868794419693461438044242404035009276555062843277312
  %tobool21.not = icmp eq i352 %6, 0
  br i1 %tobool21.not, label %do.body16.do.body46_crit_edge, label %do.body23

do.body16.do.body46_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.body23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %or36 = or i32 %8, 536870912
  store i32 %or36, ptr %tag, align 4
  %9 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load40 = load i352, ptr %misc1, align 4
  %bf.clear41 = and i352 %bf.load40, -1146749307995035755805410447651043470398282494584140561868794419693461438044242404035009276555062843277313
  store i352 %bf.clear41, ptr %misc1, align 4
  br label %do.body46

do.body46:                                        ; preds = %do.body23, %do.body16.do.body46_crit_edge
  %10 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load47 = load i352, ptr %misc1, align 4
  %bf.lshr48 = lshr i352 %bf.load47, 200
  %11 = trunc i352 %bf.lshr48 to i32
  %bf.cast50 = and i32 %11, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast50)
  %tobool51.not = icmp eq i32 %bf.cast50, 0
  br i1 %tobool51.not, label %do.body46.do.body76_crit_edge, label %do.body53

do.body46.do.body76_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body76

do.body53:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr62 = getelementptr i32, ptr %tag, i32 2
  %12 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr62, align 4
  %and63 = and i32 %13, 255
  %shl65 = shl i32 %11, 8
  %or66 = or i32 %and63, %shl65
  store i32 %or66, ptr %add.ptr62, align 4
  %14 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 44)
  %bf.load70 = load i352, ptr %misc1, align 4
  %bf.clear71 = and i352 %bf.load70, -26959945060212595535676739545057538332474541900337578698310774947841
  store i352 %bf.clear71, ptr %misc1, align 4
  br label %do.body76

do.body76:                                        ; preds = %do.body53, %do.body46.do.body76_crit_edge
  %15 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 44)
  %bf.load77 = load i352, ptr %misc1, align 4
  %bf.lshr78 = lshr i352 %bf.load77, 192
  %16 = trunc i352 %bf.lshr78 to i32
  %bf.cast80 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast80)
  %tobool81.not = icmp eq i32 %bf.cast80, 0
  br i1 %tobool81.not, label %do.body76.do.body106_crit_edge, label %do.body83

do.body76.do.body106_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body106

do.body83:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr92 = getelementptr i32, ptr %tag, i32 2
  %17 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr92, align 4
  %and93 = and i32 %18, -256
  %or96 = or i32 %and93, %bf.cast80
  store i32 %or96, ptr %add.ptr92, align 4
  %19 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load100 = load i352, ptr %misc1, align 4
  %bf.clear101 = and i352 %bf.load100, -1600660942523603594778126302917954936106100638338328800788481
  store i352 %bf.clear101, ptr %misc1, align 4
  br label %do.body106

do.body106:                                       ; preds = %do.body83, %do.body76.do.body106_crit_edge
  %bf.load107 = phi i352 [ %bf.load77, %do.body76.do.body106_crit_edge ], [ %bf.clear101, %do.body83 ]
  %tobool110.not = icmp sgt i352 %bf.load107, -1
  br i1 %tobool110.not, label %do.body106.do.body134_crit_edge, label %do.body112

do.body106.do.body134_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body134

do.body112:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tag, align 4
  %or124 = or i32 %21, -2147483648
  store i32 %or124, ptr %tag, align 4
  %22 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 44)
  %bf.load128 = load i352, ptr %misc1, align 4
  %bf.clear129 = and i352 %bf.load128, 4586997231980143023221641790604173881593129978336562247475177678773845752176969616140037106220251373109247
  store i352 %bf.clear129, ptr %misc1, align 4
  br label %do.body134

do.body134:                                       ; preds = %do.body112, %do.body106.do.body134_crit_edge
  %23 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 44)
  %bf.load135 = load i352, ptr %misc1, align 4
  %24 = and i352 %bf.load135, 573374653997517877902705223825521735199141247292070280934397209846730719022121202017504638277531421638656
  %tobool139.not = icmp eq i352 %24, 0
  br i1 %tobool139.not, label %do.body134.do.end163_crit_edge, label %do.body141

do.body134.do.end163_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end163

do.body141:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tag, align 4
  %or154 = or i32 %26, 268435456
  store i32 %or154, ptr %tag, align 4
  %27 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 44)
  %bf.load158 = load i352, ptr %misc1, align 4
  %bf.clear159 = and i352 %bf.load158, -573374653997517877902705223825521735199141247292070280934397209846730719022121202017504638277531421638657
  store i352 %bf.clear159, ptr %misc1, align 4
  br label %do.end163

do.end163:                                        ; preds = %do.body141, %do.body134.do.end163_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_mpls_tag(ptr noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %misc21, align 4
  %1 = and i128 %bf.load, 18446744069414584320
  %2 = icmp eq i128 %1, 0
  br i1 %2, label %do.body129, label %do.body

do.body:                                          ; preds = %entry
  %bf.lshr20 = lshr i128 %bf.load, 44
  %3 = trunc i128 %bf.lshr20 to i32
  %bf.cast22 = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast22)
  %tobool23.not = icmp eq i32 %bf.cast22, 0
  br i1 %tobool23.not, label %do.body.do.body39_crit_edge, label %do.body25

do.body.do.body39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

do.body25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 4095
  %shl = shl i32 %3, 12
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %bf.load35 = load i128, ptr %misc21, align 4
  %bf.clear36 = and i128 %bf.load35, -18446726481523507201
  store i128 %bf.clear36, ptr %misc21, align 4
  br label %do.body39

do.body39:                                        ; preds = %do.body25, %do.body.do.body39_crit_edge
  %7 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 16)
  %bf.load40 = load i128, ptr %misc21, align 4
  %bf.lshr41 = lshr i128 %bf.load40, 41
  %8 = trunc i128 %bf.lshr41 to i32
  %bf.cast43 = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast43)
  %tobool44.not = icmp eq i32 %bf.cast43, 0
  br i1 %tobool44.not, label %do.body39.do.body69_crit_edge, label %do.body46

do.body39.do.body69_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body69

do.body46:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr55 = getelementptr i32, ptr %tag, i32 1
  %9 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr55, align 4
  %and56 = and i32 %10, -3585
  %shl58 = shl nuw nsw i32 %bf.cast43, 9
  %or59 = or i32 %and56, %shl58
  store i32 %or59, ptr %add.ptr55, align 4
  %11 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 16)
  %bf.load63 = load i128, ptr %misc21, align 4
  %bf.clear64 = and i128 %bf.load63, -15393162788865
  store i128 %bf.clear64, ptr %misc21, align 4
  br label %do.body69

do.body69:                                        ; preds = %do.body46, %do.body39.do.body69_crit_edge
  %12 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 16)
  %bf.load70 = load i128, ptr %misc21, align 4
  %13 = and i128 %bf.load70, 1099511627776
  %tobool74.not = icmp eq i128 %13, 0
  br i1 %tobool74.not, label %do.body69.do.body99_crit_edge, label %do.body76

do.body69.do.body99_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body99

do.body76:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr85 = getelementptr i32, ptr %tag, i32 1
  %14 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr85, align 4
  %or89 = or i32 %15, 256
  store i32 %or89, ptr %add.ptr85, align 4
  %16 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 16)
  %bf.load93 = load i128, ptr %misc21, align 4
  %bf.clear94 = and i128 %bf.load93, -1099511627777
  store i128 %bf.clear94, ptr %misc21, align 4
  br label %do.body99

do.body99:                                        ; preds = %do.body76, %do.body69.do.body99_crit_edge
  %17 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 16)
  %bf.load100 = load i128, ptr %misc21, align 4
  %bf.lshr101 = lshr i128 %bf.load100, 32
  %18 = trunc i128 %bf.lshr101 to i32
  %bf.cast103 = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast103)
  %tobool104.not = icmp eq i32 %bf.cast103, 0
  br i1 %tobool104.not, label %do.body99.if.end247_crit_edge, label %do.body99.if.end247.sink.split_crit_edge

do.body99.if.end247.sink.split_crit_edge:         ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247.sink.split

do.body99.if.end247_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

do.body129:                                       ; preds = %entry
  %19 = trunc i128 %bf.load to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %tobool134.not = icmp ult i32 %19, 4096
  br i1 %tobool134.not, label %do.body129.do.body159_crit_edge, label %do.body136

do.body129.do.body159_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body159

do.body136:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #13
  %20 = and i32 %19, -4096
  %add.ptr145 = getelementptr i32, ptr %tag, i32 1
  %21 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr145, align 4
  %and146 = and i32 %22, 4095
  %or149 = or i32 %and146, %20
  store i32 %or149, ptr %add.ptr145, align 4
  %23 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 16)
  %bf.load153 = load i128, ptr %misc21, align 4
  %bf.clear154 = and i128 %bf.load153, -4294963201
  store i128 %bf.clear154, ptr %misc21, align 4
  br label %do.body159

do.body159:                                       ; preds = %do.body136, %do.body129.do.body159_crit_edge
  %24 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 16)
  %bf.load160 = load i128, ptr %misc21, align 4
  %25 = trunc i128 %bf.load160 to i32
  %26 = lshr i32 %25, 9
  %bf.cast163 = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast163)
  %tobool164.not = icmp eq i32 %bf.cast163, 0
  br i1 %tobool164.not, label %do.body159.do.body189_crit_edge, label %do.body166

do.body159.do.body189_crit_edge:                  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body189

do.body166:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr175 = getelementptr i32, ptr %tag, i32 1
  %27 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr175, align 4
  %and176 = and i32 %28, -3585
  %shl178 = shl nuw nsw i32 %bf.cast163, 9
  %or179 = or i32 %and176, %shl178
  store i32 %or179, ptr %add.ptr175, align 4
  %29 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 16)
  %bf.load183 = load i128, ptr %misc21, align 4
  %bf.clear184 = and i128 %bf.load183, -3585
  store i128 %bf.clear184, ptr %misc21, align 4
  br label %do.body189

do.body189:                                       ; preds = %do.body166, %do.body159.do.body189_crit_edge
  %30 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 16)
  %bf.load190 = load i128, ptr %misc21, align 4
  %31 = and i128 %bf.load190, 256
  %tobool194.not = icmp eq i128 %31, 0
  br i1 %tobool194.not, label %do.body189.do.body219_crit_edge, label %do.body196

do.body189.do.body219_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body219

do.body196:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr205 = getelementptr i32, ptr %tag, i32 1
  %32 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr205, align 4
  %or209 = or i32 %33, 256
  store i32 %or209, ptr %add.ptr205, align 4
  %34 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 16)
  %bf.load213 = load i128, ptr %misc21, align 4
  %bf.clear214 = and i128 %bf.load213, -257
  store i128 %bf.clear214, ptr %misc21, align 4
  br label %do.body219

do.body219:                                       ; preds = %do.body196, %do.body189.do.body219_crit_edge
  %35 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 16)
  %bf.load220 = load i128, ptr %misc21, align 4
  %36 = trunc i128 %bf.load220 to i32
  %bf.cast222 = and i32 %36, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast222)
  %tobool223.not = icmp eq i32 %bf.cast222, 0
  br i1 %tobool223.not, label %do.body219.if.end247_crit_edge, label %do.body219.if.end247.sink.split_crit_edge

do.body219.if.end247.sink.split_crit_edge:        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247.sink.split

do.body219.if.end247_crit_edge:                   ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

if.end247.sink.split:                             ; preds = %do.body219.if.end247.sink.split_crit_edge, %do.body99.if.end247.sink.split_crit_edge
  %bf.cast222.sink = phi i32 [ %bf.cast103, %do.body99.if.end247.sink.split_crit_edge ], [ %bf.cast222, %do.body219.if.end247.sink.split_crit_edge ]
  %.sink = phi i128 [ -1095216660481, %do.body99.if.end247.sink.split_crit_edge ], [ -256, %do.body219.if.end247.sink.split_crit_edge ]
  %add.ptr115 = getelementptr i32, ptr %tag, i32 1
  %37 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr115, align 4
  %and234 = and i32 %38, -256
  %or237 = or i32 %and234, %bf.cast222.sink
  store i32 %or237, ptr %add.ptr115, align 4
  %39 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 16)
  %bf.load241 = load i128, ptr %misc21, align 4
  %bf.clear242 = and i128 %bf.load241, %.sink
  store i128 %bf.clear242, ptr %misc21, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.end247.sink.split, %do.body219.if.end247_crit_edge, %do.body99.if.end247_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_mpls_over_gre_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %misc21, align 4
  %sh.diff = lshr i128 %bf.load, 32
  %tr.sh.diff = trunc i128 %sh.diff to i32
  %bf.clear28 = and i128 %bf.load, -18446744069414584321
  store i128 %bf.clear28, ptr %misc21, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps, align 4
  %flex_parser_id_mpls_over_gre = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flex_parser_id_mpls_over_gre to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flex_parser_id_mpls_over_gre, align 1
  %5 = shl i8 %4, 2
  %6 = and i8 %5, 12
  %7 = xor i8 %6, 12
  %mul.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tr.sh.diff, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_mpls_over_udp_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %misc21, align 4
  %1 = trunc i128 %bf.load to i32
  %bf.clear27 = and i128 %bf.load, -4294967296
  store i128 %bf.clear27, ptr %misc21, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %flex_parser_id_mpls_over_udp = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flex_parser_id_mpls_over_udp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flex_parser_id_mpls_over_udp, align 2
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 12
  %8 = xor i8 %7, 12
  %mul.i = zext i8 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_icmp_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icmpv4_type = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %icmpv4_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %icmpv4_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %icmpv4_code = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %icmpv4_code to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %icmpv4_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.rhs, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.rhs:                                          ; preds = %lor.lhs.false
  %icmpv4_header_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %icmpv4_header_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icmpv4_header_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.else, label %lor.rhs.if.then_crit_edge

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %icmpv4_header_data6 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 5
  %icmpv4_code8 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 8
  br label %do.body

if.else:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %icmpv6_header_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 6
  %icmpv6_type = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 9
  %icmpv6_code = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 10
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %icmp_type.0 = phi ptr [ %icmpv4_type, %if.then ], [ %icmpv6_type, %if.else ]
  %icmp_code.0 = phi ptr [ %icmpv4_code8, %if.then ], [ %icmpv6_code, %if.else ]
  %icmp_header_data.0 = phi ptr [ %icmpv4_header_data6, %if.then ], [ %icmpv6_header_data, %if.else ]
  %6 = ptrtoint ptr %icmp_header_data.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icmp_header_data.0, align 4
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %icmp_type.0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %icmp_type.0, align 1
  %conv16 = zext i8 %10 to i32
  %add.ptr20 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr20, align 4
  %and21 = and i32 %12, 16777215
  %shl23 = shl nuw i32 %conv16, 24
  %or24 = or i32 %and21, %shl23
  store i32 %or24, ptr %add.ptr20, align 4
  %13 = ptrtoint ptr %icmp_code.0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %icmp_code.0, align 1
  %conv30 = zext i8 %14 to i32
  %and35 = and i32 %or24, -16711681
  %shl37 = shl nuw nsw i32 %conv30, 16
  %or38 = or i32 %shl37, %and35
  store i32 %or38, ptr %add.ptr20, align 4
  store i32 0, ptr %icmp_header_data.0, align 4
  store i8 0, ptr %icmp_type.0, align 1
  store i8 0, ptr %icmp_code.0, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_general_purpose_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata_reg_a = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %metadata_reg_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %metadata_reg_a to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_a, align 4
  br label %do.end11

do.end11:                                         ; preds = %do.body2, %entry.do.end11_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_eth_l4_misc_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc31 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body35, label %do.body

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %misc31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %misc31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.body.do.body14_crit_edge, label %do.body4

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %misc31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %misc31, align 4
  br label %do.body14

do.body14:                                        ; preds = %do.body4, %do.body.do.body14_crit_edge
  %inner_tcp_ack_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %inner_tcp_ack_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inner_tcp_ack_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %do.body14.if.end77_crit_edge, label %do.body14.if.end77.sink.split_crit_edge

do.body14.if.end77.sink.split_crit_edge:          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split

do.body14.if.end77_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body35:                                        ; preds = %entry
  %outer_tcp_seq_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %outer_tcp_seq_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outer_tcp_seq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %do.body35.do.body56_crit_edge, label %do.body38

do.body35.do.body56_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body56

do.body38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr44 = getelementptr i32, ptr %tag, i32 2
  %9 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr44, align 4
  %10 = ptrtoint ptr %outer_tcp_seq_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outer_tcp_seq_num, align 4
  br label %do.body56

do.body56:                                        ; preds = %do.body38, %do.body35.do.body56_crit_edge
  %outer_tcp_ack_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %outer_tcp_ack_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outer_tcp_ack_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool57.not = icmp eq i32 %12, 0
  br i1 %tobool57.not, label %do.body56.if.end77_crit_edge, label %do.body56.if.end77.sink.split_crit_edge

do.body56.if.end77.sink.split_crit_edge:          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split

do.body56.if.end77_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end77.sink.split:                              ; preds = %do.body56.if.end77.sink.split_crit_edge, %do.body14.if.end77.sink.split_crit_edge
  %.sink = phi i32 [ %6, %do.body14.if.end77.sink.split_crit_edge ], [ %12, %do.body56.if.end77.sink.split_crit_edge ]
  %outer_tcp_ack_num.sink = phi ptr [ %inner_tcp_ack_num, %do.body14.if.end77.sink.split_crit_edge ], [ %outer_tcp_ack_num, %do.body56.if.end77.sink.split_crit_edge ]
  %add.ptr65 = getelementptr i32, ptr %tag, i32 1
  %13 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %add.ptr65, align 4
  %14 = ptrtoint ptr %outer_tcp_ack_num.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outer_tcp_ack_num.sink, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %do.body56.if.end77_crit_edge, %do.body14.if.end77_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_flex_parser_tnl_vxlan_gpe_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %outer_vxlan_gpe_flags = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %1 = trunc i64 %bf.load to i32
  %2 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body18_crit_edge, label %do.body2

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tag, align 4
  %and = and i32 %4, 16777215
  %5 = shl i32 %1, 8
  %shl = and i32 %5, -16777216
  %or = or i32 %and, %shl
  store i32 %or, ptr %tag, align 4
  %6 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load14 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.clear15 = and i64 %bf.load14, -16711681
  store i64 %bf.clear15, ptr %outer_vxlan_gpe_flags, align 4
  br label %do.body18

do.body18:                                        ; preds = %do.body2, %entry.do.body18_crit_edge
  %7 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load19 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %8 = trunc i64 %bf.load19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %tobool23.not = icmp ult i32 %8, 16777216
  br i1 %tobool23.not, label %do.body18.do.body50_crit_edge, label %do.body25

do.body18.do.body50_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %9 = lshr i32 %8, 24
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  %and36 = and i32 %11, -256
  %or39 = or i32 %and36, %9
  store i32 %or39, ptr %tag, align 4
  %12 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load44 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.clear45 = and i64 %bf.load44, -4278190081
  store i64 %bf.clear45, ptr %outer_vxlan_gpe_flags, align 4
  br label %do.body50

do.body50:                                        ; preds = %do.body25, %do.body18.do.body50_crit_edge
  %13 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load51 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.lshr52 = lshr i64 %bf.load51, 32
  %14 = trunc i64 %bf.lshr52 to i32
  %bf.cast54 = and i32 %14, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast54)
  %tobool55.not = icmp eq i32 %bf.cast54, 0
  br i1 %tobool55.not, label %do.body50.do.end81_crit_edge, label %do.body57

do.body50.do.end81_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

do.body57:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67 = getelementptr i32, ptr %tag, i32 1
  %15 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr67, align 4
  %and68 = and i32 %16, 255
  %shl70 = shl i32 %14, 8
  %or71 = or i32 %and68, %shl70
  store i32 %or71, ptr %add.ptr67, align 4
  %17 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load76 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.clear77 = and i64 %bf.load76, -72057589742960641
  store i64 %bf.clear77, ptr %outer_vxlan_gpe_flags, align 4
  br label %do.end81

do.end81:                                         ; preds = %do.body57, %do.body50.do.end81_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_flex_parser_tnl_geneve_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %0 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %bf.lshr = lshr i352 %bf.load, 32
  %1 = trunc i352 %bf.lshr to i32
  %bf.cast = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %do.body2

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -65536
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %tag, align 4
  %4 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load12 = load i352, ptr %misc1, align 4
  %bf.clear13 = and i352 %bf.load12, -281470681743361
  store i352 %bf.clear13, ptr %misc1, align 4
  br label %do.body16

do.body16:                                        ; preds = %do.body2, %entry.do.body16_crit_edge
  %5 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load17 = load i352, ptr %misc1, align 4
  %6 = and i352 %bf.load17, 340282366920938463463374607431768211456
  %tobool21.not = icmp eq i352 %6, 0
  br i1 %tobool21.not, label %do.body16.do.body46_crit_edge, label %do.body23

do.body16.do.body46_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.body23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %or36 = or i32 %8, 8388608
  store i32 %or36, ptr %tag, align 4
  %9 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load40 = load i352, ptr %misc1, align 4
  %bf.clear41 = and i352 %bf.load40, -340282366920938463463374607431768211457
  store i352 %bf.clear41, ptr %misc1, align 4
  br label %do.body46

do.body46:                                        ; preds = %do.body23, %do.body16.do.body46_crit_edge
  %10 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load47 = load i352, ptr %misc1, align 4
  %bf.lshr48 = lshr i352 %bf.load47, 48
  %11 = trunc i352 %bf.lshr48 to i32
  %bf.cast50 = and i32 %11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast50)
  %tobool51.not = icmp eq i32 %bf.cast50, 0
  br i1 %tobool51.not, label %do.body46.do.body76_crit_edge, label %do.body53

do.body46.do.body76_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body76

do.body53:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  %and63 = and i32 %13, -1056964609
  %shl65 = shl nuw nsw i32 %bf.cast50, 24
  %or66 = or i32 %and63, %shl65
  store i32 %or66, ptr %tag, align 4
  %14 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 44)
  %bf.load70 = load i352, ptr %misc1, align 4
  %bf.clear71 = and i352 %bf.load70, -17732923532771329
  store i352 %bf.clear71, ptr %misc1, align 4
  br label %do.body76

do.body76:                                        ; preds = %do.body53, %do.body46.do.body76_crit_edge
  %15 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 44)
  %bf.load77 = load i352, ptr %misc1, align 4
  %bf.lshr78 = lshr i352 %bf.load77, 136
  %16 = trunc i352 %bf.lshr78 to i32
  %bf.cast80 = and i32 %16, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast80)
  %tobool81.not = icmp eq i32 %bf.cast80, 0
  br i1 %tobool81.not, label %do.body76.do.end105_crit_edge, label %do.body83

do.body76.do.end105_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105

do.body83:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr92 = getelementptr i32, ptr %tag, i32 1
  %17 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr92, align 4
  %and93 = and i32 %18, 255
  %shl95 = shl i32 %16, 8
  %or96 = or i32 %and93, %shl95
  store i32 %or96, ptr %add.ptr92, align 4
  %19 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load100 = load i352, ptr %misc1, align 4
  %bf.clear101 = and i352 %bf.load100, -1461501550218616986443438186092383517123270410241
  store i352 %bf.clear101, ptr %misc1, align 4
  br label %do.end105

do.end105:                                        ; preds = %do.body83, %do.body76.do.end105_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %flex_parser_id_geneve_tlv_option_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_geneve_tlv_option_0, align 8
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %geneve_tlv_option_0_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %geneve_tlv_option_0_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %geneve_tlv_option_0_data, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  store i32 0, ptr %geneve_tlv_option_0_data, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_flex_parser_tnl_geneve_tlv_opt_exist_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %0 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %1 = and i352 %bf.load, 680564733841876926926749214863536422912
  %tobool.not = icmp eq i352 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %flex_parser_id_geneve_tlv_option_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flex_parser_id_geneve_tlv_option_0, align 8
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i32, ptr %tag, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %and = and i32 %7, 16777215
  %shl4 = shl i32 16777216, %conv
  %or = or i32 %and, %shl4
  store i32 %or, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 44)
  %bf.load8 = load i352, ptr %misc1, align 4
  %bf.clear9 = and i352 %bf.load8, -680564733841876926926749214863536422913
  store i352 %bf.clear9, ptr %misc1, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_register_0_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata_reg_c_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_0, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %metadata_reg_c_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %metadata_reg_c_1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21, align 4
  %7 = ptrtoint ptr %metadata_reg_c_1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_1, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %metadata_reg_c_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %metadata_reg_c_2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not = icmp eq i32 %9, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %10 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42, align 4
  %11 = ptrtoint ptr %metadata_reg_c_2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_2, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %metadata_reg_c_3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %metadata_reg_c_3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not = icmp eq i32 %13, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %14 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63, align 4
  %15 = ptrtoint ptr %metadata_reg_c_3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_3, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_register_1_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata_reg_c_4 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %metadata_reg_c_4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %metadata_reg_c_4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_4, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %metadata_reg_c_5 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %metadata_reg_c_5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21, align 4
  %7 = ptrtoint ptr %metadata_reg_c_5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_5, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %metadata_reg_c_6 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %metadata_reg_c_6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not = icmp eq i32 %9, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %10 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42, align 4
  %11 = ptrtoint ptr %metadata_reg_c_6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_6, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %metadata_reg_c_7 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %metadata_reg_c_7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not = icmp eq i32 %13, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %14 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63, align 4
  %15 = ptrtoint ptr %metadata_reg_c_7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_7, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_ste_v1_build_src_gvmi_qpn_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %dmn2 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 1
  %0 = ptrtoint ptr %dmn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmn2, align 4
  %bit_mask3 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %2 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %bf.lshr = lshr i352 %bf.load, 320
  %3 = trunc i352 %bf.lshr to i32
  %bf.cast = and i32 %3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.body4

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, -16777216
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 44)
  %bf.load14 = load i352, ptr %misc1, align 4
  %bf.clear15 = and i352 %bf.load14, -35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915841
  store i352 %bf.clear15, ptr %misc1, align 4
  br label %do.end17

do.end17:                                         ; preds = %do.body4, %entry.do.end17_crit_edge
  %7 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load18 = load i8, ptr %sb, align 4
  %8 = and i8 %bf.load18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %do.end17.if.end50_crit_edge, label %if.then22

do.end17.if.end50_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then22:                                        ; preds = %do.end17
  %9 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load23 = load i352, ptr %misc1, align 4
  %bf.lshr24 = lshr i352 %bf.load23, 304
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %caps, align 8
  %12 = trunc i352 %bf.lshr24 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp = icmp eq i16 %11, %12
  br i1 %cmp, label %if.then22.if.end45_crit_edge, label %if.else

if.then22.if.end45_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.else:                                          ; preds = %if.then22
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %caps36 = getelementptr inbounds %struct.mlx5dr_domain, ptr %14, i32 0, i32 9, i32 7
  %15 = ptrtoint ptr %caps36 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %caps36, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %12)
  %cmp39 = icmp eq i16 %16, %12
  br i1 %cmp39, label %land.lhs.true.if.end45_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.then22.if.end45_crit_edge
  %vport_dmn.0 = phi ptr [ %1, %if.then22.if.end45_crit_edge ], [ %14, %land.lhs.true.if.end45_crit_edge ]
  %bf.clear47 = and i352 %bf.load23, -2135954443345288730617641411038537564552127698862354114967031429575030055679844336635663152578561
  %17 = ptrtoint ptr %misc1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 44)
  store i352 %bf.clear47, ptr %misc1, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %do.end17.if.end50_crit_edge
  %vport_dmn.1 = phi ptr [ %vport_dmn.0, %if.end45 ], [ %1, %do.end17.if.end50_crit_edge ]
  %18 = ptrtoint ptr %bit_mask3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bit_mask3, align 4
  %and52 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %20 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 44)
  %bf.load56 = load i352, ptr %misc1, align 4
  %bf.lshr57 = lshr i352 %bf.load56, 288
  %21 = trunc i352 %bf.lshr57 to i16
  %call = tail call ptr @mlx5dr_domain_get_vport_cap(ptr noundef %vport_dmn.1, i16 noundef zeroext %21) #11
  %tobool61.not = icmp eq ptr %call, null
  br i1 %tobool61.not, label %do.end65, label %if.end71

do.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !12) #11
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
  %32 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 44)
  %bf.load67 = load i352, ptr %misc1, align 4
  %bf.lshr68 = lshr i352 %bf.load67, 288
  %33 = trunc i352 %bf.lshr68 to i32
  %bf.cast70 = and i32 %33, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1829, i32 noundef %31, i32 noundef %bf.cast70) #14
  br label %cleanup

if.end71:                                         ; preds = %if.end55
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool72.not = icmp eq i16 %35, 0
  br i1 %tobool72.not, label %if.end71.if.end89_crit_edge, label %do.body74

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

do.body74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %conv77 = zext i16 %35 to i32
  %36 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tag, align 4
  %and82 = and i32 %37, -65536
  %or85 = or i32 %and82, %conv77
  store i32 %or85, ptr %tag, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.body74, %if.end71.if.end89_crit_edge
  %38 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 44)
  %bf.load90 = load i352, ptr %misc1, align 4
  %bf.clear91 = and i352 %bf.load90, -32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824961
  store i352 %bf.clear91, ptr %misc1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end65, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end89 ], [ -22, %do.end65 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_domain_get_vport_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_felx_parser_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #9 align 64 {
entry:
  %parser_is_used = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %misc4 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parser_is_used) #11
  %0 = ptrtoint ptr %parser_is_used to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %parser_is_used, align 8
  %prog_sample_field_id_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prog_sample_field_id_0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prog_sample_field_id_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp.i = icmp ugt i32 %2, 7
  br i1 %cmp.i, label %entry.dr_ste_v1_set_flex_parser.exit_crit_edge, label %lor.lhs.false.i

entry.dr_ste_v1_set_flex_parser.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %parser_is_used, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.dr_ste_v1_set_flex_parser.exit_crit_edge

lor.lhs.false.i.dr_ste_v1_set_flex_parser.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.i, align 1
  %6 = shl nuw nsw i32 %2, 2
  %7 = and i32 %6, 12
  %8 = xor i32 %7, 12
  %add.ptr.i.i = getelementptr i8, ptr %tag, i32 %8
  %9 = ptrtoint ptr %misc4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %misc4, align 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr.i.i, align 4
  %12 = ptrtoint ptr %prog_sample_field_id_0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %prog_sample_field_id_0, align 4
  store i32 0, ptr %misc4, align 4
  br label %dr_ste_v1_set_flex_parser.exit

dr_ste_v1_set_flex_parser.exit:                   ; preds = %if.end.i, %lor.lhs.false.i.dr_ste_v1_set_flex_parser.exit_crit_edge, %entry.dr_ste_v1_set_flex_parser.exit_crit_edge
  %prog_sample_field_id_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 3
  %prog_sample_field_value_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %prog_sample_field_id_1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prog_sample_field_id_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i14 = icmp ugt i32 %14, 7
  br i1 %cmp.i14, label %dr_ste_v1_set_flex_parser.exit.dr_ste_v1_set_flex_parser.exit20_crit_edge, label %lor.lhs.false.i17

dr_ste_v1_set_flex_parser.exit.dr_ste_v1_set_flex_parser.exit20_crit_edge: ; preds = %dr_ste_v1_set_flex_parser.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit20

lor.lhs.false.i17:                                ; preds = %dr_ste_v1_set_flex_parser.exit
  %arrayidx.i15 = getelementptr i8, ptr %parser_is_used, i32 %14
  %15 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i15, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i16 = icmp eq i8 %16, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %lor.lhs.false.i17.dr_ste_v1_set_flex_parser.exit20_crit_edge

lor.lhs.false.i17.dr_ste_v1_set_flex_parser.exit20_crit_edge: ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit20

if.end.i19:                                       ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx.i15, align 1
  %18 = shl nuw nsw i32 %14, 2
  %19 = and i32 %18, 12
  %20 = xor i32 %19, 12
  %add.ptr.i.i18 = getelementptr i8, ptr %tag, i32 %20
  %21 = ptrtoint ptr %prog_sample_field_value_1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prog_sample_field_value_1, align 4
  %23 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr.i.i18, align 4
  %24 = ptrtoint ptr %prog_sample_field_id_1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %prog_sample_field_id_1, align 4
  store i32 0, ptr %prog_sample_field_value_1, align 4
  br label %dr_ste_v1_set_flex_parser.exit20

dr_ste_v1_set_flex_parser.exit20:                 ; preds = %if.end.i19, %lor.lhs.false.i17.dr_ste_v1_set_flex_parser.exit20_crit_edge, %dr_ste_v1_set_flex_parser.exit.dr_ste_v1_set_flex_parser.exit20_crit_edge
  %prog_sample_field_id_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 5
  %prog_sample_field_value_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %prog_sample_field_id_2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prog_sample_field_id_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp.i21 = icmp ugt i32 %26, 7
  br i1 %cmp.i21, label %dr_ste_v1_set_flex_parser.exit20.dr_ste_v1_set_flex_parser.exit27_crit_edge, label %lor.lhs.false.i24

dr_ste_v1_set_flex_parser.exit20.dr_ste_v1_set_flex_parser.exit27_crit_edge: ; preds = %dr_ste_v1_set_flex_parser.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit27

lor.lhs.false.i24:                                ; preds = %dr_ste_v1_set_flex_parser.exit20
  %arrayidx.i22 = getelementptr i8, ptr %parser_is_used, i32 %26
  %27 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i22, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i23 = icmp eq i8 %28, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %lor.lhs.false.i24.dr_ste_v1_set_flex_parser.exit27_crit_edge

lor.lhs.false.i24.dr_ste_v1_set_flex_parser.exit27_crit_edge: ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit27

if.end.i26:                                       ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx.i22, align 1
  %30 = shl nuw nsw i32 %26, 2
  %31 = and i32 %30, 12
  %32 = xor i32 %31, 12
  %add.ptr.i.i25 = getelementptr i8, ptr %tag, i32 %32
  %33 = ptrtoint ptr %prog_sample_field_value_2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prog_sample_field_value_2, align 4
  %35 = ptrtoint ptr %add.ptr.i.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr.i.i25, align 4
  %36 = ptrtoint ptr %prog_sample_field_id_2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %prog_sample_field_id_2, align 4
  store i32 0, ptr %prog_sample_field_value_2, align 4
  br label %dr_ste_v1_set_flex_parser.exit27

dr_ste_v1_set_flex_parser.exit27:                 ; preds = %if.end.i26, %lor.lhs.false.i24.dr_ste_v1_set_flex_parser.exit27_crit_edge, %dr_ste_v1_set_flex_parser.exit20.dr_ste_v1_set_flex_parser.exit27_crit_edge
  %prog_sample_field_id_3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 7
  %prog_sample_field_value_3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %prog_sample_field_id_3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prog_sample_field_id_3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %38)
  %cmp.i28 = icmp ugt i32 %38, 7
  br i1 %cmp.i28, label %dr_ste_v1_set_flex_parser.exit27.dr_ste_v1_set_flex_parser.exit34_crit_edge, label %lor.lhs.false.i31

dr_ste_v1_set_flex_parser.exit27.dr_ste_v1_set_flex_parser.exit34_crit_edge: ; preds = %dr_ste_v1_set_flex_parser.exit27
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit34

lor.lhs.false.i31:                                ; preds = %dr_ste_v1_set_flex_parser.exit27
  %arrayidx.i29 = getelementptr i8, ptr %parser_is_used, i32 %38
  %39 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i29, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i30 = icmp eq i8 %40, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %lor.lhs.false.i31.dr_ste_v1_set_flex_parser.exit34_crit_edge

lor.lhs.false.i31.dr_ste_v1_set_flex_parser.exit34_crit_edge: ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %dr_ste_v1_set_flex_parser.exit34

if.end.i33:                                       ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx.i29, align 1
  %42 = shl nuw nsw i32 %38, 2
  %43 = and i32 %42, 12
  %44 = xor i32 %43, 12
  %add.ptr.i.i32 = getelementptr i8, ptr %tag, i32 %44
  %45 = ptrtoint ptr %prog_sample_field_value_3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prog_sample_field_value_3, align 4
  %47 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr.i.i32, align 4
  %48 = ptrtoint ptr %prog_sample_field_id_3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %prog_sample_field_id_3, align 4
  store i32 0, ptr %prog_sample_field_value_3, align 4
  br label %dr_ste_v1_set_flex_parser.exit34

dr_ste_v1_set_flex_parser.exit34:                 ; preds = %if.end.i33, %lor.lhs.false.i31.dr_ste_v1_set_flex_parser.exit34_crit_edge, %dr_ste_v1_set_flex_parser.exit27.dr_ste_v1_set_flex_parser.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parser_is_used) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_flex_parser_tnl_gtpu_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gtpu_msg_flags = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 14
  %0 = ptrtoint ptr %gtpu_msg_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gtpu_msg_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -117440513
  %4 = and i8 %1, 7
  %and5 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and5, 24
  %or = or i32 %and, %shl
  store i32 %or, ptr %tag, align 4
  %5 = ptrtoint ptr %gtpu_msg_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %gtpu_msg_flags, align 1
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %gtpu_msg_type = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %gtpu_msg_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gtpu_msg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %do.body12.do.body34_crit_edge, label %do.body15

do.body12.do.body34_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %conv18 = zext i8 %7 to i32
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tag, align 4
  %and23 = and i32 %9, -16711681
  %shl25 = shl nuw nsw i32 %conv18, 16
  %or26 = or i32 %and23, %shl25
  store i32 %or26, ptr %tag, align 4
  %10 = ptrtoint ptr %gtpu_msg_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %gtpu_msg_type, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.body15, %do.body12.do.body34_crit_edge
  %gtpu_teid = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 12
  %11 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gtpu_teid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not = icmp eq i32 %12, 0
  br i1 %tobool35.not, label %do.body34.do.end54_crit_edge, label %do.body37

do.body34.do.end54_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

do.body37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr43 = getelementptr i32, ptr %tag, i32 1
  %13 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr43, align 4
  %14 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %gtpu_teid, align 4
  br label %do.end54

do.end54:                                         ; preds = %do.body37, %do.body34.do.end54_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_header_0_1_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel_header_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %tunnel_header_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tunnel_header_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %tunnel_header_0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tunnel_header_0, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %tunnel_header_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %tunnel_header_1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tunnel_header_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.body12.do.end32_crit_edge, label %do.body15

do.body12.do.end32_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21, align 4
  %7 = ptrtoint ptr %tunnel_header_1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tunnel_header_1, align 4
  br label %do.end32

do.end32:                                         ; preds = %do.body15, %do.body12.do.end32_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_gtpu_flex_parser_0_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.i = icmp ult i8 %3, 4
  br i1 %cmp.i, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = shl nuw nsw i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  store i32 0, ptr %gtpu_dw_0, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_teid = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i65 = icmp ult i8 %13, 4
  br i1 %cmp.i65, label %do.body9, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = shl nuw nsw i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66 = zext i8 %16 to i32
  %add.ptr.i67 = getelementptr i8, ptr %tag, i32 %mul.i66
  %gtpu_teid = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid, align 4
  %19 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67, align 4
  store i32 0, ptr %gtpu_teid, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.body9, %if.end.if.end19_crit_edge
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i68 = icmp ult i8 %23, 4
  br i1 %cmp.i68, label %do.body23, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %24 = shl nuw nsw i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69 = zext i8 %26 to i32
  %add.ptr.i70 = getelementptr i8, ptr %tag, i32 %mul.i69
  %gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2, align 4
  %29 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70, align 4
  store i32 0, ptr %gtpu_dw_2, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body23, %if.end19.if.end33_crit_edge
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp.i71 = icmp ult i8 %33, 4
  br i1 %cmp.i71, label %do.body37, label %if.end33.if.end47_crit_edge

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.body37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %34 = shl nuw nsw i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72 = zext i8 %36 to i32
  %add.ptr.i73 = getelementptr i8, ptr %tag, i32 %mul.i72
  %gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0, align 4
  %39 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.body37, %if.end33.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v1_build_tnl_gtpu_flex_parser_1_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp ugt i8 %3, 3
  br i1 %cmp.i, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  store i32 0, ptr %gtpu_dw_0, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_teid = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i65 = icmp ugt i8 %13, 3
  br i1 %cmp.i65, label %do.body9, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66 = zext i8 %16 to i32
  %add.ptr.i67 = getelementptr i8, ptr %tag, i32 %mul.i66
  %gtpu_teid = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid, align 4
  %19 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67, align 4
  store i32 0, ptr %gtpu_teid, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.body9, %if.end.if.end19_crit_edge
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i68 = icmp ugt i8 %23, 3
  br i1 %cmp.i68, label %do.body23, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %24 = shl i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69 = zext i8 %26 to i32
  %add.ptr.i70 = getelementptr i8, ptr %tag, i32 %mul.i69
  %gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2, align 4
  %29 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70, align 4
  store i32 0, ptr %gtpu_dw_2, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body23, %if.end19.if.end33_crit_edge
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i71 = icmp ugt i8 %33, 3
  br i1 %cmp.i71, label %do.body37, label %if.end33.if.end47_crit_edge

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.body37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72 = zext i8 %36 to i32
  %add.ptr.i73 = getelementptr i8, ptr %tag, i32 %mul.i72
  %gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0, align 4
  %39 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.body37, %if.end33.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @dr_ste_v1_arr_init_next_match(ptr nocapture noundef %last_ste, ptr nocapture noundef %added_stes, i16 noundef zeroext %gvmi) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %added_stes, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %added_stes, align 4
  %2 = ptrtoint ptr %last_ste to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last_ste, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  store ptr %add.ptr, ptr %last_ste, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and.i.i = and i32 %5, 16777215
  store i32 %and.i.i, ptr %add.ptr, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %3, i32 68
  %6 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr13.i.i, align 4
  %and14.i.i = and i32 %7, 255
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 84
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr13.i44.i = getelementptr i8, ptr %3, i32 76
  %10 = ptrtoint ptr %add.ptr13.i44.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr13.i44.i, align 4
  %conv.i = zext i16 %gvmi to i32
  %and.i = and i32 %9, -49152
  %and2.i = and i32 %conv.i, 16383
  %or.i = or i32 %and.i, %and2.i
  store i32 %or.i, ptr %add.ptr.i.i, align 4
  %or17.i46.i = and i32 %11, 255
  %shl15.i = shl nuw i32 %conv.i, 16
  %and13.i = or i32 %shl15.i, %or17.i46.i
  %or16.i = or i32 %and13.i, 3840
  store i32 %or16.i, ptr %add.ptr13.i44.i, align 4
  %and27.i = or i32 %shl15.i, %and14.i.i
  %or30.i = or i32 %and27.i, 3840
  store i32 %or30.i, ptr %add.ptr13.i.i, align 4
  %12 = load ptr, ptr %last_ste, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i5 = and i32 %14, 16777215
  %or.i6 = or i32 %and.i5, 33554432
  store i32 %or.i6, ptr %12, align 4
  %15 = load ptr, ptr %last_ste, align 4
  %add.ptr1 = getelementptr i8, ptr %15, i32 20
  %16 = call ptr @memset(ptr %add.ptr1, i32 0, i32 12)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @ste_ctx_v1, !1, !"ste_ctx_v1", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c", i32 2049, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c", i32 1828, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dr_ste_v1_build_src_gvmi_qpn_tag._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dr_ste_v1_build_src_gvmi_qpn_tag._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @dr_ste_v1_action_modify_field_arr, !11, !"dr_ste_v1_action_modify_field_arr", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v1.c", i32 132, i32 52}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!23 = !{i8 0, i8 2}
