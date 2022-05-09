; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.165, %struct.anon.166, %struct.mlxsw_sp_port_mapping, %struct.anon.167, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.169, i32, i32, ptr, i64 }
%struct.anon.165 = type { i8 }
%struct.anon.166 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.167 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.169 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlxsw_sp_hdroom = type { i32, %struct.anon.170, %struct.anon.171, %struct.anon.172, i32, i32 }
%struct.anon.170 = type { [8 x %struct.mlxsw_sp_hdroom_prio] }
%struct.mlxsw_sp_hdroom_prio = type { i8, i8, i8, i8 }
%struct.anon.171 = type { [10 x %struct.mlxsw_sp_hdroom_buf] }
%struct.mlxsw_sp_hdroom_buf = type { i32, i32, i32, i8 }
%struct.anon.172 = type { i32, i32, i8 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.dcb_app = type { i8, i8, i16 }
%struct.dcbnl_buffer = type { [8 x i8], [8 x i32], i32 }
%struct.dcb_ieee_app_prio_map = type { [8 x i64] }
%struct.dcb_ieee_app_dscp_map = type { [64 x i8] }

@mlxsw_sp_dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @mlxsw_sp_dcbnl_ieee_getets, ptr @mlxsw_sp_dcbnl_ieee_setets, ptr @mlxsw_sp_dcbnl_ieee_getmaxrate, ptr @mlxsw_sp_dcbnl_ieee_setmaxrate, ptr null, ptr null, ptr null, ptr @mlxsw_sp_dcbnl_ieee_getpfc, ptr @mlxsw_sp_dcbnl_ieee_setpfc, ptr null, ptr @mlxsw_sp_dcbnl_ieee_setapp, ptr @mlxsw_sp_dcbnl_ieee_delapp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_dcbnl_getdcbx, ptr @mlxsw_sp_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_dcbnl_getbuffer, ptr @mlxsw_sp_dcbnl_setbuffer }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Only strict priority and ETS are supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Invalid TC\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Total ETS bandwidth should equal 100\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to link subgroup ETS element %d to group\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to map prio %d to TC %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to configure port's headroom\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set maxrate for TC %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get PFC count for priority %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mlxsw_reg_ppcnt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20488, i16 256, ptr @.str.27 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 35, ptr null, ptr null }, align 1
@.str.8 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_ppcnt_swid\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ppcnt_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_ppcnt_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_ppcnt_pnat\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_ppcnt_grp\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_ppcnt_clr\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_ppcnt_lp_gl\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_ppcnt_prio_tc\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ppcnt\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ppcnt_tx_pause\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ppcnt_rx_pause\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PAUSE frames already enabled on port\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to configure port's headroom for PFC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to configure PFC\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_reg_pfcc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20487, i16 32, ptr @.str.51 }, [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pfcc_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pfcc_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_pfcc_pprx\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_pfcc_pptx\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_pfcc_prio_mask_tx\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_pfcc_prio_mask_rx\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_pfcc_pfctx\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_pfcc_pfcrx\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pfcc\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"APP entry with priority value %u is invalid\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DSCP APP entry with protocol value %u is invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Choosing priority %d for DSCP %d in favor of previously-active value of %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Ignoring new priority %d for DSCP %d in favor of current value of %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"EtherType APP entries with protocol value != 0 not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"APP entries with selector %u not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't configure port default priority\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't configure priority map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't configure DSCP rewrite map\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't switch to trust L2\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't switch to trust L3\0A\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpdp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16391, i16 8, ptr @.str.69 }, [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_qpdp_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_qpdp_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_qpdp_switch_prio\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qpdp\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpdpm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16403, i16 132, ptr @.str.78 }, [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_qpdpm_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_qpdpm_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_qpdpm_dscp_entry_e\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_qpdpm_dscp_entry_prio\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qpdpm\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpdsm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16401, i16 68, ptr @.str.95 }, [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_qpdsm_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_qpdsm_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_qpdsm_prio_entry_color0_e\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_qpdsm_prio_entry_color0_dscp\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_qpdsm_prio_entry_color1_e\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_qpdsm_prio_entry_color1_dscp\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_qpdsm_prio_entry_color2_e\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_qpdsm_prio_entry_color2_dscp\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qpdsm\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpts = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16386, i16 8, ptr @.str.102 }, [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_qpts_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_qpts_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_qpts_trust_state\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qpts\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_qrwe = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16399, i16 8, ptr @.str.111 }, [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_qrwe_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_qrwe_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qrwe_pcp\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_qrwe_dscp\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qrwe\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to update DCB APP configuration\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"The use of dcbnl_setbuffer is only allowed if egress is configured using TC\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"mlxsw_sp_dcbnl_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 651, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 49, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 54, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 60, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 107, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 117, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 84, i32 19 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 472, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 519, i32 20 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_ppcnt\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 33, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4934, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4940, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4948, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4979, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4987, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4995, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 5005, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4923, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 5372, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 5360, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 555, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 575, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 581, i32 19 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pfcc\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4792, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4880, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4852, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4837, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4844, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4872, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4897, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4786, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 174, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 182, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 191, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 194, i32 22 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 201, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 207, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 362, i32 34 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 374, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 381, i32 34 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 389, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 401, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qpdp\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4081, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4087, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4075, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_qpdpm\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4116, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4124, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4131, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4110, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_qpdsm\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3995, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4001, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4010, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4018, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4027, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4035, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 4044, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3989, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qpts\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3522, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3533, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3514, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qrwe\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3954, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3966, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3960, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 3946, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 445, i32 19 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 633, i32 19 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mlxsw_reg_ppcnt, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mlxsw_reg_pfcc, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @mlxsw_reg_qpdp, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @mlxsw_reg_qpdpm, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @mlxsw_reg_qpdsm, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @mlxsw_reg_qpts, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @mlxsw_reg_qrwe, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ppcnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pfcc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpdp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpdpm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpdsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qrwe to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_port_dcb_init(ptr nocapture noundef %mlxsw_sp_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 59) #11
  %dcb.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8
  %1 = ptrtoint ptr %dcb.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %dcb.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ets_cap.i = getelementptr inbounds %struct.ieee_ets, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ets_cap.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %ets_cap.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 64) #11
  %maxrate.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %maxrate.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %maxrate.i, align 4
  %tobool.not.i19 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i19, label %if.end.err_port_maxrate_init_crit_edge, label %if.end4

if.end.err_port_maxrate_init_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_maxrate_init

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2147483647, ptr %call7.i.i, align 8
  %arrayidx.1.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2147483647, ptr %arrayidx.1.i, align 8
  %arrayidx.2.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2147483647, ptr %arrayidx.2.i, align 8
  %arrayidx.3.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2147483647, ptr %arrayidx.3.i, align 8
  %arrayidx.4.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2147483647, ptr %arrayidx.4.i, align 8
  %arrayidx.5.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 2147483647, ptr %arrayidx.5.i, align 8
  %arrayidx.6.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 2147483647, ptr %arrayidx.6.i, align 8
  %arrayidx.7.i = getelementptr [8 x i64], ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2147483647, ptr %arrayidx.7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 136) #11
  %pfc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %pfc.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i21, ptr %pfc.i, align 8
  %tobool.not.i22 = icmp eq ptr %call7.i.i.i21, null
  br i1 %tobool.not.i22, label %err_port_pfc_init, label %if.end8

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call7.i.i.i21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %call7.i.i.i21, align 8
  %trust_state = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %trust_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %trust_state, align 4
  %17 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mlxsw_sp_port, align 8
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 139
  %19 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlxsw_sp_dcbnl_ops, ptr %dcbnl_ops, align 16
  br label %cleanup

err_port_pfc_init:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %maxrate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %maxrate.i, align 4
  tail call void @kfree(ptr noundef %21) #8
  br label %err_port_maxrate_init

err_port_maxrate_init:                            ; preds = %err_port_pfc_init, %if.end.err_port_maxrate_init_crit_edge
  %22 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcb.i, align 8
  tail call void @kfree(ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %err_port_maxrate_init, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_port_maxrate_init ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_port_dcb_fini(ptr nocapture noundef readonly %mlxsw_sp_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %pfc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc.i, align 8
  tail call void @kfree(ptr noundef %1) #8
  %maxrate.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %maxrate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %maxrate.i, align 4
  tail call void @kfree(ptr noundef %3) #8
  %dcb.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8
  %4 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb.i, align 8
  tail call void @kfree(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_getets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 8
  %2 = call ptr @memcpy(ptr %ets, ptr %1, i32 59)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef readonly %ets) #0 align 64 {
entry:
  %hdroom.i.i = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %entry.sw.epilog.i_crit_edge
    i8 2, label %sw.bb.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.mlxsw_sp_port_ets_validate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.i:                                       ; preds = %sw.epilog.i
  %arrayidx.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %6, label %for.cond.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.i.sw.epilog.1.i_crit_edge
    i8 2, label %sw.bb.1.i
  ]

for.cond.i.sw.epilog.1.i_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.1.i

for.cond.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.1.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.1.i, align 1
  %conv3.1.i = zext i8 %9 to i32
  %add.1.i = add nuw nsw i32 %tx_bw_sum.1.i, %conv3.1.i
  br label %sw.epilog.1.i

sw.epilog.1.i:                                    ; preds = %sw.bb.1.i, %for.cond.i.sw.epilog.1.i_crit_edge
  %has_ets_tc.1.off0.1.i = phi i1 [ true, %sw.bb.1.i ], [ %has_ets_tc.1.off0.i, %for.cond.i.sw.epilog.1.i_crit_edge ]
  %tx_bw_sum.1.1.i = phi i32 [ %add.1.i, %sw.bb.1.i ], [ %tx_bw_sum.1.i, %for.cond.i.sw.epilog.1.i_crit_edge ]
  %arrayidx4.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp6.1.i = icmp ugt i8 %11, 7
  br i1 %cmp6.1.i, label %sw.epilog.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.1.i

sw.epilog.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.1.i:                                     ; preds = %sw.epilog.1.i
  %arrayidx.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %13, label %for.cond.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.1.i.sw.epilog.2.i_crit_edge
    i8 2, label %sw.bb.2.i
  ]

for.cond.1.i.sw.epilog.2.i_crit_edge:             ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.2.i

for.cond.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.2.i:                                        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.2.i, align 1
  %conv3.2.i = zext i8 %16 to i32
  %add.2.i = add nuw nsw i32 %tx_bw_sum.1.1.i, %conv3.2.i
  br label %sw.epilog.2.i

sw.epilog.2.i:                                    ; preds = %sw.bb.2.i, %for.cond.1.i.sw.epilog.2.i_crit_edge
  %has_ets_tc.1.off0.2.i = phi i1 [ true, %sw.bb.2.i ], [ %has_ets_tc.1.off0.1.i, %for.cond.1.i.sw.epilog.2.i_crit_edge ]
  %tx_bw_sum.1.2.i = phi i32 [ %add.2.i, %sw.bb.2.i ], [ %tx_bw_sum.1.1.i, %for.cond.1.i.sw.epilog.2.i_crit_edge ]
  %arrayidx4.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp6.2.i = icmp ugt i8 %18, 7
  br i1 %cmp6.2.i, label %sw.epilog.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.2.i

sw.epilog.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.2.i:                                     ; preds = %sw.epilog.2.i
  %arrayidx.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %20, label %for.cond.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.2.i.sw.epilog.3.i_crit_edge
    i8 2, label %sw.bb.3.i
  ]

for.cond.2.i.sw.epilog.3.i_crit_edge:             ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.3.i

for.cond.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.3.i:                                        ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.3.i, align 1
  %conv3.3.i = zext i8 %23 to i32
  %add.3.i = add nuw nsw i32 %tx_bw_sum.1.2.i, %conv3.3.i
  br label %sw.epilog.3.i

sw.epilog.3.i:                                    ; preds = %sw.bb.3.i, %for.cond.2.i.sw.epilog.3.i_crit_edge
  %has_ets_tc.1.off0.3.i = phi i1 [ true, %sw.bb.3.i ], [ %has_ets_tc.1.off0.2.i, %for.cond.2.i.sw.epilog.3.i_crit_edge ]
  %tx_bw_sum.1.3.i = phi i32 [ %add.3.i, %sw.bb.3.i ], [ %tx_bw_sum.1.2.i, %for.cond.2.i.sw.epilog.3.i_crit_edge ]
  %arrayidx4.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp6.3.i = icmp ugt i8 %25, 7
  br i1 %cmp6.3.i, label %sw.epilog.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.3.i

sw.epilog.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.3.i:                                     ; preds = %sw.epilog.3.i
  %arrayidx.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %27, label %for.cond.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.3.i.sw.epilog.4.i_crit_edge
    i8 2, label %sw.bb.4.i
  ]

for.cond.3.i.sw.epilog.4.i_crit_edge:             ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.4.i

for.cond.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.4.i:                                        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx2.4.i, align 1
  %conv3.4.i = zext i8 %30 to i32
  %add.4.i = add nuw nsw i32 %tx_bw_sum.1.3.i, %conv3.4.i
  br label %sw.epilog.4.i

sw.epilog.4.i:                                    ; preds = %sw.bb.4.i, %for.cond.3.i.sw.epilog.4.i_crit_edge
  %has_ets_tc.1.off0.4.i = phi i1 [ true, %sw.bb.4.i ], [ %has_ets_tc.1.off0.3.i, %for.cond.3.i.sw.epilog.4.i_crit_edge ]
  %tx_bw_sum.1.4.i = phi i32 [ %add.4.i, %sw.bb.4.i ], [ %tx_bw_sum.1.3.i, %for.cond.3.i.sw.epilog.4.i_crit_edge ]
  %arrayidx4.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %31 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %cmp6.4.i = icmp ugt i8 %32, 7
  br i1 %cmp6.4.i, label %sw.epilog.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.4.i

sw.epilog.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.4.i:                                     ; preds = %sw.epilog.4.i
  %arrayidx.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5.i, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %34, label %for.cond.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.4.i.sw.epilog.5.i_crit_edge
    i8 2, label %sw.bb.5.i
  ]

for.cond.4.i.sw.epilog.5.i_crit_edge:             ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.5.i

for.cond.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.5.i:                                        ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx2.5.i, align 1
  %conv3.5.i = zext i8 %37 to i32
  %add.5.i = add nuw nsw i32 %tx_bw_sum.1.4.i, %conv3.5.i
  br label %sw.epilog.5.i

sw.epilog.5.i:                                    ; preds = %sw.bb.5.i, %for.cond.4.i.sw.epilog.5.i_crit_edge
  %has_ets_tc.1.off0.5.i = phi i1 [ true, %sw.bb.5.i ], [ %has_ets_tc.1.off0.4.i, %for.cond.4.i.sw.epilog.5.i_crit_edge ]
  %tx_bw_sum.1.5.i = phi i32 [ %add.5.i, %sw.bb.5.i ], [ %tx_bw_sum.1.4.i, %for.cond.4.i.sw.epilog.5.i_crit_edge ]
  %arrayidx4.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %38 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %39)
  %cmp6.5.i = icmp ugt i8 %39, 7
  br i1 %cmp6.5.i, label %sw.epilog.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.5.i

sw.epilog.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.5.i:                                     ; preds = %sw.epilog.5.i
  %arrayidx.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %40 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.6.i, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %41, label %for.cond.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.5.i.sw.epilog.6.i_crit_edge
    i8 2, label %sw.bb.6.i
  ]

for.cond.5.i.sw.epilog.6.i_crit_edge:             ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.6.i

for.cond.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.6.i:                                        ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %43 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.6.i, align 1
  %conv3.6.i = zext i8 %44 to i32
  %add.6.i = add nuw nsw i32 %tx_bw_sum.1.5.i, %conv3.6.i
  br label %sw.epilog.6.i

sw.epilog.6.i:                                    ; preds = %sw.bb.6.i, %for.cond.5.i.sw.epilog.6.i_crit_edge
  %has_ets_tc.1.off0.6.i = phi i1 [ true, %sw.bb.6.i ], [ %has_ets_tc.1.off0.5.i, %for.cond.5.i.sw.epilog.6.i_crit_edge ]
  %tx_bw_sum.1.6.i = phi i32 [ %add.6.i, %sw.bb.6.i ], [ %tx_bw_sum.1.5.i, %for.cond.5.i.sw.epilog.6.i_crit_edge ]
  %arrayidx4.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %45 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %46)
  %cmp6.6.i = icmp ugt i8 %46, 7
  br i1 %cmp6.6.i, label %sw.epilog.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.6.i

sw.epilog.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.6.i:                                     ; preds = %sw.epilog.6.i
  %arrayidx.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %47 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.7.i, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %48, label %for.cond.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge [
    i8 0, label %for.cond.6.i.sw.epilog.7.i_crit_edge
    i8 2, label %sw.bb.7.i
  ]

for.cond.6.i.sw.epilog.7.i_crit_edge:             ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.7.i

for.cond.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.7.i:                                        ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %50 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.7.i, align 1
  %conv3.7.i = zext i8 %51 to i32
  %add.7.i = add nuw nsw i32 %tx_bw_sum.1.6.i, %conv3.7.i
  br label %sw.epilog.7.i

sw.epilog.7.i:                                    ; preds = %sw.bb.7.i, %for.cond.6.i.sw.epilog.7.i_crit_edge
  %has_ets_tc.1.off0.7.i = phi i1 [ true, %sw.bb.7.i ], [ %has_ets_tc.1.off0.6.i, %for.cond.6.i.sw.epilog.7.i_crit_edge ]
  %tx_bw_sum.1.7.i = phi i32 [ %add.7.i, %sw.bb.7.i ], [ %tx_bw_sum.1.6.i, %for.cond.6.i.sw.epilog.7.i_crit_edge ]
  %arrayidx4.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %52 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %53)
  %cmp6.7.i = icmp ugt i8 %53, 7
  br i1 %cmp6.7.i, label %sw.epilog.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.7.i

sw.epilog.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

for.cond.7.i:                                     ; preds = %sw.epilog.7.i
  %has_ets_tc.0.off0.not.i = xor i1 %has_ets_tc.1.off0.7.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %tx_bw_sum.1.7.i)
  %cmp9.not.i = icmp eq i32 %tx_bw_sum.1.7.i, 100
  %or.cond.i = select i1 %has_ets_tc.0.off0.not.i, i1 true, i1 %cmp9.not.i
  br i1 %or.cond.i, label %if.end, label %for.cond.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge

for.cond.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %54 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %55 to i32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %has_ets_tc.1.off0.i = phi i1 [ true, %sw.bb.i ], [ false, %entry.sw.epilog.i_crit_edge ]
  %tx_bw_sum.1.i = phi i32 [ %conv3.i, %sw.bb.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %56 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %57)
  %cmp6.i = icmp ugt i8 %57, 7
  br i1 %cmp6.i, label %sw.epilog.i.mlxsw_sp_port_ets_validate.exit_crit_edge, label %for.cond.i

sw.epilog.i.mlxsw_sp_port_ets_validate.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_ets_validate.exit

mlxsw_sp_port_ets_validate.exit:                  ; preds = %sw.epilog.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %sw.epilog.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %for.cond.i.mlxsw_sp_port_ets_validate.exit_crit_edge, %entry.mlxsw_sp_port_ets_validate.exit_crit_edge
  %.str.2.sink.i = phi ptr [ @.str, %for.cond.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %for.cond.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %for.cond.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %for.cond.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %for.cond.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %for.cond.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %for.cond.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str, %entry.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.6.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.5.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.4.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.3.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.2.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.1.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.1, %sw.epilog.i.mlxsw_sp_port_ets_validate.exit_crit_edge ], [ @.str.2, %for.cond.7.i.mlxsw_sp_port_ets_validate.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.2.sink.i) #12
  br label %cleanup

if.end:                                           ; preds = %for.cond.7.i
  %dcb.i = getelementptr i8, ptr %dev, i32 2328
  %58 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dcb.i, align 8
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cmp3.i = icmp eq i8 %63, 2
  %arrayidx5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx5.i, align 1
  %call.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.i, i8 noundef zeroext %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %__mlxsw_sp_dcbnl_ieee_setets.exit.thread31

for.inc.i:                                        ; preds = %if.end
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp3.1.i = icmp eq i8 %67, 2
  %arrayidx5.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx5.1.i, align 1
  %call.1.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.1.i, i8 noundef zeroext %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool7.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool7.not.1.i, label %for.inc.1.i, label %for.inc.i.err_port_ets_set.thread135.i_crit_edge

for.inc.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %70 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp3.2.i = icmp eq i8 %71, 2
  %arrayidx5.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx5.2.i, align 1
  %call.2.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 2, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.2.i, i8 noundef zeroext %73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool7.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool7.not.2.i, label %for.inc.2.i, label %for.inc.1.i.err_port_ets_set.thread135.i_crit_edge

for.inc.1.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %74 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp3.3.i = icmp eq i8 %75, 2
  %arrayidx5.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx5.3.i, align 1
  %call.3.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 3, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.3.i, i8 noundef zeroext %77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool7.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool7.not.3.i, label %for.inc.3.i, label %for.inc.2.i.err_port_ets_set.thread135.i_crit_edge

for.inc.2.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %78 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp3.4.i = icmp eq i8 %79, 2
  %arrayidx5.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %80 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx5.4.i, align 1
  %call.4.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 4, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.4.i, i8 noundef zeroext %81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool7.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool7.not.4.i, label %for.inc.4.i, label %for.inc.3.i.err_port_ets_set.thread135.i_crit_edge

for.inc.3.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %82 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp3.5.i = icmp eq i8 %83, 2
  %arrayidx5.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %84 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx5.5.i, align 1
  %call.5.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 5, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.5.i, i8 noundef zeroext %85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool7.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool7.not.5.i, label %for.inc.5.i, label %for.inc.4.i.err_port_ets_set.thread135.i_crit_edge

for.inc.4.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %86 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %cmp3.6.i = icmp eq i8 %87, 2
  %arrayidx5.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %88 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx5.6.i, align 1
  %call.6.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 6, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.6.i, i8 noundef zeroext %89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool7.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool7.not.6.i, label %for.inc.6.i, label %for.inc.5.i.err_port_ets_set.thread135.i_crit_edge

for.inc.5.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %90 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp3.7.i = icmp eq i8 %91, 2
  %arrayidx5.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %92 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx5.7.i, align 1
  %call.7.i = tail call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 7, i8 noundef zeroext 0, i1 noundef zeroext %cmp3.7.i, i8 noundef zeroext %93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool7.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool7.not.7.i, label %for.inc.7.i, label %for.inc.6.i.err_port_ets_set.thread135.i_crit_edge

for.inc.6.i.err_port_ets_set.thread135.i_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_ets_set.thread135.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %94 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx4.i, align 1
  %call15.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext %95) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %for.inc22.i, label %err_port_prio_tc_set.i

for.inc22.i:                                      ; preds = %for.inc.7.i
  %96 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx4.1.i, align 1
  %call15.1.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext %97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1.i)
  %tobool16.not.1.i = icmp eq i32 %call15.1.i, 0
  br i1 %tobool16.not.1.i, label %for.inc22.1.i, label %for.inc22.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.1.i:                                    ; preds = %for.inc22.i
  %98 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx4.2.i, align 1
  %call15.2.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext %99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2.i)
  %tobool16.not.2.i = icmp eq i32 %call15.2.i, 0
  br i1 %tobool16.not.2.i, label %for.inc22.2.i, label %for.inc22.1.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.1.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.2.i:                                    ; preds = %for.inc22.1.i
  %100 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.3.i, align 1
  %call15.3.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext %101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.3.i)
  %tobool16.not.3.i = icmp eq i32 %call15.3.i, 0
  br i1 %tobool16.not.3.i, label %for.inc22.3.i, label %for.inc22.2.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.2.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.3.i:                                    ; preds = %for.inc22.2.i
  %102 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx4.4.i, align 1
  %call15.4.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 4, i8 noundef zeroext %103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.4.i)
  %tobool16.not.4.i = icmp eq i32 %call15.4.i, 0
  br i1 %tobool16.not.4.i, label %for.inc22.4.i, label %for.inc22.3.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.3.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.4.i:                                    ; preds = %for.inc22.3.i
  %104 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx4.5.i, align 1
  %call15.5.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 5, i8 noundef zeroext %105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.5.i)
  %tobool16.not.5.i = icmp eq i32 %call15.5.i, 0
  br i1 %tobool16.not.5.i, label %for.inc22.5.i, label %for.inc22.4.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.4.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.5.i:                                    ; preds = %for.inc22.4.i
  %106 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx4.6.i, align 1
  %call15.6.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext %107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.6.i)
  %tobool16.not.6.i = icmp eq i32 %call15.6.i, 0
  br i1 %tobool16.not.6.i, label %for.inc22.6.i, label %for.inc22.5.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.5.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.6.i:                                    ; preds = %for.inc22.5.i
  %108 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx4.7.i, align 1
  %call15.7.i = tail call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext %109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.7.i)
  %tobool16.not.7.i = icmp eq i32 %call15.7.i, 0
  br i1 %tobool16.not.7.i, label %for.inc22.7.i, label %for.inc22.6.i.err_port_prio_tc_set.thread124.i_crit_edge

for.inc22.6.i.err_port_prio_tc_set.thread124.i_crit_edge: ; preds = %for.inc22.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_port_prio_tc_set.thread124.i

for.inc22.7.i:                                    ; preds = %for.inc22.6.i
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom.i.i) #8
  %hdroom2.i.i = getelementptr i8, ptr %dev, i32 3488
  %112 = ptrtoint ptr %hdroom2.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hdroom2.i.i, align 8
  %114 = call ptr @memcpy(ptr %hdroom.i.i, ptr %113, i32 216)
  %115 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx4.i, align 1
  %ets_buf_idx.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %117 = ptrtoint ptr %ets_buf_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %ets_buf_idx.i.i, align 1
  %118 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx4.1.i, align 1
  %ets_buf_idx.1.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %ets_buf_idx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %ets_buf_idx.1.i.i, align 1
  %121 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx4.2.i, align 1
  %ets_buf_idx.2.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %ets_buf_idx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %ets_buf_idx.2.i.i, align 1
  %124 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx4.3.i, align 1
  %ets_buf_idx.3.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 3, i32 1
  %126 = ptrtoint ptr %ets_buf_idx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %ets_buf_idx.3.i.i, align 1
  %127 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx4.4.i, align 1
  %ets_buf_idx.4.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 4, i32 1
  %129 = ptrtoint ptr %ets_buf_idx.4.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %ets_buf_idx.4.i.i, align 1
  %130 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx4.5.i, align 1
  %ets_buf_idx.5.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 5, i32 1
  %132 = ptrtoint ptr %ets_buf_idx.5.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %ets_buf_idx.5.i.i, align 1
  %133 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx4.6.i, align 1
  %ets_buf_idx.6.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 6, i32 1
  %135 = ptrtoint ptr %ets_buf_idx.6.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %ets_buf_idx.6.i.i, align 1
  %136 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx4.7.i, align 1
  %ets_buf_idx.7.i.i = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom.i.i, i32 0, i32 1, i32 0, i32 7, i32 1
  %138 = ptrtoint ptr %ets_buf_idx.7.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %ets_buf_idx.7.i.i, align 1
  call void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr noundef nonnull %hdroom.i.i) #8
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom.i.i) #8
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom.i.i) #8
  %call.i.i = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__mlxsw_sp_dcbnl_ieee_setets.exit.thread, label %err_port_prio_tc_set.thread.i

__mlxsw_sp_dcbnl_ieee_setets.exit.thread:         ; preds = %for.inc22.7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom.i.i) #8
  br label %if.end5

err_port_prio_tc_set.thread.i:                    ; preds = %for.inc22.7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %111, ptr noundef nonnull @.str.5) #12
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom.i.i) #8
  br label %for.body32.i

err_port_prio_tc_set.thread124.i:                 ; preds = %for.inc22.6.i.err_port_prio_tc_set.thread124.i_crit_edge, %for.inc22.5.i.err_port_prio_tc_set.thread124.i_crit_edge, %for.inc22.4.i.err_port_prio_tc_set.thread124.i_crit_edge, %for.inc22.3.i.err_port_prio_tc_set.thread124.i_crit_edge, %for.inc22.2.i.err_port_prio_tc_set.thread124.i_crit_edge, %for.inc22.1.i.err_port_prio_tc_set.thread124.i_crit_edge, %for.inc22.i.err_port_prio_tc_set.thread124.i_crit_edge
  %i.1107.lcssa.ph.i = phi i32 [ 7, %for.inc22.6.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ 6, %for.inc22.5.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ 5, %for.inc22.4.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ 4, %for.inc22.3.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ 3, %for.inc22.2.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ 2, %for.inc22.1.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ 1, %for.inc22.i.err_port_prio_tc_set.thread124.i_crit_edge ]
  %arrayidx14.lcssa.ph.i = phi ptr [ %arrayidx4.7.i, %for.inc22.6.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ %arrayidx4.6.i, %for.inc22.5.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ %arrayidx4.5.i, %for.inc22.4.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ %arrayidx4.4.i, %for.inc22.3.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ %arrayidx4.3.i, %for.inc22.2.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ %arrayidx4.2.i, %for.inc22.1.i.err_port_prio_tc_set.thread124.i_crit_edge ], [ %arrayidx4.1.i, %for.inc22.i.err_port_prio_tc_set.thread124.i_crit_edge ]
  %139 = ptrtoint ptr %arrayidx14.lcssa.ph.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx14.lcssa.ph.i, align 1
  %conv20128.i = zext i8 %140 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.4, i32 noundef %i.1107.lcssa.ph.i, i32 noundef %conv20128.i) #12
  br label %for.body32.i

err_port_prio_tc_set.i:                           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx4.i, align 1
  %conv20.i = zext i8 %142 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv20.i) #12
  br label %for.body44.i

for.body32.i:                                     ; preds = %err_port_prio_tc_set.thread124.i, %err_port_prio_tc_set.thread.i
  %i.3110.in.i.ph = phi i32 [ %i.1107.lcssa.ph.i, %err_port_prio_tc_set.thread124.i ], [ 8, %err_port_prio_tc_set.thread.i ]
  %i.3110.i = add nsw i32 %i.3110.in.i.ph, -1
  %conv33.i = trunc i32 %i.3110.i to i8
  %arrayidx35.i = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i
  %143 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx35.i, align 1
  %call36.i = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i, i8 noundef zeroext %144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.in.i.ph)
  %cmp30.i = icmp ugt i32 %i.3110.in.i.ph, 1
  br i1 %cmp30.i, label %for.body32.i.1, label %for.body32.i.for.body44.i_crit_edge

for.body32.i.for.body44.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.1:                                   ; preds = %for.body32.i
  %i.3110.i.1 = add nsw i32 %i.3110.in.i.ph, -2
  %conv33.i.1 = trunc i32 %i.3110.i.1 to i8
  %arrayidx35.i.1 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.1
  %145 = ptrtoint ptr %arrayidx35.i.1 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx35.i.1, align 1
  %call36.i.1 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.1, i8 noundef zeroext %146) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.i)
  %cmp30.i.1 = icmp ugt i32 %i.3110.i, 1
  br i1 %cmp30.i.1, label %for.body32.i.2, label %for.body32.i.1.for.body44.i_crit_edge

for.body32.i.1.for.body44.i_crit_edge:            ; preds = %for.body32.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.2:                                   ; preds = %for.body32.i.1
  %i.3110.i.2 = add nsw i32 %i.3110.in.i.ph, -3
  %conv33.i.2 = trunc i32 %i.3110.i.2 to i8
  %arrayidx35.i.2 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.2
  %147 = ptrtoint ptr %arrayidx35.i.2 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx35.i.2, align 1
  %call36.i.2 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.2, i8 noundef zeroext %148) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.i.1)
  %cmp30.i.2 = icmp ugt i32 %i.3110.i.1, 1
  br i1 %cmp30.i.2, label %for.body32.i.3, label %for.body32.i.2.for.body44.i_crit_edge

for.body32.i.2.for.body44.i_crit_edge:            ; preds = %for.body32.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.3:                                   ; preds = %for.body32.i.2
  %i.3110.i.3 = add nsw i32 %i.3110.in.i.ph, -4
  %conv33.i.3 = trunc i32 %i.3110.i.3 to i8
  %arrayidx35.i.3 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.3
  %149 = ptrtoint ptr %arrayidx35.i.3 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx35.i.3, align 1
  %call36.i.3 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.3, i8 noundef zeroext %150) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.i.2)
  %cmp30.i.3 = icmp ugt i32 %i.3110.i.2, 1
  br i1 %cmp30.i.3, label %for.body32.i.4, label %for.body32.i.3.for.body44.i_crit_edge

for.body32.i.3.for.body44.i_crit_edge:            ; preds = %for.body32.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.4:                                   ; preds = %for.body32.i.3
  %i.3110.i.4 = add nsw i32 %i.3110.in.i.ph, -5
  %conv33.i.4 = trunc i32 %i.3110.i.4 to i8
  %arrayidx35.i.4 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.4
  %151 = ptrtoint ptr %arrayidx35.i.4 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx35.i.4, align 1
  %call36.i.4 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.4, i8 noundef zeroext %152) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.i.3)
  %cmp30.i.4 = icmp ugt i32 %i.3110.i.3, 1
  br i1 %cmp30.i.4, label %for.body32.i.5, label %for.body32.i.4.for.body44.i_crit_edge

for.body32.i.4.for.body44.i_crit_edge:            ; preds = %for.body32.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.5:                                   ; preds = %for.body32.i.4
  %i.3110.i.5 = add nsw i32 %i.3110.in.i.ph, -6
  %conv33.i.5 = trunc i32 %i.3110.i.5 to i8
  %arrayidx35.i.5 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.5
  %153 = ptrtoint ptr %arrayidx35.i.5 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx35.i.5, align 1
  %call36.i.5 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.5, i8 noundef zeroext %154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.i.4)
  %cmp30.i.5 = icmp ugt i32 %i.3110.i.4, 1
  br i1 %cmp30.i.5, label %for.body32.i.6, label %for.body32.i.5.for.body44.i_crit_edge

for.body32.i.5.for.body44.i_crit_edge:            ; preds = %for.body32.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.6:                                   ; preds = %for.body32.i.5
  %i.3110.i.6 = add nsw i32 %i.3110.in.i.ph, -7
  %conv33.i.6 = trunc i32 %i.3110.i.6 to i8
  %arrayidx35.i.6 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.6
  %155 = ptrtoint ptr %arrayidx35.i.6 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx35.i.6, align 1
  %call36.i.6 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.6, i8 noundef zeroext %156) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3110.i.5)
  %cmp30.i.6 = icmp ugt i32 %i.3110.i.5, 1
  br i1 %cmp30.i.6, label %for.body32.i.7, label %for.body32.i.6.for.body44.i_crit_edge

for.body32.i.6.for.body44.i_crit_edge:            ; preds = %for.body32.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.body32.i.7:                                   ; preds = %for.body32.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %i.3110.i.7 = add nsw i32 %i.3110.in.i.ph, -8
  %conv33.i.7 = trunc i32 %i.3110.i.7 to i8
  %arrayidx35.i.7 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 6, i32 %i.3110.i.7
  %157 = ptrtoint ptr %arrayidx35.i.7 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx35.i.7, align 1
  %call36.i.7 = call i32 @mlxsw_sp_port_prio_tc_set(ptr noundef %add.ptr.i, i8 noundef zeroext %conv33.i.7, i8 noundef zeroext %158) #8
  br label %for.body44.i

err_port_ets_set.thread135.i:                     ; preds = %for.inc.6.i.err_port_ets_set.thread135.i_crit_edge, %for.inc.5.i.err_port_ets_set.thread135.i_crit_edge, %for.inc.4.i.err_port_ets_set.thread135.i_crit_edge, %for.inc.3.i.err_port_ets_set.thread135.i_crit_edge, %for.inc.2.i.err_port_ets_set.thread135.i_crit_edge, %for.inc.1.i.err_port_ets_set.thread135.i_crit_edge, %for.inc.i.err_port_ets_set.thread135.i_crit_edge
  %i.0106.lcssa.ph.i = phi i32 [ 7, %for.inc.6.i.err_port_ets_set.thread135.i_crit_edge ], [ 6, %for.inc.5.i.err_port_ets_set.thread135.i_crit_edge ], [ 5, %for.inc.4.i.err_port_ets_set.thread135.i_crit_edge ], [ 4, %for.inc.3.i.err_port_ets_set.thread135.i_crit_edge ], [ 3, %for.inc.2.i.err_port_ets_set.thread135.i_crit_edge ], [ 2, %for.inc.1.i.err_port_ets_set.thread135.i_crit_edge ], [ 1, %for.inc.i.err_port_ets_set.thread135.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef %i.0106.lcssa.ph.i) #12
  br label %for.body44.i

__mlxsw_sp_dcbnl_ieee_setets.exit.thread31:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef 0) #12
  br label %cleanup

for.body44.i:                                     ; preds = %err_port_ets_set.thread135.i, %for.body32.i.7, %for.body32.i.6.for.body44.i_crit_edge, %for.body32.i.5.for.body44.i_crit_edge, %for.body32.i.4.for.body44.i_crit_edge, %for.body32.i.3.for.body44.i_crit_edge, %for.body32.i.2.for.body44.i_crit_edge, %for.body32.i.1.for.body44.i_crit_edge, %for.body32.i.for.body44.i_crit_edge, %err_port_prio_tc_set.i
  %i.5113.in.i.ph = phi i32 [ 8, %err_port_prio_tc_set.i ], [ %i.0106.lcssa.ph.i, %err_port_ets_set.thread135.i ], [ 8, %for.body32.i.7 ], [ 8, %for.body32.i.6.for.body44.i_crit_edge ], [ 8, %for.body32.i.5.for.body44.i_crit_edge ], [ 8, %for.body32.i.4.for.body44.i_crit_edge ], [ 8, %for.body32.i.3.for.body44.i_crit_edge ], [ 8, %for.body32.i.2.for.body44.i_crit_edge ], [ 8, %for.body32.i.1.for.body44.i_crit_edge ], [ 8, %for.body32.i.for.body44.i_crit_edge ]
  %i.5113.i = add nsw i32 %i.5113.in.i.ph, -1
  %arrayidx47.i = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i
  %159 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %160)
  %cmp49.i = icmp eq i8 %160, 2
  %arrayidx54.i = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i
  %161 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = trunc i32 %i.5113.i to i8
  %call57.i = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i, i8 noundef zeroext %162) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.in.i.ph)
  %cmp42.i = icmp ugt i32 %i.5113.in.i.ph, 1
  br i1 %cmp42.i, label %for.body44.i.1, label %for.body44.i.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.1:                                   ; preds = %for.body44.i
  %i.5113.i.1 = add nsw i32 %i.5113.in.i.ph, -2
  %arrayidx47.i.1 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.1
  %163 = ptrtoint ptr %arrayidx47.i.1 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx47.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %164)
  %cmp49.i.1 = icmp eq i8 %164, 2
  %arrayidx54.i.1 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.1
  %165 = ptrtoint ptr %arrayidx54.i.1 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx54.i.1, align 1
  %conv55.i.1 = trunc i32 %i.5113.i.1 to i8
  %call57.i.1 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.1, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.1, i8 noundef zeroext %166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.i)
  %cmp42.i.1 = icmp ugt i32 %i.5113.i, 1
  br i1 %cmp42.i.1, label %for.body44.i.2, label %for.body44.i.1.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.1.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.2:                                   ; preds = %for.body44.i.1
  %i.5113.i.2 = add nsw i32 %i.5113.in.i.ph, -3
  %arrayidx47.i.2 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.2
  %167 = ptrtoint ptr %arrayidx47.i.2 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx47.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %168)
  %cmp49.i.2 = icmp eq i8 %168, 2
  %arrayidx54.i.2 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.2
  %169 = ptrtoint ptr %arrayidx54.i.2 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx54.i.2, align 1
  %conv55.i.2 = trunc i32 %i.5113.i.2 to i8
  %call57.i.2 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.2, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.2, i8 noundef zeroext %170) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.i.1)
  %cmp42.i.2 = icmp ugt i32 %i.5113.i.1, 1
  br i1 %cmp42.i.2, label %for.body44.i.3, label %for.body44.i.2.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.2.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.3:                                   ; preds = %for.body44.i.2
  %i.5113.i.3 = add nsw i32 %i.5113.in.i.ph, -4
  %arrayidx47.i.3 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.3
  %171 = ptrtoint ptr %arrayidx47.i.3 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx47.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %172)
  %cmp49.i.3 = icmp eq i8 %172, 2
  %arrayidx54.i.3 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.3
  %173 = ptrtoint ptr %arrayidx54.i.3 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx54.i.3, align 1
  %conv55.i.3 = trunc i32 %i.5113.i.3 to i8
  %call57.i.3 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.3, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.3, i8 noundef zeroext %174) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.i.2)
  %cmp42.i.3 = icmp ugt i32 %i.5113.i.2, 1
  br i1 %cmp42.i.3, label %for.body44.i.4, label %for.body44.i.3.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.3.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.4:                                   ; preds = %for.body44.i.3
  %i.5113.i.4 = add nsw i32 %i.5113.in.i.ph, -5
  %arrayidx47.i.4 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.4
  %175 = ptrtoint ptr %arrayidx47.i.4 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx47.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %176)
  %cmp49.i.4 = icmp eq i8 %176, 2
  %arrayidx54.i.4 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.4
  %177 = ptrtoint ptr %arrayidx54.i.4 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx54.i.4, align 1
  %conv55.i.4 = trunc i32 %i.5113.i.4 to i8
  %call57.i.4 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.4, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.4, i8 noundef zeroext %178) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.i.3)
  %cmp42.i.4 = icmp ugt i32 %i.5113.i.3, 1
  br i1 %cmp42.i.4, label %for.body44.i.5, label %for.body44.i.4.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.4.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.5:                                   ; preds = %for.body44.i.4
  %i.5113.i.5 = add nsw i32 %i.5113.in.i.ph, -6
  %arrayidx47.i.5 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.5
  %179 = ptrtoint ptr %arrayidx47.i.5 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx47.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %180)
  %cmp49.i.5 = icmp eq i8 %180, 2
  %arrayidx54.i.5 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.5
  %181 = ptrtoint ptr %arrayidx54.i.5 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx54.i.5, align 1
  %conv55.i.5 = trunc i32 %i.5113.i.5 to i8
  %call57.i.5 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.5, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.5, i8 noundef zeroext %182) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.i.4)
  %cmp42.i.5 = icmp ugt i32 %i.5113.i.4, 1
  br i1 %cmp42.i.5, label %for.body44.i.6, label %for.body44.i.5.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.5.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.6:                                   ; preds = %for.body44.i.5
  %i.5113.i.6 = add nsw i32 %i.5113.in.i.ph, -7
  %arrayidx47.i.6 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.6
  %183 = ptrtoint ptr %arrayidx47.i.6 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx47.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %184)
  %cmp49.i.6 = icmp eq i8 %184, 2
  %arrayidx54.i.6 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.6
  %185 = ptrtoint ptr %arrayidx54.i.6 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx54.i.6, align 1
  %conv55.i.6 = trunc i32 %i.5113.i.6 to i8
  %call57.i.6 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.6, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.6, i8 noundef zeroext %186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5113.i.5)
  %cmp42.i.6 = icmp ugt i32 %i.5113.i.5, 1
  br i1 %cmp42.i.6, label %for.body44.i.7, label %for.body44.i.6.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge

for.body44.i.6.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge: ; preds = %for.body44.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

for.body44.i.7:                                   ; preds = %for.body44.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %i.5113.i.7 = add nsw i32 %i.5113.in.i.ph, -8
  %arrayidx47.i.7 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 5, i32 %i.5113.i.7
  %187 = ptrtoint ptr %arrayidx47.i.7 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx47.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %188)
  %cmp49.i.7 = icmp eq i8 %188, 2
  %arrayidx54.i.7 = getelementptr %struct.ieee_ets, ptr %59, i32 0, i32 3, i32 %i.5113.i.7
  %189 = ptrtoint ptr %arrayidx54.i.7 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx54.i.7, align 1
  %conv55.i.7 = trunc i32 %i.5113.i.7 to i8
  %call57.i.7 = call i32 @mlxsw_sp_port_ets_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv55.i.7, i8 noundef zeroext 0, i1 noundef zeroext %cmp49.i.7, i8 noundef zeroext %190) #8
  br label %__mlxsw_sp_dcbnl_ieee_setets.exit

__mlxsw_sp_dcbnl_ieee_setets.exit:                ; preds = %for.body44.i.7, %for.body44.i.6.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge, %for.body44.i.5.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge, %for.body44.i.4.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge, %for.body44.i.3.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge, %for.body44.i.2.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge, %for.body44.i.1.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge, %for.body44.i.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge
  %call57.i.lcssa = phi i32 [ %call57.i, %for.body44.i.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.1, %for.body44.i.1.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.2, %for.body44.i.2.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.3, %for.body44.i.3.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.4, %for.body44.i.4.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.5, %for.body44.i.5.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.6, %for.body44.i.6.__mlxsw_sp_dcbnl_ieee_setets.exit_crit_edge ], [ %call57.i.7, %for.body44.i.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.lcssa)
  %tobool3.not = icmp eq i32 %call57.i.lcssa, 0
  br i1 %tobool3.not, label %__mlxsw_sp_dcbnl_ieee_setets.exit.if.end5_crit_edge, label %__mlxsw_sp_dcbnl_ieee_setets.exit.cleanup_crit_edge

__mlxsw_sp_dcbnl_ieee_setets.exit.cleanup_crit_edge: ; preds = %__mlxsw_sp_dcbnl_ieee_setets.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__mlxsw_sp_dcbnl_ieee_setets.exit.if.end5_crit_edge: ; preds = %__mlxsw_sp_dcbnl_ieee_setets.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %__mlxsw_sp_dcbnl_ieee_setets.exit.if.end5_crit_edge, %__mlxsw_sp_dcbnl_ieee_setets.exit.thread
  %191 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dcb.i, align 8
  %193 = call ptr @memcpy(ptr %192, ptr %ets, i32 59)
  %194 = load ptr, ptr %dcb.i, align 8
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 8, ptr %ets_cap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %__mlxsw_sp_dcbnl_ieee_setets.exit.cleanup_crit_edge, %__mlxsw_sp_dcbnl_ieee_setets.exit.thread31, %mlxsw_sp_port_ets_validate.exit
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %mlxsw_sp_port_ets_validate.exit ], [ %call57.i.lcssa, %__mlxsw_sp_dcbnl_ieee_setets.exit.cleanup_crit_edge ], [ %call.i, %__mlxsw_sp_dcbnl_ieee_setets.exit.thread31 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_getmaxrate(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %maxrate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %maxrate1 = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %maxrate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maxrate1, align 4
  %2 = call ptr @memcpy(ptr %maxrate, ptr %1, i32 64)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_setmaxrate(ptr noundef %dev, ptr nocapture noundef readonly %maxrate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %maxrate1 = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %maxrate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maxrate1, align 4
  %2 = ptrtoint ptr %maxrate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %maxrate, align 8
  %conv2 = trunc i64 %3 to i32
  %call3 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %conv2, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  br label %cleanup

for.body9.preheader:                              ; preds = %for.inc.6.for.body9.preheader_crit_edge, %for.inc.5.for.body9.preheader_crit_edge, %for.inc.4.for.body9.preheader_crit_edge, %for.inc.3.for.body9.preheader_crit_edge, %for.inc.2.for.body9.preheader_crit_edge, %for.inc.1.for.body9.preheader_crit_edge, %for.inc.for.body9.preheader_crit_edge
  %i.037.lcssa.ph = phi i32 [ 7, %for.inc.6.for.body9.preheader_crit_edge ], [ 6, %for.inc.5.for.body9.preheader_crit_edge ], [ 5, %for.inc.4.for.body9.preheader_crit_edge ], [ 4, %for.inc.3.for.body9.preheader_crit_edge ], [ 3, %for.inc.2.for.body9.preheader_crit_edge ], [ 2, %for.inc.1.for.body9.preheader_crit_edge ], [ 1, %for.inc.for.body9.preheader_crit_edge ]
  %call3.lcssa.ph = phi i32 [ %call3.7, %for.inc.6.for.body9.preheader_crit_edge ], [ %call3.6, %for.inc.5.for.body9.preheader_crit_edge ], [ %call3.5, %for.inc.4.for.body9.preheader_crit_edge ], [ %call3.4, %for.inc.3.for.body9.preheader_crit_edge ], [ %call3.3, %for.inc.2.for.body9.preheader_crit_edge ], [ %call3.2, %for.inc.1.for.body9.preheader_crit_edge ], [ %call3.1, %for.inc.for.body9.preheader_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %i.037.lcssa.ph) #12
  %i.140 = add nsw i32 %i.037.lcssa.ph, -1
  %conv10 = trunc i32 %i.140 to i8
  %arrayidx12 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx12, align 8
  %conv13 = trunc i64 %5 to i32
  %call14 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10, i8 noundef zeroext 0, i32 noundef %conv13, i8 noundef zeroext 0) #8
  br i1 %tobool.not.1, label %for.body9.1, label %for.body9.preheader.cleanup_crit_edge

for.body9.preheader.cleanup_crit_edge:            ; preds = %for.body9.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.1, align 8
  %conv2.1 = trunc i64 %7 to i32
  %call3.1 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %conv2.1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body9.preheader_crit_edge

for.inc.for.body9.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.2, align 8
  %conv2.2 = trunc i64 %9 to i32
  %call3.2 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %conv2.2, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body9.preheader_crit_edge

for.inc.1.for.body9.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.3, align 8
  %conv2.3 = trunc i64 %11 to i32
  %call3.3 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef %conv2.3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %tobool.not.3 = icmp eq i32 %call3.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.body9.preheader_crit_edge

for.inc.2.for.body9.preheader_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.4, align 8
  %conv2.4 = trunc i64 %13 to i32
  %call3.4 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %conv2.4, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %tobool.not.4 = icmp eq i32 %call3.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.body9.preheader_crit_edge

for.inc.3.for.body9.preheader_crit_edge:          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.5, align 8
  %conv2.5 = trunc i64 %15 to i32
  %call3.5 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 5, i8 noundef zeroext 0, i32 noundef %conv2.5, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %tobool.not.5 = icmp eq i32 %call3.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.body9.preheader_crit_edge

for.inc.4.for.body9.preheader_crit_edge:          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.6, align 8
  %conv2.6 = trunc i64 %17 to i32
  %call3.6 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 6, i8 noundef zeroext 0, i32 noundef %conv2.6, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %tobool.not.6 = icmp eq i32 %call3.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.for.body9.preheader_crit_edge

for.inc.5.for.body9.preheader_crit_edge:          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.7, align 8
  %conv2.7 = trunc i64 %19 to i32
  %call3.7 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext 7, i8 noundef zeroext 0, i32 noundef %conv2.7, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %tobool.not.7 = icmp eq i32 %call3.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.for.body9.preheader_crit_edge

for.inc.6.for.body9.preheader_crit_edge:          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.preheader

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %maxrate1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %maxrate1, align 4
  %22 = call ptr @memcpy(ptr %21, ptr %maxrate, i32 64)
  br label %cleanup

for.body9.1:                                      ; preds = %for.body9.preheader
  %i.140.1 = add nsw i32 %i.037.lcssa.ph, -2
  %conv10.1 = trunc i32 %i.140.1 to i8
  %arrayidx12.1 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140.1
  %23 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx12.1, align 8
  %conv13.1 = trunc i64 %24 to i32
  %call14.1 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10.1, i8 noundef zeroext 0, i32 noundef %conv13.1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.140)
  %cmp7.1 = icmp ugt i32 %i.140, 1
  br i1 %cmp7.1, label %for.body9.2, label %for.body9.1.cleanup_crit_edge

for.body9.1.cleanup_crit_edge:                    ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.2:                                      ; preds = %for.body9.1
  %i.140.2 = add nsw i32 %i.037.lcssa.ph, -3
  %conv10.2 = trunc i32 %i.140.2 to i8
  %arrayidx12.2 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140.2
  %25 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx12.2, align 8
  %conv13.2 = trunc i64 %26 to i32
  %call14.2 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10.2, i8 noundef zeroext 0, i32 noundef %conv13.2, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.140.1)
  %cmp7.2 = icmp ugt i32 %i.140.1, 1
  br i1 %cmp7.2, label %for.body9.3, label %for.body9.2.cleanup_crit_edge

for.body9.2.cleanup_crit_edge:                    ; preds = %for.body9.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.3:                                      ; preds = %for.body9.2
  %i.140.3 = add nsw i32 %i.037.lcssa.ph, -4
  %conv10.3 = trunc i32 %i.140.3 to i8
  %arrayidx12.3 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140.3
  %27 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx12.3, align 8
  %conv13.3 = trunc i64 %28 to i32
  %call14.3 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10.3, i8 noundef zeroext 0, i32 noundef %conv13.3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.140.2)
  %cmp7.3 = icmp ugt i32 %i.140.2, 1
  br i1 %cmp7.3, label %for.body9.4, label %for.body9.3.cleanup_crit_edge

for.body9.3.cleanup_crit_edge:                    ; preds = %for.body9.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.4:                                      ; preds = %for.body9.3
  %i.140.4 = add nsw i32 %i.037.lcssa.ph, -5
  %conv10.4 = trunc i32 %i.140.4 to i8
  %arrayidx12.4 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140.4
  %29 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx12.4, align 8
  %conv13.4 = trunc i64 %30 to i32
  %call14.4 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10.4, i8 noundef zeroext 0, i32 noundef %conv13.4, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.140.3)
  %cmp7.4 = icmp ugt i32 %i.140.3, 1
  br i1 %cmp7.4, label %for.body9.5, label %for.body9.4.cleanup_crit_edge

for.body9.4.cleanup_crit_edge:                    ; preds = %for.body9.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.5:                                      ; preds = %for.body9.4
  %i.140.5 = add nsw i32 %i.037.lcssa.ph, -6
  %conv10.5 = trunc i32 %i.140.5 to i8
  %arrayidx12.5 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140.5
  %31 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx12.5, align 8
  %conv13.5 = trunc i64 %32 to i32
  %call14.5 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10.5, i8 noundef zeroext 0, i32 noundef %conv13.5, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.140.4)
  %cmp7.5 = icmp ugt i32 %i.140.4, 1
  br i1 %cmp7.5, label %for.body9.6, label %for.body9.5.cleanup_crit_edge

for.body9.5.cleanup_crit_edge:                    ; preds = %for.body9.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body9.6:                                      ; preds = %for.body9.5
  call void @__sanitizer_cov_trace_pc() #10
  %i.140.6 = add nsw i32 %i.037.lcssa.ph, -7
  %conv10.6 = trunc i32 %i.140.6 to i8
  %arrayidx12.6 = getelementptr [8 x i64], ptr %1, i32 0, i32 %i.140.6
  %33 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx12.6, align 8
  %conv13.6 = trunc i64 %34 to i32
  %call14.6 = tail call i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef %add.ptr.i, i32 noundef 2, i8 noundef zeroext %conv10.6, i8 noundef zeroext 0, i32 noundef %conv13.6, i8 noundef zeroext 0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body9.6, %for.body9.5.cleanup_crit_edge, %for.body9.4.cleanup_crit_edge, %for.body9.3.cleanup_crit_edge, %for.body9.2.cleanup_crit_edge, %for.body9.1.cleanup_crit_edge, %for.inc.7, %for.body9.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %for.inc.7 ], [ %call3, %if.then ], [ %call3.lcssa.ph, %for.body9.6 ], [ %call3.lcssa.ph, %for.body9.5.cleanup_crit_edge ], [ %call3.lcssa.ph, %for.body9.4.cleanup_crit_edge ], [ %call3.lcssa.ph, %for.body9.3.cleanup_crit_edge ], [ %call3.lcssa.ph, %for.body9.2.cleanup_crit_edge ], [ %call3.lcssa.ph, %for.body9.1.cleanup_crit_edge ], [ %call3.lcssa.ph, %for.body9.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_getpfc(ptr noundef %dev, ptr nocapture noundef writeonly %pfc) #0 align 64 {
entry:
  %ppcnt_pl.i = alloca [256 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1.i = getelementptr i8, ptr %dev, i32 2312
  %pfc.i = getelementptr i8, ptr %dev, i32 2336
  %local_port.i = getelementptr i8, ptr %dev, i32 2316
  %arrayidx.i.i96.i.i = getelementptr inbounds i32, ptr %ppcnt_pl.i, i32 1
  %arrayidx.i.i153.i.i = getelementptr inbounds i32, ptr %ppcnt_pl.i, i32 1
  %arrayidx.i.i.i = getelementptr inbounds i64, ptr %ppcnt_pl.i, i32 13
  %arrayidx.i.i34.i = getelementptr inbounds i64, ptr %ppcnt_pl.i, i32 11
  br label %for.body

for.body:                                         ; preds = %mlxsw_reg_ppcnt_tx_pause_get.exit.i.for.body_crit_edge, %entry
  %i.086 = phi i32 [ 0, %entry ], [ %inc, %mlxsw_reg_ppcnt_tx_pause_get.exit.i.for.body_crit_edge ]
  %0 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1.i, align 8
  %2 = ptrtoint ptr %pfc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfc.i, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i) #8
  %4 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port.i, align 4
  %6 = call ptr @memset(ptr %ppcnt_pl.i, i32 0, i32 256)
  %7 = ptrtoint ptr %ppcnt_pl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ppcnt_pl.i, align 4
  %conv1.i.i = zext i16 %5 to i32
  %and.i.i.i = shl nuw i32 %conv1.i.i, 16
  %spec.select.i.i.i.i = and i32 %and.i.i.i, 16711680
  %and7.i.i23.i.i = and i32 %8, 4032
  %or.i.i.i.i = or i32 %spec.select.i.i.i.i, %and7.i.i23.i.i
  %9 = shl nuw nsw i32 %conv1.i.i, 4
  %and6.i28.i.i.i = and i32 %9, 12288
  %or.i32.i.i.i = or i32 %and6.i28.i.i.i, %or.i.i.i.i
  %or.i.i74.i.i = or i32 %or.i32.i.i.i, 16
  store i32 %or.i.i74.i.i, ptr %ppcnt_pl.i, align 4
  %10 = ptrtoint ptr %arrayidx.i.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i96.i.i, align 4
  %and6.i.i152.i.i = and i32 %i.086, 31
  %or.i.i127.i.i = and i32 %11, 1073741792
  %and7.i.i155.i.i = or i32 %or.i.i127.i.i, 1073741824
  %or.i.i156.i.i = or i32 %and6.i.i152.i.i, %and7.i.i155.i.i
  %12 = ptrtoint ptr %arrayidx.i.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i.i156.i.i, ptr %arrayidx.i.i153.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_ppcnt, ptr noundef nonnull %ppcnt_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_reg_ppcnt_tx_pause_get.exit.i, label %if.then

mlxsw_reg_ppcnt_tx_pause_get.exit.i:              ; preds = %for.body
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.ieee_pfc, ptr %3, i32 0, i32 4, i32 %i.086
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %arrayidx.i.i34.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.i34.i, align 8
  %arrayidx8.i = getelementptr %struct.ieee_pfc, ptr %3, i32 0, i32 5, i32 %i.086
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx8.i, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i) #8
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %mlxsw_reg_ppcnt_tx_pause_get.exit.i.for.body_crit_edge

mlxsw_reg_ppcnt_tx_pause_get.exit.i.for.body_crit_edge: ; preds = %mlxsw_reg_ppcnt_tx_pause_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.086) #12
  br label %cleanup

for.end:                                          ; preds = %mlxsw_reg_ppcnt_tx_pause_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %pfc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pfc.i, align 8
  %23 = call ptr @memcpy(ptr %pfc, ptr %22, i32 136)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_setpfc(ptr noundef %dev, ptr nocapture noundef readonly %pfc) #0 align 64 {
entry:
  %pfcc_pl.i = alloca [32 x i8], align 4
  %orig_hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  %hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link.i = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.load.i)
  %1 = icmp ugt i8 %bf.load.i, 63
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %orig_hdroom) #8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom) #8
  %2 = call ptr @memset(ptr %hdroom, i32 255, i32 216)
  br i1 %1, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %3 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %hdroom3 = getelementptr i8, ptr %dev, i32 3488
  %5 = ptrtoint ptr %hdroom3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdroom3, align 8
  %7 = call ptr @memcpy(ptr %orig_hdroom, ptr %6, i32 216)
  %8 = call ptr @memmove(ptr %hdroom, ptr %6, i32 216)
  %pfc_en4 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %9 = ptrtoint ptr %pfc_en4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfc_en4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %delay, align 4
  %conv7 = zext i16 %12 to i32
  %sub = add nuw nsw i32 %conv7, 7
  %div54 = lshr i32 %sub, 3
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %div54.sink = phi i32 [ %div54, %if.then6 ], [ 0, %if.end.if.end9_crit_edge ]
  %13 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div54.sink, ptr %13, align 4
  %and = and i8 %10, 1
  %lossy = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 0, i32 3
  %15 = xor i8 %and, 1
  %16 = ptrtoint ptr %lossy to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %lossy, align 1
  %lossy.1 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1, i32 3
  %and.1 = lshr i8 %10, 1
  %and.1.lobit = and i8 %and.1, 1
  %17 = xor i8 %and.1.lobit, 1
  %18 = ptrtoint ptr %lossy.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %lossy.1, align 1
  %lossy.2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2, i32 3
  %and.2 = lshr i8 %10, 2
  %and.2.lobit = and i8 %and.2, 1
  %19 = xor i8 %and.2.lobit, 1
  %20 = ptrtoint ptr %lossy.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %lossy.2, align 1
  %lossy.3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3, i32 3
  %and.3 = lshr i8 %10, 3
  %and.3.lobit = and i8 %and.3, 1
  %21 = xor i8 %and.3.lobit, 1
  %22 = ptrtoint ptr %lossy.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %lossy.3, align 1
  %lossy.4 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4, i32 3
  %and.4 = lshr i8 %10, 4
  %and.4.lobit = and i8 %and.4, 1
  %23 = xor i8 %and.4.lobit, 1
  %24 = ptrtoint ptr %lossy.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %lossy.4, align 1
  %lossy.5 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5, i32 3
  %and.5 = lshr i8 %10, 5
  %and.5.lobit = and i8 %and.5, 1
  %25 = xor i8 %and.5.lobit, 1
  %26 = ptrtoint ptr %lossy.5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %lossy.5, align 1
  %lossy.6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6, i32 3
  %and.6 = lshr i8 %10, 6
  %and.6.lobit = and i8 %and.6, 1
  %27 = xor i8 %and.6.lobit, 1
  %28 = ptrtoint ptr %lossy.6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %lossy.6, align 1
  %lossy.7 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7, i32 3
  %29 = xor i8 %10, -1
  %.lobit.not = lshr i8 %29, 7
  %30 = ptrtoint ptr %lossy.7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.lobit.not, ptr %lossy.7, align 1
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom) #8
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom) #8
  %call16 = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfcc_pl.i) #8
  %local_port.i = getelementptr i8, ptr %dev, i32 2316
  %31 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %local_port.i, align 4
  %33 = call ptr @memset(ptr %pfcc_pl.i, i32 0, i32 32)
  %conv1.i.i = zext i16 %32 to i32
  %and.i.i.i = shl nuw i32 %conv1.i.i, 16
  %spec.select.i.i.i.i = and i32 %and.i.i.i, 16711680
  %34 = ptrtoint ptr %pfcc_pl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pfcc_pl.i, align 4
  %and7.i.i.i.i = and i32 %35, -16723969
  %or.i.i.i.i = or i32 %spec.select.i.i.i.i, %and7.i.i.i.i
  %36 = shl nuw nsw i32 %conv1.i.i, 4
  %and6.i28.i.i.i = and i32 %36, 12288
  %or.i32.i.i.i = or i32 %and6.i28.i.i.i, %or.i.i.i.i
  store i32 %or.i32.i.i.i, ptr %pfcc_pl.i, align 4
  %37 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i56 = load i8, ptr %link.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i56, 6
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %conv.i = zext i8 %bf.clear.i to i32
  %spec.select.i.i.i = shl nuw i32 %conv.i, 31
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 3
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %39, 2147483647
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %bf.lshr5.i = lshr i8 %bf.load.i56, 7
  %conv6.i = zext i8 %bf.lshr5.i to i32
  %spec.select.i.i31.i = shl nuw i32 %conv6.i, 31
  %arrayidx.i.i37.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i37.i, align 4
  %and7.i.i39.i = and i32 %41, 2147483647
  %or.i.i40.i = or i32 %spec.select.i.i31.i, %and7.i.i39.i
  store i32 %or.i.i40.i, ptr %arrayidx.i.i37.i, align 4
  %42 = ptrtoint ptr %pfc_en4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pfc_en4, align 1
  %arrayidx.i.i.i64.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 1
  %44 = ptrtoint ptr %arrayidx.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i64.i, align 4
  %arrayidx.i.i30.i.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 1
  %or.i.i33.i.i = or i32 %45, 16711935
  %46 = ptrtoint ptr %arrayidx.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i33.i.i, ptr %arrayidx.i.i30.i.i, align 4
  %conv.i.i = zext i8 %43 to i32
  %spec.select.i.i51.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx.i.i57.i.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 2
  %47 = ptrtoint ptr %arrayidx.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i57.i.i, align 4
  %and7.i.i59.i.i = and i32 %48, -16711681
  %or.i.i60.i.i = or i32 %spec.select.i.i51.i.i, %and7.i.i59.i.i
  store i32 %or.i.i60.i.i, ptr %arrayidx.i.i57.i.i, align 4
  %spec.select.i.i79.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx.i.i85.i.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 3
  %49 = ptrtoint ptr %arrayidx.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i85.i.i, align 4
  %and7.i.i87.i.i = and i32 %50, -16711681
  %or.i.i88.i.i = or i32 %spec.select.i.i79.i.i, %and7.i.i87.i.i
  store i32 %or.i.i88.i.i, ptr %arrayidx.i.i85.i.i, align 4
  %mlxsw_sp.i = getelementptr i8, ptr %dev, i32 2312
  %51 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mlxsw_sp.i, align 8
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %54, ptr noundef nonnull @mlxsw_reg_pfcc, ptr noundef nonnull %pfcc_pl.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfcc_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  %call27 = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %add.ptr.i, ptr noundef nonnull %orig_hdroom) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %pfc24 = getelementptr i8, ptr %dev, i32 2336
  %55 = ptrtoint ptr %pfc24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pfc24, align 8
  %57 = call ptr @memcpy(ptr %56, ptr %pfc, i32 136)
  %58 = load ptr, ptr %pfc24, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 8, ptr %58, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then18, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call16, %if.then18 ], [ %call.i, %if.then22 ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom) #8
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %orig_hdroom) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_setapp(ptr noundef %dev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %priority.i = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp.i = icmp ugt i8 %1, 7
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %conv.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %app, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %3, label %sw.default.i [
    i8 5, label %sw.bb.i
    i8 1, label %sw.bb36.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %protocol.i = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %6)
  %cmp6.i = icmp ugt i16 %6, 63
  br i1 %cmp6.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv5.i) #12
  br label %cleanup

if.end11.i:                                       ; preds = %sw.bb.i
  %call.i = tail call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %dev, ptr noundef %app) #8
  %conv12.i = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i.i = icmp eq i8 %call.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv12.i, i1 true) #8, !range !199
  %sub.i.i = sub nuw nsw i32 32, %7
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %dec.i = add nsw i32 %cond.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i, label %if.end11.i.if.end_crit_edge, label %if.then14.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then14.i:                                      ; preds = %if.end11.i
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priority.i, align 1
  %conv16.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %conv16.i)
  %cmp17.i = icmp ult i32 %dec.i, %conv16.i
  br i1 %cmp17.i, label %if.then14.i.if.end.sink.split_crit_edge, label %if.else.i

if.then14.i.if.end.sink.split_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.else.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %conv16.i)
  %cmp26.i = icmp ugt i32 %dec.i, %conv16.i
  br i1 %cmp26.i, label %if.else.i.if.end.sink.split_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.if.end.sink.split_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

sw.bb36.i:                                        ; preds = %if.end.i
  %protocol37.i = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %10 = ptrtoint ptr %protocol37.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool38.not.i = icmp eq i16 %11, 0
  br i1 %tobool38.not.i, label %sw.bb36.i.if.end_crit_edge, label %if.then39.i

sw.bb36.i.if.end_crit_edge:                       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then39.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #12
  br label %cleanup

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %conv4.i) #12
  br label %cleanup

if.end.sink.split:                                ; preds = %if.else.i.if.end.sink.split_crit_edge, %if.then14.i.if.end.sink.split_crit_edge
  %.str.55.sink = phi ptr [ @.str.54, %if.then14.i.if.end.sink.split_crit_edge ], [ @.str.55, %if.else.i.if.end.sink.split_crit_edge ]
  %12 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol.i, align 2
  %conv32.i = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull %.str.55.sink, i32 noundef %conv16.i, i32 noundef %conv32.i, i32 noundef %dec.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %sw.bb36.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.end11.i.if.end_crit_edge
  %call2 = tail call i32 @dcb_ieee_setapp(ptr noundef %dev, ptr noundef %app) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @mlxsw_sp_port_dcb_app_update(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %err_update

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_update:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef %app) #8
  br label %cleanup

cleanup:                                          ; preds = %err_update, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.default.i, %if.then39.i, %if.then8.i, %if.then.i
  %retval.0 = phi i32 [ %call6, %err_update ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %sw.default.i ], [ -22, %if.then39.i ], [ -22, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_ieee_delapp(ptr noundef %dev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef %app) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call2 = tail call fastcc i32 @mlxsw_sp_port_dcb_app_update(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.112) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlxsw_sp_dcbnl_getdcbx(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlxsw_sp_dcbnl_setdcbx(ptr nocapture noundef readnone %dev, i8 noundef zeroext %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %mode)
  %cmp.not = icmp ne i8 %mode, 9
  %conv2 = zext i1 %cmp.not to i8
  ret i8 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_getbuffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef %buf) #0 align 64 {
if.end.9:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdroom1 = getelementptr i8, ptr %dev, i32 3488
  %0 = ptrtoint ptr %hdroom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdroom1, align 8
  %mlxsw_sp2 = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp2, align 8
  %total_size = getelementptr inbounds %struct.dcbnl_buffer, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %total_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %total_size, align 4
  %size_cells = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %size_cells to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_cells, align 4
  %call4 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %6) #8
  %arrayidx6 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4, ptr %arrayidx6, align 4
  %8 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_size, align 4
  %add = add i32 %9, %call4
  store i32 %add, ptr %total_size, align 4
  %size_cells.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %size_cells.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_cells.1, align 4
  %call4.1 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %11) #8
  %arrayidx6.1 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call4.1, ptr %arrayidx6.1, align 4
  %13 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_size, align 4
  %add.1 = add i32 %14, %call4.1
  store i32 %add.1, ptr %total_size, align 4
  %size_cells.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %size_cells.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size_cells.2, align 4
  %call4.2 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %16) #8
  %arrayidx6.2 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call4.2, ptr %arrayidx6.2, align 4
  %18 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_size, align 4
  %add.2 = add i32 %19, %call4.2
  store i32 %add.2, ptr %total_size, align 4
  %size_cells.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %size_cells.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size_cells.3, align 4
  %call4.3 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %21) #8
  %arrayidx6.3 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call4.3, ptr %arrayidx6.3, align 4
  %23 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_size, align 4
  %add.3 = add i32 %24, %call4.3
  store i32 %add.3, ptr %total_size, align 4
  %size_cells.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %size_cells.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size_cells.4, align 4
  %call4.4 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %26) #8
  %arrayidx6.4 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call4.4, ptr %arrayidx6.4, align 4
  %28 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_size, align 4
  %add.4 = add i32 %29, %call4.4
  store i32 %add.4, ptr %total_size, align 4
  %size_cells.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %size_cells.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size_cells.5, align 4
  %call4.5 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %31) #8
  %arrayidx6.5 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call4.5, ptr %arrayidx6.5, align 4
  %33 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_size, align 4
  %add.5 = add i32 %34, %call4.5
  store i32 %add.5, ptr %total_size, align 4
  %size_cells.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %size_cells.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size_cells.6, align 4
  %call4.6 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %36) #8
  %arrayidx6.6 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call4.6, ptr %arrayidx6.6, align 4
  %38 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_size, align 4
  %add.6 = add i32 %39, %call4.6
  store i32 %add.6, ptr %total_size, align 4
  %size_cells.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %size_cells.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size_cells.7, align 4
  %call4.7 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %41) #8
  %arrayidx6.7 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call4.7, ptr %arrayidx6.7, align 4
  %43 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_size, align 4
  %add.7 = add i32 %44, %call4.7
  store i32 %add.7, ptr %total_size, align 4
  %size_cells.8 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %size_cells.8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size_cells.8, align 4
  %call4.8 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %46) #8
  %47 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total_size, align 4
  %add.8 = add i32 %48, %call4.8
  store i32 %add.8, ptr %total_size, align 4
  %size_cells.9 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 2, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %size_cells.9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size_cells.9, align 4
  %call4.9 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %50) #8
  %51 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total_size, align 4
  %add.9 = add i32 %52, %call4.9
  store i32 %add.9, ptr %total_size, align 4
  %int_buf = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %int_buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %int_buf, align 4
  %call9 = tail call i32 @mlxsw_sp_cells_bytes(ptr noundef %3, i32 noundef %54) #8
  %55 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total_size, align 4
  %add11 = add i32 %56, %call9
  store i32 %add11, ptr %total_size, align 4
  %prios = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %prios to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %prios, align 4
  %59 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %buf, align 1
  %arrayidx16.1 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx16.1, align 4
  %arrayidx17.1 = getelementptr [8 x i8], ptr %buf, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx17.1, align 1
  %arrayidx16.2 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx16.2, align 4
  %arrayidx17.2 = getelementptr [8 x i8], ptr %buf, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx17.2, align 1
  %arrayidx16.3 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx16.3, align 4
  %arrayidx17.3 = getelementptr [8 x i8], ptr %buf, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx17.3, align 1
  %arrayidx16.4 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 4
  %69 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx16.4, align 4
  %arrayidx17.4 = getelementptr [8 x i8], ptr %buf, i32 0, i32 4
  %71 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx17.4, align 1
  %arrayidx16.5 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 5
  %72 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx16.5, align 4
  %arrayidx17.5 = getelementptr [8 x i8], ptr %buf, i32 0, i32 5
  %74 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx17.5, align 1
  %arrayidx16.6 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 6
  %75 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx16.6, align 4
  %arrayidx17.6 = getelementptr [8 x i8], ptr %buf, i32 0, i32 6
  %77 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx17.6, align 1
  %arrayidx16.7 = getelementptr %struct.mlxsw_sp_hdroom, ptr %1, i32 0, i32 1, i32 0, i32 7
  %78 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx16.7, align 4
  %arrayidx17.7 = getelementptr [8 x i8], ptr %buf, i32 0, i32 7
  %80 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx17.7, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dcbnl_setbuffer(ptr noundef %dev, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  %hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom) #8
  %2 = call ptr @memset(ptr %hdroom, i32 255, i32 216)
  %hdroom2 = getelementptr i8, ptr %dev, i32 3488
  %3 = ptrtoint ptr %hdroom2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdroom2, align 8
  %5 = call ptr @memcpy(ptr %hdroom, ptr %4, i32 216)
  %6 = ptrtoint ptr %hdroom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdroom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %set_buf_idx = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %set_buf_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %set_buf_idx, align 2
  %arrayidx.1 = getelementptr [8 x i8], ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %set_buf_idx.1 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %set_buf_idx.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %set_buf_idx.1, align 2
  %arrayidx.2 = getelementptr [8 x i8], ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %set_buf_idx.2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %set_buf_idx.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %set_buf_idx.2, align 2
  %arrayidx.3 = getelementptr [8 x i8], ptr %buf, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3, align 1
  %set_buf_idx.3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %set_buf_idx.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %set_buf_idx.3, align 2
  %arrayidx.4 = getelementptr [8 x i8], ptr %buf, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %set_buf_idx.4 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %set_buf_idx.4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %set_buf_idx.4, align 2
  %arrayidx.5 = getelementptr [8 x i8], ptr %buf, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.5, align 1
  %set_buf_idx.5 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %set_buf_idx.5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %set_buf_idx.5, align 2
  %arrayidx.6 = getelementptr [8 x i8], ptr %buf, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.6, align 1
  %set_buf_idx.6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %set_buf_idx.6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %set_buf_idx.6, align 2
  %arrayidx.7 = getelementptr [8 x i8], ptr %buf, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.7, align 1
  %set_buf_idx.7 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %set_buf_idx.7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %set_buf_idx.7, align 2
  %arrayidx9 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 0
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx9, align 4
  %call10 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %33) #8
  %set_size_cells = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %set_size_cells to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call10, ptr %set_size_cells, align 4
  %arrayidx9.1 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9.1, align 4
  %call10.1 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %36) #8
  %set_size_cells.1 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %set_size_cells.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call10.1, ptr %set_size_cells.1, align 4
  %arrayidx9.2 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.2, align 4
  %call10.2 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %39) #8
  %set_size_cells.2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %set_size_cells.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call10.2, ptr %set_size_cells.2, align 4
  %arrayidx9.3 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9.3, align 4
  %call10.3 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %42) #8
  %set_size_cells.3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %set_size_cells.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call10.3, ptr %set_size_cells.3, align 4
  %arrayidx9.4 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.4, align 4
  %call10.4 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %45) #8
  %set_size_cells.4 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %set_size_cells.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call10.4, ptr %set_size_cells.4, align 4
  %arrayidx9.5 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx9.5, align 4
  %call10.5 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %48) #8
  %set_size_cells.5 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %set_size_cells.5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call10.5, ptr %set_size_cells.5, align 4
  %arrayidx9.6 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx9.6, align 4
  %call10.6 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %51) #8
  %set_size_cells.6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %set_size_cells.6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call10.6, ptr %set_size_cells.6, align 4
  %arrayidx9.7 = getelementptr %struct.dcbnl_buffer, ptr %buf, i32 0, i32 1, i32 7
  %53 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx9.7, align 4
  %call10.7 = tail call i32 @mlxsw_sp_bytes_cells(ptr noundef %1, i32 noundef %54) #8
  %set_size_cells.7 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 2, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %set_size_cells.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call10.7, ptr %set_size_cells.7, align 4
  call void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr noundef nonnull %hdroom) #8
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom) #8
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom) #8
  %call16 = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom) #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.113) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.preheader
  %retval.0 = phi i32 [ -22, %if.then ], [ %call16, %for.cond.preheader ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_ets_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_prio_tc_set(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_prios_reset_buf_idx(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_hdroom_configure(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_ets_maxrate_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_dcb_app_update(ptr nocapture noundef %mlxsw_sp_port) unnamed_addr #0 align 64 {
entry:
  %qpdsm_pl.i = alloca [68 x i8], align 4
  %qpdpm_pl.i = alloca [132 x i8], align 4
  %qpdp_pl.i = alloca [8 x i8], align 8
  %prio_map = alloca %struct.dcb_ieee_app_prio_map, align 8
  %dscp_map = alloca %struct.dcb_ieee_app_dscp_map, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %prio_map) #8
  %0 = call ptr @memset(ptr %prio_map, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dscp_map) #8
  %1 = call ptr @memset(ptr %dscp_map, i32 255, i32 64)
  %2 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp_port, align 8
  %call.i = tail call zeroext i8 @dcb_ieee_getapp_default_prio_mask(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %4 = tail call i8 @llvm.ctlz.i8(i8 %call.i, i1 true) #8, !range !200
  %conv2.i = xor i8 %4, 7
  %retval.0.i = select i1 %tobool.not.i, i8 0, i8 %conv2.i
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %5 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qpdp_pl.i) #8
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %7 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %local_port.i, align 4
  %9 = ptrtoint ptr %qpdp_pl.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %qpdp_pl.i, align 8
  %conv1.i.i = zext i16 %8 to i32
  %and.i.i.i = shl nuw i32 %conv1.i.i, 16
  %spec.select.i.i.i.i = and i32 %and.i.i.i, 16711680
  %10 = shl nuw nsw i32 %conv1.i.i, 4
  %and6.i28.i.i.i = and i32 %10, 12288
  %or.i32.i.i.i = or i32 %and6.i28.i.i.i, %spec.select.i.i.i.i
  store i32 %or.i32.i.i.i, ptr %qpdp_pl.i, align 8
  %conv2.i.i = zext i8 %retval.0.i to i32
  %arrayidx.i.i29.i.i = getelementptr inbounds i32, ptr %qpdp_pl.i, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i29.i.i, align 4
  %and7.i.i31.i.i = and i32 %12, -16
  %or.i.i32.i.i = or i32 %and7.i.i31.i.i, %conv2.i.i
  store i32 %or.i.i32.i.i, ptr %arrayidx.i.i29.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core.i, align 4
  %call.i52 = call i32 @mlxsw_reg_write(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_qpdp, ptr noundef nonnull %qpdp_pl.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qpdp_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not = icmp eq i32 %call.i52, 0
  %15 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mlxsw_sp_port, align 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @dcb_ieee_getapp_prio_dscp_mask_map(ptr noundef %16, ptr noundef nonnull %prio_map) #8
  %17 = ptrtoint ptr %prio_map to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %prio_map, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not.i53 = icmp eq i64 %18, 0
  br i1 %tobool.not.i53, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  %shr.i.i = lshr i64 %18, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #8, !range !199
  %add.i.i = sub nuw nsw i32 64, %19
  br label %fls64.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i54 = trunc i64 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i54)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i54, 0
  %20 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i54, i1 true) #8, !range !199
  %sub.i6.i.i = sub nuw nsw i32 32, %20
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %conv.i = sext i32 %sub.i to i64
  %21 = ptrtoint ptr %prio_map to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %prio_map, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %fls64.exit.i, %if.end.for.inc.i_crit_edge
  %22 = xor i1 %tobool.not.i53, true
  %arrayidx.1.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.not.1.i = icmp eq i64 %24, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %shr.i.1.i = lshr i64 %24, 32
  %conv.i.1.i = trunc i64 %shr.i.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %conv.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %if.then.i.1.i

if.then.i.1.i:                                    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call i32 @llvm.ctlz.i32(i32 %conv.i.1.i, i1 true) #8, !range !199
  %add.i.1.i = sub nuw nsw i32 64, %25
  br label %fls64.exit.1.i

if.end.i.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.1.i = trunc i64 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.1.i)
  %tobool.not.i5.i.1.i = icmp eq i32 %conv1.i.1.i, 0
  %26 = call i32 @llvm.ctlz.i32(i32 %conv1.i.1.i, i1 true) #8, !range !199
  %sub.i6.i.1.i = sub nuw nsw i32 32, %26
  %cond.i7.i.1.i = select i1 %tobool.not.i5.i.1.i, i32 0, i32 %sub.i6.i.1.i
  br label %fls64.exit.1.i

fls64.exit.1.i:                                   ; preds = %if.end.i.1.i, %if.then.i.1.i
  %retval.0.i.1.i = phi i32 [ %add.i.1.i, %if.then.i.1.i ], [ %cond.i7.i.1.i, %if.end.i.1.i ]
  %sub.1.i = add nsw i32 %retval.0.i.1.i, -1
  %conv.1.i = sext i32 %sub.1.i to i64
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv.1.i, ptr %arrayidx.1.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %fls64.exit.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %have_dscp.1.off0.1.i = phi i1 [ true, %fls64.exit.1.i ], [ %22, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.not.2.i = icmp eq i64 %29, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %shr.i.2.i = lshr i64 %29, 32
  %conv.i.2.i = trunc i64 %shr.i.2.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %conv.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %if.then.i.2.i

if.then.i.2.i:                                    ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = call i32 @llvm.ctlz.i32(i32 %conv.i.2.i, i1 true) #8, !range !199
  %add.i.2.i = sub nuw nsw i32 64, %30
  br label %fls64.exit.2.i

if.end.i.2.i:                                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.2.i = trunc i64 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.2.i)
  %tobool.not.i5.i.2.i = icmp eq i32 %conv1.i.2.i, 0
  %31 = call i32 @llvm.ctlz.i32(i32 %conv1.i.2.i, i1 true) #8, !range !199
  %sub.i6.i.2.i = sub nuw nsw i32 32, %31
  %cond.i7.i.2.i = select i1 %tobool.not.i5.i.2.i, i32 0, i32 %sub.i6.i.2.i
  br label %fls64.exit.2.i

fls64.exit.2.i:                                   ; preds = %if.end.i.2.i, %if.then.i.2.i
  %retval.0.i.2.i = phi i32 [ %add.i.2.i, %if.then.i.2.i ], [ %cond.i7.i.2.i, %if.end.i.2.i ]
  %sub.2.i = add nsw i32 %retval.0.i.2.i, -1
  %conv.2.i = sext i32 %sub.2.i to i64
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv.2.i, ptr %arrayidx.2.i, align 8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %fls64.exit.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %have_dscp.1.off0.2.i = phi i1 [ true, %fls64.exit.2.i ], [ %have_dscp.1.off0.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.3.i = icmp eq i64 %34, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %shr.i.3.i = lshr i64 %34, 32
  %conv.i.3.i = trunc i64 %shr.i.3.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %conv.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %if.end.i.3.i, label %if.then.i.3.i

if.then.i.3.i:                                    ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call i32 @llvm.ctlz.i32(i32 %conv.i.3.i, i1 true) #8, !range !199
  %add.i.3.i = sub nuw nsw i32 64, %35
  br label %fls64.exit.3.i

if.end.i.3.i:                                     ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.3.i = trunc i64 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.3.i)
  %tobool.not.i5.i.3.i = icmp eq i32 %conv1.i.3.i, 0
  %36 = call i32 @llvm.ctlz.i32(i32 %conv1.i.3.i, i1 true) #8, !range !199
  %sub.i6.i.3.i = sub nuw nsw i32 32, %36
  %cond.i7.i.3.i = select i1 %tobool.not.i5.i.3.i, i32 0, i32 %sub.i6.i.3.i
  br label %fls64.exit.3.i

fls64.exit.3.i:                                   ; preds = %if.end.i.3.i, %if.then.i.3.i
  %retval.0.i.3.i = phi i32 [ %add.i.3.i, %if.then.i.3.i ], [ %cond.i7.i.3.i, %if.end.i.3.i ]
  %sub.3.i = add nsw i32 %retval.0.i.3.i, -1
  %conv.3.i = sext i32 %sub.3.i to i64
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.3.i, ptr %arrayidx.3.i, align 8
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %fls64.exit.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %have_dscp.1.off0.3.i = phi i1 [ true, %fls64.exit.3.i ], [ %have_dscp.1.off0.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %arrayidx.4.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool.not.4.i = icmp eq i64 %39, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %shr.i.4.i = lshr i64 %39, 32
  %conv.i.4.i = trunc i64 %shr.i.4.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %conv.i.4.i, 0
  br i1 %tobool.not.i.4.i, label %if.end.i.4.i, label %if.then.i.4.i

if.then.i.4.i:                                    ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call i32 @llvm.ctlz.i32(i32 %conv.i.4.i, i1 true) #8, !range !199
  %add.i.4.i = sub nuw nsw i32 64, %40
  br label %fls64.exit.4.i

if.end.i.4.i:                                     ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.4.i = trunc i64 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.4.i)
  %tobool.not.i5.i.4.i = icmp eq i32 %conv1.i.4.i, 0
  %41 = call i32 @llvm.ctlz.i32(i32 %conv1.i.4.i, i1 true) #8, !range !199
  %sub.i6.i.4.i = sub nuw nsw i32 32, %41
  %cond.i7.i.4.i = select i1 %tobool.not.i5.i.4.i, i32 0, i32 %sub.i6.i.4.i
  br label %fls64.exit.4.i

fls64.exit.4.i:                                   ; preds = %if.end.i.4.i, %if.then.i.4.i
  %retval.0.i.4.i = phi i32 [ %add.i.4.i, %if.then.i.4.i ], [ %cond.i7.i.4.i, %if.end.i.4.i ]
  %sub.4.i = add nsw i32 %retval.0.i.4.i, -1
  %conv.4.i = sext i32 %sub.4.i to i64
  %42 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv.4.i, ptr %arrayidx.4.i, align 8
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %fls64.exit.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %have_dscp.1.off0.4.i = phi i1 [ true, %fls64.exit.4.i ], [ %have_dscp.1.off0.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %arrayidx.5.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool.not.5.i = icmp eq i64 %44, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  %shr.i.5.i = lshr i64 %44, 32
  %conv.i.5.i = trunc i64 %shr.i.5.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.5.i)
  %tobool.not.i.5.i = icmp eq i32 %conv.i.5.i, 0
  br i1 %tobool.not.i.5.i, label %if.end.i.5.i, label %if.then.i.5.i

if.then.i.5.i:                                    ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = call i32 @llvm.ctlz.i32(i32 %conv.i.5.i, i1 true) #8, !range !199
  %add.i.5.i = sub nuw nsw i32 64, %45
  br label %fls64.exit.5.i

if.end.i.5.i:                                     ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.5.i = trunc i64 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.5.i)
  %tobool.not.i5.i.5.i = icmp eq i32 %conv1.i.5.i, 0
  %46 = call i32 @llvm.ctlz.i32(i32 %conv1.i.5.i, i1 true) #8, !range !199
  %sub.i6.i.5.i = sub nuw nsw i32 32, %46
  %cond.i7.i.5.i = select i1 %tobool.not.i5.i.5.i, i32 0, i32 %sub.i6.i.5.i
  br label %fls64.exit.5.i

fls64.exit.5.i:                                   ; preds = %if.end.i.5.i, %if.then.i.5.i
  %retval.0.i.5.i = phi i32 [ %add.i.5.i, %if.then.i.5.i ], [ %cond.i7.i.5.i, %if.end.i.5.i ]
  %sub.5.i = add nsw i32 %retval.0.i.5.i, -1
  %conv.5.i = sext i32 %sub.5.i to i64
  %47 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv.5.i, ptr %arrayidx.5.i, align 8
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %fls64.exit.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %have_dscp.1.off0.5.i = phi i1 [ true, %fls64.exit.5.i ], [ %have_dscp.1.off0.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %arrayidx.6.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %tobool.not.6.i = icmp eq i64 %49, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  %shr.i.6.i = lshr i64 %49, 32
  %conv.i.6.i = trunc i64 %shr.i.6.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.6.i)
  %tobool.not.i.6.i = icmp eq i32 %conv.i.6.i, 0
  br i1 %tobool.not.i.6.i, label %if.end.i.6.i, label %if.then.i.6.i

if.then.i.6.i:                                    ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = call i32 @llvm.ctlz.i32(i32 %conv.i.6.i, i1 true) #8, !range !199
  %add.i.6.i = sub nuw nsw i32 64, %50
  br label %fls64.exit.6.i

if.end.i.6.i:                                     ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.6.i = trunc i64 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.6.i)
  %tobool.not.i5.i.6.i = icmp eq i32 %conv1.i.6.i, 0
  %51 = call i32 @llvm.ctlz.i32(i32 %conv1.i.6.i, i1 true) #8, !range !199
  %sub.i6.i.6.i = sub nuw nsw i32 32, %51
  %cond.i7.i.6.i = select i1 %tobool.not.i5.i.6.i, i32 0, i32 %sub.i6.i.6.i
  br label %fls64.exit.6.i

fls64.exit.6.i:                                   ; preds = %if.end.i.6.i, %if.then.i.6.i
  %retval.0.i.6.i = phi i32 [ %add.i.6.i, %if.then.i.6.i ], [ %cond.i7.i.6.i, %if.end.i.6.i ]
  %sub.6.i = add nsw i32 %retval.0.i.6.i, -1
  %conv.6.i = sext i32 %sub.6.i to i64
  %52 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv.6.i, ptr %arrayidx.6.i, align 8
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %fls64.exit.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %have_dscp.1.off0.6.i = phi i1 [ true, %fls64.exit.6.i ], [ %have_dscp.1.off0.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %arrayidx.7.i = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx.7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool.not.7.i = icmp eq i64 %54, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.mlxsw_sp_port_dcb_app_prio_dscp_map.exit_crit_edge, label %if.then.7.i

for.inc.6.i.mlxsw_sp_port_dcb_app_prio_dscp_map.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_sp_port_dcb_app_prio_dscp_map.exit

if.then.7.i:                                      ; preds = %for.inc.6.i
  %shr.i.7.i = lshr i64 %54, 32
  %conv.i.7.i = trunc i64 %shr.i.7.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.7.i)
  %tobool.not.i.7.i = icmp eq i32 %conv.i.7.i, 0
  br i1 %tobool.not.i.7.i, label %if.end.i.7.i, label %if.then.i.7.i

if.then.i.7.i:                                    ; preds = %if.then.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = call i32 @llvm.ctlz.i32(i32 %conv.i.7.i, i1 true) #8, !range !199
  %add.i.7.i = sub nuw nsw i32 64, %55
  br label %fls64.exit.7.i

if.end.i.7.i:                                     ; preds = %if.then.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.7.i = trunc i64 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.7.i)
  %tobool.not.i5.i.7.i = icmp eq i32 %conv1.i.7.i, 0
  %56 = call i32 @llvm.ctlz.i32(i32 %conv1.i.7.i, i1 true) #8, !range !199
  %sub.i6.i.7.i = sub nuw nsw i32 32, %56
  %cond.i7.i.7.i = select i1 %tobool.not.i5.i.7.i, i32 0, i32 %sub.i6.i.7.i
  br label %fls64.exit.7.i

fls64.exit.7.i:                                   ; preds = %if.end.i.7.i, %if.then.i.7.i
  %retval.0.i.7.i = phi i32 [ %add.i.7.i, %if.then.i.7.i ], [ %cond.i7.i.7.i, %if.end.i.7.i ]
  %sub.7.i = add nsw i32 %retval.0.i.7.i, -1
  %conv.7.i = sext i32 %sub.7.i to i64
  %57 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv.7.i, ptr %arrayidx.7.i, align 8
  br label %mlxsw_sp_port_dcb_app_prio_dscp_map.exit

mlxsw_sp_port_dcb_app_prio_dscp_map.exit:         ; preds = %fls64.exit.7.i, %for.inc.6.i.mlxsw_sp_port_dcb_app_prio_dscp_map.exit_crit_edge
  %have_dscp.1.off0.7.i = phi i1 [ true, %fls64.exit.7.i ], [ %have_dscp.1.off0.6.i, %for.inc.6.i.mlxsw_sp_port_dcb_app_prio_dscp_map.exit_crit_edge ]
  %58 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mlxsw_sp_port, align 8
  call void @dcb_ieee_getapp_dscp_prio_mask_map(ptr noundef %59, ptr noundef nonnull %dscp_map) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %mlxsw_sp_port_dcb_app_prio_dscp_map.exit
  %i.018.i = phi i32 [ 0, %mlxsw_sp_port_dcb_app_prio_dscp_map.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x i8], ptr %dscp_map, i32 0, i32 %i.018.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i55 = icmp eq i8 %61, 0
  %62 = call i8 @llvm.ctlz.i8(i8 %61, i1 true) #8, !range !200
  %conv4.i = xor i8 %62, 7
  %storemerge.i = select i1 %tobool.not.i55, i8 %retval.0.i, i8 %conv4.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %mlxsw_sp_port_dcb_app_dscp_prio_map.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mlxsw_sp_port_dcb_app_dscp_prio_map.exit:         ; preds = %for.body.i
  %64 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %qpdpm_pl.i) #8
  %66 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %local_port.i, align 4
  %68 = call ptr @memset(ptr %qpdpm_pl.i, i32 0, i32 132)
  %conv1.i.i58 = zext i16 %67 to i32
  %and.i.i.i59 = shl nuw i32 %conv1.i.i58, 16
  %spec.select.i.i.i.i78 = and i32 %and.i.i.i59, 16711680
  %69 = ptrtoint ptr %qpdpm_pl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qpdpm_pl.i, align 4
  %and7.i.i.i.i86 = and i32 %70, -16723969
  %or.i.i.i.i87 = or i32 %spec.select.i.i.i.i78, %and7.i.i.i.i86
  %71 = shl nuw nsw i32 %conv1.i.i58, 4
  %and6.i28.i.i.i113 = and i32 %71, 12288
  %or.i32.i.i.i117 = or i32 %and6.i28.i.i.i113, %or.i.i.i.i87
  store i32 %or.i32.i.i.i117, ptr %qpdpm_pl.i, align 4
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.body.i119.for.body.i119_crit_edge, %mlxsw_sp_port_dcb_app_dscp_prio_map.exit
  %indvars.iv.i = phi i32 [ 0, %mlxsw_sp_port_dcb_app_dscp_prio_map.exit ], [ %indvars.iv.next.i, %for.body.i119.for.body.i119_crit_edge ]
  %arrayidx.i118 = getelementptr [64 x i8], ptr %dscp_map, i32 0, i32 %indvars.iv.i
  %72 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i118, align 1
  %74 = add nuw i32 %indvars.iv.i, 2
  %div.i35.i.i.i.i = and i32 %74, 2147483647
  %arrayidx.i.i.i28.i = getelementptr i16, ptr %qpdpm_pl.i, i32 %div.i35.i.i.i.i
  %75 = ptrtoint ptr %arrayidx.i.i.i28.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i.i28.i, align 2
  %or32.i.i.i.i = or i16 %76, -32768
  store i16 %or32.i.i.i.i, ptr %arrayidx.i.i.i28.i, align 2
  %77 = add nuw i32 %indvars.iv.i, 2
  %div.i35.i.i27.i.i = and i32 %77, 2147483647
  %78 = and i8 %73, 15
  %conv12.i.i37.i.i = zext i8 %78 to i16
  %arrayidx.i.i38.i.i = getelementptr i16, ptr %qpdpm_pl.i, i32 %div.i35.i.i27.i.i
  %79 = ptrtoint ptr %arrayidx.i.i38.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.i.i38.i.i, align 2
  %conv16.i.i39.i.i = and i16 %80, -16
  %or32.i.i40.i.i = or i16 %conv16.i.i39.i.i, %conv12.i.i37.i.i
  store i16 %or32.i.i40.i.i, ptr %arrayidx.i.i38.i.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i121 = icmp eq i32 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i121, label %mlxsw_sp_port_dcb_app_update_qpdpm.exit, label %for.body.i119.for.body.i119_crit_edge

for.body.i119.for.body.i119_crit_edge:            ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i119

mlxsw_sp_port_dcb_app_update_qpdpm.exit:          ; preds = %for.body.i119
  %core.i122 = getelementptr inbounds %struct.mlxsw_sp, ptr %65, i32 0, i32 1
  %81 = ptrtoint ptr %core.i122 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core.i122, align 4
  %call.i123 = call i32 @mlxsw_reg_write(ptr noundef %82, ptr noundef nonnull @mlxsw_reg_qpdpm, ptr noundef nonnull %qpdpm_pl.i) #8
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %qpdpm_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool4.not = icmp eq i32 %call.i123, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %mlxsw_sp_port_dcb_app_update_qpdpm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mlxsw_sp_port, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %84, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end7:                                          ; preds = %mlxsw_sp_port_dcb_app_update_qpdpm.exit
  %85 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %qpdsm_pl.i) #8
  %87 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %local_port.i, align 4
  %89 = call ptr @memset(ptr %qpdsm_pl.i, i32 0, i32 68)
  %conv1.i.i126 = zext i16 %88 to i32
  %and.i.i.i127 = shl nuw i32 %conv1.i.i126, 16
  %spec.select.i.i.i.i146 = and i32 %and.i.i.i127, 16711680
  %90 = ptrtoint ptr %qpdsm_pl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qpdsm_pl.i, align 4
  %and7.i.i.i.i154 = and i32 %91, -16723969
  %or.i.i.i.i155 = or i32 %spec.select.i.i.i.i146, %and7.i.i.i.i154
  %92 = shl nuw nsw i32 %conv1.i.i126, 4
  %and6.i28.i.i.i181 = and i32 %92, 12288
  %or.i32.i.i.i185 = or i32 %and6.i28.i.i.i181, %or.i.i.i.i155
  store i32 %or.i32.i.i.i185, ptr %qpdsm_pl.i, align 4
  %93 = ptrtoint ptr %prio_map to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %prio_map, align 8
  %conv5.i = trunc i64 %94 to i32
  %arrayidx.i.i.i34.i = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 1
  %95 = ptrtoint ptr %arrayidx.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i.i34.i, align 4
  %or.i.i.i37.i = or i32 %96, -2147483648
  store i32 %or.i.i.i37.i, ptr %arrayidx.i.i.i34.i, align 4
  %conv.i.i198 = and i32 %conv5.i, 255
  %spec.select.i.i42.i.i = shl i32 %conv5.i, 24
  %and6.i.i47.i.i = and i32 %spec.select.i.i42.i.i, 1056964608
  %and7.i.i50.i.i = and i32 %or.i.i.i37.i, -1069530881
  %or.i.i51.i.i = or i32 %and6.i.i47.i.i, %and7.i.i50.i.i
  %or.i.i89.i.i = or i32 %or.i.i51.i.i, 8388608
  %spec.select.i.i118.i.i = shl nuw nsw i32 %conv.i.i198, 16
  %and6.i.i123.i.i = and i32 %spec.select.i.i118.i.i, 4128768
  %or.i.i127.i.i = or i32 %and6.i.i123.i.i, %or.i.i89.i.i
  %or.i.i165.i.i = or i32 %or.i.i127.i.i, 32768
  %spec.select.i.i194.i.i = shl nuw nsw i32 %conv.i.i198, 8
  %and6.i.i199.i.i = and i32 %spec.select.i.i194.i.i, 16128
  %arrayidx.i.i200.i.i = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 1
  %or.i.i203.i.i = or i32 %and6.i.i199.i.i, %or.i.i165.i.i
  %97 = ptrtoint ptr %arrayidx.i.i200.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i.i203.i.i, ptr %arrayidx.i.i200.i.i, align 4
  %arrayidx.i187.1 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx.i187.1 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx.i187.1, align 8
  %conv5.i.1 = trunc i64 %99 to i32
  %arrayidx.i.i.i34.i.1 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 2
  %100 = ptrtoint ptr %arrayidx.i.i.i34.i.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i.i34.i.1, align 4
  %or.i.i.i37.i.1 = or i32 %101, -2147483648
  store i32 %or.i.i.i37.i.1, ptr %arrayidx.i.i.i34.i.1, align 4
  %conv.i.i198.1 = and i32 %conv5.i.1, 255
  %spec.select.i.i42.i.i.1 = shl i32 %conv5.i.1, 24
  %and6.i.i47.i.i.1 = and i32 %spec.select.i.i42.i.i.1, 1056964608
  %and7.i.i50.i.i.1 = and i32 %or.i.i.i37.i.1, -1069530881
  %or.i.i51.i.i.1 = or i32 %and6.i.i47.i.i.1, %and7.i.i50.i.i.1
  %or.i.i89.i.i.1 = or i32 %or.i.i51.i.i.1, 8388608
  %spec.select.i.i118.i.i.1 = shl nuw nsw i32 %conv.i.i198.1, 16
  %and6.i.i123.i.i.1 = and i32 %spec.select.i.i118.i.i.1, 4128768
  %or.i.i127.i.i.1 = or i32 %and6.i.i123.i.i.1, %or.i.i89.i.i.1
  %or.i.i165.i.i.1 = or i32 %or.i.i127.i.i.1, 32768
  %spec.select.i.i194.i.i.1 = shl nuw nsw i32 %conv.i.i198.1, 8
  %and6.i.i199.i.i.1 = and i32 %spec.select.i.i194.i.i.1, 16128
  %arrayidx.i.i200.i.i.1 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 2
  %or.i.i203.i.i.1 = or i32 %and6.i.i199.i.i.1, %or.i.i165.i.i.1
  %102 = ptrtoint ptr %arrayidx.i.i200.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i.i203.i.i.1, ptr %arrayidx.i.i200.i.i.1, align 4
  %arrayidx.i187.2 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx.i187.2 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx.i187.2, align 8
  %conv5.i.2 = trunc i64 %104 to i32
  %arrayidx.i.i.i34.i.2 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 3
  %105 = ptrtoint ptr %arrayidx.i.i.i34.i.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i.i34.i.2, align 4
  %or.i.i.i37.i.2 = or i32 %106, -2147483648
  store i32 %or.i.i.i37.i.2, ptr %arrayidx.i.i.i34.i.2, align 4
  %conv.i.i198.2 = and i32 %conv5.i.2, 255
  %spec.select.i.i42.i.i.2 = shl i32 %conv5.i.2, 24
  %and6.i.i47.i.i.2 = and i32 %spec.select.i.i42.i.i.2, 1056964608
  %and7.i.i50.i.i.2 = and i32 %or.i.i.i37.i.2, -1069530881
  %or.i.i51.i.i.2 = or i32 %and6.i.i47.i.i.2, %and7.i.i50.i.i.2
  %or.i.i89.i.i.2 = or i32 %or.i.i51.i.i.2, 8388608
  %spec.select.i.i118.i.i.2 = shl nuw nsw i32 %conv.i.i198.2, 16
  %and6.i.i123.i.i.2 = and i32 %spec.select.i.i118.i.i.2, 4128768
  %or.i.i127.i.i.2 = or i32 %and6.i.i123.i.i.2, %or.i.i89.i.i.2
  %or.i.i165.i.i.2 = or i32 %or.i.i127.i.i.2, 32768
  %spec.select.i.i194.i.i.2 = shl nuw nsw i32 %conv.i.i198.2, 8
  %and6.i.i199.i.i.2 = and i32 %spec.select.i.i194.i.i.2, 16128
  %arrayidx.i.i200.i.i.2 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 3
  %or.i.i203.i.i.2 = or i32 %and6.i.i199.i.i.2, %or.i.i165.i.i.2
  %107 = ptrtoint ptr %arrayidx.i.i200.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or.i.i203.i.i.2, ptr %arrayidx.i.i200.i.i.2, align 4
  %arrayidx.i187.3 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx.i187.3 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i187.3, align 8
  %conv5.i.3 = trunc i64 %109 to i32
  %arrayidx.i.i.i34.i.3 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 4
  %110 = ptrtoint ptr %arrayidx.i.i.i34.i.3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i.i34.i.3, align 4
  %or.i.i.i37.i.3 = or i32 %111, -2147483648
  store i32 %or.i.i.i37.i.3, ptr %arrayidx.i.i.i34.i.3, align 4
  %conv.i.i198.3 = and i32 %conv5.i.3, 255
  %spec.select.i.i42.i.i.3 = shl i32 %conv5.i.3, 24
  %and6.i.i47.i.i.3 = and i32 %spec.select.i.i42.i.i.3, 1056964608
  %and7.i.i50.i.i.3 = and i32 %or.i.i.i37.i.3, -1069530881
  %or.i.i51.i.i.3 = or i32 %and6.i.i47.i.i.3, %and7.i.i50.i.i.3
  %or.i.i89.i.i.3 = or i32 %or.i.i51.i.i.3, 8388608
  %spec.select.i.i118.i.i.3 = shl nuw nsw i32 %conv.i.i198.3, 16
  %and6.i.i123.i.i.3 = and i32 %spec.select.i.i118.i.i.3, 4128768
  %or.i.i127.i.i.3 = or i32 %and6.i.i123.i.i.3, %or.i.i89.i.i.3
  %or.i.i165.i.i.3 = or i32 %or.i.i127.i.i.3, 32768
  %spec.select.i.i194.i.i.3 = shl nuw nsw i32 %conv.i.i198.3, 8
  %and6.i.i199.i.i.3 = and i32 %spec.select.i.i194.i.i.3, 16128
  %arrayidx.i.i200.i.i.3 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 4
  %or.i.i203.i.i.3 = or i32 %and6.i.i199.i.i.3, %or.i.i165.i.i.3
  %112 = ptrtoint ptr %arrayidx.i.i200.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or.i.i203.i.i.3, ptr %arrayidx.i.i200.i.i.3, align 4
  %arrayidx.i187.4 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 4
  %113 = ptrtoint ptr %arrayidx.i187.4 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx.i187.4, align 8
  %conv5.i.4 = trunc i64 %114 to i32
  %arrayidx.i.i.i34.i.4 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 5
  %115 = ptrtoint ptr %arrayidx.i.i.i34.i.4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i.i34.i.4, align 4
  %or.i.i.i37.i.4 = or i32 %116, -2147483648
  store i32 %or.i.i.i37.i.4, ptr %arrayidx.i.i.i34.i.4, align 4
  %conv.i.i198.4 = and i32 %conv5.i.4, 255
  %spec.select.i.i42.i.i.4 = shl i32 %conv5.i.4, 24
  %and6.i.i47.i.i.4 = and i32 %spec.select.i.i42.i.i.4, 1056964608
  %and7.i.i50.i.i.4 = and i32 %or.i.i.i37.i.4, -1069530881
  %or.i.i51.i.i.4 = or i32 %and6.i.i47.i.i.4, %and7.i.i50.i.i.4
  %or.i.i89.i.i.4 = or i32 %or.i.i51.i.i.4, 8388608
  %spec.select.i.i118.i.i.4 = shl nuw nsw i32 %conv.i.i198.4, 16
  %and6.i.i123.i.i.4 = and i32 %spec.select.i.i118.i.i.4, 4128768
  %or.i.i127.i.i.4 = or i32 %and6.i.i123.i.i.4, %or.i.i89.i.i.4
  %or.i.i165.i.i.4 = or i32 %or.i.i127.i.i.4, 32768
  %spec.select.i.i194.i.i.4 = shl nuw nsw i32 %conv.i.i198.4, 8
  %and6.i.i199.i.i.4 = and i32 %spec.select.i.i194.i.i.4, 16128
  %arrayidx.i.i200.i.i.4 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 5
  %or.i.i203.i.i.4 = or i32 %and6.i.i199.i.i.4, %or.i.i165.i.i.4
  %117 = ptrtoint ptr %arrayidx.i.i200.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or.i.i203.i.i.4, ptr %arrayidx.i.i200.i.i.4, align 4
  %arrayidx.i187.5 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 5
  %118 = ptrtoint ptr %arrayidx.i187.5 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx.i187.5, align 8
  %conv5.i.5 = trunc i64 %119 to i32
  %arrayidx.i.i.i34.i.5 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 6
  %120 = ptrtoint ptr %arrayidx.i.i.i34.i.5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i.i.i34.i.5, align 4
  %or.i.i.i37.i.5 = or i32 %121, -2147483648
  store i32 %or.i.i.i37.i.5, ptr %arrayidx.i.i.i34.i.5, align 4
  %conv.i.i198.5 = and i32 %conv5.i.5, 255
  %spec.select.i.i42.i.i.5 = shl i32 %conv5.i.5, 24
  %and6.i.i47.i.i.5 = and i32 %spec.select.i.i42.i.i.5, 1056964608
  %and7.i.i50.i.i.5 = and i32 %or.i.i.i37.i.5, -1069530881
  %or.i.i51.i.i.5 = or i32 %and6.i.i47.i.i.5, %and7.i.i50.i.i.5
  %or.i.i89.i.i.5 = or i32 %or.i.i51.i.i.5, 8388608
  %spec.select.i.i118.i.i.5 = shl nuw nsw i32 %conv.i.i198.5, 16
  %and6.i.i123.i.i.5 = and i32 %spec.select.i.i118.i.i.5, 4128768
  %or.i.i127.i.i.5 = or i32 %and6.i.i123.i.i.5, %or.i.i89.i.i.5
  %or.i.i165.i.i.5 = or i32 %or.i.i127.i.i.5, 32768
  %spec.select.i.i194.i.i.5 = shl nuw nsw i32 %conv.i.i198.5, 8
  %and6.i.i199.i.i.5 = and i32 %spec.select.i.i194.i.i.5, 16128
  %arrayidx.i.i200.i.i.5 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 6
  %or.i.i203.i.i.5 = or i32 %and6.i.i199.i.i.5, %or.i.i165.i.i.5
  %122 = ptrtoint ptr %arrayidx.i.i200.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i.i203.i.i.5, ptr %arrayidx.i.i200.i.i.5, align 4
  %arrayidx.i187.6 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 6
  %123 = ptrtoint ptr %arrayidx.i187.6 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx.i187.6, align 8
  %conv5.i.6 = trunc i64 %124 to i32
  %arrayidx.i.i.i34.i.6 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 7
  %125 = ptrtoint ptr %arrayidx.i.i.i34.i.6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i.i34.i.6, align 4
  %or.i.i.i37.i.6 = or i32 %126, -2147483648
  store i32 %or.i.i.i37.i.6, ptr %arrayidx.i.i.i34.i.6, align 4
  %conv.i.i198.6 = and i32 %conv5.i.6, 255
  %spec.select.i.i42.i.i.6 = shl i32 %conv5.i.6, 24
  %and6.i.i47.i.i.6 = and i32 %spec.select.i.i42.i.i.6, 1056964608
  %and7.i.i50.i.i.6 = and i32 %or.i.i.i37.i.6, -1069530881
  %or.i.i51.i.i.6 = or i32 %and6.i.i47.i.i.6, %and7.i.i50.i.i.6
  %or.i.i89.i.i.6 = or i32 %or.i.i51.i.i.6, 8388608
  %spec.select.i.i118.i.i.6 = shl nuw nsw i32 %conv.i.i198.6, 16
  %and6.i.i123.i.i.6 = and i32 %spec.select.i.i118.i.i.6, 4128768
  %or.i.i127.i.i.6 = or i32 %and6.i.i123.i.i.6, %or.i.i89.i.i.6
  %or.i.i165.i.i.6 = or i32 %or.i.i127.i.i.6, 32768
  %spec.select.i.i194.i.i.6 = shl nuw nsw i32 %conv.i.i198.6, 8
  %and6.i.i199.i.i.6 = and i32 %spec.select.i.i194.i.i.6, 16128
  %arrayidx.i.i200.i.i.6 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 7
  %or.i.i203.i.i.6 = or i32 %and6.i.i199.i.i.6, %or.i.i165.i.i.6
  %127 = ptrtoint ptr %arrayidx.i.i200.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i.i203.i.i.6, ptr %arrayidx.i.i200.i.i.6, align 4
  %arrayidx.i187.7 = getelementptr inbounds [8 x i64], ptr %prio_map, i32 0, i32 7
  %128 = ptrtoint ptr %arrayidx.i187.7 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx.i187.7, align 8
  %conv5.i.7 = trunc i64 %129 to i32
  %arrayidx.i.i.i34.i.7 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 8
  %130 = ptrtoint ptr %arrayidx.i.i.i34.i.7 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i.i34.i.7, align 4
  %or.i.i.i37.i.7 = or i32 %131, -2147483648
  store i32 %or.i.i.i37.i.7, ptr %arrayidx.i.i.i34.i.7, align 4
  %conv.i.i198.7 = and i32 %conv5.i.7, 255
  %spec.select.i.i42.i.i.7 = shl i32 %conv5.i.7, 24
  %and6.i.i47.i.i.7 = and i32 %spec.select.i.i42.i.i.7, 1056964608
  %and7.i.i50.i.i.7 = and i32 %or.i.i.i37.i.7, -1069530881
  %or.i.i51.i.i.7 = or i32 %and6.i.i47.i.i.7, %and7.i.i50.i.i.7
  %or.i.i89.i.i.7 = or i32 %or.i.i51.i.i.7, 8388608
  %spec.select.i.i118.i.i.7 = shl nuw nsw i32 %conv.i.i198.7, 16
  %and6.i.i123.i.i.7 = and i32 %spec.select.i.i118.i.i.7, 4128768
  %or.i.i127.i.i.7 = or i32 %and6.i.i123.i.i.7, %or.i.i89.i.i.7
  %or.i.i165.i.i.7 = or i32 %or.i.i127.i.i.7, 32768
  %spec.select.i.i194.i.i.7 = shl nuw nsw i32 %conv.i.i198.7, 8
  %and6.i.i199.i.i.7 = and i32 %spec.select.i.i194.i.i.7, 16128
  %arrayidx.i.i200.i.i.7 = getelementptr inbounds i32, ptr %qpdsm_pl.i, i32 8
  %or.i.i203.i.i.7 = or i32 %and6.i.i199.i.i.7, %or.i.i165.i.i.7
  %132 = ptrtoint ptr %arrayidx.i.i200.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or.i.i203.i.i.7, ptr %arrayidx.i.i200.i.i.7, align 4
  %core.i201 = getelementptr inbounds %struct.mlxsw_sp, ptr %86, i32 0, i32 1
  %133 = ptrtoint ptr %core.i201 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %core.i201, align 4
  %call.i202 = call i32 @mlxsw_reg_write(ptr noundef %134, ptr noundef nonnull @mlxsw_reg_qpdsm, ptr noundef nonnull %qpdsm_pl.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %qpdsm_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool9.not = icmp eq i32 %call.i202, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mlxsw_sp_port, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %136, ptr noundef nonnull @.str.60) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  br i1 %have_dscp.1.off0.7.i, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i32 @mlxsw_sp_port_dcb_toggle_trust(ptr noundef %mlxsw_sp_port, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %if.then17

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mlxsw_sp_port, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %138, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call21 = call fastcc i32 @mlxsw_sp_port_dcb_toggle_trust(ptr noundef %mlxsw_sp_port, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mlxsw_sp_port, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %140, ptr noundef nonnull @.str.62) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %if.then17, %if.then14.cleanup_crit_edge, %if.then10, %if.then5, %if.then
  %retval.0 = phi i32 [ %call.i52, %if.then ], [ %call.i123, %if.then5 ], [ %call.i202, %if.then10 ], [ %call21, %if.then23 ], [ %call15, %if.then17 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dscp_map) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %prio_map) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_mask(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_dcb_toggle_trust(ptr nocapture noundef %mlxsw_sp_port, i32 noundef %ts) unnamed_addr #0 align 64 {
entry:
  %qrwe_pl.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ts)
  %cmp = icmp eq i32 %ts, 2
  %trust_state = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 8, i32 3
  %0 = ptrtoint ptr %trust_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trust_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ts)
  %cmp1 = icmp eq i32 %1, %ts
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @mlxsw_sp_port_dcb_app_update_qpts(ptr noundef %mlxsw_sp_port, i32 noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qrwe_pl.i) #8
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %4 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port.i, align 4
  %6 = ptrtoint ptr %qrwe_pl.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %qrwe_pl.i, align 8
  %conv2.i.i = zext i16 %5 to i32
  %and.i.i.i = shl nuw i32 %conv2.i.i, 16
  %spec.select.i.i.i.i = and i32 %and.i.i.i, 16711680
  %7 = shl nuw nsw i32 %conv2.i.i, 4
  %and6.i28.i.i.i = and i32 %7, 12288
  %or.i32.i.i.i = or i32 %and6.i28.i.i.i, %spec.select.i.i.i.i
  store i32 %or.i32.i.i.i, ptr %qrwe_pl.i, align 8
  %arrayidx.i.i21.i.i = getelementptr inbounds i32, ptr %qrwe_pl.i, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i21.i.i, align 4
  %spec.select.i.i43.i.i = select i1 %cmp, i32 2, i32 0
  %arrayidx.i.i49.i.i = getelementptr inbounds i32, ptr %qrwe_pl.i, i32 1
  %and7.i.i51.i.i = and i32 %9, -4
  %or.i.i52.i.i = or i32 %spec.select.i.i43.i.i, %and7.i.i51.i.i
  %10 = ptrtoint ptr %arrayidx.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i52.i.i, ptr %arrayidx.i.i49.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %12, ptr noundef nonnull @mlxsw_reg_qrwe, ptr noundef nonnull %qrwe_pl.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qrwe_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %err_update_qrwe

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %trust_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ts, ptr %trust_state, align 4
  br label %cleanup

err_update_qrwe:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %trust_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trust_state, align 4
  %call13 = call fastcc i32 @mlxsw_sp_port_dcb_app_update_qpts(ptr noundef %mlxsw_sp_port, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %err_update_qrwe, %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_update_qrwe ], [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_default_prio_mask(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dcb_ieee_getapp_prio_dscp_mask_map(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dcb_ieee_getapp_dscp_prio_mask_map(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_dcb_app_update_qpts(ptr nocapture noundef readonly %mlxsw_sp_port, i32 noundef %ts) unnamed_addr #0 align 64 {
entry:
  %qpts_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qpts_pl) #8
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %4 = ptrtoint ptr %qpts_pl to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %qpts_pl, align 8
  %conv1.i = zext i16 %3 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %5 = shl nuw nsw i32 %conv1.i, 4
  %and6.i28.i.i = and i32 %5, 12288
  %or.i32.i.i = or i32 %and6.i28.i.i, %spec.select.i.i.i
  store i32 %or.i32.i.i, ptr %qpts_pl, align 8
  %and6.i.i27.i = and i32 %ts, 7
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %qpts_pl, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %7, -8
  %or.i.i31.i = or i32 %and6.i.i27.i, %and7.i.i30.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_qpts, ptr noundef nonnull %qpts_pl) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qpts_pl) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_cells_bytes(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_bytes_cells(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @mlxsw_sp_dcbnl_ops, !1, !"mlxsw_sp_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 651, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 49, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 54, i32 20}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 60, i32 19}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 107, i32 20}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 117, i32 20}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 84, i32 19}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 472, i32 20}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 519, i32 20}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__mlxsw_item_offset._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @__mlxsw_item_offset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4934, i32 1}
!26 = distinct !{null, !25, !"mlxsw_reg_ppcnt_swid_item", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4940, i32 1}
!29 = distinct !{null, !28, !"mlxsw_reg_ppcnt_local_port_item", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !28, !"mlxsw_reg_ppcnt_lp_msb_item", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4948, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_ppcnt_pnat_item", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4979, i32 1}
!37 = distinct !{null, !36, !"mlxsw_reg_ppcnt_grp_item", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4987, i32 1}
!40 = distinct !{null, !39, !"mlxsw_reg_ppcnt_clr_item", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4995, i32 1}
!43 = distinct !{null, !42, !"mlxsw_reg_ppcnt_lp_gl_item", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5005, i32 1}
!46 = distinct !{null, !45, !"mlxsw_reg_ppcnt_prio_tc_item", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4923, i32 1}
!49 = !{ptr @mlxsw_reg_ppcnt, !48, !"mlxsw_reg_ppcnt", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5372, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_ppcnt_tx_pause_item", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5360, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_ppcnt_rx_pause_item", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 555, i32 19}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 575, i32 19}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 581, i32 19}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4792, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_pfcc_local_port_item", i1 false, i1 false}
!65 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !63, !"mlxsw_reg_pfcc_lp_msb_item", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4880, i32 1}
!69 = distinct !{null, !68, !"mlxsw_reg_pfcc_pprx_item", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4852, i32 1}
!72 = distinct !{null, !71, !"mlxsw_reg_pfcc_pptx_item", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4837, i32 1}
!75 = distinct !{null, !74, !"mlxsw_reg_pfcc_prio_mask_tx_item", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4844, i32 1}
!78 = distinct !{null, !77, !"mlxsw_reg_pfcc_prio_mask_rx_item", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4872, i32 1}
!81 = distinct !{null, !80, !"mlxsw_reg_pfcc_pfctx_item", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4897, i32 1}
!84 = distinct !{null, !83, !"mlxsw_reg_pfcc_pfcrx_item", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4786, i32 1}
!87 = !{ptr @mlxsw_reg_pfcc, !86, !"mlxsw_reg_pfcc", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 174, i32 19}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 182, i32 20}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 191, i32 22}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 194, i32 22}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 201, i32 20}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 207, i32 19}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 362, i32 34}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 374, i32 34}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 381, i32 34}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 389, i32 35}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 401, i32 34}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4081, i32 1}
!112 = distinct !{null, !111, !"mlxsw_reg_qpdp_local_port_item", i1 false, i1 false}
!113 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !111, !"mlxsw_reg_qpdp_lp_msb_item", i1 false, i1 false}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4087, i32 1}
!117 = distinct !{null, !116, !"mlxsw_reg_qpdp_switch_prio_item", i1 false, i1 false}
!118 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4075, i32 1}
!120 = !{ptr @mlxsw_reg_qpdp, !119, !"mlxsw_reg_qpdp", i1 false, i1 false}
!121 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4116, i32 1}
!123 = distinct !{null, !122, !"mlxsw_reg_qpdpm_local_port_item", i1 false, i1 false}
!124 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !122, !"mlxsw_reg_qpdpm_lp_msb_item", i1 false, i1 false}
!126 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4124, i32 1}
!128 = distinct !{null, !127, !"mlxsw_reg_qpdpm_dscp_entry_e_item", i1 false, i1 false}
!129 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4131, i32 1}
!131 = distinct !{null, !130, !"mlxsw_reg_qpdpm_dscp_entry_prio_item", i1 false, i1 false}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4110, i32 1}
!134 = !{ptr @mlxsw_reg_qpdpm, !133, !"mlxsw_reg_qpdpm", i1 false, i1 false}
!135 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3995, i32 1}
!137 = distinct !{null, !136, !"mlxsw_reg_qpdsm_local_port_item", i1 false, i1 false}
!138 = !{ptr @.str.81, !136, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !136, !"mlxsw_reg_qpdsm_lp_msb_item", i1 false, i1 false}
!140 = !{ptr @.str.83, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4001, i32 1}
!142 = distinct !{null, !141, !"mlxsw_reg_qpdsm_prio_entry_color0_e_item", i1 false, i1 false}
!143 = !{ptr @.str.85, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4010, i32 1}
!145 = distinct !{null, !144, !"mlxsw_reg_qpdsm_prio_entry_color0_dscp_item", i1 false, i1 false}
!146 = !{ptr @.str.87, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4018, i32 1}
!148 = distinct !{null, !147, !"mlxsw_reg_qpdsm_prio_entry_color1_e_item", i1 false, i1 false}
!149 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4027, i32 1}
!151 = distinct !{null, !150, !"mlxsw_reg_qpdsm_prio_entry_color1_dscp_item", i1 false, i1 false}
!152 = !{ptr @.str.91, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4035, i32 1}
!154 = distinct !{null, !153, !"mlxsw_reg_qpdsm_prio_entry_color2_e_item", i1 false, i1 false}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4044, i32 1}
!157 = distinct !{null, !156, !"mlxsw_reg_qpdsm_prio_entry_color2_dscp_item", i1 false, i1 false}
!158 = !{ptr @.str.95, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3989, i32 1}
!160 = !{ptr @mlxsw_reg_qpdsm, !159, !"mlxsw_reg_qpdsm", i1 false, i1 false}
!161 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3522, i32 1}
!163 = distinct !{null, !162, !"mlxsw_reg_qpts_local_port_item", i1 false, i1 false}
!164 = !{ptr @.str.98, !162, !"<string literal>", i1 false, i1 false}
!165 = distinct !{null, !162, !"mlxsw_reg_qpts_lp_msb_item", i1 false, i1 false}
!166 = !{ptr @.str.100, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3533, i32 1}
!168 = distinct !{null, !167, !"mlxsw_reg_qpts_trust_state_item", i1 false, i1 false}
!169 = !{ptr @.str.102, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3514, i32 1}
!171 = !{ptr @mlxsw_reg_qpts, !170, !"mlxsw_reg_qpts", i1 false, i1 false}
!172 = !{ptr @.str.103, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3954, i32 1}
!174 = distinct !{null, !173, !"mlxsw_reg_qrwe_local_port_item", i1 false, i1 false}
!175 = !{ptr @.str.105, !173, !"<string literal>", i1 false, i1 false}
!176 = distinct !{null, !173, !"mlxsw_reg_qrwe_lp_msb_item", i1 false, i1 false}
!177 = !{ptr @.str.107, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3966, i32 1}
!179 = distinct !{null, !178, !"mlxsw_reg_qrwe_pcp_item", i1 false, i1 false}
!180 = !{ptr @.str.109, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3960, i32 1}
!182 = distinct !{null, !181, !"mlxsw_reg_qrwe_dscp_item", i1 false, i1 false}
!183 = !{ptr @.str.111, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3946, i32 1}
!185 = !{ptr @mlxsw_reg_qrwe, !184, !"mlxsw_reg_qrwe", i1 false, i1 false}
!186 = !{ptr @.str.112, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 445, i32 19}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dcb.c", i32 633, i32 19}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i32 0, i32 33}
!200 = !{i8 0, i8 9}
