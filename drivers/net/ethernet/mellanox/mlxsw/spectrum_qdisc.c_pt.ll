; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_qdisc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.167, %struct.anon.168, %struct.mlxsw_sp_port_mapping, %struct.anon.169, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.173, i32, i32, ptr, i64 }
%struct.anon.167 = type { i8 }
%struct.anon.168 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.169 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.173 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_qdisc_state = type { %struct.mlxsw_sp_qdisc, i32, [8 x i8], %struct.mutex }
%struct.mlxsw_sp_qdisc = type { i32, %union.anon.170, %struct.mlxsw_sp_qdisc_stats, %union.anon.171, ptr, ptr, ptr, i32 }
%union.anon.170 = type { %struct.red_stats }
%struct.red_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_qdisc_stats = type { i64, i64, i64, i64, i64 }
%union.anon.171 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tc_red_qopt_offload = type { i32, i32, i32, %union.anon.182 }
%union.anon.182 = type { %struct.tc_red_qopt_offload_params }
%struct.tc_red_qopt_offload_params = type { i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.tc_tbf_qopt_offload = type { i32, i32, i32, %union.anon.183 }
%union.anon.183 = type { %struct.tc_tbf_qopt_offload_replace_params }
%struct.tc_tbf_qopt_offload_replace_params = type { %struct.psched_ratecfg, i32, ptr }
%struct.psched_ratecfg = type { i64, i32, i16, i16, i8, i8 }
%struct.tc_fifo_qopt_offload = type { i32, i32, i32, %union.anon.184 }
%union.anon.184 = type { %struct.tc_qopt_offload_stats }
%struct.tc_qopt_offload_stats = type { ptr, ptr }
%struct.tc_prio_qopt_offload = type { i32, i32, i32, %union.anon.185 }
%union.anon.185 = type { %struct.tc_prio_qopt_offload_params }
%struct.tc_prio_qopt_offload_params = type { i32, [16 x i8], ptr }
%struct.tc_ets_qopt_offload = type { i32, i32, i32, %union.anon.186 }
%union.anon.186 = type { %struct.tc_ets_qopt_offload_replace_params }
%struct.tc_ets_qopt_offload_replace_params = type { i32, [16 x i8], [16 x i32], [16 x i32], ptr }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_qevent_block = type { %struct.list_head, %struct.list_head, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mlxsw_sp_qevent_binding = type { %struct.list_head, ptr, i32, i32, i32, i32 }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.mlxsw_sp_hdroom = type { i32, %struct.anon.174, %struct.anon.175, %struct.anon.176, i32, i32 }
%struct.anon.174 = type { [8 x %struct.mlxsw_sp_hdroom_prio] }
%struct.mlxsw_sp_hdroom_prio = type { i8, i8, i8, i8 }
%struct.anon.175 = type { [10 x %struct.mlxsw_sp_hdroom_buf] }
%struct.mlxsw_sp_hdroom_buf = type { i32, i32, i32, i8 }
%struct.anon.176 = type { i32, i32, i8 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_qdisc_ets_band = type { i8, i32 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.187, ptr }
%union.anon.187 = type { %struct.anon.195 }
%struct.anon.195 = type { i32, i64, i64, i64, i32 }
%struct.mlxsw_sp_mall_entry = type { %struct.list_head, i32, i32, i32, i8, %union.anon.165, %struct.callback_head }
%union.anon.165 = type { %struct.mlxsw_sp_mall_sample_entry }
%struct.mlxsw_sp_mall_sample_entry = type { %struct.mlxsw_sp_sample_params, i32 }
%struct.mlxsw_sp_sample_params = type { ptr, i32, i32, i8 }
%struct.mlxsw_sp_span_agent_parms = type { ptr, i16, i8, i32 }
%struct.mlxsw_sp_span_trigger_parms = type { i32, i32 }

@mlxsw_sp_tc_qdisc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&qdisc_state->lock\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_ops_red = internal global { %struct.mlxsw_sp_qdisc_ops, [48 x i8] } { %struct.mlxsw_sp_qdisc_ops { i32 1, ptr @mlxsw_sp_qdisc_red_check_params, ptr @mlxsw_sp_qdisc_red_replace, ptr @mlxsw_sp_qdisc_red_destroy, ptr @mlxsw_sp_qdisc_get_red_stats, ptr @mlxsw_sp_qdisc_get_red_xstats, ptr @mlxsw_sp_setup_tc_qdisc_red_clean_stats, ptr @mlxsw_sp_qdisc_red_unoffload, ptr @mlxsw_sp_qdisc_leaf_find_class, i32 1, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_red_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 688, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"spectrum: RED: min %u is bigger then max %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlxsw_sp_qdisc_red_check_params\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_red_check_params._entry_ptr = internal global ptr @mlxsw_sp_qdisc_red_check_params._entry, section ".printk_index", align 4
@mlxsw_sp_qdisc_red_check_params._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"spectrum: RED: max value %u is too big\0A\00", [56 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_red_check_params._entry_ptr.8 = internal global ptr @mlxsw_sp_qdisc_red_check_params._entry.6, section ".printk_index", align 4
@mlxsw_sp_qdisc_red_check_params._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.1, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"spectrum: RED: 0 value is illegal for min and max\0A\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_red_check_params._entry_ptr.11 = internal global ptr @mlxsw_sp_qdisc_red_check_params._entry.9, section ".printk_index", align 4
@mlxsw_sp_qdisc_ops_fifo = internal global { %struct.mlxsw_sp_qdisc_ops, [48 x i8] } { %struct.mlxsw_sp_qdisc_ops { i32 5, ptr @mlxsw_sp_qdisc_fifo_check_params, ptr @mlxsw_sp_qdisc_fifo_replace, ptr null, ptr @mlxsw_sp_qdisc_get_fifo_stats, ptr null, ptr @mlxsw_sp_setup_tc_qdisc_leaf_clean_stats, ptr null, ptr null, i32 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_reg_cwtp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 10242, i16 64, ptr @.str.28 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_cwtpm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 10243, i16 68, ptr @.str.51 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 35, ptr null, ptr null }, align 1
@.str.13 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_cwtp_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_cwtp_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_cwtp_traffic_class\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_cwtp_profile_min\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_cwtp_profile_max\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_cwtp_profile_percent\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cwtp\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_cwtpm_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_cwtpm_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_cwtpm_traffic_class\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_cwtpm_ew\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_cwtpm_ee\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_cwtpm_tcp_g\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_cwtpm_tcp_y\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_cwtpm_tcp_r\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_cwtpm_ntcp_g\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_cwtpm_ntcp_y\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_cwtpm_ntcp_r\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cwtpm\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_ops_tbf = internal global { %struct.mlxsw_sp_qdisc_ops, [48 x i8] } { %struct.mlxsw_sp_qdisc_ops { i32 4, ptr @mlxsw_sp_qdisc_tbf_check_params, ptr @mlxsw_sp_qdisc_tbf_replace, ptr @mlxsw_sp_qdisc_tbf_destroy, ptr @mlxsw_sp_qdisc_get_tbf_stats, ptr null, ptr @mlxsw_sp_setup_tc_qdisc_leaf_clean_stats, ptr @mlxsw_sp_qdisc_tbf_unoffload, ptr @mlxsw_sp_qdisc_leaf_find_class, i32 1, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_tbf_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.1, i32 1002, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"spectrum: TBF: rate of %lluKbps must be below %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlxsw_sp_qdisc_tbf_check_params\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_tbf_check_params._entry_ptr = internal global ptr @mlxsw_sp_qdisc_tbf_check_params._entry, section ".printk_index", align 4
@mlxsw_sp_qdisc_tbf_check_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.1, i32 1014, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"spectrum: TBF: invalid burst size of %u, must be a power of two between %u and %u\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_tbf_check_params._entry_ptr.56 = internal global ptr @mlxsw_sp_qdisc_tbf_check_params._entry.54, section ".printk_index", align 4
@mlxsw_sp_qdisc_tbf_replace.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_qdisc_ops_prio = internal global { %struct.mlxsw_sp_qdisc_ops, [48 x i8] } { %struct.mlxsw_sp_qdisc_ops { i32 2, ptr @mlxsw_sp_qdisc_prio_check_params, ptr @mlxsw_sp_qdisc_prio_replace, ptr @mlxsw_sp_qdisc_prio_destroy, ptr @mlxsw_sp_qdisc_get_prio_stats, ptr null, ptr @mlxsw_sp_setup_tc_qdisc_prio_clean_stats, ptr @mlxsw_sp_qdisc_prio_unoffload, ptr @mlxsw_sp_qdisc_prio_find_class, i32 8, ptr @mlxsw_sp_qdisc_ets_get_prio_bitmap, ptr @mlxsw_sp_qdisc_ets_get_tclass_num }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_qdisc_ops_ets = internal global { %struct.mlxsw_sp_qdisc_ops, [48 x i8] } { %struct.mlxsw_sp_qdisc_ops { i32 3, ptr @mlxsw_sp_qdisc_ets_check_params, ptr @mlxsw_sp_qdisc_ets_replace, ptr @mlxsw_sp_qdisc_ets_destroy, ptr @mlxsw_sp_qdisc_get_prio_stats, ptr null, ptr @mlxsw_sp_setup_tc_qdisc_prio_clean_stats, ptr @mlxsw_sp_qdisc_ets_unoffload, ptr @mlxsw_sp_qdisc_prio_find_class, i32 8, ptr @mlxsw_sp_qdisc_ets_get_prio_bitmap, ptr @mlxsw_sp_qdisc_ets_get_tclass_num }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mlxsw_sp_qevent_block_cb_list, ptr @mlxsw_sp_qevent_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_setup_tc_block_qevent_bind.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Qdisc not offloaded\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_mall_replace.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"At most one filter supported\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_mall_replace.__msg.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Only singular actions supported\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_mall_replace.__msg.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Only chain 0 is supported\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_mall_replace.__msg.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Protocol matching not supported\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_mall_replace.__msg.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HW counters not supported on qevents\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_mall_replace.__msg.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unsupported action\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_qevent_entry_configure.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Action not supported at this qevent\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2328, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_qdisc_ops_red\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 834, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 337, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 686, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 693, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 698, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_qdisc_ops_fifo\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1153, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 271, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_cwtp\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_cwtpm\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 33, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2148, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2154, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2160, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2175, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2168, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2141, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2226, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2232, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2240, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2248, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2256, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2264, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2272, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2280, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2288, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2296, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2219, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_qdisc_ops_tbf\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1072, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1000, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1010, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_qdisc_ops_prio\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1527, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_qdisc_ops_ets\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1580, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"mlxsw_sp_qevent_block_cb_list\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1759, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2203, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2002, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2006, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2010, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2014, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2020, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2035, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.239 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1882, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_qdisc_red_check_params._entry, ptr @mlxsw_sp_qdisc_red_check_params._entry.6, ptr @mlxsw_sp_qdisc_red_check_params._entry.9, ptr @mlxsw_sp_qdisc_red_check_params._entry_ptr, ptr @mlxsw_sp_qdisc_red_check_params._entry_ptr.11, ptr @mlxsw_sp_qdisc_red_check_params._entry_ptr.8, ptr @mlxsw_sp_qdisc_tbf_check_params._entry, ptr @mlxsw_sp_qdisc_tbf_check_params._entry.54, ptr @mlxsw_sp_qdisc_tbf_check_params._entry_ptr, ptr @mlxsw_sp_qdisc_tbf_check_params._entry_ptr.56, ptr @mlxsw_sp_tc_qdisc_init.__key, ptr @.str, ptr @mlxsw_sp_qdisc_ops_red, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @mlxsw_sp_qdisc_ops_fifo, ptr @.str.12, ptr @mlxsw_reg_cwtp, ptr @mlxsw_reg_cwtpm, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @mlxsw_sp_qdisc_ops_tbf, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @mlxsw_sp_qdisc_ops_prio, ptr @mlxsw_sp_qdisc_ops_ets, ptr @mlxsw_sp_qevent_block_cb_list, ptr @mlxsw_sp_setup_tc_block_qevent_bind.__msg, ptr @mlxsw_sp_qevent_mall_replace.__msg, ptr @mlxsw_sp_qevent_mall_replace.__msg.57, ptr @mlxsw_sp_qevent_mall_replace.__msg.58, ptr @mlxsw_sp_qevent_mall_replace.__msg.59, ptr @mlxsw_sp_qevent_mall_replace.__msg.60, ptr @mlxsw_sp_qevent_mall_replace.__msg.61, ptr @mlxsw_sp_qevent_entry_configure.__msg], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_tc_qdisc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_ops_red to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_red_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_red_check_params._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_red_check_params._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_ops_fifo to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_cwtp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_cwtpm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_ops_tbf to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_tbf_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_tbf_check_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_ops_prio to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qdisc_ops_ets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_setup_tc_block_qevent_bind.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_mall_replace.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_mall_replace.__msg.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_mall_replace.__msg.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_mall_replace.__msg.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_mall_replace.__msg.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_mall_replace.__msg.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_qevent_entry_configure.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_red(ptr noundef %mlxsw_sp_port, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %parent.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %4 = ptrtoint ptr %parent.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %parent.addr.i.i, align 4
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_qdisc_find.exit.thread.i, label %if.end.i.i

mlxsw_sp_qdisc_find.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %__mlxsw_sp_setup_tc_red.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.i, label %mlxsw_sp_qdisc_find.exit.thread52.i, label %mlxsw_sp_qdisc_find.exit.i

mlxsw_sp_qdisc_find.exit.thread52.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i:                       ; preds = %if.end.i.i
  %call.i.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %6, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find, ptr noundef nonnull %parent.addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, label %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge

mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge:    ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_red.exit

if.end.i:                                         ; preds = %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge, %mlxsw_sp_qdisc_find.exit.thread52.i
  %retval.0.i55.i = phi ptr [ %6, %mlxsw_sp_qdisc_find.exit.thread52.i ], [ %call.i.i, %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %handle.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 4
  %11 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 3
  %call2.i = call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef %10, ptr noundef nonnull %retval.0.i55.i, ptr noundef nonnull @mlxsw_sp_qdisc_ops_red, ptr noundef %11) #13
  br label %__mlxsw_sp_setup_tc_red.exit

if.end3.i:                                        ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %retval.0.i55.i, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i35.i = icmp eq ptr %13, null
  br i1 %tobool.not.i35.i, label %if.end3.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, label %mlxsw_sp_qdisc_compare.exit.i

if.end3.i.__mlxsw_sp_setup_tc_red.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_red.exit

mlxsw_sp_qdisc_compare.exit.i:                    ; preds = %if.end3.i
  %handle4.i = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 1
  %14 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle4.i, align 4
  %16 = ptrtoint ptr %retval.0.i55.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i55.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i36.i = icmp eq i32 %17, %15
  br i1 %cmp.i36.i, label %if.end7.i, label %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge

mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_red.exit

if.end7.i:                                        ; preds = %mlxsw_sp_qdisc_compare.exit.i
  %18 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end7.i.__mlxsw_sp_setup_tc_red.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %land.lhs.true2.i.i
    i32 2, label %land.lhs.true2.i46.i
    i32 4, label %sw.bb14.i
  ]

if.end7.i.__mlxsw_sp_setup_tc_red.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_red.exit

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i55.i) #13
  br label %__mlxsw_sp_setup_tc_red.exit

land.lhs.true2.i.i:                               ; preds = %if.end7.i
  %get_xstats.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %13, i32 0, i32 5
  %19 = ptrtoint ptr %get_xstats.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_xstats.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.__mlxsw_sp_setup_tc_red.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_red.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i39.i = call i32 %20(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i55.i, ptr noundef %23) #13
  br label %__mlxsw_sp_setup_tc_red.exit

land.lhs.true2.i46.i:                             ; preds = %if.end7.i
  %get_stats.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %13, i32 0, i32 4
  %24 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_stats.i.i, align 4
  %tobool4.not.i45.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i45.i, label %land.lhs.true2.i46.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, label %if.then.i48.i

land.lhs.true2.i46.i.__mlxsw_sp_setup_tc_red.exit_crit_edge: ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_red.exit

if.then.i48.i:                                    ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 3
  %call.i47.i = call i32 %25(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i55.i, ptr noundef %26) #13
  br label %__mlxsw_sp_setup_tc_red.exit

sw.bb14.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = getelementptr inbounds %struct.tc_red_qopt_offload, ptr %p, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %call15.i = call fastcc i32 @mlxsw_sp_qdisc_graft(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i55.i, i8 noundef zeroext 0, i32 noundef %29) #13
  br label %__mlxsw_sp_setup_tc_red.exit

__mlxsw_sp_setup_tc_red.exit:                     ; preds = %sw.bb14.i, %if.then.i48.i, %land.lhs.true2.i46.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, %if.then.i.i, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, %sw.bb.i, %if.end7.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, %if.end3.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, %if.then1.i, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge, %mlxsw_sp_qdisc_find.exit.thread.i
  %retval.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call15.i, %sw.bb14.i ], [ %call9.i, %sw.bb.i ], [ -95, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_red.exit_crit_edge ], [ -95, %if.end7.i.__mlxsw_sp_setup_tc_red.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_find.exit.thread.i ], [ %call.i39.i, %if.then.i.i ], [ -95, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_red.exit_crit_edge ], [ %call.i47.i, %if.then.i48.i ], [ -95, %land.lhs.true2.i46.i.__mlxsw_sp_setup_tc_red.exit_crit_edge ], [ -95, %if.end3.i.__mlxsw_sp_setup_tc_red.exit_crit_edge ]
  %30 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qdisc, align 4
  %lock2 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %31, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock2) #13
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_tbf(ptr noundef %mlxsw_sp_port, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %parent.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %4 = ptrtoint ptr %parent.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %parent.addr.i.i, align 4
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_qdisc_find.exit.thread.i, label %if.end.i.i

mlxsw_sp_qdisc_find.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %__mlxsw_sp_setup_tc_tbf.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.i, label %mlxsw_sp_qdisc_find.exit.thread38.i, label %mlxsw_sp_qdisc_find.exit.i

mlxsw_sp_qdisc_find.exit.thread38.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i:                       ; preds = %if.end.i.i
  %call.i.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %6, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find, ptr noundef nonnull %parent.addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, label %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge

mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge:    ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_tbf.exit

if.end.i:                                         ; preds = %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge, %mlxsw_sp_qdisc_find.exit.thread38.i
  %retval.0.i41.i = phi ptr [ %6, %mlxsw_sp_qdisc_find.exit.thread38.i ], [ %call.i.i, %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %handle.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 4
  %11 = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %p, i32 0, i32 3
  %call2.i = call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef %10, ptr noundef nonnull %retval.0.i41.i, ptr noundef nonnull @mlxsw_sp_qdisc_ops_tbf, ptr noundef %11) #13
  br label %__mlxsw_sp_setup_tc_tbf.exit

if.end3.i:                                        ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %retval.0.i41.i, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i30.i = icmp eq ptr %13, null
  br i1 %tobool.not.i30.i, label %if.end3.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, label %mlxsw_sp_qdisc_compare.exit.i

if.end3.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_tbf.exit

mlxsw_sp_qdisc_compare.exit.i:                    ; preds = %if.end3.i
  %handle4.i = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %p, i32 0, i32 1
  %14 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle4.i, align 4
  %16 = ptrtoint ptr %retval.0.i41.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i41.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i31.i = icmp eq i32 %17, %15
  br i1 %cmp.i31.i, label %if.end7.i, label %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge

mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_tbf.exit

if.end7.i:                                        ; preds = %mlxsw_sp_qdisc_compare.exit.i
  %18 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %8, label %if.end7.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %land.lhs.true2.i.i
    i32 3, label %sw.bb12.i
  ]

if.end7.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_tbf.exit

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i41.i) #13
  br label %__mlxsw_sp_setup_tc_tbf.exit

land.lhs.true2.i.i:                               ; preds = %if.end7.i
  %get_stats.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_stats.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_tbf.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %p, i32 0, i32 3
  %call.i34.i = call i32 %20(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i41.i, ptr noundef %21) #13
  br label %__mlxsw_sp_setup_tc_tbf.exit

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = getelementptr inbounds %struct.tc_tbf_qopt_offload, ptr %p, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %call13.i = call fastcc i32 @mlxsw_sp_qdisc_graft(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i41.i, i8 noundef zeroext 0, i32 noundef %24) #13
  br label %__mlxsw_sp_setup_tc_tbf.exit

__mlxsw_sp_setup_tc_tbf.exit:                     ; preds = %sw.bb12.i, %if.then.i.i, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, %sw.bb.i, %if.end7.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, %if.end3.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, %if.then1.i, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge, %mlxsw_sp_qdisc_find.exit.thread.i
  %retval.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call13.i, %sw.bb12.i ], [ %call9.i, %sw.bb.i ], [ -95, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge ], [ -95, %if.end7.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_find.exit.thread.i ], [ %call.i34.i, %if.then.i.i ], [ -95, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge ], [ -95, %if.end3.i.__mlxsw_sp_setup_tc_tbf.exit_crit_edge ]
  %25 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qdisc, align 4
  %lock2 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %26, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock2) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_fifo(ptr noundef %mlxsw_sp_port, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %2 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdisc, align 4
  %parent.i = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %6 = ptrtoint ptr %parent.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %parent.addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_qdisc_find.exit.thread.i, label %if.end.i.i

mlxsw_sp_qdisc_find.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %land.lhs.true.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.i, label %mlxsw_sp_qdisc_find.exit.thread77.i, label %mlxsw_sp_qdisc_find.exit.i

mlxsw_sp_qdisc_find.exit.thread77.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %if.end21.i

mlxsw_sp_qdisc_find.exit.i:                       ; preds = %if.end.i.i
  %call.i.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %3, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find, ptr noundef nonnull %parent.addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_qdisc_find.exit.i.land.lhs.true.i_crit_edge, label %mlxsw_sp_qdisc_find.exit.i.if.end21.i_crit_edge

mlxsw_sp_qdisc_find.exit.i.if.end21.i_crit_edge:  ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

mlxsw_sp_qdisc_find.exit.i.land.lhs.true.i_crit_edge: ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %mlxsw_sp_qdisc_find.exit.i.land.lhs.true.i_crit_edge, %mlxsw_sp_qdisc_find.exit.thread.i
  %handle.i = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge

land.lhs.true.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parent.i, align 4
  %and.i = and i32 %10, -65536
  %future_handle.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %future_handle.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %future_handle.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %12)
  %cmp2.not.i = icmp eq i32 %and.i, %12
  br i1 %cmp2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qdisc, align 4
  %future_handle.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %future_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %future_handle.i.i, align 8
  %future_fifos.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %future_fifos.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %future_fifos.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parent.i, align 4
  %and5.i = and i32 %18, 65535
  %sub.i = add nsw i32 %and5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp6.i = icmp ult i32 %sub.i, 8
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge

if.end.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.then7.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %20, label %if.then7.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge [
    i32 0, label %if.then9.i
    i32 1, label %if.then12.i
  ]

if.then7.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.mlxsw_sp_qdisc_state, ptr %3, i32 0, i32 2, i32 %sub.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx.i, align 1
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx14.i = getelementptr %struct.mlxsw_sp_qdisc_state, ptr %3, i32 0, i32 2, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx14.i, align 1
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.end21.i:                                       ; preds = %mlxsw_sp_qdisc_find.exit.i.if.end21.i_crit_edge, %mlxsw_sp_qdisc_find.exit.thread77.i
  %retval.0.i80.i = phi ptr [ %3, %mlxsw_sp_qdisc_find.exit.thread77.i ], [ %call.i.i, %mlxsw_sp_qdisc_find.exit.i.if.end21.i_crit_edge ]
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23.i = icmp eq i32 %25, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %handle25.i = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %p, i32 0, i32 1
  %26 = ptrtoint ptr %handle25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %handle25.i, align 4
  %call26.i = call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef %27, ptr noundef nonnull %retval.0.i80.i, ptr noundef nonnull @mlxsw_sp_qdisc_ops_fifo, ptr noundef null) #13
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.end27.i:                                       ; preds = %if.end21.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %retval.0.i80.i, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i69.i = icmp eq ptr %29, null
  br i1 %tobool.not.i69.i, label %if.end27.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, label %mlxsw_sp_qdisc_compare.exit.i

if.end27.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

mlxsw_sp_qdisc_compare.exit.i:                    ; preds = %if.end27.i
  %handle28.i = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %p, i32 0, i32 1
  %30 = ptrtoint ptr %handle28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %handle28.i, align 4
  %32 = ptrtoint ptr %retval.0.i80.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retval.0.i80.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.i70.i = icmp eq i32 %33, %31
  br i1 %cmp.i70.i, label %if.end31.i, label %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge

mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.end31.i:                                       ; preds = %mlxsw_sp_qdisc_compare.exit.i
  %34 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %25, label %if.end31.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %land.lhs.true2.i.i
  ]

if.end31.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

sw.bb.i:                                          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i80.i) #13
  br label %__mlxsw_sp_setup_tc_fifo.exit

land.lhs.true2.i.i:                               ; preds = %if.end31.i
  %get_stats.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %29, i32 0, i32 4
  %35 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_stats.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_fifo.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %p, i32 0, i32 3
  %call.i73.i = call i32 %36(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i80.i, ptr noundef %37) #13
  br label %__mlxsw_sp_setup_tc_fifo.exit

__mlxsw_sp_setup_tc_fifo.exit:                    ; preds = %if.then.i.i, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, %sw.bb.i, %if.end31.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, %if.end27.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, %if.then24.i, %if.then12.i, %if.then9.i, %if.then7.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, %if.end.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge, %land.lhs.true.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge
  %retval.0.i = phi i32 [ %call26.i, %if.then24.i ], [ %call33.i, %sw.bb.i ], [ -95, %if.then9.i ], [ -95, %if.then12.i ], [ -95, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ], [ -95, %if.end31.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ], [ -95, %if.then7.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ], [ -95, %if.end.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ], [ -95, %land.lhs.true.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ], [ %call.i73.i, %if.then.i.i ], [ -95, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ], [ -95, %if.end27.i.__mlxsw_sp_setup_tc_fifo.exit_crit_edge ]
  %38 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qdisc, align 4
  %lock2 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %39, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock2) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_prio(ptr noundef %mlxsw_sp_port, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %parent.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %4 = ptrtoint ptr %parent.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %parent.addr.i.i, align 4
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_qdisc_find.exit.thread.i, label %if.end.i.i

mlxsw_sp_qdisc_find.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %__mlxsw_sp_setup_tc_prio.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.i, label %mlxsw_sp_qdisc_find.exit.thread39.i, label %mlxsw_sp_qdisc_find.exit.i

mlxsw_sp_qdisc_find.exit.thread39.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i:                       ; preds = %if.end.i.i
  %call.i.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %6, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find, ptr noundef nonnull %parent.addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, label %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge

mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge:    ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_prio.exit

if.end.i:                                         ; preds = %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge, %mlxsw_sp_qdisc_find.exit.thread39.i
  %retval.0.i42.i = phi ptr [ %6, %mlxsw_sp_qdisc_find.exit.thread39.i ], [ %call.i.i, %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %handle.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 4
  %11 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 3
  %call2.i = call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef %10, ptr noundef nonnull %retval.0.i42.i, ptr noundef nonnull @mlxsw_sp_qdisc_ops_prio, ptr noundef %11) #13
  br label %__mlxsw_sp_setup_tc_prio.exit

if.end3.i:                                        ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %retval.0.i42.i, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i31.i = icmp eq ptr %13, null
  br i1 %tobool.not.i31.i, label %if.end3.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, label %mlxsw_sp_qdisc_compare.exit.i

if.end3.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_prio.exit

mlxsw_sp_qdisc_compare.exit.i:                    ; preds = %if.end3.i
  %handle4.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 1
  %14 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle4.i, align 4
  %16 = ptrtoint ptr %retval.0.i42.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i42.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i32.i = icmp eq i32 %17, %15
  br i1 %cmp.i32.i, label %if.end7.i, label %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge

mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_prio.exit

if.end7.i:                                        ; preds = %mlxsw_sp_qdisc_compare.exit.i
  %18 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %8, label %if.end7.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %land.lhs.true2.i.i
    i32 3, label %sw.bb12.i
  ]

if.end7.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_prio.exit

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i42.i) #13
  br label %__mlxsw_sp_setup_tc_prio.exit

land.lhs.true2.i.i:                               ; preds = %if.end7.i
  %get_stats.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_stats.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_prio.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 3
  %call.i35.i = call i32 %20(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i42.i, ptr noundef %21) #13
  br label %__mlxsw_sp_setup_tc_prio.exit

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %child_handle.i = getelementptr inbounds %struct.tc_prio_qopt_offload, ptr %p, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %child_handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %child_handle.i, align 4
  %call13.i = call fastcc i32 @mlxsw_sp_qdisc_graft(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i42.i, i8 noundef zeroext %24, i32 noundef %26) #13
  br label %__mlxsw_sp_setup_tc_prio.exit

__mlxsw_sp_setup_tc_prio.exit:                    ; preds = %sw.bb12.i, %if.then.i.i, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, %sw.bb.i, %if.end7.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, %if.end3.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, %if.then1.i, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge, %mlxsw_sp_qdisc_find.exit.thread.i
  %retval.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call13.i, %sw.bb12.i ], [ %call9.i, %sw.bb.i ], [ -95, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge ], [ -95, %if.end7.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_find.exit.thread.i ], [ %call.i35.i, %if.then.i.i ], [ -95, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge ], [ -95, %if.end3.i.__mlxsw_sp_setup_tc_prio.exit_crit_edge ]
  %27 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qdisc, align 4
  %lock2 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %28, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock2) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_ets(ptr noundef %mlxsw_sp_port, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %parent.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %4 = ptrtoint ptr %parent.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %parent.addr.i.i, align 4
  %5 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qdisc, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_qdisc_find.exit.thread.i, label %if.end.i.i

mlxsw_sp_qdisc_find.exit.thread.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %__mlxsw_sp_setup_tc_ets.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.i, label %mlxsw_sp_qdisc_find.exit.thread39.i, label %mlxsw_sp_qdisc_find.exit.i

mlxsw_sp_qdisc_find.exit.thread39.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i:                       ; preds = %if.end.i.i
  %call.i.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %6, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find, ptr noundef nonnull %parent.addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.addr.i.i) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, label %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge

mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge:    ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_ets.exit

if.end.i:                                         ; preds = %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge, %mlxsw_sp_qdisc_find.exit.thread39.i
  %retval.0.i42.i = phi ptr [ %6, %mlxsw_sp_qdisc_find.exit.thread39.i ], [ %call.i.i, %mlxsw_sp_qdisc_find.exit.i.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %handle.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 4
  %11 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 3
  %call2.i = call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef %10, ptr noundef nonnull %retval.0.i42.i, ptr noundef nonnull @mlxsw_sp_qdisc_ops_ets, ptr noundef %11) #13
  br label %__mlxsw_sp_setup_tc_ets.exit

if.end3.i:                                        ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %retval.0.i42.i, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i31.i = icmp eq ptr %13, null
  br i1 %tobool.not.i31.i, label %if.end3.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, label %mlxsw_sp_qdisc_compare.exit.i

if.end3.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_ets.exit

mlxsw_sp_qdisc_compare.exit.i:                    ; preds = %if.end3.i
  %handle4.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 1
  %14 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle4.i, align 4
  %16 = ptrtoint ptr %retval.0.i42.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i42.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i32.i = icmp eq i32 %17, %15
  br i1 %cmp.i32.i, label %if.end7.i, label %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge

mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_ets.exit

if.end7.i:                                        ; preds = %mlxsw_sp_qdisc_compare.exit.i
  %18 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %8, label %if.end7.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %land.lhs.true2.i.i
    i32 3, label %sw.bb12.i
  ]

if.end7.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_ets.exit

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i42.i) #13
  br label %__mlxsw_sp_setup_tc_ets.exit

land.lhs.true2.i.i:                               ; preds = %if.end7.i
  %get_stats.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %get_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_stats.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_setup_tc_ets.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 3
  %call.i35.i = call i32 %20(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i42.i, ptr noundef %21) #13
  br label %__mlxsw_sp_setup_tc_ets.exit

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %child_handle.i = getelementptr inbounds %struct.tc_ets_qopt_offload, ptr %p, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %child_handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %child_handle.i, align 4
  %call13.i = call fastcc i32 @mlxsw_sp_qdisc_graft(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %retval.0.i42.i, i8 noundef zeroext %24, i32 noundef %26) #13
  br label %__mlxsw_sp_setup_tc_ets.exit

__mlxsw_sp_setup_tc_ets.exit:                     ; preds = %sw.bb12.i, %if.then.i.i, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, %sw.bb.i, %if.end7.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, %if.end3.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, %if.then1.i, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge, %mlxsw_sp_qdisc_find.exit.thread.i
  %retval.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call13.i, %sw.bb12.i ], [ %call9.i, %sw.bb.i ], [ -95, %mlxsw_sp_qdisc_find.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_compare.exit.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge ], [ -95, %if.end7.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge ], [ -95, %mlxsw_sp_qdisc_find.exit.thread.i ], [ %call.i35.i, %if.then.i.i ], [ -95, %land.lhs.true2.i.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge ], [ -95, %if.end3.i.__mlxsw_sp_setup_tc_ets.exit_crit_edge ]
  %27 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qdisc, align 4
  %lock2 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %28, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %lock2) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_block_qevent_early_drop(ptr noundef %mlxsw_sp_port, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_setup_tc_block_qevent(ptr noundef %mlxsw_sp_port, ptr noundef %f, i32 noundef 3, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_setup_tc_block_qevent(ptr noundef %mlxsw_sp_port, ptr noundef %f, i32 noundef %span_trigger, i32 noundef %action_mask) unnamed_addr #0 align 64 {
entry:
  %handle.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_block_list = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %driver_block_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp_qevent_block_cb_list, ptr %driver_block_list, align 4
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %2, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %4 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp1.i, align 8
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %6 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block.i, align 4
  %call.i = tail call ptr @flow_block_cb_lookup(ptr noundef %7, ptr noundef nonnull @mlxsw_sp_qevent_block_cb, ptr noundef %5) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 20) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.return_crit_edge, label %if.end.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.then.i
  %9 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %mall_entry_list.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %call7.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %mall_entry_list.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mall_entry_list.i.i, ptr %mall_entry_list.i.i, align 8
  %prev.i1.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mall_entry_list.i.i, ptr %prev.i1.i.i, align 4
  %mlxsw_sp1.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %call7.i.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %mlxsw_sp1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %mlxsw_sp1.i.i, align 8
  %call5.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @mlxsw_sp_qevent_block_cb, ptr noundef %5, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @mlxsw_sp_qevent_block_release) #13
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %call7.i.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %15, %call7.i.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then7.i.if.end.i113.i_crit_edge, label %do.end.i.i, !prof !133

if.then7.i.if.end.i113.i_crit_edge:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i113.i

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2116, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i113.i

if.end.i113.i:                                    ; preds = %do.end.i.i, %if.then7.i.if.end.i113.i_crit_edge
  %16 = ptrtoint ptr %mall_entry_list.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %mall_entry_list.i.i, align 8
  %cmp.i59.not.i.i = icmp eq ptr %17, %mall_entry_list.i.i
  br i1 %cmp.i59.not.i.i, label %if.end.i113.i.mlxsw_sp_qevent_block_destroy.exit.i_crit_edge, label %do.end41.i.i, !prof !133

if.end.i113.i.mlxsw_sp_qevent_block_destroy.exit.i_crit_edge: ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_block_destroy.exit.i

do.end41.i.i:                                     ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2117, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_qevent_block_destroy.exit.i

mlxsw_sp_qevent_block_destroy.exit.i:             ; preds = %do.end41.i.i, %if.end.i113.i.mlxsw_sp_qevent_block_destroy.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  %18 = ptrtoint ptr %call5.i to i32
  br label %return

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call.i) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.end.i.if.end11.i_crit_edge
  %qevent_block.0.i = phi ptr [ %call10.i, %if.else.i ], [ %call7.i.i.i.i, %if.end.i.if.end11.i_crit_edge ]
  %block_cb.0.i = phi ptr [ %call.i, %if.else.i ], [ %call5.i, %if.end.i.if.end11.i_crit_edge ]
  tail call void @flow_block_cb_incref(ptr noundef %block_cb.0.i) #13
  %sch.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 9
  %19 = ptrtoint ptr %sch.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sch.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %handle.i, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.addr.i.i) #13
  %23 = ptrtoint ptr %handle.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %handle.addr.i.i, align 4
  %qdisc.i.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %24 = ptrtoint ptr %qdisc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qdisc.i.i, align 4
  %tobool.not.i114.i = icmp eq ptr %25, null
  br i1 %tobool.not.i114.i, label %mlxsw_sp_qdisc_find_by_handle.exit.thread.i, label %mlxsw_sp_qdisc_find_by_handle.exit.i

mlxsw_sp_qdisc_find_by_handle.exit.thread.i:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.addr.i.i) #13
  br label %do.body.i

mlxsw_sp_qdisc_find_by_handle.exit.i:             ; preds = %if.end11.i
  %call.i.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %25, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find_by_handle, ptr noundef nonnull %handle.addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.addr.i.i) #13
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %mlxsw_sp_qdisc_find_by_handle.exit.i.do.body.i_crit_edge, label %if.end18.i

mlxsw_sp_qdisc_find_by_handle.exit.i.do.body.i_crit_edge: ; preds = %mlxsw_sp_qdisc_find_by_handle.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i:                                        ; preds = %mlxsw_sp_qdisc_find_by_handle.exit.i.do.body.i_crit_edge, %mlxsw_sp_qdisc_find_by_handle.exit.thread.i
  %extack.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 8
  %26 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_setup_tc_block_qevent_bind.__msg) #13
  %tobool15.not.i = icmp eq ptr %27, null
  br i1 %tobool15.not.i, label %do.body.i.err_find_qdisc.i_crit_edge, label %if.then16.i

do.body.i.err_find_qdisc.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_find_qdisc.i

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mlxsw_sp_setup_tc_block_qevent_bind.__msg, ptr %27, align 4
  br label %err_find_qdisc.i

if.end18.i:                                       ; preds = %mlxsw_sp_qdisc_find_by_handle.exit.i
  %29 = ptrtoint ptr %sch.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sch.i, align 4
  %handle20.i = getelementptr inbounds %struct.Qdisc, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %handle20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle20.i, align 32
  %33 = ptrtoint ptr %qevent_block.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %qevent_binding.020.i.i = load ptr, ptr %qevent_block.0.i, align 4
  %cmp.not21.i.i = icmp eq ptr %qevent_binding.020.i.i, %qevent_block.0.i
  br i1 %cmp.not21.i.i, label %if.end18.i.tailrecurse.i.i.preheader_crit_edge, label %if.end18.i.for.body.i.i_crit_edge

if.end18.i.for.body.i.i_crit_edge:                ; preds = %if.end18.i
  br label %for.body.i.i

if.end18.i.tailrecurse.i.i.preheader_crit_edge:   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i.preheader

tailrecurse.i.i.preheader:                        ; preds = %mlxsw_sp_qevent_binding_lookup.exit.i.tailrecurse.i.i.preheader_crit_edge, %for.inc.i.i.tailrecurse.i.i.preheader_crit_edge, %if.end18.i.tailrecurse.i.i.preheader_crit_edge
  br label %tailrecurse.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end18.i.for.body.i.i_crit_edge
  %qevent_binding.022.i.i = phi ptr [ %qevent_binding.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %qevent_binding.020.i.i, %if.end18.i.for.body.i.i_crit_edge ]
  %mlxsw_sp_port2.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding.022.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %mlxsw_sp_port2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mlxsw_sp_port2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %35, %mlxsw_sp_port
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %handle4.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding.022.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %handle4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %32)
  %cmp5.i.i = icmp eq i32 %37, %32
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %span_trigger7.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding.022.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %span_trigger7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %span_trigger7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %span_trigger)
  %cmp8.i.i = icmp eq i32 %39, %span_trigger
  br i1 %cmp8.i.i, label %mlxsw_sp_qevent_binding_lookup.exit.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %40 = ptrtoint ptr %qevent_binding.022.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %qevent_binding.0.i.i = load ptr, ptr %qevent_binding.022.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %qevent_binding.0.i.i, %qevent_block.0.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.tailrecurse.i.i.preheader_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.tailrecurse.i.i.preheader_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i.preheader

mlxsw_sp_qevent_binding_lookup.exit.i:            ; preds = %land.lhs.true6.i.i
  %tobool22.not.i = icmp eq ptr %qevent_binding.022.i.i, null
  br i1 %tobool22.not.i, label %mlxsw_sp_qevent_binding_lookup.exit.i.tailrecurse.i.i.preheader_crit_edge, label %do.end34.i, !prof !133

mlxsw_sp_qevent_binding_lookup.exit.i.tailrecurse.i.i.preheader_crit_edge: ; preds = %mlxsw_sp_qevent_binding_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i.preheader

do.end34.i:                                       ; preds = %mlxsw_sp_qevent_binding_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2209, i32 noundef 9, ptr noundef null) #13
  br label %err_find_qdisc.i

tailrecurse.i.i:                                  ; preds = %if.end.i118.i.tailrecurse.i.i_crit_edge, %tailrecurse.i.i.preheader
  %mlxsw_sp_qdisc.tr.i.i = phi ptr [ %42, %if.end.i118.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %tailrecurse.i.i.preheader ]
  %parent1.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent1.i.i, align 8
  %tobool.not.i117.i = icmp eq ptr %42, null
  br i1 %tobool.not.i117.i, label %tailrecurse.i.i.mlxsw_sp_qdisc_get_tclass_num.exit.i_crit_edge, label %if.end.i118.i

tailrecurse.i.i.mlxsw_sp_qdisc_get_tclass_num.exit.i_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit.i

if.end.i118.i:                                    ; preds = %tailrecurse.i.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %get_tclass_num.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %get_tclass_num.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_tclass_num.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i.i, label %if.end.i118.i.tailrecurse.i.i_crit_edge, label %if.end4.i.i

if.end.i118.i.tailrecurse.i.i_crit_edge:          ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i

if.end4.i.i:                                      ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i.i = call i32 %46(ptr noundef nonnull %42, ptr noundef nonnull %mlxsw_sp_qdisc.tr.i.i) #13
  br label %mlxsw_sp_qdisc_get_tclass_num.exit.i

mlxsw_sp_qdisc_get_tclass_num.exit.i:             ; preds = %if.end4.i.i, %tailrecurse.i.i.mlxsw_sp_qdisc_get_tclass_num.exit.i_crit_edge
  %retval.0.i119.i = phi i32 [ %call7.i.i, %if.end4.i.i ], [ 0, %tailrecurse.i.i.mlxsw_sp_qdisc_get_tclass_num.exit.i_crit_edge ]
  %47 = ptrtoint ptr %sch.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sch.i, align 4
  %handle52.i = getelementptr inbounds %struct.Qdisc, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %handle52.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle52.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i120.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 28) #16
  %tobool.not.i121.i = icmp eq ptr %call7.i.i.i120.i, null
  br i1 %tobool.not.i121.i, label %mlxsw_sp_qdisc_get_tclass_num.exit.i.if.then55.i_crit_edge, label %mlxsw_sp_qevent_binding_create.exit.i

mlxsw_sp_qdisc_get_tclass_num.exit.i.if.then55.i_crit_edge: ; preds = %mlxsw_sp_qdisc_get_tclass_num.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55.i

mlxsw_sp_qevent_binding_create.exit.i:            ; preds = %mlxsw_sp_qdisc_get_tclass_num.exit.i
  %mlxsw_sp_port2.i122.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %call7.i.i.i120.i, i32 0, i32 1
  %52 = ptrtoint ptr %mlxsw_sp_port2.i122.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %mlxsw_sp_port, ptr %mlxsw_sp_port2.i122.i, align 8
  %handle3.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %call7.i.i.i120.i, i32 0, i32 2
  %53 = ptrtoint ptr %handle3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %handle3.i.i, align 4
  %tclass_num4.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %call7.i.i.i120.i, i32 0, i32 3
  %54 = ptrtoint ptr %tclass_num4.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i119.i, ptr %tclass_num4.i.i, align 8
  %span_trigger5.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %call7.i.i.i120.i, i32 0, i32 4
  %55 = ptrtoint ptr %span_trigger5.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %span_trigger, ptr %span_trigger5.i.i, align 4
  %action_mask6.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %call7.i.i.i120.i, i32 0, i32 5
  %56 = ptrtoint ptr %action_mask6.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %action_mask, ptr %action_mask6.i.i, align 8
  %cmp.i125.i = icmp ugt ptr %call7.i.i.i120.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %mlxsw_sp_qevent_binding_create.exit.i.if.then55.i_crit_edge, label %if.end57.i

mlxsw_sp_qevent_binding_create.exit.i.if.then55.i_crit_edge: ; preds = %mlxsw_sp_qevent_binding_create.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then55.i

if.then55.i:                                      ; preds = %mlxsw_sp_qevent_binding_create.exit.i.if.then55.i_crit_edge, %mlxsw_sp_qdisc_get_tclass_num.exit.i.if.then55.i_crit_edge
  %retval.0.i124136.i = phi ptr [ %call7.i.i.i120.i, %mlxsw_sp_qevent_binding_create.exit.i.if.then55.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %mlxsw_sp_qdisc_get_tclass_num.exit.i.if.then55.i_crit_edge ]
  %57 = ptrtoint ptr %retval.0.i124136.i to i32
  br label %err_find_qdisc.i

if.end57.i:                                       ; preds = %mlxsw_sp_qevent_binding_create.exit.i
  %extack58.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 8
  %58 = ptrtoint ptr %extack58.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extack58.i, align 4
  %call59.i = call fastcc i32 @mlxsw_sp_qevent_binding_configure(ptr noundef %qevent_block.0.i, ptr noundef nonnull %call7.i.i.i120.i, ptr noundef %59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %err_binding_configure.i

if.end62.i:                                       ; preds = %if.end57.i
  %60 = ptrtoint ptr %qevent_block.0.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %qevent_block.0.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i120.i, ptr noundef %qevent_block.0.i, ptr noundef %61) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end62.i.list_add.exit.i_crit_edge

if.end62.i.list_add.exit.i_crit_edge:             ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i.i120.i, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %call7.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %call7.i.i.i120.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i120.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %qevent_block.0.i, ptr %prev3.i.i.i, align 4
  %65 = ptrtoint ptr %qevent_block.0.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %call7.i.i.i120.i, ptr %qevent_block.0.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end62.i.list_add.exit.i_crit_edge
  br i1 %tobool.not.i, label %if.then64.i, label %list_add.exit.i.return_crit_edge

list_add.exit.i.return_crit_edge:                 ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then64.i:                                      ; preds = %list_add.exit.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.0.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %prev.i.i126.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %prev.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i126.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %67, ptr noundef %cb_list.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then64.i.flow_block_cb_add.exit.i_crit_edge

if.then64.i.flow_block_cb_add.exit.i_crit_edge:   ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %prev.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list.i.i, ptr %prev.i.i126.i, align 4
  %69 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.0.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list.i.i, ptr %67, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.then64.i.flow_block_cb_add.exit.i_crit_edge
  %72 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mlxsw_sp_qevent_block_cb_list, i32 0, i32 1), align 4
  %call.i.i127.i = call zeroext i1 @__list_add_valid(ptr noundef %block_cb.0.i, ptr noundef %72, ptr noundef nonnull @mlxsw_sp_qevent_block_cb_list) #13
  br i1 %call.i.i127.i, label %if.end.i.i129.i, label %flow_block_cb_add.exit.i.return_crit_edge

flow_block_cb_add.exit.i.return_crit_edge:        ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i.i129.i:                                  ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %block_cb.0.i, ptr getelementptr inbounds (%struct.list_head, ptr @mlxsw_sp_qevent_block_cb_list, i32 0, i32 1), align 4
  %73 = ptrtoint ptr %block_cb.0.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @mlxsw_sp_qevent_block_cb_list, ptr %block_cb.0.i, align 4
  %prev3.i.i128.i = getelementptr inbounds %struct.list_head, ptr %block_cb.0.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %prev3.i.i128.i, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %block_cb.0.i, ptr %72, align 4
  br label %return

err_binding_configure.i:                          ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i120.i) #13
  br label %err_find_qdisc.i

err_find_qdisc.i:                                 ; preds = %err_binding_configure.i, %if.then55.i, %do.end34.i, %if.then16.i, %do.body.i.err_find_qdisc.i_crit_edge
  %err.0.i = phi i32 [ -17, %do.end34.i ], [ %57, %if.then55.i ], [ %call59.i, %err_binding_configure.i ], [ -2, %if.then16.i ], [ -2, %do.body.i.err_find_qdisc.i_crit_edge ]
  %call66.i = call i32 @flow_block_cb_decref(ptr noundef %block_cb.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %err_find_qdisc.i.return_crit_edge

err_find_qdisc.i.return_crit_edge:                ; preds = %err_find_qdisc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then68.i:                                      ; preds = %err_find_qdisc.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @flow_block_cb_free(ptr noundef %block_cb.0.i) #13
  br label %return

sw.bb1:                                           ; preds = %entry
  %mlxsw_sp1.i7 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %76 = ptrtoint ptr %mlxsw_sp1.i7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mlxsw_sp1.i7, align 8
  %block.i8 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %78 = ptrtoint ptr %block.i8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %block.i8, align 4
  %call.i9 = tail call ptr @flow_block_cb_lookup(ptr noundef %79, ptr noundef nonnull @mlxsw_sp_qevent_block_cb, ptr noundef %77) #13
  %tobool.not.i10 = icmp eq ptr %call.i9, null
  br i1 %tobool.not.i10, label %sw.bb1.return_crit_edge, label %if.end.i15

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i15:                                       ; preds = %sw.bb1
  %call2.i = tail call ptr @flow_block_cb_priv(ptr noundef nonnull %call.i9) #13
  %sch.i11 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 9
  %80 = ptrtoint ptr %sch.i11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sch.i11, align 4
  %handle.i12 = getelementptr inbounds %struct.Qdisc, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %handle.i12 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %handle.i12, align 32
  %84 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %qevent_binding.020.i.i13 = load ptr, ptr %call2.i, align 4
  %cmp.not21.i.i14 = icmp eq ptr %qevent_binding.020.i.i13, %call2.i
  br i1 %cmp.not21.i.i14, label %if.end.i15.return_crit_edge, label %if.end.i15.for.body.i.i19_crit_edge

if.end.i15.for.body.i.i19_crit_edge:              ; preds = %if.end.i15
  br label %for.body.i.i19

if.end.i15.return_crit_edge:                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.body.i.i19:                                   ; preds = %for.inc.i.i28.for.body.i.i19_crit_edge, %if.end.i15.for.body.i.i19_crit_edge
  %qevent_binding.022.i.i16 = phi ptr [ %qevent_binding.0.i.i26, %for.inc.i.i28.for.body.i.i19_crit_edge ], [ %qevent_binding.020.i.i13, %if.end.i15.for.body.i.i19_crit_edge ]
  %mlxsw_sp_port2.i.i17 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding.022.i.i16, i32 0, i32 1
  %85 = ptrtoint ptr %mlxsw_sp_port2.i.i17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mlxsw_sp_port2.i.i17, align 4
  %cmp3.i.i18 = icmp eq ptr %86, %mlxsw_sp_port
  br i1 %cmp3.i.i18, label %land.lhs.true.i.i22, label %for.body.i.i19.for.inc.i.i28_crit_edge

for.body.i.i19.for.inc.i.i28_crit_edge:           ; preds = %for.body.i.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i28

land.lhs.true.i.i22:                              ; preds = %for.body.i.i19
  %handle4.i.i20 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding.022.i.i16, i32 0, i32 2
  %87 = ptrtoint ptr %handle4.i.i20 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %handle4.i.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %83)
  %cmp5.i.i21 = icmp eq i32 %88, %83
  br i1 %cmp5.i.i21, label %land.lhs.true6.i.i25, label %land.lhs.true.i.i22.for.inc.i.i28_crit_edge

land.lhs.true.i.i22.for.inc.i.i28_crit_edge:      ; preds = %land.lhs.true.i.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i28

land.lhs.true6.i.i25:                             ; preds = %land.lhs.true.i.i22
  %span_trigger7.i.i23 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding.022.i.i16, i32 0, i32 4
  %89 = ptrtoint ptr %span_trigger7.i.i23 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %span_trigger7.i.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %span_trigger)
  %cmp8.i.i24 = icmp eq i32 %90, %span_trigger
  br i1 %cmp8.i.i24, label %mlxsw_sp_qevent_binding_lookup.exit.i29, label %land.lhs.true6.i.i25.for.inc.i.i28_crit_edge

land.lhs.true6.i.i25.for.inc.i.i28_crit_edge:     ; preds = %land.lhs.true6.i.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i28

for.inc.i.i28:                                    ; preds = %land.lhs.true6.i.i25.for.inc.i.i28_crit_edge, %land.lhs.true.i.i22.for.inc.i.i28_crit_edge, %for.body.i.i19.for.inc.i.i28_crit_edge
  %91 = ptrtoint ptr %qevent_binding.022.i.i16 to i32
  call void @__asan_load4_noabort(i32 %91)
  %qevent_binding.0.i.i26 = load ptr, ptr %qevent_binding.022.i.i16, align 4
  %cmp.not.i.i27 = icmp eq ptr %qevent_binding.0.i.i26, %call2.i
  br i1 %cmp.not.i.i27, label %for.inc.i.i28.return_crit_edge, label %for.inc.i.i28.for.body.i.i19_crit_edge

for.inc.i.i28.for.body.i.i19_crit_edge:           ; preds = %for.inc.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i19

for.inc.i.i28.return_crit_edge:                   ; preds = %for.inc.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

mlxsw_sp_qevent_binding_lookup.exit.i29:          ; preds = %land.lhs.true6.i.i25
  %tobool4.not.i = icmp eq ptr %qevent_binding.022.i.i16, null
  br i1 %tobool4.not.i, label %mlxsw_sp_qevent_binding_lookup.exit.i29.return_crit_edge, label %if.end6.i

mlxsw_sp_qevent_binding_lookup.exit.i29.return_crit_edge: ; preds = %mlxsw_sp_qevent_binding_lookup.exit.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end6.i:                                        ; preds = %mlxsw_sp_qevent_binding_lookup.exit.i29
  %call.i.i.i30 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %qevent_binding.022.i.i16) #13
  br i1 %call.i.i.i30, label %if.end.i.i.i32, label %if.end6.i.list_del.exit.i_crit_edge

if.end6.i.list_del.exit.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i32:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %qevent_binding.022.i.i16, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i31, align 4
  %94 = ptrtoint ptr %qevent_binding.022.i.i16 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %qevent_binding.022.i.i16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i32, %if.end6.i.list_del.exit.i_crit_edge
  %98 = ptrtoint ptr %qevent_binding.022.i.i16 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %qevent_binding.022.i.i16, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qevent_binding.022.i.i16, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %mall_entry_list.i.i33 = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %call2.i, i32 0, i32 1
  %100 = ptrtoint ptr %mall_entry_list.i.i33 to i32
  call void @__asan_load4_noabort(i32 %100)
  %mall_entry.011.i.i = load ptr, ptr %mall_entry_list.i.i33, align 4
  %cmp.not12.i.i = icmp eq ptr %mall_entry.011.i.i, %mall_entry_list.i.i33
  br i1 %cmp.not12.i.i, label %list_del.exit.i.mlxsw_sp_qevent_binding_deconfigure.exit.i_crit_edge, label %for.body.lr.ph.i.i

list_del.exit.i.mlxsw_sp_qevent_binding_deconfigure.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_binding_deconfigure.exit.i

for.body.lr.ph.i.i:                               ; preds = %list_del.exit.i
  %mlxsw_sp.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %call2.i, i32 0, i32 2
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %for.body.lr.ph.i.i
  %mall_entry.013.i.i = phi ptr [ %mall_entry.011.i.i, %for.body.lr.ph.i.i ], [ %mall_entry.0.i.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %101 = ptrtoint ptr %mlxsw_sp.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mlxsw_sp.i.i, align 4
  tail call fastcc void @mlxsw_sp_qevent_entry_deconfigure(ptr noundef %102, ptr noundef %mall_entry.013.i.i, ptr noundef nonnull %qevent_binding.022.i.i16) #13
  %103 = ptrtoint ptr %mall_entry.013.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %mall_entry.0.i.i = load ptr, ptr %mall_entry.013.i.i, align 4
  %cmp.not.i25.i = icmp eq ptr %mall_entry.0.i.i, %mall_entry_list.i.i33
  br i1 %cmp.not.i25.i, label %for.body.i26.i.mlxsw_sp_qevent_binding_deconfigure.exit.i_crit_edge, label %for.body.i26.i.for.body.i26.i_crit_edge

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i26.i

for.body.i26.i.mlxsw_sp_qevent_binding_deconfigure.exit.i_crit_edge: ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_binding_deconfigure.exit.i

mlxsw_sp_qevent_binding_deconfigure.exit.i:       ; preds = %for.body.i26.i.mlxsw_sp_qevent_binding_deconfigure.exit.i_crit_edge, %list_del.exit.i.mlxsw_sp_qevent_binding_deconfigure.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %qevent_binding.022.i.i16) #13
  %call7.i = tail call i32 @flow_block_cb_decref(ptr noundef nonnull %call.i9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %mlxsw_sp_qevent_binding_deconfigure.exit.i.return_crit_edge

mlxsw_sp_qevent_binding_deconfigure.exit.i.return_crit_edge: ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then9.i:                                       ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i
  %list.i.i34 = getelementptr inbounds %struct.flow_block_cb, ptr %call.i9, i32 0, i32 1
  %cb_list.i.i35 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %call.i.i.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i34) #13
  br i1 %call.i.i.i.i36, label %if.end.i.i.i.i37, label %if.then9.i.__list_del_entry.exit.i.i.i_crit_edge

if.then9.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i37:                                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i9, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i.i.i, align 4
  %106 = ptrtoint ptr %list.i.i34 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %list.i.i34, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i37, %if.then9.i.__list_del_entry.exit.i.i.i_crit_edge
  %110 = ptrtoint ptr %cb_list.i.i35 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cb_list.i.i35, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i34, ptr noundef %cb_list.i.i35, ptr noundef %111) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %list.i.i34, ptr %prev1.i.i2.i.i.i, align 4
  %113 = ptrtoint ptr %list.i.i34 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %111, ptr %list.i.i34, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i9, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %cb_list.i.i35, ptr %prev3.i.i.i.i.i, align 4
  %115 = ptrtoint ptr %cb_list.i.i35 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %list.i.i34, ptr %cb_list.i.i35, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i27.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i9) #13
  br i1 %call.i.i27.i, label %if.end.i.i30.i, label %flow_block_cb_remove.exit.i.list_del.exit32.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit32.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit32.i

if.end.i.i30.i:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i28.i = getelementptr inbounds %struct.list_head, ptr %call.i9, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i28.i, align 4
  %118 = ptrtoint ptr %call.i9 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i9, align 4
  %prev1.i.i.i29.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i29.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del.exit32.i

list_del.exit32.i:                                ; preds = %if.end.i.i30.i, %flow_block_cb_remove.exit.i.list_del.exit32.i_crit_edge
  %122 = ptrtoint ptr %call.i9 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i9, align 4
  %prev.i31.i = getelementptr inbounds %struct.list_head, ptr %call.i9, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i31.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit32.i, %mlxsw_sp_qevent_binding_deconfigure.exit.i.return_crit_edge, %mlxsw_sp_qevent_binding_lookup.exit.i29.return_crit_edge, %for.inc.i.i28.return_crit_edge, %if.end.i15.return_crit_edge, %sw.bb1.return_crit_edge, %if.then68.i, %err_find_qdisc.i.return_crit_edge, %if.end.i.i129.i, %flow_block_cb_add.exit.i.return_crit_edge, %list_add.exit.i.return_crit_edge, %mlxsw_sp_qevent_block_destroy.exit.i, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %18, %mlxsw_sp_qevent_block_destroy.exit.i ], [ 0, %list_add.exit.i.return_crit_edge ], [ %err.0.i, %if.then68.i ], [ %err.0.i, %err_find_qdisc.i.return_crit_edge ], [ 0, %flow_block_cb_add.exit.i.return_crit_edge ], [ 0, %if.end.i.i129.i ], [ -12, %if.then.i.return_crit_edge ], [ 0, %sw.bb1.return_crit_edge ], [ 0, %if.end.i15.return_crit_edge ], [ 0, %mlxsw_sp_qevent_binding_lookup.exit.i29.return_crit_edge ], [ 0, %mlxsw_sp_qevent_binding_deconfigure.exit.i.return_crit_edge ], [ 0, %list_del.exit32.i ], [ 0, %for.inc.i.i28.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_setup_tc_block_qevent_mark(ptr noundef %mlxsw_sp_port, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_setup_tc_block_qevent(ptr noundef %mlxsw_sp_port, ptr noundef %f, i32 noundef 4, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_tc_qdisc_init(ptr nocapture noundef writeonly %mlxsw_sp_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 200) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlxsw_sp_tc_qdisc_init.__key) #13
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %1 = ptrtoint ptr %qdisc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %qdisc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_tc_qdisc_fini(ptr nocapture noundef readonly %mlxsw_sp_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #13
  %2 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdisc, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr noundef %mlxsw_sp_qdisc, ptr noundef %ops, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %orig_hdroom.i = alloca %struct.mlxsw_sp_hdroom, align 4
  %hdroom15.i = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 4
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then6_crit_edge, label %land.lhs.true

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %ops1, align 4
  %tobool5.not = icmp eq ptr %.pr, null
  br i1 %tobool5.not, label %if.end.if.then6_crit_edge, label %if.else

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %entry.if.then6_crit_edge
  %qdisc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %7 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdisc.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %orig_hdroom.i) #13
  %check_params.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %ops, i32 0, i32 1
  %9 = ptrtoint ptr %check_params.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %check_params.i, align 4
  %call.i = tail call i32 %10(ptr noundef %mlxsw_sp_port, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.mlxsw_sp_qdisc_create.exit_crit_edge

if.then6.mlxsw_sp_qdisc_create.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_create.exit

if.end.i:                                         ; preds = %if.then6
  %num_classes.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %ops, i32 0, i32 9
  %11 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_classes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then3.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 96) #13
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !134

kcalloc.exit.thread.i:                            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %qdiscs79.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  br label %cleanup39.sink.split.i

if.end7.i.i.i:                                    ; preds = %if.then3.i
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #17
  %qdiscs.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %16 = ptrtoint ptr %qdiscs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i.i, ptr %qdiscs.i, align 4
  %tobool7.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool7.not.i, label %if.end7.i.i.i.mlxsw_sp_qdisc_create.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.mlxsw_sp_qdisc_create.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_create.exit

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %17 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_classes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp81.not.i = icmp eq i32 %18, 0
  br i1 %cmp81.not.i, label %for.cond.preheader.i.if.end12.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end12.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.082.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdiscs.i, align 4
  %parent.i = getelementptr %struct.mlxsw_sp_qdisc, ptr %20, i32 %i.082.i, i32 5
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mlxsw_sp_qdisc, ptr %parent.i, align 8
  %inc.i = add nuw i32 %i.082.i, 1
  %22 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_classes.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end12.i_crit_edge

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end12.i:                                       ; preds = %for.body.i.if.end12.i_crit_edge, %for.cond.preheader.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %hdroom.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %24 = ptrtoint ptr %hdroom.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdroom.i, align 8
  %26 = call ptr @memcpy(ptr %orig_hdroom.i, ptr %25, i32 216)
  %cmp13.i = icmp eq ptr %8, %mlxsw_sp_qdisc
  br i1 %cmp13.i, label %if.then14.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom15.i) #13
  %27 = call ptr @memcpy(ptr %hdroom15.i, ptr %orig_hdroom.i, i32 216)
  %28 = ptrtoint ptr %hdroom15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %hdroom15.i, align 4
  call void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr noundef nonnull %hdroom15.i) #13
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom15.i) #13
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom15.i) #13
  %call16.i = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom15.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom15.i) #13
  br i1 %tobool17.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.err_hdroom_configure.i_crit_edge

if.then14.i.err_hdroom_configure.i_crit_edge:     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_hdroom_configure.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %29 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_classes.i, align 4
  %num_classes22.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %31 = ptrtoint ptr %num_classes22.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %num_classes22.i, align 8
  %32 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ops, ptr %ops1, align 4
  %33 = ptrtoint ptr %mlxsw_sp_qdisc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %handle, ptr %mlxsw_sp_qdisc, align 8
  %34 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qdisc.i, align 4
  %call.i.i = call fastcc i32 @__mlxsw_sp_qdisc_tree_validate(ptr noundef %35, [1 x i32] zeroinitializer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool26.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end20.i.err_replace.i_crit_edge

if.end20.i.err_replace.i_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_replace.i

if.end28.i:                                       ; preds = %if.end20.i
  %replace.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %ops, i32 0, i32 2
  %36 = ptrtoint ptr %replace.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %replace.i, align 4
  %call29.i = call i32 %37(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr noundef %mlxsw_sp_qdisc, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.mlxsw_sp_qdisc_create.exit_crit_edge, label %if.end28.i.err_replace.i_crit_edge

if.end28.i.err_replace.i_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_replace.i

if.end28.i.mlxsw_sp_qdisc_create.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_create.exit

err_replace.i:                                    ; preds = %if.end28.i.err_replace.i_crit_edge, %if.end20.i.err_replace.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.end20.i.err_replace.i_crit_edge ], [ %call29.i, %if.end28.i.err_replace.i_crit_edge ]
  %38 = ptrtoint ptr %mlxsw_sp_qdisc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %mlxsw_sp_qdisc, align 8
  %39 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ops1, align 4
  %40 = ptrtoint ptr %num_classes22.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %num_classes22.i, align 8
  %call36.i = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %orig_hdroom.i) #13
  br label %err_hdroom_configure.i

err_hdroom_configure.i:                           ; preds = %err_replace.i, %if.then14.i.err_hdroom_configure.i_crit_edge
  %err.1.i = phi i32 [ %call16.i, %if.then14.i.err_hdroom_configure.i_crit_edge ], [ %err.0.i, %err_replace.i ]
  %qdiscs37.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %41 = ptrtoint ptr %qdiscs37.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qdiscs37.i, align 4
  call void @kfree(ptr noundef %42) #13
  br label %cleanup39.sink.split.i

cleanup39.sink.split.i:                           ; preds = %err_hdroom_configure.i, %kcalloc.exit.thread.i
  %qdiscs79.sink.i = phi ptr [ %qdiscs79.i, %kcalloc.exit.thread.i ], [ %qdiscs37.i, %err_hdroom_configure.i ]
  %retval.0.ph.i = phi i32 [ -12, %kcalloc.exit.thread.i ], [ %err.1.i, %err_hdroom_configure.i ]
  %43 = ptrtoint ptr %qdiscs79.sink.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %qdiscs79.sink.i, align 4
  br label %mlxsw_sp_qdisc_create.exit

mlxsw_sp_qdisc_create.exit:                       ; preds = %cleanup39.sink.split.i, %if.end28.i.mlxsw_sp_qdisc_create.exit_crit_edge, %if.end7.i.i.i.mlxsw_sp_qdisc_create.exit_crit_edge, %if.then6.mlxsw_sp_qdisc_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then6.mlxsw_sp_qdisc_create.exit_crit_edge ], [ -12, %if.end7.i.i.i.mlxsw_sp_qdisc_create.exit_crit_edge ], [ 0, %if.end28.i.mlxsw_sp_qdisc_create.exit_crit_edge ], [ %retval.0.ph.i, %cleanup39.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %orig_hdroom.i) #13
  br label %return

if.else:                                          ; preds = %if.end
  %check_params.i19 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %.pr, i32 0, i32 1
  %44 = ptrtoint ptr %check_params.i19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %check_params.i19, align 4
  %call.i20 = tail call i32 %45(ptr noundef %mlxsw_sp_port, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i23, label %if.else.unoffload.i_crit_edge

if.else.unoffload.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %unoffload.i

if.end.i23:                                       ; preds = %if.else
  %replace.i22 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %.pr, i32 0, i32 2
  %46 = ptrtoint ptr %replace.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %replace.i22, align 4
  %call2.i = tail call i32 %47(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr noundef %mlxsw_sp_qdisc, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i23.unoffload.i_crit_edge

if.end.i23.unoffload.i_crit_edge:                 ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %unoffload.i

if.end5.i:                                        ; preds = %if.end.i23
  %48 = ptrtoint ptr %mlxsw_sp_qdisc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mlxsw_sp_qdisc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %handle)
  %cmp.not.i = icmp eq i32 %49, %handle
  br i1 %cmp.not.i, label %if.end5.i.if.end12.i24_crit_edge, label %if.then7.i

if.end5.i.if.end12.i24_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i24

if.then7.i:                                       ; preds = %if.end5.i
  %clean_stats.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %.pr, i32 0, i32 6
  %50 = ptrtoint ptr %clean_stats.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clean_stats.i, align 4
  %tobool8.not.i = icmp eq ptr %51, null
  br i1 %tobool8.not.i, label %if.then7.i.if.end12.i24_crit_edge, label %if.then9.i

if.then7.i.if.end12.i24_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i24

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %51(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #13
  br label %if.end12.i24

if.end12.i24:                                     ; preds = %if.then9.i, %if.then7.i.if.end12.i24_crit_edge, %if.end5.i.if.end12.i24_crit_edge
  %52 = ptrtoint ptr %mlxsw_sp_qdisc to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %handle, ptr %mlxsw_sp_qdisc, align 8
  br label %return

unoffload.i:                                      ; preds = %if.end.i23.unoffload.i_crit_edge, %if.else.unoffload.i_crit_edge
  %err.0.i25 = phi i32 [ %call.i20, %if.else.unoffload.i_crit_edge ], [ %call2.i, %if.end.i23.unoffload.i_crit_edge ]
  %unoffload14.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %.pr, i32 0, i32 7
  %53 = ptrtoint ptr %unoffload14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unoffload14.i, align 4
  %tobool15.not.i = icmp eq ptr %54, null
  br i1 %tobool15.not.i, label %unoffload.i.if.end18.i_crit_edge, label %if.then16.i

unoffload.i.if.end18.i_crit_edge:                 ; preds = %unoffload.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then16.i:                                      ; preds = %unoffload.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %54(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr noundef %params) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %unoffload.i.if.end18.i_crit_edge
  %call19.i = tail call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #13
  br label %return

return:                                           ; preds = %if.end18.i, %if.end12.i24, %mlxsw_sp_qdisc_create.exit
  %retval.0 = phi i32 [ %retval.0.i, %mlxsw_sp_qdisc_create.exit ], [ %err.0.i25, %if.end18.i ], [ 0, %if.end12.i24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) unnamed_addr #0 align 64 {
entry:
  %hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mlxsw_sp_qdisc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %qdisc = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc, align 4
  %cmp = icmp eq ptr %1, %mlxsw_sp_qdisc
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom) #13
  %hdroom3 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 20
  %2 = ptrtoint ptr %hdroom3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdroom3, align 8
  %4 = call ptr @memcpy(ptr %hdroom, ptr %3, i32 216)
  %5 = ptrtoint ptr %hdroom to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hdroom, align 4
  call void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr noundef nonnull %hdroom) #13
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom) #13
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom) #13
  %call = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %hdroom) #13
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %err_hdroom.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ]
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %for.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  %num_classes = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %8 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_classes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp856.not = icmp eq i32 %9, 0
  br i1 %cmp856.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdiscs, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_qdisc, ptr %11, i32 %i.057
  %call9 = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef %arrayidx)
  %inc = add nuw i32 %i.057, 1
  %12 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_classes, align 8
  %cmp8 = icmp ult i32 %inc, %13
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tmp.0.in7.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 5
  %14 = ptrtoint ptr %tmp.0.in7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.08.i = load ptr, ptr %tmp.0.in7.i, align 8
  %tobool.not9.i = icmp eq ptr %tmp.08.i, null
  br i1 %tobool.not9.i, label %for.end.mlxsw_sp_qdisc_reduce_parent_backlog.exit_crit_edge, label %for.body.lr.ph.i

for.end.mlxsw_sp_qdisc_reduce_parent_backlog.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_reduce_parent_backlog.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %backlog.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.010.i = phi ptr [ %tmp.08.i, %for.body.lr.ph.i ], [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %backlog.i, align 8
  %backlog2.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %tmp.010.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %backlog2.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %backlog2.i, align 8
  %sub.i = sub i64 %18, %16
  store i64 %sub.i, ptr %backlog2.i, align 8
  %tmp.0.in.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %tmp.010.i, i32 0, i32 5
  %19 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 8
  %tobool.not.i = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not.i, label %for.body.i.mlxsw_sp_qdisc_reduce_parent_backlog.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.mlxsw_sp_qdisc_reduce_parent_backlog.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_reduce_parent_backlog.exit

mlxsw_sp_qdisc_reduce_parent_backlog.exit:        ; preds = %for.body.i.mlxsw_sp_qdisc_reduce_parent_backlog.exit_crit_edge, %for.end.mlxsw_sp_qdisc_reduce_parent_backlog.exit_crit_edge
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %destroy = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %destroy, align 4
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %mlxsw_sp_qdisc_reduce_parent_backlog.exit.if.end16_crit_edge, label %if.then12

mlxsw_sp_qdisc_reduce_parent_backlog.exit.if.end16_crit_edge: ; preds = %mlxsw_sp_qdisc_reduce_parent_backlog.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12:                                        ; preds = %mlxsw_sp_qdisc_reduce_parent_backlog.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = call i32 %23(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %mlxsw_sp_qdisc) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %mlxsw_sp_qdisc_reduce_parent_backlog.exit.if.end16_crit_edge
  %err.0 = phi i32 [ %call15, %if.then12 ], [ 0, %mlxsw_sp_qdisc_reduce_parent_backlog.exit.if.end16_crit_edge ]
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %clean_stats = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %clean_stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clean_stats, align 4
  %tobool18.not = icmp eq ptr %27, null
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  call void %27(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %mlxsw_sp_qdisc) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %28 = ptrtoint ptr %mlxsw_sp_qdisc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mlxsw_sp_qdisc, align 8
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ops, align 4
  %30 = ptrtoint ptr %num_classes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_classes, align 8
  %qdiscs25 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %31 = ptrtoint ptr %qdiscs25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qdiscs25, align 4
  call void @kfree(ptr noundef %32) #13
  %33 = ptrtoint ptr %qdiscs25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %qdiscs25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_hdroom.0)
  %tobool27.not = icmp eq i32 %err_hdroom.0, 0
  %spec.select = select i1 %tobool27.not, i32 %err.0, i32 %err_hdroom.0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_qdisc_graft(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, i8 noundef zeroext %band, i32 noundef %child_handle) unnamed_addr #0 align 64 {
entry:
  %handle.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %band to i32
  %num_classes = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %0 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_classes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %2 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdiscs, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_qdisc, ptr %3, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %child_handle)
  %cmp2 = icmp eq i32 %5, %child_handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %child_handle)
  %tobool.not = icmp eq i32 %child_handle, 0
  %or.cond = or i1 %tobool.not, %cmp2
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %child_handle)
  %tobool.not.old = icmp eq i32 %child_handle, 0
  br i1 %tobool.not.old, label %if.end.cleanup_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.addr.i)
  %6 = ptrtoint ptr %handle.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %child_handle, ptr %handle.addr.i, align 4
  %qdisc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %7 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdisc.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %mlxsw_sp_qdisc_find_by_handle.exit.thread, label %mlxsw_sp_qdisc_find_by_handle.exit

mlxsw_sp_qdisc_find_by_handle.exit.thread:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.addr.i)
  br label %if.end9

mlxsw_sp_qdisc_find_by_handle.exit:               ; preds = %if.end5
  %call.i = call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef nonnull %8, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_find_by_handle, ptr noundef nonnull %handle.addr.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.addr.i)
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %mlxsw_sp_qdisc_find_by_handle.exit.if.end9_crit_edge, label %if.then7

mlxsw_sp_qdisc_find_by_handle.exit.if.end9_crit_edge: ; preds = %mlxsw_sp_qdisc_find_by_handle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %mlxsw_sp_qdisc_find_by_handle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %call.i)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %mlxsw_sp_qdisc_find_by_handle.exit.if.end9_crit_edge, %mlxsw_sp_qdisc_find_by_handle.exit.thread
  %9 = ptrtoint ptr %mlxsw_sp_qdisc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mlxsw_sp_qdisc, align 8
  %and = and i32 %10, -65536
  %add = add nuw nsw i32 %conv, 1
  %or = or i32 %and, %add
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %find_class = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %find_class to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %find_class, align 4
  %call13 = call ptr %14(ptr noundef %mlxsw_sp_qdisc, i32 noundef %or) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.then38.critedge, !prof !134

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1648, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then38.critedge:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %call13)
  br label %cleanup

cleanup:                                          ; preds = %if.then38.critedge, %do.end, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %do.end ], [ -95, %if.then38.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef %qdisc, ptr noundef %pre, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pre, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr %pre(ptr noundef %qdisc, ptr noundef %data) #13, !callees !135
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %qdisc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %for.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end3
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %qdisc, i32 0, i32 6
  %num_classes = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %qdisc, i32 0, i32 7
  %2 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_classes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not = icmp eq i32 %3, 0
  br i1 %cmp29.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %6 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdiscs, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_qdisc, ptr %7, i32 %i.030
  %call9 = tail call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef %arrayidx, ptr noundef %pre, ptr noundef %data)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.for.inc_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.then8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.030, 1
  %8 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_classes, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_qdisc_walk_cb_find(ptr noundef %qdisc, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %qdisc, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qdisc, align 8
  %6 = xor i32 %5, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp = icmp ult i32 %6, 65536
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %find_class = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %find_class to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %find_class, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr %8(ptr noundef %qdisc, i32 noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then4 ], [ null, %if.then.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_hdroom_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_qdisc_tree_validate(ptr nocapture noundef readonly %mlxsw_sp_qdisc, [1 x i32] %validate.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %validate.coerce.fca.0.extract = extractvalue [1 x i32] %validate.coerce, 0
  %validate.sroa.0.0.extract.shift = lshr i32 %validate.coerce.fca.0.extract, 24
  %validate.sroa.6.0.extract.shift = lshr i32 %validate.coerce.fca.0.extract, 16
  %validate.sroa.10.0.extract.shift = lshr i32 %validate.coerce.fca.0.extract, 8
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %do.end [
    i32 5, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 4, label %sw.bb6
    i32 2, label %if.end.sw.bb17_crit_edge
    i32 3, label %if.end.sw.bb17_crit_edge47
  ]

if.end.sw.bb17_crit_edge47:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %5 = and i32 %validate.coerce.fca.0.extract, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %6 = and i32 %validate.coerce.fca.0.extract, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then9

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb6
  %7 = and i32 %validate.coerce.fca.0.extract, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then9.sw.epilog_crit_edge, label %if.then9.return_crit_edge

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge47
  %8 = and i32 %validate.coerce.fca.0.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.return_crit_edge

sw.bb17.return_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 9, ptr noundef null) #13
  br label %return

sw.epilog:                                        ; preds = %sw.bb17.sw.epilog_crit_edge, %if.then9.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %validate.sroa.10.0 = phi i32 [ %validate.sroa.10.0.extract.shift, %if.end.sw.epilog_crit_edge ], [ %validate.sroa.10.0.extract.shift, %sw.bb.sw.epilog_crit_edge ], [ 1, %if.then9.sw.epilog_crit_edge ], [ %validate.sroa.10.0.extract.shift, %sw.bb6.sw.epilog_crit_edge ], [ %validate.sroa.10.0.extract.shift, %sw.bb17.sw.epilog_crit_edge ]
  %validate.sroa.6.0 = phi i32 [ %validate.sroa.6.0.extract.shift, %if.end.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ %validate.sroa.6.0.extract.shift, %if.then9.sw.epilog_crit_edge ], [ 1, %sw.bb6.sw.epilog_crit_edge ], [ 1, %sw.bb17.sw.epilog_crit_edge ]
  %validate.sroa.0.0 = phi i32 [ %validate.sroa.0.0.extract.shift, %if.end.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %if.then9.sw.epilog_crit_edge ], [ %validate.sroa.0.0.extract.shift, %sw.bb6.sw.epilog_crit_edge ], [ 1, %sw.bb17.sw.epilog_crit_edge ]
  %validate.sroa.12.0 = phi i32 [ %validate.coerce.fca.0.extract, %if.end.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ %validate.coerce.fca.0.extract, %if.then9.sw.epilog_crit_edge ], [ %validate.coerce.fca.0.extract, %sw.bb6.sw.epilog_crit_edge ], [ %validate.coerce.fca.0.extract, %sw.bb17.sw.epilog_crit_edge ]
  %validate.sroa.12.0.insert.ext = and i32 %validate.sroa.12.0, 255
  %validate.sroa.10.0.insert.ext = shl nuw i32 %validate.sroa.10.0, 8
  %validate.sroa.10.0.insert.shift = and i32 %validate.sroa.10.0.insert.ext, 65280
  %validate.sroa.6.0.insert.ext = shl nuw i32 %validate.sroa.6.0, 16
  %validate.sroa.6.0.insert.shift = and i32 %validate.sroa.6.0.insert.ext, 16711680
  %validate.sroa.0.0.insert.shift = shl nuw i32 %validate.sroa.0.0, 24
  %validate.sroa.6.0.insert.insert = or i32 %validate.sroa.10.0.insert.shift, %validate.sroa.6.0.insert.shift
  %validate.sroa.10.0.insert.insert = or i32 %validate.sroa.6.0.insert.insert, %validate.sroa.0.0.insert.shift
  %validate.sroa.0.0.insert.insert = or i32 %validate.sroa.10.0.insert.insert, %validate.sroa.12.0.insert.ext
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %validate.sroa.0.0.insert.insert, 0
  %qdiscs.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %num_classes.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %9 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_classes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i44.not = icmp eq i32 %10, 0
  br i1 %cmp.i44.not, label %sw.epilog.return_crit_edge, label %sw.epilog.for.body.i_crit_edge

sw.epilog.for.body.i_crit_edge:                   ; preds = %sw.epilog
  br label %for.body.i

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0.i45, 1
  %11 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_classes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.return_crit_edge

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.epilog.for.body.i_crit_edge
  %i.0.i45 = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %sw.epilog.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qdiscs.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_qdisc, ptr %14, i32 %i.0.i45
  %call.i = tail call fastcc i32 @__mlxsw_sp_qdisc_tree_validate(ptr noundef %arrayidx.i, [1 x i32] %.fca.0.insert) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %for.body.i.return_crit_edge, %for.cond.i.return_crit_edge, %sw.epilog.return_crit_edge, %do.end, %sw.bb17.return_crit_edge, %if.then9.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ -22, %if.then9.return_crit_edge ], [ -22, %sw.bb17.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ], [ %call.i, %for.body.i.return_crit_edge ], [ 0, %for.cond.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_red_check_params(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  %max = getelementptr inbounds %struct.tc_red_qopt_offload_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %5) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %5 to i64
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %11, i32 noundef 17) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv)
  %cmp5 = icmp ult i64 %call, %conv
  br i1 %cmp5, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bus_info11 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bus_info11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_info11, align 4
  %dev12 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 4
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %17) #18
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16 = icmp eq i32 %19, 0
  br i1 %cmp16, label %if.end14.do.end24_crit_edge, label %lor.lhs.false

if.end14.do.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

lor.lhs.false:                                    ; preds = %if.end14
  %20 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19 = icmp eq i32 %21, 0
  br i1 %cmp19, label %lor.lhs.false.do.end24_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false.do.end24_crit_edge, %if.end14.do.end24_crit_edge
  %bus_info25 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %bus_info25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_info25, align 4
  %dev26 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %lor.lhs.false.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end24 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_red_replace(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %cwtpm_cmd.i = alloca [68 x i8], align 1
  %cwtp_cmd.i = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %2 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdiscs, align 4
  %qdisc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %4 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc.i, align 4
  %future_handle.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %future_handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %future_handle.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %handle)
  %cmp.i = icmp eq i32 %7, %handle
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr %struct.mlxsw_sp_qdisc_state, ptr %5, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %mlxsw_sp_qdisc_future_fifo_replace.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

mlxsw_sp_qdisc_future_fifo_replace.exit:          ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef 0, ptr noundef %3, ptr noundef nonnull @mlxsw_sp_qdisc_ops_fifo, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mlxsw_sp_qdisc_future_fifo_replace.exit.if.end_crit_edge, label %mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge

mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_qdisc_future_fifo_replace.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlxsw_sp_qdisc_future_fifo_replace.exit.if.end_crit_edge: ; preds = %mlxsw_sp_qdisc_future_fifo_replace.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %mlxsw_sp_qdisc_future_fifo_replace.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qdisc.i, align 4
  %future_handle.i37 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %future_handle.i37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %future_handle.i37, align 8
  %future_fifos.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %future_fifos.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %future_fifos.i, align 4
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %if.end
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %if.end ], [ %15, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %14 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i38 = icmp eq ptr %15, null
  br i1 %tobool.not.i38, label %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 %19(ptr noundef nonnull %15, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call7.i, %if.end4.i ], [ 0, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  %probability = getelementptr inbounds %struct.tc_red_qopt_offload_params, ptr %params, i32 0, i32 2
  %20 = ptrtoint ptr %probability to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %probability, align 4
  %conv = zext i32 %21 to i64
  %mul = mul nuw nsw i64 %conv, 100
  %sub = add nuw nsw i64 %mul, 65535
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %params, align 4
  %call7 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %23) #13
  %max8 = getelementptr inbounds %struct.tc_red_qopt_offload_params, ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %max8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max8, align 4
  %call9 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %25) #13
  %is_nodrop = getelementptr inbounds %struct.tc_red_qopt_offload_params, ptr %params, i32 0, i32 6
  %26 = ptrtoint ptr %is_nodrop to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_nodrop, align 2, !range !136
  %is_ecn = getelementptr inbounds %struct.tc_red_qopt_offload_params, ptr %params, i32 0, i32 4
  %28 = ptrtoint ptr %is_ecn to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_ecn, align 4, !range !136
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %cwtpm_cmd.i) #13
  %30 = call ptr @memset(ptr %cwtpm_cmd.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cwtp_cmd.i) #13
  %31 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %33 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %local_port.i, align 4
  %35 = call ptr @memset(ptr %cwtp_cmd.i, i32 0, i32 64)
  %conv1.i.i = zext i16 %34 to i32
  %and.i.i.i = shl nuw i32 %conv1.i.i, 16
  %spec.select.i.i.i.i = and i32 %and.i.i.i, 16711680
  %36 = ptrtoint ptr %cwtp_cmd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cwtp_cmd.i, align 4
  %and7.i.i.i.i = and i32 %37, -16723969
  %or.i.i.i.i = or i32 %spec.select.i.i.i.i, %and7.i.i.i.i
  %38 = shl nuw nsw i32 %conv1.i.i, 4
  %and6.i28.i.i.i = and i32 %38, 12288
  %or.i32.i.i.i = or i32 %and6.i28.i.i.i, %or.i.i.i.i
  store i32 %or.i32.i.i.i, ptr %cwtp_cmd.i, align 4
  %conv2.i.i = and i32 %retval.0.i39, 255
  %arrayidx.i.i37.i.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 8
  %39 = ptrtoint ptr %arrayidx.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i37.i.i, align 4
  %and7.i.i39.i.i = and i32 %40, -256
  %or.i.i40.i.i = or i32 %conv2.i.i, %and7.i.i39.i.i
  store i32 %or.i.i40.i.i, ptr %arrayidx.i.i37.i.i, align 4
  %arrayidx.i.i66.peel.i.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 10
  %41 = ptrtoint ptr %arrayidx.i.i66.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i66.peel.i.i, align 4
  %and7.i.i68.peel.i.i = and i32 %42, -1048576
  %or.i.i69.peel.i.i = or i32 %and7.i.i68.peel.i.i, 64
  store i32 %or.i.i69.peel.i.i, ptr %arrayidx.i.i66.peel.i.i, align 4
  %arrayidx.i.i105.peel.i.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 11
  %43 = ptrtoint ptr %arrayidx.i.i105.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i105.peel.i.i, align 4
  %and7.i.i107.peel.i.i = and i32 %44, -1048576
  %or.i.i108.peel.i.i = or i32 %and7.i.i107.peel.i.i, 64
  store i32 %or.i.i108.peel.i.i, ptr %arrayidx.i.i105.peel.i.i, align 4
  %arrayidx.i.i66.i.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 12
  %45 = ptrtoint ptr %arrayidx.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i66.i.i, align 4
  %and7.i.i68.i.i = and i32 %46, -1048576
  %or.i.i69.i.i = or i32 %and7.i.i68.i.i, 64
  store i32 %or.i.i69.i.i, ptr %arrayidx.i.i66.i.i, align 4
  %arrayidx.i.i105.i.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 13
  %47 = ptrtoint ptr %arrayidx.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i105.i.i, align 4
  %and7.i.i107.i.i = and i32 %48, -1048576
  %or.i.i108.i.i = or i32 %and7.i.i107.i.i, 64
  store i32 %or.i.i108.i.i, ptr %arrayidx.i.i105.i.i, align 4
  %arrayidx.i.i66.i.1.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 14
  %49 = ptrtoint ptr %arrayidx.i.i66.i.1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i66.i.1.i, align 4
  %and7.i.i68.i.1.i = and i32 %50, -1048576
  %or.i.i69.i.1.i = or i32 %and7.i.i68.i.1.i, 64
  store i32 %or.i.i69.i.1.i, ptr %arrayidx.i.i66.i.1.i, align 4
  %arrayidx.i.i105.i.1.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 15
  %51 = ptrtoint ptr %arrayidx.i.i105.i.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i105.i.1.i, align 4
  %and7.i.i107.i.1.i = and i32 %52, -1048576
  %or.i.i108.i.1.i = or i32 %and7.i.i107.i.1.i, 64
  store i32 %or.i.i108.i.1.i, ptr %arrayidx.i.i105.i.1.i, align 4
  %add.i = add i32 %call7, 63
  %add7.i = add i32 %call9, 63
  %and6.i.i.i56.i = and i32 %add.i, 1048512
  %53 = load i32, ptr %arrayidx.i.i66.peel.i.i, align 4
  %and7.i.i.i59.i = and i32 %53, -1048576
  %or.i.i.i60.i = or i32 %and7.i.i.i59.i, %and6.i.i.i56.i
  store i32 %or.i.i.i60.i, ptr %arrayidx.i.i66.peel.i.i, align 4
  %and6.i.i26.i.i = and i32 %add7.i, 1048512
  %54 = load i32, ptr %arrayidx.i.i105.peel.i.i, align 4
  %and7.i.i29.i.i = and i32 %54, -1048576
  %or.i.i30.i.i = or i32 %and7.i.i29.i.i, %and6.i.i26.i.i
  store i32 %or.i.i30.i.i, ptr %arrayidx.i.i105.peel.i.i, align 4
  %sh.diff = lshr i64 %sub, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %55 = add i32 %tr.sh.diff, 16776960
  %and6.i.i54.i.i = and i32 %55, 2130706432
  %arrayidx.i.i55.i.i = getelementptr inbounds i32, ptr %cwtp_cmd.i, i32 11
  %and7.i.i57.i.i = and i32 %or.i.i30.i.i, -2130706496
  %or.i.i58.i.i = or i32 %and6.i.i54.i.i, %and7.i.i57.i.i
  %56 = ptrtoint ptr %arrayidx.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i58.i.i, ptr %arrayidx.i.i55.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %32, i32 0, i32 1
  %57 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %core.i, align 4
  %call.i40 = call i32 @mlxsw_reg_write(ptr noundef %58, ptr noundef nonnull @mlxsw_reg_cwtp, ptr noundef nonnull %cwtp_cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i42, label %mlxsw_sp_qdisc_get_tclass_num.exit.mlxsw_sp_tclass_congestion_enable.exit_crit_edge

mlxsw_sp_qdisc_get_tclass_num.exit.mlxsw_sp_tclass_congestion_enable.exit_crit_edge: ; preds = %mlxsw_sp_qdisc_get_tclass_num.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_tclass_congestion_enable.exit

if.end.i42:                                       ; preds = %mlxsw_sp_qdisc_get_tclass_num.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = trunc i32 %retval.0.i39 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12 = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not = icmp eq i8 %27, 0
  %59 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %local_port.i, align 4
  call fastcc void @mlxsw_reg_cwtpm_pack(ptr noundef nonnull %cwtpm_cmd.i, i16 noundef zeroext %60, i8 noundef zeroext %conv.i, i8 noundef zeroext 1, i1 noundef zeroext %tobool11.not, i1 noundef zeroext %tobool12) #13
  %61 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %core.i, align 4
  %call18.i = call i32 @mlxsw_reg_write(ptr noundef %62, ptr noundef nonnull @mlxsw_reg_cwtpm, ptr noundef nonnull %cwtpm_cmd.i) #13
  br label %mlxsw_sp_tclass_congestion_enable.exit

mlxsw_sp_tclass_congestion_enable.exit:           ; preds = %if.end.i42, %mlxsw_sp_qdisc_get_tclass_num.exit.mlxsw_sp_tclass_congestion_enable.exit_crit_edge
  %retval.0.i43 = phi i32 [ %call18.i, %if.end.i42 ], [ %call.i40, %mlxsw_sp_qdisc_get_tclass_num.exit.mlxsw_sp_tclass_congestion_enable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cwtp_cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cwtpm_cmd.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_tclass_congestion_enable.exit, %mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i43, %mlxsw_sp_tclass_congestion_enable.exit ], [ %call.i, %mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_red_destroy(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #0 align 64 {
entry:
  %cwtpm_cmd.i = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %1, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  %phi.cast = trunc i32 %call7.i to i8
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i = phi i8 [ %phi.cast, %if.end4.i ], [ 0, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %6 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %cwtpm_cmd.i) #13
  %8 = call ptr @memset(ptr %cwtpm_cmd.i, i32 255, i32 68)
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %9 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %local_port.i, align 4
  call fastcc void @mlxsw_reg_cwtpm_pack(ptr noundef nonnull %cwtpm_cmd.i, i16 noundef zeroext %10, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %12, ptr noundef nonnull @mlxsw_reg_cwtpm, ptr noundef nonnull %cwtpm_cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %cwtpm_cmd.i) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_get_red_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %stats_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %1, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end4.i ], [ 0, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  tail call fastcc void @mlxsw_sp_qdisc_get_tc_stats(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr noundef %stats_ptr)
  %arrayidx = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 %retval.0.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 1, i32 %retval.0.i
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  %add = add i64 %9, %7
  %overlimits4 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %overlimits4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %overlimits4, align 8
  %sub = sub i64 %add, %11
  %qstats = getelementptr inbounds %struct.tc_qopt_offload_stats, ptr %stats_ptr, i32 0, i32 1
  %12 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qstats, align 4
  %overlimits5 = getelementptr inbounds %struct.gnet_stats_queue, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %overlimits5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %overlimits5, align 4
  %16 = trunc i64 %sub to i32
  %conv7 = add i32 %15, %16
  store i32 %conv7, ptr %overlimits5, align 4
  %17 = load i64, ptr %overlimits4, align 8
  %add9 = add i64 %17, %sub
  store i64 %add9, ptr %overlimits4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_get_red_xstats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef %xstats_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %1, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end4.i ], [ 0, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  %xstats_base1 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 1
  %arrayidx = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 %retval.0.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %xstats_base1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xstats_base1, align 4
  %10 = trunc i64 %7 to i32
  %conv3 = sub i32 %10, %9
  %arrayidx4 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 1, i32 %retval.0.i
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx4, align 8
  %prob_mark = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prob_mark, align 4
  %15 = trunc i64 %12 to i32
  %conv7 = sub i32 %15, %14
  %arrayidx.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i32 %retval.0.i, 8
  %arrayidx2.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %add.i
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx2.i, align 8
  %add3.i = add i64 %19, %17
  %pdrop = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %pdrop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdrop, align 4
  %22 = trunc i64 %add3.i to i32
  %conv11 = sub i32 %22, %21
  %pdrop12 = getelementptr inbounds %struct.red_stats, ptr %xstats_ptr, i32 0, i32 4
  %23 = ptrtoint ptr %pdrop12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdrop12, align 4
  %add = add i32 %conv11, %24
  store i32 %add, ptr %pdrop12, align 4
  %25 = ptrtoint ptr %xstats_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xstats_ptr, align 4
  %add14 = add i32 %26, %conv3
  store i32 %add14, ptr %xstats_ptr, align 4
  %prob_mark15 = getelementptr inbounds %struct.red_stats, ptr %xstats_ptr, i32 0, i32 1
  %27 = ptrtoint ptr %prob_mark15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prob_mark15, align 4
  %add16 = add i32 %28, %conv7
  store i32 %add16, ptr %prob_mark15, align 4
  %29 = load i32, ptr %pdrop, align 4
  %add18 = add i32 %29, %conv11
  store i32 %add18, ptr %pdrop, align 4
  %30 = load i32, ptr %xstats_base1, align 4
  %add20 = add i32 %30, %conv3
  store i32 %add20, ptr %xstats_base1, align 4
  %31 = load i32, ptr %prob_mark, align 4
  %add22 = add i32 %31, %conv7
  store i32 %add22, ptr %prob_mark, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_setup_tc_qdisc_red_clean_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %1, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %0 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %tailrecurse.i.mlxsw_sp_qdisc_get_prio_bitmap.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_prio_bitmap.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %get_prio_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %get_prio_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_prio_bitmap.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call zeroext i8 %5(ptr noundef nonnull %1, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit

mlxsw_sp_qdisc_get_prio_bitmap.exit:              ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_prio_bitmap.exit_crit_edge
  %retval.0.i = phi i8 [ %call7.i, %if.end4.i ], [ -1, %tailrecurse.i.mlxsw_sp_qdisc_get_prio_bitmap.exit_crit_edge ]
  br label %tailrecurse.i38

tailrecurse.i38:                                  ; preds = %if.end.i41.tailrecurse.i38_crit_edge, %mlxsw_sp_qdisc_get_prio_bitmap.exit
  %mlxsw_sp_qdisc.tr.i35 = phi ptr [ %mlxsw_sp_qdisc, %mlxsw_sp_qdisc_get_prio_bitmap.exit ], [ %7, %if.end.i41.tailrecurse.i38_crit_edge ]
  %parent1.i36 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i35, i32 0, i32 5
  %6 = ptrtoint ptr %parent1.i36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent1.i36, align 8
  %tobool.not.i37 = icmp eq ptr %7, null
  br i1 %tobool.not.i37, label %tailrecurse.i38.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i41

tailrecurse.i38.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i41:                                       ; preds = %tailrecurse.i38
  %ops.i39 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i39, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i40 = icmp eq ptr %11, null
  br i1 %tobool2.not.i40, label %if.end.i41.tailrecurse.i38_crit_edge, label %if.end4.i43

if.end.i41.tailrecurse.i38_crit_edge:             ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i38

if.end4.i43:                                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i42 = tail call i32 %11(ptr noundef nonnull %7, ptr noundef %mlxsw_sp_qdisc.tr.i35) #13
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i43, %tailrecurse.i38.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i44 = phi i32 [ %call7.i42, %if.end4.i43 ], [ 0, %tailrecurse.i38.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  %xstats2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1
  %stats_base3 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2
  %xstats_base = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 1
  %tx_packets = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 1
  tail call fastcc void @mlxsw_sp_qdisc_bstats_per_priority_get(ptr noundef %xstats2, i8 noundef zeroext %retval.0.i, ptr noundef %tx_packets, ptr noundef %stats_base3)
  %arrayidx = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 1, i32 %retval.0.i44
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %13 to i32
  %prob_mark = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prob_mark to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %prob_mark, align 4
  %arrayidx4 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 %retval.0.i44
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx4, align 8
  %conv5 = trunc i64 %16 to i32
  %17 = ptrtoint ptr %xstats_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv5, ptr %xstats_base, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %retval.0.i44
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i32 %retval.0.i44, 8
  %arrayidx2.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %add.i
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx2.i, align 8
  %add3.i = add i64 %21, %19
  %conv7 = trunc i64 %add3.i to i32
  %pdrop = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %pdrop to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7, ptr %pdrop, align 4
  %add = add i32 %conv5, %conv
  %conv10 = zext i32 %add to i64
  %overlimits = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %overlimits to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv10, ptr %overlimits, align 8
  %add13 = add i32 %conv7, %conv5
  %conv14 = zext i32 %add13 to i64
  %drops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %drops to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv14, ptr %drops, align 8
  %backlog = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %backlog to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %backlog, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_qdisc_red_unoffload(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qstats = getelementptr inbounds %struct.tc_red_qopt_offload_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qstats, align 4
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp.i, align 8
  %backlog1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %backlog1.i, align 8
  %conv.i = trunc i64 %5 to i32
  %call.i = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %conv.i) #13
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog3.i, align 4
  %sub.i = sub i32 %7, %call.i
  store i32 %sub.i, ptr %backlog3.i, align 4
  %8 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %backlog1.i, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlxsw_sp_qdisc_leaf_find_class(ptr nocapture noundef readonly %mlxsw_sp_qdisc, i32 noundef %parent) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %0 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdiscs, align 4
  ret ptr %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_bytes_cells(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_fifo_check_params(ptr nocapture noundef readnone %mlxsw_sp_port, ptr nocapture noundef readnone %params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_fifo_replace(ptr nocapture noundef readnone %mlxsw_sp_port, i32 noundef %handle, ptr nocapture noundef readnone %mlxsw_sp_qdisc, ptr nocapture noundef readnone %params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_get_fifo_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %stats_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_qdisc_get_tc_stats(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr noundef %stats_ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_setup_tc_qdisc_leaf_clean_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #0 align 64 {
entry:
  %tx_bytes.i = alloca i64, align 8
  %tx_packets.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_bytes.i) #13
  %0 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tx_bytes.i, align 8, !annotation !137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_packets.i) #13
  %1 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tx_packets.i, align 8, !annotation !137
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %if.end.i.i.tailrecurse.i.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %3, %if.end.i.i.tailrecurse.i.i_crit_edge ]
  %parent1.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge, label %if.end.i.i

tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit.i

if.end.i.i:                                       ; preds = %tailrecurse.i.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_prio_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %get_prio_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_prio_bitmap.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.tailrecurse.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.tailrecurse.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i.i = tail call zeroext i8 %7(ptr noundef nonnull %3, ptr noundef %mlxsw_sp_qdisc.tr.i.i) #13
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit.i

mlxsw_sp_qdisc_get_prio_bitmap.exit.i:            ; preds = %if.end4.i.i, %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %call7.i.i, %if.end4.i.i ], [ -1, %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge ]
  br label %tailrecurse.i20.i

tailrecurse.i20.i:                                ; preds = %if.end.i23.i.tailrecurse.i20.i_crit_edge, %mlxsw_sp_qdisc_get_prio_bitmap.exit.i
  %mlxsw_sp_qdisc.tr.i17.i = phi ptr [ %mlxsw_sp_qdisc, %mlxsw_sp_qdisc_get_prio_bitmap.exit.i ], [ %9, %if.end.i23.i.tailrecurse.i20.i_crit_edge ]
  %parent1.i18.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i17.i, i32 0, i32 5
  %8 = ptrtoint ptr %parent1.i18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent1.i18.i, align 8
  %tobool.not.i19.i = icmp eq ptr %9, null
  br i1 %tobool.not.i19.i, label %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge, label %if.end.i23.i

tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge: ; preds = %tailrecurse.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_collect_tc_stats.exit

if.end.i23.i:                                     ; preds = %tailrecurse.i20.i
  %ops.i21.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i21.i, align 4
  %get_tclass_num.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %get_tclass_num.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_tclass_num.i.i, align 4
  %tobool2.not.i22.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i22.i, label %if.end.i23.i.tailrecurse.i20.i_crit_edge, label %if.end4.i25.i

if.end.i23.i.tailrecurse.i20.i_crit_edge:         ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i20.i

if.end4.i25.i:                                    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i24.i = tail call i32 %13(ptr noundef nonnull %9, ptr noundef %mlxsw_sp_qdisc.tr.i17.i) #13
  br label %mlxsw_sp_qdisc_collect_tc_stats.exit

mlxsw_sp_qdisc_collect_tc_stats.exit:             ; preds = %if.end4.i25.i, %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge
  %retval.0.i26.i = phi i32 [ %call7.i24.i, %if.end4.i25.i ], [ 0, %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge ]
  %xstats2.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1
  call fastcc void @mlxsw_sp_qdisc_bstats_per_priority_get(ptr noundef %xstats2.i, i8 noundef zeroext %retval.0.i.i, ptr noundef nonnull %tx_packets.i, ptr noundef nonnull %tx_bytes.i) #13
  %14 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_packets.i, align 8
  %16 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_bytes.i, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 %retval.0.i26.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %retval.0.i26.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.i, align 8
  %add.i.i = add i32 %retval.0.i26.i, 8
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %add.i.i
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx2.i.i, align 8
  %add3.i.i = add i64 %21, %19
  %add5.i = add i64 %add3.i.i, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_packets.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_bytes.i) #13
  %stats_base = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2
  %tx_packets1 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %tx_packets1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %15, ptr %tx_packets1, align 8
  %25 = ptrtoint ptr %stats_base to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %17, ptr %stats_base, align 8
  %drops5 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %drops5 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add5.i, ptr %drops5, align 8
  %backlog = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %backlog to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %backlog, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_qdisc_get_tc_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %stats_ptr) unnamed_addr #0 align 64 {
entry:
  %tx_bytes.i = alloca i64, align 8
  %tx_packets.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_bytes.i) #13
  %0 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tx_bytes.i, align 8, !annotation !137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_packets.i) #13
  %1 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tx_packets.i, align 8, !annotation !137
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %if.end.i.i.tailrecurse.i.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %3, %if.end.i.i.tailrecurse.i.i_crit_edge ]
  %parent1.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge, label %if.end.i.i

tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit.i

if.end.i.i:                                       ; preds = %tailrecurse.i.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_prio_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %get_prio_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_prio_bitmap.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.tailrecurse.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.tailrecurse.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i.i = tail call zeroext i8 %7(ptr noundef nonnull %3, ptr noundef %mlxsw_sp_qdisc.tr.i.i) #13
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit.i

mlxsw_sp_qdisc_get_prio_bitmap.exit.i:            ; preds = %if.end4.i.i, %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %call7.i.i, %if.end4.i.i ], [ -1, %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge ]
  br label %tailrecurse.i20.i

tailrecurse.i20.i:                                ; preds = %if.end.i23.i.tailrecurse.i20.i_crit_edge, %mlxsw_sp_qdisc_get_prio_bitmap.exit.i
  %mlxsw_sp_qdisc.tr.i17.i = phi ptr [ %mlxsw_sp_qdisc, %mlxsw_sp_qdisc_get_prio_bitmap.exit.i ], [ %9, %if.end.i23.i.tailrecurse.i20.i_crit_edge ]
  %parent1.i18.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i17.i, i32 0, i32 5
  %8 = ptrtoint ptr %parent1.i18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent1.i18.i, align 8
  %tobool.not.i19.i = icmp eq ptr %9, null
  br i1 %tobool.not.i19.i, label %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge, label %if.end.i23.i

tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge: ; preds = %tailrecurse.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_collect_tc_stats.exit

if.end.i23.i:                                     ; preds = %tailrecurse.i20.i
  %ops.i21.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i21.i, align 4
  %get_tclass_num.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %get_tclass_num.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_tclass_num.i.i, align 4
  %tobool2.not.i22.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i22.i, label %if.end.i23.i.tailrecurse.i20.i_crit_edge, label %if.end4.i25.i

if.end.i23.i.tailrecurse.i20.i_crit_edge:         ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i20.i

if.end4.i25.i:                                    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i24.i = tail call i32 %13(ptr noundef nonnull %9, ptr noundef %mlxsw_sp_qdisc.tr.i17.i) #13
  br label %mlxsw_sp_qdisc_collect_tc_stats.exit

mlxsw_sp_qdisc_collect_tc_stats.exit:             ; preds = %if.end4.i25.i, %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge
  %retval.0.i26.i = phi i32 [ %call7.i24.i, %if.end4.i25.i ], [ 0, %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge ]
  %xstats2.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1
  call fastcc void @mlxsw_sp_qdisc_bstats_per_priority_get(ptr noundef %xstats2.i, i8 noundef zeroext %retval.0.i.i, ptr noundef nonnull %tx_packets.i, ptr noundef nonnull %tx_bytes.i) #13
  %14 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_packets.i, align 8
  %16 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_bytes.i, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 %retval.0.i26.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %retval.0.i26.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.i, align 8
  %add.i.i = add i32 %retval.0.i26.i, 8
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %add.i.i
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx2.i.i, align 8
  %add3.i.i = add i64 %21, %19
  %add5.i = add i64 %add3.i.i, %23
  %arrayidx.i27.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 4, i32 %retval.0.i26.i
  %24 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i27.i, align 8
  %arrayidx2.i29.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 4, i32 %add.i.i
  %26 = ptrtoint ptr %arrayidx2.i29.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx2.i29.i, align 8
  %add3.i30.i = add i64 %27, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_packets.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_bytes.i) #13
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %28 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mlxsw_sp, align 8
  tail call fastcc void @mlxsw_sp_qdisc_update_stats(ptr noundef %29, ptr noundef %mlxsw_sp_qdisc, i64 noundef %17, i64 noundef %15, i64 noundef %add5.i, i64 noundef %add3.i30.i, ptr noundef %stats_ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_qdisc_update_stats(ptr noundef %mlxsw_sp, ptr nocapture noundef %mlxsw_sp_qdisc, i64 noundef %tx_bytes, i64 noundef %tx_packets, i64 noundef %drops, i64 noundef %backlog, ptr nocapture noundef readonly %stats_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_base1 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2
  %0 = ptrtoint ptr %stats_base1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats_base1, align 8
  %tx_packets3 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_packets3, align 8
  %drops5 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %drops5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %drops5, align 8
  %backlog7 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %backlog7 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %backlog7, align 8
  %8 = ptrtoint ptr %stats_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats_ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %entry._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

entry._bstats_update.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !138
  %15 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %20, ptrtoint (ptr @lockdep_recursion to i32)
  %21 = inttoptr i32 %add.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !139
  %24 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i.i7.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i.i9.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %35, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !140
  %36 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %39, ptrtoint (ptr @hardirqs_enabled to i32)
  %40 = inttoptr i32 %add47.i.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !141
  %43 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i.i12.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !133

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %entry._bstats_update.exit_crit_edge
  %sub4 = sub i64 %tx_packets, %3
  %sub8 = sub i64 %backlog, %7
  %sub6 = sub i64 %drops, %5
  %sub = sub i64 %tx_bytes, %1
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %9, i32 0, i32 2
  %47 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !142
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %9, i32 0, i32 2, i32 0, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #13
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %50) #13
  %conv.i.i = and i64 %sub, 4294967295
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %9, align 8
  %add.i.i = add i64 %52, %conv.i.i
  store i64 %add.i.i, ptr %9, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %9, i32 0, i32 1
  %conv.i7.i = and i64 %sub4, 4294967295
  %53 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %54, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %50) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !143
  %55 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %qstats = getelementptr inbounds %struct.tc_qopt_offload_stats, ptr %stats_ptr, i32 0, i32 1
  %57 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qstats, align 4
  %drops9 = getelementptr inbounds %struct.gnet_stats_queue, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %drops9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %drops9, align 4
  %61 = trunc i64 %sub6 to i32
  %conv11 = add i32 %60, %61
  store i32 %conv11, ptr %drops9, align 4
  %conv12 = trunc i64 %sub8 to i32
  %call = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %mlxsw_sp, i32 noundef %conv12) #13
  %62 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qstats, align 4
  %backlog14 = getelementptr inbounds %struct.gnet_stats_queue, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %backlog14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %backlog14, align 4
  %add15 = add i32 %65, %call
  store i32 %add15, ptr %backlog14, align 4
  %66 = ptrtoint ptr %backlog7 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %backlog7, align 8
  %add17 = add i64 %67, %sub8
  store i64 %add17, ptr %backlog7, align 8
  %68 = ptrtoint ptr %drops5 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %drops5, align 8
  %add19 = add i64 %69, %sub6
  store i64 %add19, ptr %drops5, align 8
  %70 = ptrtoint ptr %stats_base1 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %stats_base1, align 8
  %add21 = add i64 %71, %sub
  store i64 %add21, ptr %stats_base1, align 8
  %72 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %tx_packets3, align 8
  %add23 = add i64 %73, %sub4
  store i64 %add23, ptr %tx_packets3, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_qdisc_bstats_per_priority_get(ptr nocapture noundef readonly %xstats, i8 noundef zeroext %prio_bitmap, ptr nocapture noundef %tx_packets, ptr nocapture noundef %tx_bytes) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tx_packets, align 8
  %1 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %tx_bytes, align 8
  %conv = zext i8 %prio_bitmap to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %4 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_packets, align 8
  %add = add i64 %5, %3
  store i64 %add, ptr %tx_packets, align 8
  %arrayidx3 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx3, align 8
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_bytes, align 8
  %add4 = add i64 %9, %7
  store i64 %add4, ptr %tx_bytes, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %and.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.1, align 8
  %12 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_packets, align 8
  %add.1 = add i64 %13, %11
  store i64 %add.1, ptr %tx_packets, align 8
  %arrayidx3.1 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx3.1, align 8
  %16 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_bytes, align 8
  %add4.1 = add i64 %17, %15
  store i64 %add4.1, ptr %tx_bytes, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.2, align 8
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_packets, align 8
  %add.2 = add i64 %21, %19
  store i64 %add.2, ptr %tx_packets, align 8
  %arrayidx3.2 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx3.2, align 8
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_bytes, align 8
  %add4.2 = add i64 %25, %23
  store i64 %add4.2, ptr %tx_bytes, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.3 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.3, align 8
  %28 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_packets, align 8
  %add.3 = add i64 %29, %27
  store i64 %add.3, ptr %tx_packets, align 8
  %arrayidx3.3 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx3.3, align 8
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_bytes, align 8
  %add4.3 = add i64 %33, %31
  store i64 %add4.3, ptr %tx_bytes, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.4 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.4, align 8
  %36 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tx_packets, align 8
  %add.4 = add i64 %37, %35
  store i64 %add.4, ptr %tx_packets, align 8
  %arrayidx3.4 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx3.4, align 8
  %40 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tx_bytes, align 8
  %add4.4 = add i64 %41, %39
  store i64 %add4.4, ptr %tx_bytes, align 8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.5 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 5
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.5, align 8
  %44 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_packets, align 8
  %add.5 = add i64 %45, %43
  store i64 %add.5, ptr %tx_packets, align 8
  %arrayidx3.5 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx3.5, align 8
  %48 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tx_bytes, align 8
  %add4.5 = add i64 %49, %47
  store i64 %add4.5, ptr %tx_bytes, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.6 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 6
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.6, align 8
  %52 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tx_packets, align 8
  %add.6 = add i64 %53, %51
  store i64 %add.6, ptr %tx_packets, align 8
  %arrayidx3.6 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 6
  %54 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx3.6, align 8
  %56 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tx_bytes, align 8
  %add4.6 = add i64 %57, %55
  store i64 %add4.6, ptr %tx_bytes, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.7 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 6, i32 7
  %58 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx.7, align 8
  %60 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tx_packets, align 8
  %add.7 = add i64 %61, %59
  store i64 %add.7, ptr %tx_packets, align 8
  %arrayidx3.7 = getelementptr %struct.mlxsw_sp_port_xstats, ptr %xstats, i32 0, i32 5, i32 7
  %62 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx3.7, align 8
  %64 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tx_bytes, align 8
  %add4.7 = add i64 %65, %63
  store i64 %add4.7, ptr %tx_bytes, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_cells_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_cwtpm_pack(ptr nocapture noundef %payload, i16 noundef zeroext %local_port, i8 noundef zeroext %traffic_class, i8 noundef zeroext %profile, i1 noundef zeroext %wred, i1 noundef zeroext %ecn) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = call ptr @memset(ptr %payload, i32 0, i32 68)
  %conv2 = zext i16 %local_port to i32
  %and.i = shl nuw i32 %conv2, 16
  %spec.select.i.i = and i32 %and.i, 16711680
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -16723969
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %3 = shl nuw nsw i32 %conv2, 4
  %and6.i28.i = and i32 %3, 12288
  %or.i32.i = or i32 %and6.i28.i, %or.i.i
  store i32 %or.i32.i, ptr %payload, align 4
  %conv3 = zext i8 %traffic_class to i32
  %arrayidx.i.i52 = getelementptr i32, ptr %payload, i32 8
  %4 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i52, align 4
  %and7.i.i54 = and i32 %5, -256
  %or.i.i55 = or i32 %and7.i.i54, %conv3
  store i32 %or.i.i55, ptr %arrayidx.i.i52, align 4
  %spec.select.i.i75 = select i1 %wred, i32 2, i32 0
  %arrayidx.i.i81 = getelementptr i32, ptr %payload, i32 9
  %6 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i81, align 4
  %and7.i.i83 = and i32 %7, -4
  %or.i.i84 = or i32 %spec.select.i.i75, %and7.i.i83
  %conv6 = zext i1 %ecn to i32
  %arrayidx.i.i110 = getelementptr i32, ptr %payload, i32 9
  %or.i.i113 = or i32 %or.i.i84, %conv6
  %8 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i113, ptr %arrayidx.i.i110, align 4
  %conv7 = zext i8 %profile to i32
  %and6.i.i138 = and i32 %conv7, 3
  %arrayidx.i.i139 = getelementptr i32, ptr %payload, i32 13
  %9 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i139, align 4
  %and7.i.i141 = and i32 %10, -4
  %or.i.i142 = or i32 %and6.i.i138, %and7.i.i141
  store i32 %or.i.i142, ptr %arrayidx.i.i139, align 4
  %spec.select.i.i162 = shl nuw nsw i32 %conv7, 16
  %and6.i.i167 = and i32 %spec.select.i.i162, 196608
  %arrayidx.i.i168 = getelementptr i32, ptr %payload, i32 14
  %11 = ptrtoint ptr %arrayidx.i.i168 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i168, align 4
  %and7.i.i170 = and i32 %12, -196612
  %or.i.i171 = or i32 %and6.i.i167, %and7.i.i170
  %and6.i.i196 = and i32 %conv7, 3
  %arrayidx.i.i197 = getelementptr i32, ptr %payload, i32 14
  %or.i.i200 = or i32 %and6.i.i196, %or.i.i171
  %13 = ptrtoint ptr %arrayidx.i.i197 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i200, ptr %arrayidx.i.i197, align 4
  %and6.i.i225 = and i32 %conv7, 3
  %arrayidx.i.i226 = getelementptr i32, ptr %payload, i32 15
  %14 = ptrtoint ptr %arrayidx.i.i226 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i226, align 4
  %and7.i.i228 = and i32 %15, -4
  %or.i.i229 = or i32 %and6.i.i225, %and7.i.i228
  store i32 %or.i.i229, ptr %arrayidx.i.i226, align 4
  %spec.select.i.i249 = shl nuw nsw i32 %conv7, 16
  %and6.i.i254 = and i32 %spec.select.i.i249, 196608
  %arrayidx.i.i255 = getelementptr i32, ptr %payload, i32 16
  %16 = ptrtoint ptr %arrayidx.i.i255 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i255, align 4
  %and7.i.i257 = and i32 %17, -196612
  %or.i.i258 = or i32 %and6.i.i254, %and7.i.i257
  %and6.i.i283 = and i32 %conv7, 3
  %arrayidx.i.i284 = getelementptr i32, ptr %payload, i32 16
  %or.i.i287 = or i32 %and6.i.i283, %or.i.i258
  %18 = ptrtoint ptr %arrayidx.i.i284 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i287, ptr %arrayidx.i.i284, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlxsw_sp_qdisc_walk_cb_find_by_handle(ptr noundef readonly %qdisc, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %qdisc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qdisc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp eq i32 %5, %3
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end ], [ %qdisc, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_tbf_check_params(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %params, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %3, i32 0) #19, !srcloc !144
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %3, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !145
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %6 = lshr i64 %asmresult10.i.i.i.i, 6
  %mul.i = and i64 %6, 288230376151711736
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483646, i64 %mul.i)
  %cmp = icmp ugt i64 %mul.i, 2147483646
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.52, i64 noundef %mul.i, i32 noundef 2147483647) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_size = getelementptr inbounds %struct.tc_tbf_qopt_offload_replace_params, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %tobool.not.i.i = icmp ult i32 %12, 64
  br i1 %tobool.not.i.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %div20.i = lshr i32 %12, 6
  %13 = tail call i32 @llvm.ctlz.i32(i32 %div20.i, i1 true) #13, !range !146
  %14 = trunc i32 %13 to i8
  %dec.i = xor i8 %14, 31
  %conv1.i = zext i8 %dec.i to i32
  %shl.i = shl nuw i32 1, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %div20.i)
  %cmp.not.i = icmp eq i32 %shl.i, %div20.i
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.end4.i:                                        ; preds = %if.end.i
  %lowest_shaper_bs.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 45
  %15 = ptrtoint ptr %lowest_shaper_bs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lowest_shaper_bs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv1.i)
  %cmp6.i = icmp ugt i32 %16, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %dec.i)
  %cmp9.i = icmp ugt i8 %dec.i, 25
  %or.cond.i = or i1 %cmp9.i, %cmp6.i
  br i1 %or.cond.i, label %if.end4.i.if.then4_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i.if.then4_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %if.end4.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %bus_info8 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %bus_info8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_info8, align 4
  %dev9 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 4
  %lowest_shaper_bs = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 45
  %21 = ptrtoint ptr %lowest_shaper_bs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lowest_shaper_bs, align 4
  %conv.i = and i32 %22, 255
  %mul.i24 = shl i32 64, %conv.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.55, i32 noundef %12, i32 noundef %mul.i24, i32 noundef -2147483648) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end4.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then4 ], [ 0, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_tbf_replace(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc.i, align 4
  %cmp.i = icmp eq ptr %1, %mlxsw_sp_qdisc
  %..i = select i1 %cmp.i, i32 0, i32 2
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %params, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %3, i32 0) #19, !srcloc !144
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %3, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !145
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %6 = lshr i64 %asmresult10.i.i.i.i, 6
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %7 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdiscs, align 4
  %future_handle.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %future_handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %future_handle.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %handle)
  %cmp.i68 = icmp eq i32 %10, %handle
  br i1 %cmp.i68, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr %struct.mlxsw_sp_qdisc_state, ptr %1, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %mlxsw_sp_qdisc_future_fifo_replace.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

mlxsw_sp_qdisc_future_fifo_replace.exit:          ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @mlxsw_sp_qdisc_ops_fifo, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mlxsw_sp_qdisc_future_fifo_replace.exit.if.end_crit_edge, label %mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge

mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_qdisc_future_fifo_replace.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlxsw_sp_qdisc_future_fifo_replace.exit.if.end_crit_edge: ; preds = %mlxsw_sp_qdisc_future_fifo_replace.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %mlxsw_sp_qdisc_future_fifo_replace.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qdisc.i, align 4
  %future_handle.i70 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %future_handle.i70 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %future_handle.i70, align 8
  %future_fifos.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %future_fifos.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %future_fifos.i, align 4
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %if.end
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %if.end ], [ %18, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %17 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i71 = icmp eq ptr %18, null
  br i1 %tobool.not.i71, label %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 %22(ptr noundef nonnull %18, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  %phi.cast = trunc i32 %call7.i to i8
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i72 = phi i8 [ %phi.cast, %if.end4.i ], [ 0, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  %max_size = getelementptr inbounds %struct.tc_tbf_qopt_offload_replace_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %24)
  %tobool.not.i.i = icmp ult i32 %24, 64
  br i1 %tobool.not.i.i, label %mlxsw_sp_qdisc_get_tclass_num.exit.land.rhs_crit_edge, label %if.end.i73

mlxsw_sp_qdisc_get_tclass_num.exit.land.rhs_crit_edge: ; preds = %mlxsw_sp_qdisc_get_tclass_num.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end.i73:                                       ; preds = %mlxsw_sp_qdisc_get_tclass_num.exit
  %div20.i = lshr i32 %24, 6
  %25 = tail call i32 @llvm.ctlz.i32(i32 %div20.i, i1 true) #13, !range !146
  %26 = trunc i32 %25 to i8
  %dec.i = xor i8 %26, 31
  %conv1.i = zext i8 %dec.i to i32
  %shl.i = shl nuw i32 1, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %div20.i)
  %cmp.not.i = icmp eq i32 %shl.i, %div20.i
  br i1 %cmp.not.i, label %if.end4.i74, label %if.end.i73.land.rhs_crit_edge

if.end.i73.land.rhs_crit_edge:                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end4.i74:                                      ; preds = %if.end.i73
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %27 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mlxsw_sp.i, align 8
  %lowest_shaper_bs.i = getelementptr inbounds %struct.mlxsw_sp, ptr %28, i32 0, i32 45
  %29 = ptrtoint ptr %lowest_shaper_bs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lowest_shaper_bs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv1.i)
  %cmp6.i = icmp ugt i32 %30, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %dec.i)
  %cmp9.i = icmp ugt i8 %dec.i, 25
  %or.cond.i = or i1 %cmp9.i, %cmp6.i
  br i1 %or.cond.i, label %if.end4.i74.land.rhs_crit_edge, label %if.end45

if.end4.i74.land.rhs_crit_edge:                   ; preds = %if.end4.i74
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %if.end4.i74.land.rhs_crit_edge, %if.end.i73.land.rhs_crit_edge, %mlxsw_sp_qdisc_get_tclass_num.exit.land.rhs_crit_edge
  %.b65 = load i1, ptr @mlxsw_sp_qdisc_tbf_replace.__already_done, align 1
  br i1 %.b65, label %land.rhs.cleanup_crit_edge, label %if.then13, !prof !133

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mlxsw_sp_qdisc_tbf_replace.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1044, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end4.i74
  call void @__sanitizer_cov_trace_pc() #15
  %31 = trunc i64 %6 to i32
  %conv46 = and i32 %31, -8
  %call47 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %mlxsw_sp_port, i32 noundef %..i, i8 noundef zeroext %retval.0.i72, i8 noundef zeroext 0, i32 noundef %conv46, i8 noundef zeroext %dec.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then13, %land.rhs.cleanup_crit_edge, %mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end45 ], [ %call.i, %mlxsw_sp_qdisc_future_fifo_replace.exit.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_tbf_destroy(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %0 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdisc.i, align 4
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end.i.tailrecurse.i_crit_edge, %entry
  %mlxsw_sp_qdisc.tr.i = phi ptr [ %mlxsw_sp_qdisc, %entry ], [ %3, %if.end.i.tailrecurse.i_crit_edge ]
  %parent1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i, i32 0, i32 5
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge, label %if.end.i

tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge: ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

if.end.i:                                         ; preds = %tailrecurse.i
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_tclass_num.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %get_tclass_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_tclass_num.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.tailrecurse.i_crit_edge, label %if.end4.i

if.end.i.tailrecurse.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 %7(ptr noundef nonnull %3, ptr noundef %mlxsw_sp_qdisc.tr.i) #13
  %phi.cast = trunc i32 %call7.i to i8
  br label %mlxsw_sp_qdisc_get_tclass_num.exit

mlxsw_sp_qdisc_get_tclass_num.exit:               ; preds = %if.end4.i, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge
  %retval.0.i = phi i8 [ %phi.cast, %if.end4.i ], [ 0, %tailrecurse.i.mlxsw_sp_qdisc_get_tclass_num.exit_crit_edge ]
  %cmp.i = icmp eq ptr %1, %mlxsw_sp_qdisc
  %..i = select i1 %cmp.i, i32 0, i32 2
  %call2 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %mlxsw_sp_port, i32 noundef %..i, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, i32 noundef 2147483647, i8 noundef zeroext 0) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_get_tbf_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %stats_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_qdisc_get_tc_stats(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, ptr noundef %stats_ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_qdisc_tbf_unoffload(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qstats = getelementptr inbounds %struct.tc_tbf_qopt_offload_replace_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qstats, align 4
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp.i, align 8
  %backlog1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %backlog1.i, align 8
  %conv.i = trunc i64 %5 to i32
  %call.i = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %conv.i) #13
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog3.i, align 4
  %sub.i = sub i32 %7, %call.i
  store i32 %sub.i, ptr %backlog3.i, align 4
  %8 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %backlog1.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_prio_check_params(ptr nocapture noundef readnone %mlxsw_sp_port, ptr nocapture noundef readonly %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp ugt i32 %1, 8
  %..i = select i1 %cmp.i, i32 -95, i32 0
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_prio_replace(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr nocapture noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %zeroes = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %zeroes) #13
  %0 = call ptr @memset(ptr %zeroes, i32 0, i32 64)
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 4
  %priomap = getelementptr inbounds %struct.tc_prio_qopt_offload_params, ptr %params, i32 0, i32 1
  %call = call fastcc i32 @__mlxsw_sp_qdisc_ets_replace(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, i32 noundef %handle, i32 noundef %2, ptr noundef nonnull %zeroes, ptr noundef nonnull %zeroes, ptr noundef %priomap)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zeroes) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_prio_destroy(ptr noundef %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_classes.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %0 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_classes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %entry.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_qdisc_ets_destroy.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.02.i to i8
  %call.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #13
  %call2.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %mlxsw_sp_port, i32 noundef 2, i8 noundef zeroext %conv.i, i8 noundef zeroext 0, i1 noundef zeroext false, i8 noundef zeroext 0) #13
  %inc.i = add nuw i32 %i.02.i, 1
  %2 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_classes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge

for.body.i.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_qdisc_ets_destroy.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

__mlxsw_sp_qdisc_ets_destroy.exit:                ; preds = %for.body.i.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge, %entry.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge
  %4 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_get_prio_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %stats_ptr) #0 align 64 {
entry:
  %tx_bytes.i = alloca i64, align 8
  %tx_packets.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_classes = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %0 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_classes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %xstats2.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge ]
  %drops.020 = phi i64 [ 0, %for.body.lr.ph ], [ %add6.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge ]
  %backlog.019 = phi i64 [ 0, %for.body.lr.ph ], [ %add8.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge ]
  %tx_bytes.018 = phi i64 [ 0, %for.body.lr.ph ], [ %add3.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge ]
  %tx_packets.017 = phi i64 [ 0, %for.body.lr.ph ], [ %add.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdiscs, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_qdisc, ptr %3, i32 %i.021
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_bytes.i) #13
  %4 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %tx_bytes.i, align 8, !annotation !137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_packets.i) #13
  %5 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %tx_packets.i, align 8, !annotation !137
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %if.end.i.i.tailrecurse.i.i_crit_edge, %for.body
  %mlxsw_sp_qdisc.tr.i.i = phi ptr [ %arrayidx, %for.body ], [ %7, %if.end.i.i.tailrecurse.i.i_crit_edge ]
  %parent1.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge, label %if.end.i.i

tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit.i

if.end.i.i:                                       ; preds = %tailrecurse.i.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %get_prio_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %get_prio_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_prio_bitmap.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.tailrecurse.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.tailrecurse.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i.i = tail call zeroext i8 %11(ptr noundef nonnull %7, ptr noundef %mlxsw_sp_qdisc.tr.i.i) #13
  br label %mlxsw_sp_qdisc_get_prio_bitmap.exit.i

mlxsw_sp_qdisc_get_prio_bitmap.exit.i:            ; preds = %if.end4.i.i, %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %call7.i.i, %if.end4.i.i ], [ -1, %tailrecurse.i.i.mlxsw_sp_qdisc_get_prio_bitmap.exit.i_crit_edge ]
  br label %tailrecurse.i20.i

tailrecurse.i20.i:                                ; preds = %if.end.i23.i.tailrecurse.i20.i_crit_edge, %mlxsw_sp_qdisc_get_prio_bitmap.exit.i
  %mlxsw_sp_qdisc.tr.i17.i = phi ptr [ %arrayidx, %mlxsw_sp_qdisc_get_prio_bitmap.exit.i ], [ %13, %if.end.i23.i.tailrecurse.i20.i_crit_edge ]
  %parent1.i18.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc.tr.i17.i, i32 0, i32 5
  %12 = ptrtoint ptr %parent1.i18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent1.i18.i, align 8
  %tobool.not.i19.i = icmp eq ptr %13, null
  br i1 %tobool.not.i19.i, label %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge, label %if.end.i23.i

tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge: ; preds = %tailrecurse.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_collect_tc_stats.exit

if.end.i23.i:                                     ; preds = %tailrecurse.i20.i
  %ops.i21.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i21.i, align 4
  %get_tclass_num.i.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %get_tclass_num.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_tclass_num.i.i, align 4
  %tobool2.not.i22.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i22.i, label %if.end.i23.i.tailrecurse.i20.i_crit_edge, label %if.end4.i25.i

if.end.i23.i.tailrecurse.i20.i_crit_edge:         ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tailrecurse.i20.i

if.end4.i25.i:                                    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i24.i = tail call i32 %17(ptr noundef nonnull %13, ptr noundef %mlxsw_sp_qdisc.tr.i17.i) #13
  br label %mlxsw_sp_qdisc_collect_tc_stats.exit

mlxsw_sp_qdisc_collect_tc_stats.exit:             ; preds = %if.end4.i25.i, %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge
  %retval.0.i26.i = phi i32 [ %call7.i24.i, %if.end4.i25.i ], [ 0, %tailrecurse.i20.i.mlxsw_sp_qdisc_collect_tc_stats.exit_crit_edge ]
  call fastcc void @mlxsw_sp_qdisc_bstats_per_priority_get(ptr noundef %xstats2.i, i8 noundef zeroext %retval.0.i.i, ptr noundef nonnull %tx_packets.i, ptr noundef nonnull %tx_bytes.i) #13
  %18 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_packets.i, align 8
  %add.i = add i64 %19, %tx_packets.017
  %20 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_bytes.i, align 8
  %add3.i = add i64 %21, %tx_bytes.018
  %arrayidx.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 %retval.0.i26.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i, align 8
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %retval.0.i26.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i.i, align 8
  %add.i.i = add i32 %retval.0.i26.i, 8
  %arrayidx2.i.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 %add.i.i
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx2.i.i, align 8
  %add3.i.i = add i64 %23, %drops.020
  %add5.i = add i64 %add3.i.i, %25
  %add6.i = add i64 %add5.i, %27
  %arrayidx.i27.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 4, i32 %retval.0.i26.i
  %28 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i27.i, align 8
  %arrayidx2.i29.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 4, i32 %add.i.i
  %30 = ptrtoint ptr %arrayidx2.i29.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx2.i29.i, align 8
  %add3.i30.i = add i64 %29, %backlog.019
  %add8.i = add i64 %add3.i30.i, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_packets.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_bytes.i) #13
  %inc = add nuw i32 %i.021, 1
  %32 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_classes, align 8
  %cmp = icmp ult i32 %inc, %33
  br i1 %cmp, label %mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge, label %mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge

mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge: ; preds = %mlxsw_sp_qdisc_collect_tc_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

mlxsw_sp_qdisc_collect_tc_stats.exit.for.body_crit_edge: ; preds = %mlxsw_sp_qdisc_collect_tc_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_packets.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge ]
  %tx_bytes.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add3.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge ]
  %backlog.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add8.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge ]
  %drops.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add6.i, %mlxsw_sp_qdisc_collect_tc_stats.exit.for.end_crit_edge ]
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %34 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mlxsw_sp, align 8
  tail call fastcc void @mlxsw_sp_qdisc_update_stats(ptr noundef %35, ptr noundef %mlxsw_sp_qdisc, i64 noundef %tx_bytes.0.lcssa, i64 noundef %tx_packets.0.lcssa, i64 noundef %drops.0.lcssa, i64 noundef %backlog.0.lcssa, ptr noundef %stats_ptr)
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_setup_tc_qdisc_prio_clean_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_base4 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2
  %tx_packets = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 0, i32 1
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_packets, align 8
  %tx_packets5 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %tx_packets5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tx_packets5, align 8
  %tx_bytes = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 0, i32 3
  %3 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_bytes, align 8
  %5 = ptrtoint ptr %stats_base4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %stats_base4, align 8
  %drops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %drops to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %drops, align 8
  %arrayidx.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i, align 8
  %arrayidx2.i = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 8
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx2.i, align 8
  %add3.i = add i64 %10, %8
  store i64 %add3.i, ptr %drops, align 8
  %arrayidx = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %add9 = add i64 %12, %add3.i
  store i64 %add9, ptr %drops, align 8
  %arrayidx.i.1 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i.1, align 8
  %arrayidx2.i.1 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 9
  %15 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx2.i.1, align 8
  %add3.i.1 = add i64 %16, %14
  %add.1 = add i64 %add3.i.1, %add9
  store i64 %add.1, ptr %drops, align 8
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.1, align 8
  %add9.1 = add i64 %18, %add.1
  store i64 %add9.1, ptr %drops, align 8
  %arrayidx.i.2 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i.2, align 8
  %arrayidx2.i.2 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 10
  %21 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx2.i.2, align 8
  %add3.i.2 = add i64 %22, %20
  %add.2 = add i64 %add3.i.2, %add9.1
  store i64 %add.2, ptr %drops, align 8
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.2, align 8
  %add9.2 = add i64 %24, %add.2
  store i64 %add9.2, ptr %drops, align 8
  %arrayidx.i.3 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.3, align 8
  %arrayidx2.i.3 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 11
  %27 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx2.i.3, align 8
  %add3.i.3 = add i64 %28, %26
  %add.3 = add i64 %add3.i.3, %add9.2
  store i64 %add.3, ptr %drops, align 8
  %arrayidx.3 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.3, align 8
  %add9.3 = add i64 %30, %add.3
  store i64 %add9.3, ptr %drops, align 8
  %arrayidx.i.4 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 4
  %31 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.4, align 8
  %arrayidx2.i.4 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 12
  %33 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx2.i.4, align 8
  %add3.i.4 = add i64 %34, %32
  %add.4 = add i64 %add3.i.4, %add9.3
  store i64 %add.4, ptr %drops, align 8
  %arrayidx.4 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.4, align 8
  %add9.4 = add i64 %36, %add.4
  store i64 %add9.4, ptr %drops, align 8
  %arrayidx.i.5 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 5
  %37 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.5, align 8
  %arrayidx2.i.5 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 13
  %39 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx2.i.5, align 8
  %add3.i.5 = add i64 %40, %38
  %add.5 = add i64 %add3.i.5, %add9.4
  store i64 %add.5, ptr %drops, align 8
  %arrayidx.5 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 5
  %41 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.5, align 8
  %add9.5 = add i64 %42, %add.5
  store i64 %add9.5, ptr %drops, align 8
  %arrayidx.i.6 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 6
  %43 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.i.6, align 8
  %arrayidx2.i.6 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 14
  %45 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx2.i.6, align 8
  %add3.i.6 = add i64 %46, %44
  %add.6 = add i64 %add3.i.6, %add9.5
  store i64 %add.6, ptr %drops, align 8
  %arrayidx.6 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 6
  %47 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx.6, align 8
  %add9.6 = add i64 %48, %add.6
  store i64 %add9.6, ptr %drops, align 8
  %arrayidx.i.7 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 7
  %49 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i.7, align 8
  %arrayidx2.i.7 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 3, i32 15
  %51 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx2.i.7, align 8
  %add3.i.7 = add i64 %52, %50
  %add.7 = add i64 %add3.i.7, %add9.6
  store i64 %add.7, ptr %drops, align 8
  %arrayidx.7 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 10, i32 1, i32 2, i32 7
  %53 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx.7, align 8
  %add9.7 = add i64 %54, %add.7
  store i64 %add9.7, ptr %drops, align 8
  %backlog = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %backlog to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %backlog, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_qdisc_prio_unoffload(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qstats = getelementptr inbounds %struct.tc_prio_qopt_offload_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qstats, align 4
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp.i, align 8
  %backlog1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %backlog1.i, align 8
  %conv.i = trunc i64 %5 to i32
  %call.i = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %conv.i) #13
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog3.i, align 4
  %sub.i = sub i32 %7, %call.i
  store i32 %sub.i, ptr %backlog3.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlxsw_sp_qdisc_prio_find_class(ptr nocapture noundef readonly %mlxsw_sp_qdisc, i32 noundef %parent) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %parent, 65535
  %sub = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_classes = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %0 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_classes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp1.not = icmp ult i32 %sub, %1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %2 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdiscs, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_qdisc, ptr %3, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlxsw_sp_qdisc_ets_get_prio_bitmap(ptr nocapture noundef readonly %mlxsw_sp_qdisc, ptr noundef %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdiscs.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %0 = ptrtoint ptr %qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdiscs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %child to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.div.i)
  %cmp.i = icmp ugt i32 %sub.ptr.div.i, 7
  br i1 %cmp.i, label %do.end.i, label %entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge, !prof !134

entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_ets_get_band.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1508, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_qdisc_ets_get_band.exit

mlxsw_sp_qdisc_ets_get_band.exit:                 ; preds = %do.end.i, %entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %sub.ptr.div.i, %entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge ]
  %2 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %arrayidx.i = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %4, i32 0, i32 %spec.select.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 4
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_ets_get_tclass_num(ptr nocapture noundef readonly %mlxsw_sp_qdisc, ptr noundef %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qdiscs.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %0 = ptrtoint ptr %qdiscs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdiscs.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %child to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.div.i)
  %cmp.i = icmp ugt i32 %sub.ptr.div.i, 7
  br i1 %cmp.i, label %do.end.i, label %entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge, !prof !134

entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qdisc_ets_get_band.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1508, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_qdisc_ets_get_band.exit

mlxsw_sp_qdisc_ets_get_band.exit:                 ; preds = %do.end.i, %entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %sub.ptr.div.i, %entry.mlxsw_sp_qdisc_ets_get_band.exit_crit_edge ]
  %2 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tclass_num = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %4, i32 0, i32 %spec.select.i, i32 1
  %5 = ptrtoint ptr %tclass_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tclass_num, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_qdisc_ets_replace(ptr noundef %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc, i32 noundef %handle, i32 noundef %nbands, ptr nocapture noundef readonly %quanta, ptr nocapture noundef readonly %weights, ptr nocapture noundef readonly %priomap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.cleanup79_crit_edge, label %if.end

if.then.cleanup79_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %0, align 8
  %num_classes = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %5 = ptrtoint ptr %num_classes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_classes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp153.not = icmp eq i32 %6, 0
  br i1 %cmp153.not, label %if.end.if.end5_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %band.0154 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sub3 = sub i32 7, %band.0154
  %tclass_num4 = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %call7.i.i, i32 0, i32 %band.0154, i32 1
  %7 = ptrtoint ptr %tclass_num4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub3, ptr %tclass_num4, align 4
  %inc = add nuw i32 %band.0154, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.if.end5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %for.body.if.end5_crit_edge, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ets_data.0 = phi ptr [ %2, %entry.if.end5_crit_edge ], [ %call7.i.i, %if.end.if.end5_crit_edge ], [ %call7.i.i, %for.body.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbands)
  %cmp7158.not = icmp eq i32 %nbands, 0
  br i1 %cmp7158.not, label %if.end5.for.body66.lr.ph_crit_edge, label %for.body8.lr.ph

if.end5.for.body66.lr.ph_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body66.lr.ph

for.body8.lr.ph:                                  ; preds = %if.end5
  %qdiscs = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  %qdisc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %arrayidx27.1 = getelementptr i8, ptr %priomap, i32 1
  %arrayidx27.2 = getelementptr i8, ptr %priomap, i32 2
  %arrayidx27.3 = getelementptr i8, ptr %priomap, i32 3
  %arrayidx27.4 = getelementptr i8, ptr %priomap, i32 4
  %arrayidx27.5 = getelementptr i8, ptr %priomap, i32 5
  %arrayidx27.6 = getelementptr i8, ptr %priomap, i32 6
  %arrayidx27.7 = getelementptr i8, ptr %priomap, i32 7
  br label %for.body8

for.cond63.preheader:                             ; preds = %for.inc60
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nbands)
  %cmp64161 = icmp slt i32 %nbands, 8
  br i1 %cmp64161, label %for.cond63.preheader.for.body66.lr.ph_crit_edge, label %for.cond63.preheader.for.end78_crit_edge

for.cond63.preheader.for.end78_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.cond63.preheader.for.body66.lr.ph_crit_edge:  ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body66.lr.ph

for.body66.lr.ph:                                 ; preds = %for.cond63.preheader.for.body66.lr.ph_crit_edge, %if.end5.for.body66.lr.ph_crit_edge
  %band.1.lcssa169 = phi i32 [ %nbands, %for.cond63.preheader.for.body66.lr.ph_crit_edge ], [ 0, %if.end5.for.body66.lr.ph_crit_edge ]
  %qdiscs70 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 6
  br label %for.body66

for.body8:                                        ; preds = %for.inc60.for.body8_crit_edge, %for.body8.lr.ph
  %band.1159 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc61, %for.inc60.for.body8_crit_edge ]
  %8 = ptrtoint ptr %qdiscs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qdiscs, align 4
  %arrayidx10 = getelementptr %struct.mlxsw_sp_qdisc, ptr %9, i32 %band.1159
  %arrayidx12 = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %ets_data.0, i32 0, i32 %band.1159
  %tclass_num13 = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %ets_data.0, i32 0, i32 %band.1159, i32 1
  %10 = ptrtoint ptr %tclass_num13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tclass_num13, align 4
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx14 = getelementptr i32, ptr %quanta, i32 %band.1159
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15 = icmp ne i32 %15, 0
  %arrayidx17 = getelementptr i32, ptr %weights, i32 %band.1159
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %conv18 = trunc i32 %17 to i8
  %call19 = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %mlxsw_sp_port, i32 noundef 2, i8 noundef zeroext %conv, i8 noundef zeroext 0, i1 noundef zeroext %tobool15, i8 noundef zeroext %conv18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.cond23.preheader, label %for.body8.cleanup79_crit_edge

for.body8.cleanup79_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

for.cond23.preheader:                             ; preds = %for.body8
  %conv35 = zext i8 %13 to i32
  %18 = ptrtoint ptr %priomap to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %priomap, align 1
  %conv28 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28)
  %cmp29 = icmp eq i32 %band.1159, %conv28
  br i1 %cmp29, label %if.then31, label %for.cond23.preheader.for.inc46_crit_edge

for.cond23.preheader.for.inc46_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46

if.then31:                                        ; preds = %for.cond23.preheader
  %and = and i32 %conv35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end38, label %if.then31.for.inc46_crit_edge

if.then31.for.inc46_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46

if.end38:                                         ; preds = %if.then31
  %call41 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 0, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end38.for.inc46_crit_edge, label %if.end38.cleanup79_crit_edge

if.end38.cleanup79_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.for.inc46_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46

for.inc46:                                        ; preds = %if.end38.for.inc46_crit_edge, %if.then31.for.inc46_crit_edge, %for.cond23.preheader.for.inc46_crit_edge
  %new_priomap.1 = phi i8 [ 1, %if.then31.for.inc46_crit_edge ], [ 1, %if.end38.for.inc46_crit_edge ], [ 0, %for.cond23.preheader.for.inc46_crit_edge ]
  %20 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx27.1, align 1
  %conv28.1 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.1)
  %cmp29.1 = icmp eq i32 %band.1159, %conv28.1
  br i1 %cmp29.1, label %if.then31.1, label %for.inc46.for.inc46.1_crit_edge

for.inc46.for.inc46.1_crit_edge:                  ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.1

if.then31.1:                                      ; preds = %for.inc46
  %conv33.1 = or i8 %new_priomap.1, 2
  %and.1 = and i32 %conv35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool36.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool36.not.1, label %if.end38.1, label %if.then31.1.for.inc46.1_crit_edge

if.then31.1.for.inc46.1_crit_edge:                ; preds = %if.then31.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.1

if.end38.1:                                       ; preds = %if.then31.1
  %call41.1 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 1, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.1)
  %tobool42.not.1 = icmp eq i32 %call41.1, 0
  br i1 %tobool42.not.1, label %if.end38.1.for.inc46.1_crit_edge, label %if.end38.1.cleanup79_crit_edge

if.end38.1.cleanup79_crit_edge:                   ; preds = %if.end38.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.1.for.inc46.1_crit_edge:                 ; preds = %if.end38.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.1

for.inc46.1:                                      ; preds = %if.end38.1.for.inc46.1_crit_edge, %if.then31.1.for.inc46.1_crit_edge, %for.inc46.for.inc46.1_crit_edge
  %new_priomap.1.1 = phi i8 [ %conv33.1, %if.then31.1.for.inc46.1_crit_edge ], [ %conv33.1, %if.end38.1.for.inc46.1_crit_edge ], [ %new_priomap.1, %for.inc46.for.inc46.1_crit_edge ]
  %22 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx27.2, align 1
  %conv28.2 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.2)
  %cmp29.2 = icmp eq i32 %band.1159, %conv28.2
  br i1 %cmp29.2, label %if.then31.2, label %for.inc46.1.for.inc46.2_crit_edge

for.inc46.1.for.inc46.2_crit_edge:                ; preds = %for.inc46.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.2

if.then31.2:                                      ; preds = %for.inc46.1
  %conv33.2 = or i8 %new_priomap.1.1, 4
  %and.2 = and i32 %conv35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool36.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool36.not.2, label %if.end38.2, label %if.then31.2.for.inc46.2_crit_edge

if.then31.2.for.inc46.2_crit_edge:                ; preds = %if.then31.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.2

if.end38.2:                                       ; preds = %if.then31.2
  %call41.2 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 2, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.2)
  %tobool42.not.2 = icmp eq i32 %call41.2, 0
  br i1 %tobool42.not.2, label %if.end38.2.for.inc46.2_crit_edge, label %if.end38.2.cleanup79_crit_edge

if.end38.2.cleanup79_crit_edge:                   ; preds = %if.end38.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.2.for.inc46.2_crit_edge:                 ; preds = %if.end38.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.2

for.inc46.2:                                      ; preds = %if.end38.2.for.inc46.2_crit_edge, %if.then31.2.for.inc46.2_crit_edge, %for.inc46.1.for.inc46.2_crit_edge
  %new_priomap.1.2 = phi i8 [ %conv33.2, %if.then31.2.for.inc46.2_crit_edge ], [ %conv33.2, %if.end38.2.for.inc46.2_crit_edge ], [ %new_priomap.1.1, %for.inc46.1.for.inc46.2_crit_edge ]
  %24 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx27.3, align 1
  %conv28.3 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.3)
  %cmp29.3 = icmp eq i32 %band.1159, %conv28.3
  br i1 %cmp29.3, label %if.then31.3, label %for.inc46.2.for.inc46.3_crit_edge

for.inc46.2.for.inc46.3_crit_edge:                ; preds = %for.inc46.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.3

if.then31.3:                                      ; preds = %for.inc46.2
  %conv33.3 = or i8 %new_priomap.1.2, 8
  %and.3 = and i32 %conv35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool36.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool36.not.3, label %if.end38.3, label %if.then31.3.for.inc46.3_crit_edge

if.then31.3.for.inc46.3_crit_edge:                ; preds = %if.then31.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.3

if.end38.3:                                       ; preds = %if.then31.3
  %call41.3 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 3, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.3)
  %tobool42.not.3 = icmp eq i32 %call41.3, 0
  br i1 %tobool42.not.3, label %if.end38.3.for.inc46.3_crit_edge, label %if.end38.3.cleanup79_crit_edge

if.end38.3.cleanup79_crit_edge:                   ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.3.for.inc46.3_crit_edge:                 ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.3

for.inc46.3:                                      ; preds = %if.end38.3.for.inc46.3_crit_edge, %if.then31.3.for.inc46.3_crit_edge, %for.inc46.2.for.inc46.3_crit_edge
  %new_priomap.1.3 = phi i8 [ %conv33.3, %if.then31.3.for.inc46.3_crit_edge ], [ %conv33.3, %if.end38.3.for.inc46.3_crit_edge ], [ %new_priomap.1.2, %for.inc46.2.for.inc46.3_crit_edge ]
  %26 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx27.4, align 1
  %conv28.4 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.4)
  %cmp29.4 = icmp eq i32 %band.1159, %conv28.4
  br i1 %cmp29.4, label %if.then31.4, label %for.inc46.3.for.inc46.4_crit_edge

for.inc46.3.for.inc46.4_crit_edge:                ; preds = %for.inc46.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.4

if.then31.4:                                      ; preds = %for.inc46.3
  %conv33.4 = or i8 %new_priomap.1.3, 16
  %and.4 = and i32 %conv35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool36.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool36.not.4, label %if.end38.4, label %if.then31.4.for.inc46.4_crit_edge

if.then31.4.for.inc46.4_crit_edge:                ; preds = %if.then31.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.4

if.end38.4:                                       ; preds = %if.then31.4
  %call41.4 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 4, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.4)
  %tobool42.not.4 = icmp eq i32 %call41.4, 0
  br i1 %tobool42.not.4, label %if.end38.4.for.inc46.4_crit_edge, label %if.end38.4.cleanup79_crit_edge

if.end38.4.cleanup79_crit_edge:                   ; preds = %if.end38.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.4.for.inc46.4_crit_edge:                 ; preds = %if.end38.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.4

for.inc46.4:                                      ; preds = %if.end38.4.for.inc46.4_crit_edge, %if.then31.4.for.inc46.4_crit_edge, %for.inc46.3.for.inc46.4_crit_edge
  %new_priomap.1.4 = phi i8 [ %conv33.4, %if.then31.4.for.inc46.4_crit_edge ], [ %conv33.4, %if.end38.4.for.inc46.4_crit_edge ], [ %new_priomap.1.3, %for.inc46.3.for.inc46.4_crit_edge ]
  %28 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx27.5, align 1
  %conv28.5 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.5)
  %cmp29.5 = icmp eq i32 %band.1159, %conv28.5
  br i1 %cmp29.5, label %if.then31.5, label %for.inc46.4.for.inc46.5_crit_edge

for.inc46.4.for.inc46.5_crit_edge:                ; preds = %for.inc46.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.5

if.then31.5:                                      ; preds = %for.inc46.4
  %conv33.5 = or i8 %new_priomap.1.4, 32
  %and.5 = and i32 %conv35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool36.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool36.not.5, label %if.end38.5, label %if.then31.5.for.inc46.5_crit_edge

if.then31.5.for.inc46.5_crit_edge:                ; preds = %if.then31.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.5

if.end38.5:                                       ; preds = %if.then31.5
  %call41.5 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 5, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.5)
  %tobool42.not.5 = icmp eq i32 %call41.5, 0
  br i1 %tobool42.not.5, label %if.end38.5.for.inc46.5_crit_edge, label %if.end38.5.cleanup79_crit_edge

if.end38.5.cleanup79_crit_edge:                   ; preds = %if.end38.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.5.for.inc46.5_crit_edge:                 ; preds = %if.end38.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.5

for.inc46.5:                                      ; preds = %if.end38.5.for.inc46.5_crit_edge, %if.then31.5.for.inc46.5_crit_edge, %for.inc46.4.for.inc46.5_crit_edge
  %new_priomap.1.5 = phi i8 [ %conv33.5, %if.then31.5.for.inc46.5_crit_edge ], [ %conv33.5, %if.end38.5.for.inc46.5_crit_edge ], [ %new_priomap.1.4, %for.inc46.4.for.inc46.5_crit_edge ]
  %30 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx27.6, align 1
  %conv28.6 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.6)
  %cmp29.6 = icmp eq i32 %band.1159, %conv28.6
  br i1 %cmp29.6, label %if.then31.6, label %for.inc46.5.for.inc46.6_crit_edge

for.inc46.5.for.inc46.6_crit_edge:                ; preds = %for.inc46.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.6

if.then31.6:                                      ; preds = %for.inc46.5
  %conv33.6 = or i8 %new_priomap.1.5, 64
  %and.6 = and i32 %conv35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool36.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool36.not.6, label %if.end38.6, label %if.then31.6.for.inc46.6_crit_edge

if.then31.6.for.inc46.6_crit_edge:                ; preds = %if.then31.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.6

if.end38.6:                                       ; preds = %if.then31.6
  %call41.6 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 6, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.6)
  %tobool42.not.6 = icmp eq i32 %call41.6, 0
  br i1 %tobool42.not.6, label %if.end38.6.for.inc46.6_crit_edge, label %if.end38.6.cleanup79_crit_edge

if.end38.6.cleanup79_crit_edge:                   ; preds = %if.end38.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.6.for.inc46.6_crit_edge:                 ; preds = %if.end38.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.6

for.inc46.6:                                      ; preds = %if.end38.6.for.inc46.6_crit_edge, %if.then31.6.for.inc46.6_crit_edge, %for.inc46.5.for.inc46.6_crit_edge
  %new_priomap.1.6 = phi i8 [ %conv33.6, %if.then31.6.for.inc46.6_crit_edge ], [ %conv33.6, %if.end38.6.for.inc46.6_crit_edge ], [ %new_priomap.1.5, %for.inc46.5.for.inc46.6_crit_edge ]
  %32 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx27.7, align 1
  %conv28.7 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %band.1159, i32 %conv28.7)
  %cmp29.7 = icmp eq i32 %band.1159, %conv28.7
  br i1 %cmp29.7, label %if.then31.7, label %for.inc46.6.for.inc46.7_crit_edge

for.inc46.6.for.inc46.7_crit_edge:                ; preds = %for.inc46.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.7

if.then31.7:                                      ; preds = %for.inc46.6
  %conv33.7 = or i8 %new_priomap.1.6, -128
  %and.7 = and i32 %conv35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool36.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool36.not.7, label %if.end38.7, label %if.then31.7.for.inc46.7_crit_edge

if.then31.7.for.inc46.7_crit_edge:                ; preds = %if.then31.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.7

if.end38.7:                                       ; preds = %if.then31.7
  %call41.7 = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext 7, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.7)
  %tobool42.not.7 = icmp eq i32 %call41.7, 0
  br i1 %tobool42.not.7, label %if.end38.7.for.inc46.7_crit_edge, label %if.end38.7.cleanup79_crit_edge

if.end38.7.cleanup79_crit_edge:                   ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

if.end38.7.for.inc46.7_crit_edge:                 ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46.7

for.inc46.7:                                      ; preds = %if.end38.7.for.inc46.7_crit_edge, %if.then31.7.for.inc46.7_crit_edge, %for.inc46.6.for.inc46.7_crit_edge
  %new_priomap.1.7 = phi i8 [ %conv33.7, %if.then31.7.for.inc46.7_crit_edge ], [ %conv33.7, %if.end38.7.for.inc46.7_crit_edge ], [ %new_priomap.1.6, %for.inc46.6.for.inc46.7_crit_edge ]
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %new_priomap.1.7, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %new_priomap.1.7)
  %cmp52.not = icmp eq i8 %13, %new_priomap.1.7
  br i1 %cmp52.not, label %for.inc46.7.if.end55_crit_edge, label %if.then54

for.inc46.7.if.end55_crit_edge:                   ; preds = %for.inc46.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %for.inc46.7
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc ptr @mlxsw_sp_qdisc_walk(ptr noundef %arrayidx10, ptr noundef nonnull @mlxsw_sp_qdisc_walk_cb_clean_stats, ptr noundef %mlxsw_sp_port) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %for.inc46.7.if.end55_crit_edge
  %35 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qdisc.i, align 4
  %future_handle.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %future_handle.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %future_handle.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %handle)
  %cmp.i = icmp eq i32 %38, %handle
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end55.for.inc60_crit_edge

if.end55.for.inc60_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc60

land.lhs.true.i:                                  ; preds = %if.end55
  %arrayidx.i = getelementptr %struct.mlxsw_sp_qdisc_state, ptr %36, i32 0, i32 2, i32 %band.1159
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc60_crit_edge, label %cleanup

land.lhs.true.i.for.inc60_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc60

cleanup:                                          ; preds = %land.lhs.true.i
  %call.i138 = tail call fastcc i32 @mlxsw_sp_qdisc_replace(ptr noundef %mlxsw_sp_port, i32 noundef 0, ptr noundef %arrayidx10, ptr noundef nonnull @mlxsw_sp_qdisc_ops_fifo, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool57.not = icmp eq i32 %call.i138, 0
  br i1 %tobool57.not, label %cleanup.for.inc60_crit_edge, label %cleanup.cleanup79_crit_edge

cleanup.cleanup79_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup79

cleanup.for.inc60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc60

for.inc60:                                        ; preds = %cleanup.for.inc60_crit_edge, %land.lhs.true.i.for.inc60_crit_edge, %if.end55.for.inc60_crit_edge
  %inc61 = add nuw i32 %band.1159, 1
  %exitcond165.not = icmp eq i32 %inc61, %nbands
  br i1 %exitcond165.not, label %for.cond63.preheader, label %for.inc60.for.body8_crit_edge

for.inc60.for.body8_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.lr.ph
  %band.2162 = phi i32 [ %band.1.lcssa169, %for.body66.lr.ph ], [ %inc77, %for.body66.for.body66_crit_edge ]
  %arrayidx68 = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %ets_data.0, i32 0, i32 %band.2162
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx68, align 4
  %42 = ptrtoint ptr %qdiscs70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qdiscs70, align 4
  %arrayidx71 = getelementptr %struct.mlxsw_sp_qdisc, ptr %43, i32 %band.2162
  %call72 = tail call fastcc i32 @mlxsw_sp_qdisc_destroy(ptr noundef %mlxsw_sp_port, ptr noundef %arrayidx71)
  %tclass_num73 = getelementptr [8 x %struct.mlxsw_sp_qdisc_ets_band], ptr %ets_data.0, i32 0, i32 %band.2162, i32 1
  %44 = ptrtoint ptr %tclass_num73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tclass_num73, align 4
  %conv74 = trunc i32 %45 to i8
  %call75 = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %mlxsw_sp_port, i32 noundef 2, i8 noundef zeroext %conv74, i8 noundef zeroext 0, i1 noundef zeroext false, i8 noundef zeroext 0) #13
  %inc77 = add i32 %band.2162, 1
  %exitcond166.not = icmp eq i32 %inc77, 8
  br i1 %exitcond166.not, label %for.body66.for.end78_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body66

for.body66.for.end78_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.end78:                                        ; preds = %for.body66.for.end78_crit_edge, %for.cond63.preheader.for.end78_crit_edge
  %qdisc.i139 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 13
  %46 = ptrtoint ptr %qdisc.i139 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qdisc.i139, align 4
  %future_handle.i140 = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %future_handle.i140 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %future_handle.i140, align 8
  %future_fifos.i = getelementptr inbounds %struct.mlxsw_sp_qdisc_state, ptr %47, i32 0, i32 2
  %49 = ptrtoint ptr %future_fifos.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %future_fifos.i, align 4
  br label %cleanup79

cleanup79:                                        ; preds = %for.end78, %cleanup.cleanup79_crit_edge, %if.end38.7.cleanup79_crit_edge, %if.end38.6.cleanup79_crit_edge, %if.end38.5.cleanup79_crit_edge, %if.end38.4.cleanup79_crit_edge, %if.end38.3.cleanup79_crit_edge, %if.end38.2.cleanup79_crit_edge, %if.end38.1.cleanup79_crit_edge, %if.end38.cleanup79_crit_edge, %for.body8.cleanup79_crit_edge, %if.then.cleanup79_crit_edge
  %retval.2 = phi i32 [ 0, %for.end78 ], [ -12, %if.then.cleanup79_crit_edge ], [ %call19, %for.body8.cleanup79_crit_edge ], [ %call.i138, %cleanup.cleanup79_crit_edge ], [ %call41.7, %if.end38.7.cleanup79_crit_edge ], [ %call41.6, %if.end38.6.cleanup79_crit_edge ], [ %call41.5, %if.end38.5.cleanup79_crit_edge ], [ %call41.4, %if.end38.4.cleanup79_crit_edge ], [ %call41.3, %if.end38.3.cleanup79_crit_edge ], [ %call41.2, %if.end38.2.cleanup79_crit_edge ], [ %call41.1, %if.end38.1.cleanup79_crit_edge ], [ %call41, %if.end38.cleanup79_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_ets_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_prio_tc_set(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_qdisc_walk_cb_clean_stats(ptr noundef %mlxsw_sp_qdisc, ptr noundef %mlxsw_sp_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %entry
  %backlog1 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %backlog1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %backlog1, align 8
  %clean_stats = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %clean_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clean_stats, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc) #13
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %backlog1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %3, ptr %backlog1, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret ptr null
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_ets_check_params(ptr nocapture noundef readnone %mlxsw_sp_port, ptr nocapture noundef readonly %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp ugt i32 %1, 8
  %..i = select i1 %cmp.i, i32 -95, i32 0
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_ets_replace(ptr noundef %mlxsw_sp_port, i32 noundef %handle, ptr nocapture noundef %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  %quanta = getelementptr inbounds %struct.tc_ets_qopt_offload_replace_params, ptr %params, i32 0, i32 2
  %weights = getelementptr inbounds %struct.tc_ets_qopt_offload_replace_params, ptr %params, i32 0, i32 3
  %priomap = getelementptr inbounds %struct.tc_ets_qopt_offload_replace_params, ptr %params, i32 0, i32 1
  %call = tail call fastcc i32 @__mlxsw_sp_qdisc_ets_replace(ptr noundef %mlxsw_sp_port, ptr noundef %mlxsw_sp_qdisc, i32 noundef %handle, i32 noundef %1, ptr noundef %quanta, ptr noundef %weights, ptr noundef %priomap)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qdisc_ets_destroy(ptr noundef %mlxsw_sp_port, ptr nocapture noundef %mlxsw_sp_qdisc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_classes.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 7
  %0 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_classes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %entry.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_qdisc_ets_destroy.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.02.i to i8
  %call.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %mlxsw_sp_port, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #13
  %call2.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %mlxsw_sp_port, i32 noundef 2, i8 noundef zeroext %conv.i, i8 noundef zeroext 0, i1 noundef zeroext false, i8 noundef zeroext 0) #13
  %inc.i = add nuw i32 %i.02.i, 1
  %2 = ptrtoint ptr %num_classes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_classes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge

for.body.i.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_qdisc_ets_destroy.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

__mlxsw_sp_qdisc_ets_destroy.exit:                ; preds = %for.body.i.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge, %entry.__mlxsw_sp_qdisc_ets_destroy.exit_crit_edge
  %4 = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_qdisc_ets_unoffload(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %mlxsw_sp_qdisc, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qstats = getelementptr inbounds %struct.tc_ets_qopt_offload_replace_params, ptr %params, i32 0, i32 4
  %0 = ptrtoint ptr %qstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qstats, align 4
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp.i, align 8
  %backlog1.i = getelementptr inbounds %struct.mlxsw_sp_qdisc, ptr %mlxsw_sp_qdisc, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %backlog1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %backlog1.i, align 8
  %conv.i = trunc i64 %5 to i32
  %call.i = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %conv.i) #13
  %backlog3.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %backlog3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog3.i, align 4
  %sub.i = sub i32 %7, %call.i
  store i32 %sub.i, ptr %backlog3.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_qevent_block_cb(i32 noundef %type, ptr nocapture noundef readonly %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cond = icmp eq i32 %type, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %command.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %0 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %command.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %mall_entry_list.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %cb_priv, i32 0, i32 1
  %3 = ptrtoint ptr %mall_entry_list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %mall_entry_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %mall_entry_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end3.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.bb.i
  %extack.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %5 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_mall_replace.__msg) #13
  %tobool1.not.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlxsw_sp_qevent_mall_replace.__msg, ptr %6, align 4
  br label %cleanup

if.end3.i.i:                                      ; preds = %sw.bb.i
  %rule.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 2
  %8 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rule.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i.i, label %if.end15.i.i, label %do.body5.i.i

do.body5.i.i:                                     ; preds = %if.end3.i.i
  %extack8.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %12 = ptrtoint ptr %extack8.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack8.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_mall_replace.__msg.57) #13
  %tobool9.not.i.i = icmp eq ptr %13, null
  br i1 %tobool9.not.i.i, label %do.body5.i.i.cleanup_crit_edge, label %if.then10.i.i

do.body5.i.i.cleanup_crit_edge:                   ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i:                                    ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlxsw_sp_qevent_mall_replace.__msg.57, ptr %13, align 4
  br label %cleanup

if.end15.i.i:                                     ; preds = %if.end3.i.i
  %15 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool17.not.i.i, label %if.end29.i.i, label %do.body19.i.i

do.body19.i.i:                                    ; preds = %if.end15.i.i
  %extack22.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %17 = ptrtoint ptr %extack22.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extack22.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_mall_replace.__msg.58) #13
  %tobool23.not.i.i = icmp eq ptr %18, null
  br i1 %tobool23.not.i.i, label %do.body19.i.i.cleanup_crit_edge, label %if.then24.i.i

do.body19.i.i.cleanup_crit_edge:                  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24.i.i:                                    ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlxsw_sp_qevent_mall_replace.__msg.58, ptr %18, align 4
  br label %cleanup

if.end29.i.i:                                     ; preds = %if.end15.i.i
  %protocol.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 1
  %20 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp31.not.i.i = icmp eq i16 %21, 3
  br i1 %cmp31.not.i.i, label %if.end44.i.i, label %do.body34.i.i

do.body34.i.i:                                    ; preds = %if.end29.i.i
  %extack37.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %22 = ptrtoint ptr %extack37.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extack37.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_mall_replace.__msg.59) #13
  %tobool38.not.i.i = icmp eq ptr %23, null
  br i1 %tobool38.not.i.i, label %do.body34.i.i.cleanup_crit_edge, label %if.then39.i.i

do.body34.i.i.cleanup_crit_edge:                  ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39.i.i:                                    ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mlxsw_sp_qevent_mall_replace.__msg.59, ptr %23, align 4
  br label %cleanup

if.end44.i.i:                                     ; preds = %if.end29.i.i
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %9, i32 1
  %hw_stats.i.i = getelementptr inbounds %struct.flow_rule, ptr %9, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_stats.i.i, align 8
  %and.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool47.not.i.i, label %do.body49.i.i, label %if.end59.i.i

do.body49.i.i:                                    ; preds = %if.end44.i.i
  %extack52.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %27 = ptrtoint ptr %extack52.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extack52.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_mall_replace.__msg.60) #13
  %tobool53.not.i.i = icmp eq ptr %28, null
  br i1 %tobool53.not.i.i, label %do.body49.i.i.cleanup_crit_edge, label %if.then54.i.i

do.body49.i.i.cleanup_crit_edge:                  ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then54.i.i:                                    ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlxsw_sp_qevent_mall_replace.__msg.60, ptr %28, align 4
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end44.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 52) #16
  %tobool61.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool61.not.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end63.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end63.i.i:                                     ; preds = %if.end59.i.i
  %cookie.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %31 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cookie.i.i, align 8
  %cookie64.i.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %cookie64.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cookie64.i.i, align 8
  %34 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entries.i.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %35, label %do.body74.i.i [
    i32 5, label %if.then67.i.i
    i32 2, label %if.then71.i.i
  ]

if.then67.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %type.i.i, align 8
  %38 = getelementptr inbounds %struct.flow_rule, ptr %9, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %41, align 8
  br label %if.end85.i.i

if.then71.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %type72.i.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %type72.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %type72.i.i, align 8
  br label %if.end85.i.i

do.body74.i.i:                                    ; preds = %if.end63.i.i
  %extack77.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %44 = ptrtoint ptr %extack77.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extack77.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_mall_replace.__msg.61) #13
  %tobool78.not.i.i = icmp eq ptr %45, null
  br i1 %tobool78.not.i.i, label %do.body74.i.i.err_unsupported_action.i.i_crit_edge, label %if.then79.i.i

do.body74.i.i.err_unsupported_action.i.i_crit_edge: ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unsupported_action.i.i

if.then79.i.i:                                    ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mlxsw_sp_qevent_mall_replace.__msg.61, ptr %45, align 4
  br label %err_unsupported_action.i.i

if.end85.i.i:                                     ; preds = %if.then71.i.i, %if.then67.i.i
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %cb_priv, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %48, ptr noundef %mall_entry_list.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end85.i.i.list_add_tail.exit.i.i_crit_edge

if.end85.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mall_entry_list.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call7.i.i.i.i, ptr %48, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end85.i.i.list_add_tail.exit.i.i_crit_edge
  %extack88.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %53 = ptrtoint ptr %extack88.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %extack88.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %list_add_tail.exit.i.i
  %qevent_binding.0.in.i.i = phi ptr [ %cb_priv, %list_add_tail.exit.i.i ], [ %qevent_binding.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %55 = ptrtoint ptr %qevent_binding.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %qevent_binding.0.i.i = load ptr, ptr %qevent_binding.0.in.i.i, align 4
  %cmp.not.i14.i = icmp eq ptr %qevent_binding.0.i.i, %cb_priv
  br i1 %cmp.not.i14.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %call.i.i = tail call fastcc i32 @mlxsw_sp_qevent_binding_configure(ptr noundef %cb_priv, ptr noundef %qevent_binding.0.i.i, ptr noundef %54) #13
  %tobool.not.i15.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i15.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.cond11.preheader.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

for.cond11.preheader.i.i:                         ; preds = %for.body.i.i
  %qevent_binding.1.in38.i.i = getelementptr inbounds %struct.list_head, ptr %qevent_binding.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %qevent_binding.1.in38.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %qevent_binding.139.i.i = load ptr, ptr %qevent_binding.1.in38.i.i, align 4
  %cmp14.not40.i.i = icmp eq ptr %qevent_binding.139.i.i, %cb_priv
  br i1 %cmp14.not40.i.i, label %for.cond11.preheader.i.i.err_block_configure.i.i_crit_edge, label %for.body16.lr.ph.i.i

for.cond11.preheader.i.i.err_block_configure.i.i_crit_edge: ; preds = %for.cond11.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_block_configure.i.i

for.body16.lr.ph.i.i:                             ; preds = %for.cond11.preheader.i.i
  %mlxsw_sp.i.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %cb_priv, i32 0, i32 2
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.for.body16.i.i_crit_edge, %for.body16.lr.ph.i.i
  %qevent_binding.141.i.i = phi ptr [ %qevent_binding.139.i.i, %for.body16.lr.ph.i.i ], [ %qevent_binding.1.i.i, %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.for.body16.i.i_crit_edge ]
  %57 = ptrtoint ptr %mall_entry_list.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %mall_entry.011.i.i.i = load ptr, ptr %mall_entry_list.i.i, align 4
  %cmp.not12.i.i17.i = icmp eq ptr %mall_entry.011.i.i.i, %mall_entry_list.i.i
  br i1 %cmp.not12.i.i17.i, label %for.body16.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i_crit_edge, label %for.body16.i.i.for.body.i.i20.i_crit_edge

for.body16.i.i.for.body.i.i20.i_crit_edge:        ; preds = %for.body16.i.i
  br label %for.body.i.i20.i

for.body16.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i

for.body.i.i20.i:                                 ; preds = %for.body.i.i20.i.for.body.i.i20.i_crit_edge, %for.body16.i.i.for.body.i.i20.i_crit_edge
  %mall_entry.013.i.i.i = phi ptr [ %mall_entry.0.i.i18.i, %for.body.i.i20.i.for.body.i.i20.i_crit_edge ], [ %mall_entry.011.i.i.i, %for.body16.i.i.for.body.i.i20.i_crit_edge ]
  %58 = ptrtoint ptr %mlxsw_sp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mlxsw_sp.i.i.i, align 4
  tail call fastcc void @mlxsw_sp_qevent_entry_deconfigure(ptr noundef %59, ptr noundef %mall_entry.013.i.i.i, ptr noundef %qevent_binding.141.i.i) #13
  %60 = ptrtoint ptr %mall_entry.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %mall_entry.0.i.i18.i = load ptr, ptr %mall_entry.013.i.i.i, align 4
  %cmp.not.i.i19.i = icmp eq ptr %mall_entry.0.i.i18.i, %mall_entry_list.i.i
  br i1 %cmp.not.i.i19.i, label %for.body.i.i20.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i_crit_edge, label %for.body.i.i20.i.for.body.i.i20.i_crit_edge

for.body.i.i20.i.for.body.i.i20.i_crit_edge:      ; preds = %for.body.i.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i20.i

for.body.i.i20.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i_crit_edge: ; preds = %for.body.i.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i

mlxsw_sp_qevent_binding_deconfigure.exit.i.i:     ; preds = %for.body.i.i20.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i_crit_edge, %for.body16.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i_crit_edge
  %qevent_binding.1.in.i.i = getelementptr inbounds %struct.list_head, ptr %qevent_binding.141.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %qevent_binding.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %qevent_binding.1.i.i = load ptr, ptr %qevent_binding.1.in.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %qevent_binding.1.i.i, %cb_priv
  br i1 %cmp14.not.i.i, label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.err_block_configure.i.i_crit_edge, label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.for.body16.i.i_crit_edge

mlxsw_sp_qevent_binding_deconfigure.exit.i.i.for.body16.i.i_crit_edge: ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16.i.i

mlxsw_sp_qevent_binding_deconfigure.exit.i.i.err_block_configure.i.i_crit_edge: ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_block_configure.i.i

err_block_configure.i.i:                          ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.err_block_configure.i.i_crit_edge, %for.cond11.preheader.i.i.err_block_configure.i.i_crit_edge
  %call.i.i1.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i.i) #13
  br i1 %call.i.i1.i.i, label %if.end.i.i2.i.i, label %err_block_configure.i.i.list_del.exit.i.i_crit_edge

err_block_configure.i.i.list_del.exit.i.i_crit_edge: ; preds = %err_block_configure.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i2.i.i:                                  ; preds = %err_block_configure.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i, align 4
  %64 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i.i.i, align 8
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i2.i.i, %err_block_configure.i.i.list_del.exit.i.i_crit_edge
  %68 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i.i, align 8
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i3.i.i, align 4
  br label %err_unsupported_action.i.i

err_unsupported_action.i.i:                       ; preds = %list_del.exit.i.i, %if.then79.i.i, %do.body74.i.i.err_unsupported_action.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %list_del.exit.i.i ], [ -95, %if.then79.i.i ], [ -95, %do.body74.i.i.err_unsupported_action.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb
  %cookie.i7.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %70 = ptrtoint ptr %cookie.i7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cookie.i7.i, align 8
  %mall_entry_list.i.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %cb_priv, i32 0, i32 1
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %sw.bb2.i
  %mall_entry.0.in.i.i.i = phi ptr [ %mall_entry_list.i.i.i, %sw.bb2.i ], [ %mall_entry.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %mall_entry.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %mall_entry.0.i.i.i = load ptr, ptr %mall_entry.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %mall_entry.0.i.i.i, %mall_entry_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.cleanup_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.cleanup_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %cookie2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %cookie2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cookie2.i.i.i, align 4
  %cmp3.i.i.i = icmp eq i32 %74, %71
  br i1 %cmp3.i.i.i, label %mlxsw_sp_qevent_mall_entry_find.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i.i

mlxsw_sp_qevent_mall_entry_find.exit.i.i:         ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %mall_entry.0.i.i.i, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_qevent_mall_entry_find.exit.i.i.cleanup_crit_edge, label %if.end.i.i

mlxsw_sp_qevent_mall_entry_find.exit.i.i.cleanup_crit_edge: ; preds = %mlxsw_sp_qevent_mall_entry_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %mlxsw_sp_qevent_mall_entry_find.exit.i.i
  %75 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %qevent_binding.011.i.i.i = load ptr, ptr %cb_priv, align 4
  %cmp.not12.i.i.i = icmp eq ptr %qevent_binding.011.i.i.i, %cb_priv
  br i1 %cmp.not12.i.i.i, label %if.end.i.i.mlxsw_sp_qevent_block_deconfigure.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.mlxsw_sp_qevent_block_deconfigure.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_block_deconfigure.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %mlxsw_sp.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %cb_priv, i32 0, i32 2
  br label %for.body.i4.i.i

for.body.i4.i.i:                                  ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.for.body.i4.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %qevent_binding.013.i.i.i = phi ptr [ %qevent_binding.011.i.i.i, %for.body.lr.ph.i.i.i ], [ %qevent_binding.0.i.i.i, %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.for.body.i4.i.i_crit_edge ]
  %76 = ptrtoint ptr %mall_entry_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %mall_entry.011.i.i.i.i = load ptr, ptr %mall_entry_list.i.i.i, align 4
  %cmp.not12.i.i.i.i = icmp eq ptr %mall_entry.011.i.i.i.i, %mall_entry_list.i.i.i
  br i1 %cmp.not12.i.i.i.i, label %for.body.i4.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i_crit_edge, label %for.body.i4.i.i.for.body.i.i.i.i_crit_edge

for.body.i4.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.body.i4.i.i
  br label %for.body.i.i.i.i

for.body.i4.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i_crit_edge: ; preds = %for.body.i4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i4.i.i.for.body.i.i.i.i_crit_edge
  %mall_entry.013.i.i.i.i = phi ptr [ %mall_entry.0.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %mall_entry.011.i.i.i.i, %for.body.i4.i.i.for.body.i.i.i.i_crit_edge ]
  %77 = ptrtoint ptr %mlxsw_sp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mlxsw_sp.i.i.i.i, align 4
  tail call fastcc void @mlxsw_sp_qevent_entry_deconfigure(ptr noundef %78, ptr noundef %mall_entry.013.i.i.i.i, ptr noundef %qevent_binding.013.i.i.i) #13
  %79 = ptrtoint ptr %mall_entry.013.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %mall_entry.0.i.i.i.i = load ptr, ptr %mall_entry.013.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %mall_entry.0.i.i.i.i, %mall_entry_list.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i.i

for.body.i.i.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i

mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i:   ; preds = %for.body.i.i.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i_crit_edge, %for.body.i4.i.i.mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i_crit_edge
  %80 = ptrtoint ptr %qevent_binding.013.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %qevent_binding.0.i.i.i = load ptr, ptr %qevent_binding.013.i.i.i, align 4
  %cmp.not.i5.i.i = icmp eq ptr %qevent_binding.0.i.i.i, %cb_priv
  br i1 %cmp.not.i5.i.i, label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.mlxsw_sp_qevent_block_deconfigure.exit.i.i_crit_edge, label %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.for.body.i4.i.i_crit_edge

mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.for.body.i4.i.i_crit_edge: ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i4.i.i

mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.mlxsw_sp_qevent_block_deconfigure.exit.i.i_crit_edge: ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_block_deconfigure.exit.i.i

mlxsw_sp_qevent_block_deconfigure.exit.i.i:       ; preds = %mlxsw_sp_qevent_binding_deconfigure.exit.i.i.i.mlxsw_sp_qevent_block_deconfigure.exit.i.i_crit_edge, %if.end.i.i.mlxsw_sp_qevent_block_deconfigure.exit.i.i_crit_edge
  %call.i.i.i8.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mall_entry.0.i.i.i) #13
  br i1 %call.i.i.i8.i, label %if.end.i.i.i11.i, label %mlxsw_sp_qevent_block_deconfigure.exit.i.i.list_del.exit.i13.i_crit_edge

mlxsw_sp_qevent_block_deconfigure.exit.i.i.list_del.exit.i13.i_crit_edge: ; preds = %mlxsw_sp_qevent_block_deconfigure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i13.i

if.end.i.i.i11.i:                                 ; preds = %mlxsw_sp_qevent_block_deconfigure.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i9.i = getelementptr inbounds %struct.list_head, ptr %mall_entry.0.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i9.i, align 4
  %83 = ptrtoint ptr %mall_entry.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mall_entry.0.i.i.i, align 4
  %prev1.i.i.i.i10.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i10.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i13.i

list_del.exit.i13.i:                              ; preds = %if.end.i.i.i11.i, %mlxsw_sp_qevent_block_deconfigure.exit.i.i.list_del.exit.i13.i_crit_edge
  %87 = ptrtoint ptr %mall_entry.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %mall_entry.0.i.i.i, align 4
  %prev.i.i12.i = getelementptr inbounds %struct.list_head, ptr %mall_entry.0.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i12.i, align 4
  tail call void @kfree(ptr noundef nonnull %mall_entry.0.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i13.i, %mlxsw_sp_qevent_mall_entry_find.exit.i.i.cleanup_crit_edge, %for.cond.i.i.i.cleanup_crit_edge, %err_unsupported_action.i.i, %for.cond.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.then54.i.i, %do.body49.i.i.cleanup_crit_edge, %if.then39.i.i, %do.body34.i.i.cleanup_crit_edge, %if.then24.i.i, %do.body19.i.i.cleanup_crit_edge, %if.then10.i.i, %do.body5.i.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %err.0.i.i, %err_unsupported_action.i.i ], [ -95, %if.then2.i.i ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then10.i.i ], [ -95, %do.body5.i.i.cleanup_crit_edge ], [ -95, %if.then24.i.i ], [ -95, %do.body19.i.i.cleanup_crit_edge ], [ -95, %if.then39.i.i ], [ -95, %do.body34.i.i.cleanup_crit_edge ], [ -95, %if.then54.i.i ], [ -95, %do.body49.i.i.cleanup_crit_edge ], [ -12, %if.end59.i.i.cleanup_crit_edge ], [ 0, %mlxsw_sp_qevent_mall_entry_find.exit.i.i.cleanup_crit_edge ], [ 0, %list_del.exit.i13.i ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_qevent_block_release(ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cb_priv, align 4
  %cmp.i.not.i = icmp eq ptr %1, %cb_priv
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !133

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2116, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %mall_entry_list.i = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %cb_priv, i32 0, i32 1
  %2 = ptrtoint ptr %mall_entry_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mall_entry_list.i, align 4
  %cmp.i59.not.i = icmp eq ptr %3, %mall_entry_list.i
  br i1 %cmp.i59.not.i, label %if.end.i.mlxsw_sp_qevent_block_destroy.exit_crit_edge, label %do.end41.i, !prof !133

if.end.i.mlxsw_sp_qevent_block_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_block_destroy.exit

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2117, i32 noundef 9, ptr noundef null) #13
  br label %mlxsw_sp_qevent_block_destroy.exit

mlxsw_sp_qevent_block_destroy.exit:               ; preds = %do.end41.i, %if.end.i.mlxsw_sp_qevent_block_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %cb_priv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_incref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_qevent_binding_configure(ptr noundef readonly %qevent_block, ptr nocapture noundef readonly %qevent_binding, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %agent_parms.i34.i = alloca %struct.mlxsw_sp_span_agent_parms, align 4
  %agent_parms.i.i = alloca %struct.mlxsw_sp_span_agent_parms, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mall_entry_list = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %qevent_block, i32 0, i32 1
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_qevent_block, ptr %qevent_block, i32 0, i32 2
  %action_mask.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 5
  %policer_enable.i35.i = getelementptr inbounds %struct.mlxsw_sp_span_agent_parms, ptr %agent_parms.i34.i, i32 0, i32 2
  %policer_id.i36.i = getelementptr inbounds %struct.mlxsw_sp_span_agent_parms, ptr %agent_parms.i34.i, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %agent_parms.i.i, i32 4
  %session_id.i.i = getelementptr inbounds %struct.mlxsw_sp_span_agent_parms, ptr %agent_parms.i.i, i32 0, i32 3
  %tobool1.not.i = icmp eq ptr %extack, null
  br label %for.cond

for.cond:                                         ; preds = %mlxsw_sp_qevent_entry_configure.exit.for.cond_crit_edge, %entry
  %mall_entry.0.in = phi ptr [ %mall_entry_list, %entry ], [ %mall_entry.0, %mlxsw_sp_qevent_entry_configure.exit.for.cond_crit_edge ]
  %1 = ptrtoint ptr %mall_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %mall_entry.0 = load ptr, ptr %mall_entry.0.in, align 4
  %cmp.not = icmp eq ptr %mall_entry.0, %mall_entry_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %type.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0, i32 0, i32 3
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %shl.i = shl nuw i32 1, %5
  %6 = ptrtoint ptr %action_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action_mask.i, align 4
  %and.i = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_qevent_entry_configure.__msg) #13
  br i1 %tobool1.not.i, label %do.body.i.for.cond11.preheader_crit_edge, label %if.then2.i

do.body.i.for.cond11.preheader_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond11.preheader

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mlxsw_sp_qevent_entry_configure.__msg, ptr %extack, align 4
  br label %for.cond11.preheader

if.end3.i:                                        ; preds = %for.body
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %do.end13.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %agent_parms.i.i) #13
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %0, align 4
  %11 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %agent_parms.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %agent_parms.i.i, align 4
  %15 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %session_id.i.i, align 4
  %span_id.i.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0, i32 0, i32 5, i32 0, i32 0, i32 1
  %call.i.i = call fastcc i32 @mlxsw_sp_qevent_span_configure(ptr noundef %3, ptr noundef %qevent_binding, ptr noundef nonnull %agent_parms.i.i, ptr noundef %span_id.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %agent_parms.i.i) #13
  br label %mlxsw_sp_qevent_entry_configure.exit

sw.bb5.i:                                         ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %agent_parms.i34.i) #13
  %16 = call ptr @memset(ptr %agent_parms.i34.i, i32 0, i32 12)
  %call.i37.i = call i32 @mlxsw_sp_trap_group_policer_hw_id_get(ptr noundef %3, i16 noundef zeroext 3, ptr noundef %policer_enable.i35.i, ptr noundef %policer_id.i36.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb5.i.mlxsw_sp_qevent_trap_configure.exit.i_crit_edge

sw.bb5.i.mlxsw_sp_qevent_trap_configure.exit.i_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_qevent_trap_configure.exit.i

if.end.i.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0, i32 0, i32 5
  %call1.i.i = call fastcc i32 @mlxsw_sp_qevent_span_configure(ptr noundef %3, ptr noundef %qevent_binding, ptr noundef nonnull %agent_parms.i34.i, ptr noundef %17) #13
  br label %mlxsw_sp_qevent_trap_configure.exit.i

mlxsw_sp_qevent_trap_configure.exit.i:            ; preds = %if.end.i.i, %sw.bb5.i.mlxsw_sp_qevent_trap_configure.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call1.i.i, %if.end.i.i ], [ %call.i37.i, %sw.bb5.i.mlxsw_sp_qevent_trap_configure.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %agent_parms.i34.i) #13
  br label %mlxsw_sp_qevent_entry_configure.exit

do.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1893, i32 noundef 9, ptr noundef null) #13
  br label %for.cond11.preheader

mlxsw_sp_qevent_entry_configure.exit:             ; preds = %mlxsw_sp_qevent_trap_configure.exit.i, %sw.bb.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %mlxsw_sp_qevent_trap_configure.exit.i ], [ %call.i.i, %sw.bb.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mlxsw_sp_qevent_entry_configure.exit.for.cond_crit_edge, label %mlxsw_sp_qevent_entry_configure.exit.for.cond11.preheader_crit_edge

mlxsw_sp_qevent_entry_configure.exit.for.cond11.preheader_crit_edge: ; preds = %mlxsw_sp_qevent_entry_configure.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond11.preheader

mlxsw_sp_qevent_entry_configure.exit.for.cond_crit_edge: ; preds = %mlxsw_sp_qevent_entry_configure.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.cond11.preheader:                             ; preds = %mlxsw_sp_qevent_entry_configure.exit.for.cond11.preheader_crit_edge, %do.end13.i, %if.then2.i, %do.body.i.for.cond11.preheader_crit_edge
  %retval.0.i48 = phi i32 [ -95, %do.end13.i ], [ -95, %if.then2.i ], [ -95, %do.body.i.for.cond11.preheader_crit_edge ], [ %retval.0.i, %mlxsw_sp_qevent_entry_configure.exit.for.cond11.preheader_crit_edge ]
  %mall_entry.1.in40 = getelementptr inbounds %struct.list_head, ptr %mall_entry.0, i32 0, i32 1
  %18 = ptrtoint ptr %mall_entry.1.in40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %mall_entry.141 = load ptr, ptr %mall_entry.1.in40, align 4
  %cmp14.not42 = icmp eq ptr %mall_entry.141, %mall_entry_list
  br i1 %cmp14.not42, label %for.cond11.preheader.cleanup_crit_edge, label %for.cond11.preheader.for.body16_crit_edge

for.cond11.preheader.for.body16_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body16

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond11.preheader.for.body16_crit_edge
  %mall_entry.143 = phi ptr [ %mall_entry.1, %for.body16.for.body16_crit_edge ], [ %mall_entry.141, %for.cond11.preheader.for.body16_crit_edge ]
  %19 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mlxsw_sp, align 4
  call fastcc void @mlxsw_sp_qevent_entry_deconfigure(ptr noundef %20, ptr noundef %mall_entry.143, ptr noundef %qevent_binding)
  %mall_entry.1.in = getelementptr inbounds %struct.list_head, ptr %mall_entry.143, i32 0, i32 1
  %21 = ptrtoint ptr %mall_entry.1.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %mall_entry.1 = load ptr, ptr %mall_entry.1.in, align 4
  %cmp14.not = icmp eq ptr %mall_entry.1, %mall_entry_list
  br i1 %cmp14.not, label %for.body16.cleanup_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body16.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %for.cond11.preheader.cleanup_crit_edge ], [ %retval.0.i48, %for.body16.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_decref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_qevent_entry_deconfigure(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %mall_entry, ptr nocapture noundef readonly %qevent_binding) unnamed_addr #0 align 64 {
entry:
  %trigger_parms.i.i21 = alloca %struct.mlxsw_sp_span_trigger_parms, align 4
  %trigger_parms.i.i = alloca %struct.mlxsw_sp_span_trigger_parms, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %span_id.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %span_id.i, align 4
  %span_trigger1.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 4
  %5 = ptrtoint ptr %span_trigger1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %span_trigger1.i.i, align 4
  %mlxsw_sp_port2.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 1
  %7 = ptrtoint ptr %mlxsw_sp_port2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mlxsw_sp_port2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger_parms.i.i) #13
  %9 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %trigger_parms.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %trigger_parms.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %trigger_parms.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %9, align 4
  %call.i.i = tail call zeroext i1 @mlxsw_sp_span_trigger_is_ingress(i32 noundef %6) #13
  %tclass_num.i.i = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 3
  %12 = ptrtoint ptr %tclass_num.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tclass_num.i.i, align 4
  %conv.i.i = trunc i32 %13 to i8
  tail call void @mlxsw_sp_span_trigger_disable(ptr noundef %8, i32 noundef %6, i8 noundef zeroext %conv.i.i) #13
  call void @mlxsw_sp_span_agent_unbind(ptr noundef %mlxsw_sp, i32 noundef %6, ptr noundef %8, ptr noundef nonnull %trigger_parms.i.i) #13
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %8, i1 noundef zeroext %call.i.i) #13
  call void @mlxsw_sp_span_agent_put(ptr noundef %mlxsw_sp, i32 noundef %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger_parms.i.i) #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %span_trigger1.i.i22 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 4
  %17 = ptrtoint ptr %span_trigger1.i.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %span_trigger1.i.i22, align 4
  %mlxsw_sp_port2.i.i23 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 1
  %19 = ptrtoint ptr %mlxsw_sp_port2.i.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mlxsw_sp_port2.i.i23, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger_parms.i.i21) #13
  %21 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %trigger_parms.i.i21, i32 0, i32 1
  %22 = ptrtoint ptr %trigger_parms.i.i21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %16, ptr %trigger_parms.i.i21, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %21, align 4
  %call.i.i24 = tail call zeroext i1 @mlxsw_sp_span_trigger_is_ingress(i32 noundef %18) #13
  %tclass_num.i.i25 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 3
  %24 = ptrtoint ptr %tclass_num.i.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tclass_num.i.i25, align 4
  %conv.i.i26 = trunc i32 %25 to i8
  tail call void @mlxsw_sp_span_trigger_disable(ptr noundef %20, i32 noundef %18, i8 noundef zeroext %conv.i.i26) #13
  call void @mlxsw_sp_span_agent_unbind(ptr noundef %mlxsw_sp, i32 noundef %18, ptr noundef %20, ptr noundef nonnull %trigger_parms.i.i21) #13
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %20, i1 noundef zeroext %call.i.i24) #13
  call void @mlxsw_sp_span_agent_put(ptr noundef %mlxsw_sp, i32 noundef %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger_parms.i.i21) #13
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1908, i32 noundef 9, ptr noundef null) #13
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_span_trigger_is_ingress(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_trigger_disable(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_agent_unbind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_analyzed_port_put(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_agent_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_qevent_span_configure(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %qevent_binding, ptr noundef %agent_parms, ptr nocapture noundef writeonly %p_span_id) unnamed_addr #0 align 64 {
entry:
  %trigger_parms = alloca %struct.mlxsw_sp_span_trigger_parms, align 8
  %span_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %span_trigger1 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 4
  %0 = ptrtoint ptr %span_trigger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %span_trigger1, align 4
  %mlxsw_sp_port2 = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp_port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp_port2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger_parms) #13
  %4 = ptrtoint ptr %trigger_parms to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %trigger_parms, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %span_id) #13
  %5 = ptrtoint ptr %span_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %span_id, align 4, !annotation !137
  %call = call i32 @mlxsw_sp_span_agent_get(ptr noundef %mlxsw_sp, ptr noundef nonnull %span_id, ptr noundef %agent_parms) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @mlxsw_sp_span_trigger_is_ingress(i32 noundef %1) #13
  %call5 = call i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef %3, i1 noundef zeroext %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err_analyzed_port_get_crit_edge

if.end.err_analyzed_port_get_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_analyzed_port_get

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %span_id, align 4
  %8 = ptrtoint ptr %trigger_parms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %trigger_parms, align 8
  %probability_rate = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %trigger_parms, i32 0, i32 1
  %9 = ptrtoint ptr %probability_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %probability_rate, align 4
  %call10 = call i32 @mlxsw_sp_span_agent_bind(ptr noundef %mlxsw_sp, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %trigger_parms) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_agent_bind_crit_edge

if.end8.err_agent_bind_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_agent_bind

if.end13:                                         ; preds = %if.end8
  %tclass_num = getelementptr inbounds %struct.mlxsw_sp_qevent_binding, ptr %qevent_binding, i32 0, i32 3
  %10 = ptrtoint ptr %tclass_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tclass_num, align 4
  %conv = trunc i32 %11 to i8
  %call14 = call i32 @mlxsw_sp_span_trigger_enable(ptr noundef %3, i32 noundef %1, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %err_trigger_enable

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %span_id, align 4
  %14 = ptrtoint ptr %p_span_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %p_span_id, align 4
  br label %cleanup

err_trigger_enable:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlxsw_sp_span_agent_unbind(ptr noundef %mlxsw_sp, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %trigger_parms) #13
  br label %err_agent_bind

err_agent_bind:                                   ; preds = %err_trigger_enable, %if.end8.err_agent_bind_crit_edge
  %err.0 = phi i32 [ %call10, %if.end8.err_agent_bind_crit_edge ], [ %call14, %err_trigger_enable ]
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %3, i1 noundef zeroext %call3) #13
  br label %err_analyzed_port_get

err_analyzed_port_get:                            ; preds = %err_agent_bind, %if.end.err_analyzed_port_get_crit_edge
  %err.1 = phi i32 [ %call5, %if.end.err_analyzed_port_get_crit_edge ], [ %err.0, %err_agent_bind ]
  %15 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %span_id, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %mlxsw_sp, i32 noundef %16) #13
  br label %cleanup

cleanup:                                          ; preds = %err_analyzed_port_get, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_analyzed_port_get ], [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %span_id) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger_parms) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_agent_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_agent_bind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_trigger_enable(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_trap_group_policer_hw_id_get(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @mlxsw_sp_tc_qdisc_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2328, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 337, i32 3}
!5 = !{ptr @mlxsw_sp_qdisc_ops_red, !6, !"mlxsw_sp_qdisc_ops_red", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 834, i32 34}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 686, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlxsw_sp_qdisc_red_check_params._entry, !8, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlxsw_sp_qdisc_red_check_params._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 693, i32 3}
!16 = !{ptr @mlxsw_sp_qdisc_red_check_params._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlxsw_sp_qdisc_red_check_params._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 698, i32 3}
!20 = !{ptr @mlxsw_sp_qdisc_red_check_params._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlxsw_sp_qdisc_red_check_params._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mlxsw_sp_qdisc_ops_fifo, !23, !"mlxsw_sp_qdisc_ops_fifo", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1153, i32 34}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__mlxsw_item_offset._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @__mlxsw_item_offset._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2148, i32 1}
!35 = distinct !{null, !34, !"mlxsw_reg_cwtp_local_port_item", i1 false, i1 false}
!36 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !34, !"mlxsw_reg_cwtp_lp_msb_item", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2154, i32 1}
!40 = distinct !{null, !39, !"mlxsw_reg_cwtp_traffic_class_item", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2160, i32 1}
!43 = distinct !{null, !42, !"mlxsw_reg_cwtp_profile_min_item", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2175, i32 1}
!46 = distinct !{null, !45, !"mlxsw_reg_cwtp_profile_max_item", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2168, i32 1}
!49 = distinct !{null, !48, !"mlxsw_reg_cwtp_profile_percent_item", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2141, i32 1}
!52 = !{ptr @mlxsw_reg_cwtp, !51, !"mlxsw_reg_cwtp", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2226, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_cwtpm_local_port_item", i1 false, i1 false}
!56 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !54, !"mlxsw_reg_cwtpm_lp_msb_item", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2232, i32 1}
!60 = distinct !{null, !59, !"mlxsw_reg_cwtpm_traffic_class_item", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2240, i32 1}
!63 = distinct !{null, !62, !"mlxsw_reg_cwtpm_ew_item", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2248, i32 1}
!66 = distinct !{null, !65, !"mlxsw_reg_cwtpm_ee_item", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2256, i32 1}
!69 = distinct !{null, !68, !"mlxsw_reg_cwtpm_tcp_g_item", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2264, i32 1}
!72 = distinct !{null, !71, !"mlxsw_reg_cwtpm_tcp_y_item", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2272, i32 1}
!75 = distinct !{null, !74, !"mlxsw_reg_cwtpm_tcp_r_item", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2280, i32 1}
!78 = distinct !{null, !77, !"mlxsw_reg_cwtpm_ntcp_g_item", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2288, i32 1}
!81 = distinct !{null, !80, !"mlxsw_reg_cwtpm_ntcp_y_item", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2296, i32 1}
!84 = distinct !{null, !83, !"mlxsw_reg_cwtpm_ntcp_r_item", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2219, i32 1}
!87 = !{ptr @mlxsw_reg_cwtpm, !86, !"mlxsw_reg_cwtpm", i1 false, i1 false}
!88 = !{ptr @mlxsw_sp_qdisc_ops_tbf, !89, !"mlxsw_sp_qdisc_ops_tbf", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1072, i32 34}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1000, i32 3}
!92 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mlxsw_sp_qdisc_tbf_check_params._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mlxsw_sp_qdisc_tbf_check_params._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1010, i32 3}
!97 = !{ptr @mlxsw_sp_qdisc_tbf_check_params._entry.54, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mlxsw_sp_qdisc_tbf_check_params._entry_ptr.56, !96, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1044, i32 6}
!101 = !{ptr @mlxsw_sp_qdisc_ops_prio, !102, !"mlxsw_sp_qdisc_ops_prio", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1527, i32 34}
!103 = !{ptr @mlxsw_sp_qdisc_ops_ets, !104, !"mlxsw_sp_qdisc_ops_ets", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1580, i32 34}
!105 = !{ptr @mlxsw_sp_qevent_block_cb_list, !106, !"mlxsw_sp_qevent_block_cb_list", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1759, i32 8}
!107 = !{ptr @mlxsw_sp_setup_tc_block_qevent_bind.__msg, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2203, i32 3}
!109 = !{ptr @mlxsw_sp_qevent_mall_replace.__msg, !110, !"__msg", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2002, i32 3}
!111 = !{ptr @mlxsw_sp_qevent_mall_replace.__msg.57, !112, !"__msg", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2006, i32 3}
!113 = !{ptr @mlxsw_sp_qevent_mall_replace.__msg.58, !114, !"__msg", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2010, i32 3}
!115 = !{ptr @mlxsw_sp_qevent_mall_replace.__msg.59, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2014, i32 3}
!117 = !{ptr @mlxsw_sp_qevent_mall_replace.__msg.60, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2020, i32 3}
!119 = !{ptr @mlxsw_sp_qevent_mall_replace.__msg.61, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 2035, i32 3}
!121 = !{ptr @mlxsw_sp_qevent_entry_configure.__msg, !122, !"__msg", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_qdisc.c", i32 1882, i32 3}
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
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{ptr @mlxsw_sp_qdisc_walk_cb_clean_stats, ptr @mlxsw_sp_qdisc_walk_cb_find, ptr @mlxsw_sp_qdisc_walk_cb_find_by_handle}
!136 = !{i8 0, i8 2}
!137 = !{!"auto-init"}
!138 = !{i64 2150297311}
!139 = !{i64 2150302245}
!140 = !{i64 2150323963}
!141 = !{i64 2150328857}
!142 = !{i64 2150405384}
!143 = !{i64 2150405709}
!144 = !{i64 1179620, i64 1179647, i64 1179669, i64 1179697}
!145 = !{i64 1180028, i64 1180055, i64 1180088, i64 1180109, i64 1180136, i64 1180162}
!146 = !{i32 0, i32 33}
