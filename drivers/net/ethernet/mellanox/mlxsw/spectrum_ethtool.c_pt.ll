; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_port_type_speed_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping = type { i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_port_hw_stats = type { [32 x i8], ptr, i8 }
%struct.mlxsw_sp_port_stats = type { [32 x i8], ptr }
%struct.ethtool_rmon_hist_range = type { i16, i16 }
%struct.mlxsw_sp1_port_link_mode = type { i32, i32, i32 }
%struct.mlxsw_sp2_port_link_mode = type { ptr, i32, i32, i32, i32, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.157 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ethtool_link_ext_state_info = type { i32, %union.anon.158 }
%union.anon.158 = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.mlxsw_sp_hdroom = type { i32, %struct.anon.171, %struct.anon.172, %struct.anon.173, i32, i32 }
%struct.anon.171 = type { [8 x %struct.mlxsw_sp_hdroom_prio] }
%struct.mlxsw_sp_hdroom_prio = type { i8, i8, i8, i8 }
%struct.anon.172 = type { [10 x %struct.mlxsw_sp_hdroom_buf] }
%struct.mlxsw_sp_hdroom_buf = type { i32, i32, i32, i8 }
%struct.anon.173 = type { i32, i32, i8 }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.mlxsw_sp_ptp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.160, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.160 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.166, %struct.anon.167, %struct.mlxsw_sp_port_mapping, %struct.anon.168, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.170, i32, i32, ptr, i64 }
%struct.anon.166 = type { i8 }
%struct.anon.167 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.168 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.anon.170 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }

@mlxsw_sp_port_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 -128, i32 0, i32 0, ptr @mlxsw_sp_port_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr @mlxsw_sp_port_get_link_ext_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_port_get_pauseparam, ptr @mlxsw_sp_port_set_pauseparam, ptr null, ptr @mlxsw_sp_port_get_strings, ptr @mlxsw_sp_port_set_phys_id, ptr @mlxsw_sp_port_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_port_get_sset_count, ptr null, ptr null, ptr null, ptr @mlxsw_sp_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_get_ts_info, ptr @mlxsw_sp_get_module_info, ptr @mlxsw_sp_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_port_get_link_ksettings, ptr @mlxsw_sp_port_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_sp_get_module_eeprom_by_page, ptr @mlxsw_sp_get_eth_phy_stats, ptr @mlxsw_sp_get_eth_mac_stats, ptr @mlxsw_sp_get_eth_ctrl_stats, ptr @mlxsw_sp_get_rmon_stats, ptr @mlxsw_sp_get_module_power_mode, ptr @mlxsw_sp_set_module_power_mode }, [68 x i8] zeroinitializer }, align 32
@mlxsw_sp1_port_type_speed_ops = dso_local constant { %struct.mlxsw_sp_port_type_speed_ops, [56 x i8] } { %struct.mlxsw_sp_port_type_speed_ops { ptr @mlxsw_sp1_from_ptys_supported_port, ptr @mlxsw_sp1_from_ptys_link, ptr @mlxsw_sp1_from_ptys_speed, ptr @mlxsw_sp1_from_ptys_link_mode, ptr @mlxsw_sp1_ptys_max_speed, ptr @mlxsw_sp1_to_ptys_advert_link, ptr @mlxsw_sp1_to_ptys_speed_lanes, ptr @mlxsw_sp1_reg_ptys_eth_pack, ptr @mlxsw_sp1_reg_ptys_eth_unpack, ptr @mlxsw_sp1_ptys_proto_cap_masked_get }, [56 x i8] zeroinitializer }, align 32
@mlxsw_sp2_port_type_speed_ops = dso_local constant { %struct.mlxsw_sp_port_type_speed_ops, [56 x i8] } { %struct.mlxsw_sp_port_type_speed_ops { ptr @mlxsw_sp2_from_ptys_supported_port, ptr @mlxsw_sp2_from_ptys_link, ptr @mlxsw_sp2_from_ptys_speed, ptr @mlxsw_sp2_from_ptys_link_mode, ptr @mlxsw_sp2_ptys_max_speed, ptr @mlxsw_sp2_to_ptys_advert_link, ptr @mlxsw_sp2_to_ptys_speed_lanes, ptr @mlxsw_sp2_reg_ptys_eth_pack, ptr @mlxsw_sp2_reg_ptys_eth_unpack, ptr @mlxsw_sp2_ptys_proto_cap_masked_get }, [56 x i8] zeroinitializer }, align 32
@mlxsw_sp_driver_version = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@mlxsw_reg_pddr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20529, i16 256, ptr @.str.12 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_link_ext_state_opcode_map = internal constant { [31 x %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping], [76 x i8] } { [31 x %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping] [%struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 2, i32 0, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 3, i32 0, i8 2 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 4, i32 0, i8 3 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 36, i32 0, i8 4 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 38, i32 0, i8 5 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 39, i32 0, i8 6 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 5, i32 1, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 6, i32 1, i8 2 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 7, i32 1, i8 3 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 8, i32 1, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 14, i32 1, i8 4 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 9, i32 2, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 10, i32 2, i8 2 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 11, i32 2, i8 3 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 12, i32 2, i8 4 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 13, i32 2, i8 5 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 15, i32 3, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 17, i32 3, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 42, i32 3, i8 2 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1024, i32 4, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 16, i32 5, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 20, i32 5, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 29, i32 5, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1025, i32 5, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1029, i32 5, i8 1 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1031, i32 5, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1027, i32 6, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 23, i32 7, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1032, i32 8, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1030, i32 9, i8 0 }, %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping { i32 1042, i32 10, i8 1 }], [76 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, align 1
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pddr_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pddr_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_pddr_page_select\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_pddr_trblsh_group_opcode\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pddr\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_pddr_trblsh_status_opcode\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PFC already enabled on port\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PAUSE frames autonegotiation isn't supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to configure port's headroom\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set PAUSE parameters\0A\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_reg_pfcc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20487, i16 32, ptr @.str.27 }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pfcc_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pfcc_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_pfcc_pprx\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_pfcc_pptx\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pfcc\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_stats = internal constant { [19 x %struct.mlxsw_sp_port_hw_stats], [168 x i8] } { [19 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_frames_transmitted_ok\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_frames_transmitted_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_frames_received_ok\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_frames_received_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_frame_check_sequence_errors\00\00\00", ptr @mlxsw_reg_ppcnt_a_frame_check_sequence_errors_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_alignment_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_alignment_errors_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_octets_transmitted_ok\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_octets_transmitted_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_octets_received_ok\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_octets_received_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_multicast_frames_xmitted_ok\00\00\00", ptr @mlxsw_reg_ppcnt_a_multicast_frames_xmitted_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_broadcast_frames_xmitted_ok\00\00\00", ptr @mlxsw_reg_ppcnt_a_broadcast_frames_xmitted_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_multicast_frames_received_ok\00\00", ptr @mlxsw_reg_ppcnt_a_multicast_frames_received_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_broadcast_frames_received_ok\00\00", ptr @mlxsw_reg_ppcnt_a_broadcast_frames_received_ok_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_in_range_length_errors\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_in_range_length_errors_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_out_of_range_length_field\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_out_of_range_length_field_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_frame_too_long_errors\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_a_frame_too_long_errors_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_symbol_error_during_carrier\00\00\00", ptr @mlxsw_reg_ppcnt_a_symbol_error_during_carrier_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_mac_control_frames_transmitted", ptr @mlxsw_reg_ppcnt_a_mac_control_frames_transmitted_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_mac_control_frames_received\00\00\00", ptr @mlxsw_reg_ppcnt_a_mac_control_frames_received_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_unsupported_opcodes_received\00\00", ptr @mlxsw_reg_ppcnt_a_unsupported_opcodes_received_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_pause_mac_ctrl_frames_received", ptr @mlxsw_reg_ppcnt_a_pause_mac_ctrl_frames_received_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"a_pause_mac_ctrl_frames_xmitted\00", ptr @mlxsw_reg_ppcnt_a_pause_mac_ctrl_frames_transmitted_get, i8 0 }], [168 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_rfc_2863_stats = internal constant { [3 x %struct.mlxsw_sp_port_hw_stats], [40 x i8] } { [3 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"if_in_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_if_in_discards_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"if_out_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_if_out_discards_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"if_out_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_if_out_errors_get, i8 0 }], [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_rfc_2819_stats = internal constant { [13 x %struct.mlxsw_sp_port_hw_stats], [152 x i8] } { [13 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_stats_undersize_pkts\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_undersize_pkts_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_stats_oversize_pkts\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_oversize_pkts_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_stats_fragments\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_fragments_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts64octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts64octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts65to127octets\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts65to127octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts128to255octets\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts128to255octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts256to511octets\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts256to511octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts512to1023octets\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts512to1023octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts1024to1518octets\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts1024to1518octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts1519to2047octets\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts1519to2047octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts2048to4095octets\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts2048to4095octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts4096to8191octets\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts4096to8191octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ether_pkts8192to10239octets\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ether_stats_pkts8192to10239octets_get, i8 0 }], [152 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_rfc_3635_stats = internal constant { [4 x %struct.mlxsw_sp_port_hw_stats], [32 x i8] } { [4 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"dot3stats_fcs_errors\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_dot3stats_fcs_errors_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"dot3stats_symbol_errors\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_dot3stats_symbol_errors_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"dot3control_in_unknown_opcodes\00\00", ptr @mlxsw_reg_ppcnt_dot3control_in_unknown_opcodes_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"dot3in_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_dot3in_pause_frames_get, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_ext_stats = internal constant { [1 x %struct.mlxsw_sp_port_hw_stats], [56 x i8] } { [1 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"ecn_marked\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ecn_marked_get, i8 0 }], [56 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_discard_stats = internal constant { [12 x %struct.mlxsw_sp_port_hw_stats], [96 x i8] } { [12 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_ingress_general\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_ingress_general_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_ingress_policy_engine\00\00\00", ptr @mlxsw_reg_ppcnt_ingress_policy_engine_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_ingress_vlan_membership\00", ptr @mlxsw_reg_ppcnt_ingress_vlan_membership_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_ingress_tag_frame_type\00\00", ptr @mlxsw_reg_ppcnt_ingress_tag_frame_type_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_egress_vlan_membership\00\00", ptr @mlxsw_reg_ppcnt_egress_vlan_membership_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_loopback_filter\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_loopback_filter_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_egress_general\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_egress_general_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_egress_hoq\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_egress_hoq_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_egress_policy_engine\00\00\00\00", ptr @mlxsw_reg_ppcnt_egress_policy_engine_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_ingress_tx_link_down\00\00\00\00", ptr @mlxsw_reg_ppcnt_ingress_tx_link_down_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_egress_stp_filter\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_egress_stp_filter_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"discard_egress_sll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_egress_sll_get, i8 0 }], [96 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_transceiver_stats = internal constant { [1 x %struct.mlxsw_sp_port_stats], [60 x i8] } { [1 x %struct.mlxsw_sp_port_stats] [%struct.mlxsw_sp_port_stats { [32 x i8] c"transceiver_overheat\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_sp_port_get_transceiver_overheat_stats }], [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_ppcnt_a_frames_transmitted_ok\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_ppcnt_a_frames_received_ok\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_ppcnt_a_frame_check_sequence_errors\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_ppcnt_a_alignment_errors\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_ppcnt_a_octets_transmitted_ok\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_ppcnt_a_octets_received_ok\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_ppcnt_a_multicast_frames_xmitted_ok\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_ppcnt_a_broadcast_frames_xmitted_ok\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_ppcnt_a_multicast_frames_received_ok\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_ppcnt_a_broadcast_frames_received_ok\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reg_ppcnt_a_in_range_length_errors\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reg_ppcnt_a_out_of_range_length_field\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_ppcnt_a_frame_too_long_errors\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_ppcnt_a_symbol_error_during_carrier\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reg_ppcnt_a_mac_control_frames_transmitted\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_ppcnt_a_mac_control_frames_received\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_ppcnt_a_unsupported_opcodes_received\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reg_ppcnt_a_pause_mac_ctrl_frames_received\00", [53 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reg_ppcnt_a_pause_mac_ctrl_frames_transmitted\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ppcnt_if_in_discards\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_ppcnt_if_out_discards\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_ppcnt_if_out_errors\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reg_ppcnt_ether_stats_undersize_pkts\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reg_ppcnt_ether_stats_oversize_pkts\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reg_ppcnt_ether_stats_fragments\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reg_ppcnt_ether_stats_pkts64octets\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_ppcnt_ether_stats_pkts65to127octets\00", [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_ppcnt_ether_stats_pkts128to255octets\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_ppcnt_ether_stats_pkts256to511octets\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"reg_ppcnt_ether_stats_pkts512to1023octets\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reg_ppcnt_ether_stats_pkts1024to1518octets\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reg_ppcnt_ether_stats_pkts1519to2047octets\00", [53 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reg_ppcnt_ether_stats_pkts2048to4095octets\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reg_ppcnt_ether_stats_pkts4096to8191octets\00", [53 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"reg_ppcnt_ether_stats_pkts8192to10239octets\00", [52 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_ppcnt_dot3stats_fcs_errors\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_ppcnt_dot3stats_symbol_errors\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_ppcnt_dot3control_in_unknown_opcodes\00", [55 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_ppcnt_dot3in_pause_frames\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ppcnt_ecn_marked\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_ppcnt_ingress_general\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reg_ppcnt_ingress_policy_engine\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_ppcnt_ingress_vlan_membership\00", [62 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_ppcnt_ingress_tag_frame_type\00", [63 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_ppcnt_egress_vlan_membership\00", [63 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_ppcnt_loopback_filter\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ppcnt_egress_general\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ppcnt_egress_hoq\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_ppcnt_egress_policy_engine\00", [33 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_ppcnt_ingress_tx_link_down\00", [33 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_ppcnt_egress_stp_filter\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ppcnt_egress_sll\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%.29s_%.1d\00", [21 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_prio_stats = internal global { [8 x %struct.mlxsw_sp_port_hw_stats], [64 x i8] } { [8 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"rx_octets_prio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_rx_octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"rx_frames_prio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_rx_frames_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"tx_octets_prio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_tx_octets_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"tx_frames_prio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_tx_frames_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"rx_pause_prio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_rx_pause_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"rx_pause_duration_prio\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_rx_pause_duration_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"tx_pause_prio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_tx_pause_get, i8 0 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"tx_pause_duration_prio\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_tx_pause_duration_get, i8 0 }], [64 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ppcnt_rx_octets\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ppcnt_rx_frames\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ppcnt_tx_octets\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ppcnt_tx_frames\00", [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ppcnt_rx_pause\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_ppcnt_rx_pause_duration\00", [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ppcnt_tx_pause\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_ppcnt_tx_pause_duration\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_hw_tc_stats = internal global { [2 x %struct.mlxsw_sp_port_hw_stats], [48 x i8] } { [2 x %struct.mlxsw_sp_port_hw_stats] [%struct.mlxsw_sp_port_hw_stats { [32 x i8] c"tc_transmit_queue_tc\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_tc_transmit_queue_get, i8 1 }, %struct.mlxsw_sp_port_hw_stats { [32 x i8] c"tc_no_buffer_discard_uc_tc\00\00\00\00\00\00", ptr @mlxsw_reg_ppcnt_tc_no_buffer_discard_uc_get, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_ppcnt_tc_transmit_queue\00", [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_ppcnt_tc_no_buffer_discard_uc\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_reg_mlcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28629, i16 12, ptr @.str.159 }, [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mlcr_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_mlcr_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_mlcr_beacon_duration\00", [39 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlcr\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_reg_ptys = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20484, i16 64, ptr @.str.161 }, [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptys\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_ptys_connector_type\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_connector_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.164 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No supported speed or lanes requested\0A\00", [57 x i8] zeroinitializer }, align 32
@mlxsw_rmon_ranges = internal constant { [11 x %struct.ethtool_rmon_hist_range], [52 x i8] } { [11 x %struct.ethtool_rmon_hist_range] [%struct.ethtool_rmon_hist_range { i16 0, i16 64 }, %struct.ethtool_rmon_hist_range { i16 65, i16 127 }, %struct.ethtool_rmon_hist_range { i16 128, i16 255 }, %struct.ethtool_rmon_hist_range { i16 256, i16 511 }, %struct.ethtool_rmon_hist_range { i16 512, i16 1023 }, %struct.ethtool_rmon_hist_range { i16 1024, i16 1518 }, %struct.ethtool_rmon_hist_range { i16 1519, i16 2047 }, %struct.ethtool_rmon_hist_range { i16 2048, i16 4095 }, %struct.ethtool_rmon_hist_range { i16 4096, i16 8191 }, %struct.ethtool_rmon_hist_range { i16 8192, i16 10239 }, %struct.ethtool_rmon_hist_range zeroinitializer], [52 x i8] zeroinitializer }, align 32
@mlxsw_sp1_port_link_mode = internal constant { [17 x %struct.mlxsw_sp1_port_link_mode], [52 x i8] } { [17 x %struct.mlxsw_sp1_port_link_mode] [%struct.mlxsw_sp1_port_link_mode { i32 17, i32 3, i32 1000 }, %struct.mlxsw_sp1_port_link_mode { i32 18, i32 12, i32 10000 }, %struct.mlxsw_sp1_port_link_mode { i32 19, i32 28688, i32 10000 }, %struct.mlxsw_sp1_port_link_mode { i32 24, i32 64, i32 40000 }, %struct.mlxsw_sp1_port_link_mode { i32 23, i32 128, i32 40000 }, %struct.mlxsw_sp1_port_link_mode { i32 25, i32 32768, i32 40000 }, %struct.mlxsw_sp1_port_link_mode { i32 26, i32 65536, i32 40000 }, %struct.mlxsw_sp1_port_link_mode { i32 31, i32 134217728, i32 25000 }, %struct.mlxsw_sp1_port_link_mode { i32 32, i32 268435456, i32 25000 }, %struct.mlxsw_sp1_port_link_mode { i32 33, i32 536870912, i32 25000 }, %struct.mlxsw_sp1_port_link_mode { i32 34, i32 1073741824, i32 50000 }, %struct.mlxsw_sp1_port_link_mode { i32 35, i32 -2147483648, i32 50000 }, %struct.mlxsw_sp1_port_link_mode { i32 40, i32 262144, i32 50000 }, %struct.mlxsw_sp1_port_link_mode { i32 38, i32 1048576, i32 100000 }, %struct.mlxsw_sp1_port_link_mode { i32 37, i32 2097152, i32 100000 }, %struct.mlxsw_sp1_port_link_mode { i32 36, i32 4194304, i32 100000 }, %struct.mlxsw_sp1_port_link_mode { i32 39, i32 8388608, i32 100000 }], [52 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ptys_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_ptys_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ptys_proto_mask\00", [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ptys_eth_proto_admin\00", [39 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_ptys_an_disable_admin\00", [38 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_ptys_eth_proto_cap\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_ptys_eth_proto_oper\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp2_port_link_mode = internal constant { [12 x %struct.mlxsw_sp2_port_link_mode], [64 x i8] } { [12 x %struct.mlxsw_sp2_port_link_mode] [%struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_sgmii_100m, i32 1, i32 1, i32 100, i32 1, i8 15 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_1000base_x_sgmii, i32 2, i32 2, i32 1000, i32 1, i8 15 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_5gbase_r, i32 1, i32 8, i32 5000, i32 1, i8 15 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g, i32 7, i32 16, i32 10000, i32 1, i8 15 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g, i32 4, i32 32, i32 40000, i32 4, i8 12 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr, i32 3, i32 64, i32 25000, i32 1, i8 15 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2, i32 3, i32 128, i32 50000, i32 2, i8 14 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr, i32 5, i32 256, i32 50000, i32 1, i8 1 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4, i32 4, i32 512, i32 100000, i32 4, i8 12 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2, i32 5, i32 1024, i32 100000, i32 2, i8 2 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4, i32 5, i32 4096, i32 200000, i32 4, i8 12 }, %struct.mlxsw_sp2_port_link_mode { ptr @mlxsw_sp2_mask_ethtool_400gaui_8, i32 5, i32 32768, i32 400000, i32 8, i8 8 }], [64 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_sgmii_100m = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_1000base_x_sgmii = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 5, i32 17], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_5gbase_r = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48], [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 12, i32 19, i32 20, i32 42, i32 43, i32 44, i32 46], [36 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 23, i32 24, i32 25, i32 26], [16 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 31, i32 32, i32 33], [20 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 34, i32 35, i32 40], [20 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 52, i32 53, i32 54, i32 55, i32 56], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 36, i32 37, i32 38, i32 39], [16 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 57, i32 58, i32 59, i32 60, i32 61], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 62, i32 63, i32 64, i32 65, i32 66], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mask_ethtool_400gaui_8 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 69, i32 70, i32 71, i32 72, i32 73], [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_port_mask_width_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.179 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_ptys_ext_eth_proto_admin\00", [35 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_ptys_ext_eth_proto_cap\00", [37 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_ptys_ext_eth_proto_oper\00", [36 x i8] zeroinitializer }, align 32
@switch.table.mlxsw_sp_port_get_link_ksettings = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\EF\00\01\04\02\03\05", [16 x i8] zeroinitializer }, align 32
@switch.table.mlxsw_sp2_to_ptys_speed_lanes = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\01\04\01\01\01\08", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 10]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_port_ethtool_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1242, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"mlxsw_sp1_port_type_speed_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1522, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant [30 x i8] c"mlxsw_sp2_port_type_speed_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 2001, i32 43 }
@___asan_gen_.195 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_driver_version\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 9, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 22, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pddr\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_link_ext_state_opcode_map\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 37, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 33, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5932, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5942, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5953, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5926, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5959, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 219, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 224, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 244, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 250, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pfcc\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4792, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4880, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4852, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4786, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_port_hw_stats\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 270, i32 38 }
@___asan_gen_.267 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_port_hw_rfc_2863_stats\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 351, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_port_hw_rfc_2819_stats\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 369, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_port_hw_rfc_3635_stats\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 427, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant [27 x i8] c"mlxsw_sp_port_hw_ext_stats\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 449, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_port_hw_discard_stats\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 458, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_port_transceiver_stats\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 585, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5012, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5018, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5024, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5030, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5036, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5042, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5048, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5054, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5060, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5066, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5072, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5078, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5084, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5090, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5096, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5102, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5108, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5114, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5120, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5128, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5134, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5140, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5148, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5154, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5160, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5166, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5172, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5178, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5184, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5190, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5196, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5202, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5208, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5214, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5220, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5228, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5234, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5240, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5246, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5254, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5262, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5268, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5274, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5280, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5286, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5292, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5298, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5304, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5310, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5316, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5322, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5328, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 611, i32 33 }
@___asan_gen_.444 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_port_hw_prio_stats\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 512, i32 38 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5336, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5342, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5348, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5354, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5360, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5366, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5372, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5378, i32 1 }
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_port_hw_tc_stats\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 549, i32 38 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5395, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 5403, i32 1 }
@___asan_gen_.480 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mlcr\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 10403, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 10413, i32 1 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 10397, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 751, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ptys\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4408, i32 1 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4580, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1011, i32 19 }
@___asan_gen_.510 = private unnamed_addr constant [18 x i8] c"mlxsw_rmon_ranges\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1152, i32 45 }
@___asan_gen_.513 = private unnamed_addr constant [25 x i8] c"mlxsw_sp1_port_link_mode\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1274, i32 46 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4422, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4434, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4526, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4416, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4495, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4550, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant [25 x i8] c"mlxsw_sp2_port_link_mode\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1695, i32 46 }
@___asan_gen_.540 = private unnamed_addr constant [34 x i8] c"mlxsw_sp2_mask_ethtool_sgmii_100m\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1536, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [40 x i8] c"mlxsw_sp2_mask_ethtool_1000base_x_sgmii\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1544, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [32 x i8] c"mlxsw_sp2_mask_ethtool_5gbase_r\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1553, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant [38 x i8] c"mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1561, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant [43 x i8] c"mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1575, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant [46 x i8] c"mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1586, i32 1 }
@___asan_gen_.558 = private unnamed_addr constant [55 x i8] c"mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1596, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant [53 x i8] c"mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1606, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant [47 x i8] c"mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1618, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant [50 x i8] c"mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1629, i32 1 }
@___asan_gen_.570 = private unnamed_addr constant [50 x i8] c"mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1641, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant [33 x i8] c"mlxsw_sp2_mask_ethtool_400gaui_8\00", align 1
@___asan_gen_.574 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1653, i32 1 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4520, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4465, i32 1 }
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 4544, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant [46 x i8] c"switch.table.mlxsw_sp_port_get_link_ksettings\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [43 x i8] c"switch.table.mlxsw_sp2_to_ptys_speed_lanes\00", align 1
@llvm.compiler.used = appending global [137 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_port_ethtool_ops, ptr @mlxsw_sp1_port_type_speed_ops, ptr @mlxsw_sp2_port_type_speed_ops, ptr @mlxsw_sp_driver_version, ptr @.str, ptr @mlxsw_reg_pddr, ptr @mlxsw_sp_link_ext_state_opcode_map, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mlxsw_reg_pfcc, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_rfc_2863_stats, ptr @mlxsw_sp_port_hw_rfc_2819_stats, ptr @mlxsw_sp_port_hw_rfc_3635_stats, ptr @mlxsw_sp_port_hw_ext_stats, ptr @mlxsw_sp_port_hw_discard_stats, ptr @mlxsw_sp_port_transceiver_stats, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @mlxsw_sp_port_hw_prio_stats, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @mlxsw_sp_port_hw_tc_stats, ptr @.str.149, ptr @.str.151, ptr @mlxsw_reg_mlcr, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @mlxsw_reg_ptys, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @mlxsw_rmon_ranges, ptr @mlxsw_sp1_port_link_mode, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @mlxsw_sp2_port_link_mode, ptr @mlxsw_sp2_mask_ethtool_sgmii_100m, ptr @mlxsw_sp2_mask_ethtool_1000base_x_sgmii, ptr @mlxsw_sp2_mask_ethtool_5gbase_r, ptr @mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g, ptr @mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g, ptr @mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr, ptr @mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2, ptr @mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr, ptr @mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4, ptr @mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2, ptr @mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4, ptr @mlxsw_sp2_mask_ethtool_400gaui_8, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @switch.table.mlxsw_sp_port_get_link_ksettings, ptr @switch.table.mlxsw_sp2_to_ptys_speed_lanes], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_port_type_speed_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_port_type_speed_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_driver_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pddr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_link_ext_state_opcode_map to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pfcc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_stats to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_rfc_2863_stats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_rfc_2819_stats to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_rfc_3635_stats to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_ext_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_discard_stats to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_transceiver_stats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_prio_stats to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_port_hw_tc_stats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mlcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ptys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_rmon_ranges to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_port_link_mode to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_port_link_mode to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_sgmii_100m to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_1000base_x_sgmii to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_5gbase_r to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mask_ethtool_400gaui_8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlxsw_sp_port_get_link_ksettings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlxsw_sp2_to_ptys_speed_lanes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_port_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %5, i32 noundef 32) #16
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @mlxsw_sp_driver_version, i32 noundef 32) #16
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %6 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_info, align 4
  %fw_rev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_rev, align 4
  %conv = zext i16 %9 to i32
  %minor = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %minor, align 2
  %conv9 = zext i16 %11 to i32
  %subminor = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %subminor to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subminor, align 4
  %conv12 = zext i16 %13 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv12)
  %bus_info14 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %14 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_info, align 4
  %device_name = getelementptr inbounds %struct.mlxsw_bus_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_name, align 4
  %call17 = tail call i32 @strlcpy(ptr noundef %bus_info14, ptr noundef %17, i32 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_get_link_ext_state(ptr noundef %dev, ptr nocapture noundef writeonly %link_ext_state_info) #2 align 64 {
entry:
  %pddr_pl = alloca [256 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pddr_pl) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_port = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %local_port, align 4
  %5 = call ptr @memset(ptr %pddr_pl, i32 0, i32 256)
  %conv1.i = zext i16 %4 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %6 = ptrtoint ptr %pddr_pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pddr_pl, align 4
  %and7.i.i.i = and i32 %7, -16723969
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %8 = shl nuw nsw i32 %conv1.i, 4
  %and6.i26.i.i = and i32 %8, 12288
  %or.i30.i.i = or i32 %and6.i26.i.i, %or.i.i.i
  store i32 %or.i30.i.i, ptr %pddr_pl, align 4
  %arrayidx.i.i24.i = getelementptr inbounds i32, ptr %pddr_pl, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i24.i, align 4
  %and7.i.i26.i = and i32 %10, -256
  %or.i.i27.i = or i32 %and7.i.i26.i, 1
  store i32 %or.i.i27.i, ptr %arrayidx.i.i24.i, align 4
  %arrayidx.i.i = getelementptr inbounds i32, ptr %pddr_pl, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %12, -65536
  store i32 %and7.i.i, ptr %arrayidx.i.i, align 4
  %mlxsw_sp = getelementptr i8, ptr %dev, i32 2312
  %13 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mlxsw_sp, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %call4 = call i32 @mlxsw_reg_query(ptr noundef %16, ptr noundef nonnull @mlxsw_reg_pddr, ptr noundef nonnull %pddr_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %mlxsw_reg_pddr_trblsh_status_opcode_get.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mlxsw_reg_pddr_trblsh_status_opcode_get.exit:     ; preds = %if.end
  %arrayidx.i.i47 = getelementptr inbounds i32, ptr %pddr_pl, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i47, align 4
  %and4.i.i = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool9.not = icmp eq i32 %and4.i.i, 0
  br i1 %tobool9.not, label %mlxsw_reg_pddr_trblsh_status_opcode_get.exit.cleanup_crit_edge, label %mlxsw_reg_pddr_trblsh_status_opcode_get.exit.for.body_crit_edge

mlxsw_reg_pddr_trblsh_status_opcode_get.exit.for.body_crit_edge: ; preds = %mlxsw_reg_pddr_trblsh_status_opcode_get.exit
  br label %for.body

mlxsw_reg_pddr_trblsh_status_opcode_get.exit.cleanup_crit_edge: ; preds = %mlxsw_reg_pddr_trblsh_status_opcode_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %mlxsw_reg_pddr_trblsh_status_opcode_get.exit.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %mlxsw_reg_pddr_trblsh_status_opcode_get.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [31 x %struct.mlxsw_sp_ethtool_link_ext_state_opcode_mapping], ptr @mlxsw_sp_link_ext_state_opcode_map, i32 0, i32 %i.051
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %link_ext_state_mapping.sroa.0.0.copyload27 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %link_ext_state_mapping.sroa.0.0.copyload27, i32 %and4.i.i)
  %cmp13 = icmp eq i32 %link_ext_state_mapping.sroa.0.0.copyload27, %and4.i.i
  br i1 %cmp13, label %if.then14, label %for.cond

if.then14:                                        ; preds = %for.body
  %link_ext_state_mapping.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %20 = ptrtoint ptr %link_ext_state_mapping.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %link_ext_state_mapping.sroa.6.0.copyload28 = load i32, ptr %link_ext_state_mapping.sroa.6.0.arrayidx.sroa_idx, align 4
  %21 = zext i32 %link_ext_state_mapping.sroa.6.0.copyload28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %link_ext_state_mapping.sroa.6.0.copyload28, label %if.then14.mlxsw_sp_port_set_link_ext_state.exit_crit_edge [
    i32 0, label %if.then14.sw.epilog.sink.split.i_crit_edge
    i32 1, label %if.then14.sw.epilog.sink.split.i_crit_edge57
    i32 2, label %if.then14.sw.epilog.sink.split.i_crit_edge58
    i32 3, label %if.then14.sw.epilog.sink.split.i_crit_edge59
    i32 5, label %if.then14.sw.epilog.sink.split.i_crit_edge60
    i32 10, label %if.then14.sw.epilog.sink.split.i_crit_edge61
  ]

if.then14.sw.epilog.sink.split.i_crit_edge61:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then14.sw.epilog.sink.split.i_crit_edge60:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then14.sw.epilog.sink.split.i_crit_edge59:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then14.sw.epilog.sink.split.i_crit_edge58:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then14.sw.epilog.sink.split.i_crit_edge57:     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then14.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then14.mlxsw_sp_port_set_link_ext_state.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_port_set_link_ext_state.exit

sw.epilog.sink.split.i:                           ; preds = %if.then14.sw.epilog.sink.split.i_crit_edge, %if.then14.sw.epilog.sink.split.i_crit_edge57, %if.then14.sw.epilog.sink.split.i_crit_edge58, %if.then14.sw.epilog.sink.split.i_crit_edge59, %if.then14.sw.epilog.sink.split.i_crit_edge60, %if.then14.sw.epilog.sink.split.i_crit_edge61
  %link_ext_state_mapping.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %22 = ptrtoint ptr %link_ext_state_mapping.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %link_ext_state_mapping.sroa.7.0.copyload29 = load i32, ptr %link_ext_state_mapping.sroa.7.0.arrayidx.sroa_idx, align 4
  %link_ext_state_mapping.sroa.4.8.extract.shift.i = lshr i32 %link_ext_state_mapping.sroa.7.0.copyload29, 24
  %23 = getelementptr inbounds %struct.ethtool_link_ext_state_info, ptr %link_ext_state_info, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %link_ext_state_mapping.sroa.4.8.extract.shift.i, ptr %23, align 4
  br label %mlxsw_sp_port_set_link_ext_state.exit

mlxsw_sp_port_set_link_ext_state.exit:            ; preds = %sw.epilog.sink.split.i, %if.then14.mlxsw_sp_port_set_link_ext_state.exit_crit_edge
  %25 = ptrtoint ptr %link_ext_state_info to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %link_ext_state_mapping.sroa.6.0.copyload28, ptr %link_ext_state_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_port_set_link_ext_state.exit, %for.cond.cleanup_crit_edge, %mlxsw_reg_pddr_trblsh_status_opcode_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlxsw_sp_port_set_link_ext_state.exit ], [ -61, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -61, %mlxsw_reg_pddr_trblsh_status_opcode_get.exit.cleanup_crit_edge ], [ -61, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pddr_pl) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_port_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %link, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv = zext i8 %bf.clear to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %1 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %rx_pause, align 4
  %bf.load2 = load i8, ptr %link, align 4
  %bf.lshr3 = lshr i8 %bf.load2, 7
  %conv4 = zext i8 %bf.lshr3 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv4, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  %pfcc_pl.i = alloca [32 x i8], align 4
  %orig_hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  %hdroom = alloca %struct.mlxsw_sp_hdroom, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %0 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool1, %lor.rhs ]
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %orig_hdroom) #16
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hdroom) #16
  %pfc = getelementptr i8, ptr %dev, i32 2336
  %5 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pfc, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.end.if.end_crit_edge, label %land.lhs.true

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.end.if.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %hdroom9 = getelementptr i8, ptr %dev, i32 3488
  %11 = ptrtoint ptr %hdroom9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdroom9, align 8
  %13 = call ptr @memcpy(ptr %orig_hdroom, ptr %12, i32 216)
  %14 = call ptr @memmove(ptr %hdroom, ptr %12, i32 216)
  %spec.select = select i1 %4, i32 19476, i32 0
  %15 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  %lnot = xor i1 %4, true
  %frombool17 = zext i1 %lnot to i8
  %lossy = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %lossy to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool17, ptr %lossy, align 1
  %lossy.1 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %lossy.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool17, ptr %lossy.1, align 1
  %lossy.2 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %lossy.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool17, ptr %lossy.2, align 1
  %lossy.3 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %lossy.3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool17, ptr %lossy.3, align 1
  %lossy.4 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %lossy.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool17, ptr %lossy.4, align 1
  %lossy.5 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %lossy.5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool17, ptr %lossy.5, align 1
  %lossy.6 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %lossy.6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool17, ptr %lossy.6, align 1
  %lossy.7 = getelementptr inbounds %struct.mlxsw_sp_hdroom, ptr %hdroom, i32 0, i32 1, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %lossy.7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool17, ptr %lossy.7, align 1
  call void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef nonnull %hdroom) #16
  call void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom) #16
  %call18 = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %add.ptr.i, ptr noundef nonnull %hdroom) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #19
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfcc_pl.i) #16
  %local_port.i = getelementptr i8, ptr %dev, i32 2316
  %25 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %local_port.i, align 4
  %27 = call ptr @memset(ptr %pfcc_pl.i, i32 0, i32 32)
  %conv1.i.i = zext i16 %26 to i32
  %and.i.i.i = shl nuw i32 %conv1.i.i, 16
  %spec.select.i.i.i.i = and i32 %and.i.i.i, 16711680
  %28 = ptrtoint ptr %pfcc_pl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pfcc_pl.i, align 4
  %and7.i.i.i.i = and i32 %29, -16723969
  %or.i.i.i.i = or i32 %spec.select.i.i.i.i, %and7.i.i.i.i
  %30 = shl nuw nsw i32 %conv1.i.i, 4
  %and6.i26.i.i.i = and i32 %30, 12288
  %or.i30.i.i.i = or i32 %and6.i26.i.i.i, %or.i.i.i.i
  store i32 %or.i30.i.i.i, ptr %pfcc_pl.i, align 4
  %rx_pause.i = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %31 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_pause.i, align 4
  %spec.select.i.i.i = shl i32 %32, 31
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 3
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %34, 2147483647
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %35 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_pause, align 4
  %spec.select.i.i25.i = shl i32 %36, 31
  %arrayidx.i.i31.i = getelementptr inbounds i32, ptr %pfcc_pl.i, i32 2
  %37 = ptrtoint ptr %arrayidx.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i31.i, align 4
  %and7.i.i33.i = and i32 %38, 2147483647
  %or.i.i34.i = or i32 %spec.select.i.i25.i, %and7.i.i33.i
  store i32 %or.i.i34.i, ptr %arrayidx.i.i31.i, align 4
  %mlxsw_sp.i = getelementptr i8, ptr %dev, i32 2312
  %39 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mlxsw_sp.i, align 8
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %42, ptr noundef nonnull @mlxsw_reg_pfcc, ptr noundef nonnull %pfcc_pl.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfcc_pl.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #19
  %call36 = call i32 @mlxsw_sp_hdroom_configure(ptr noundef %add.ptr.i, ptr noundef nonnull %orig_hdroom) #16
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_pause.i, align 4
  %conv27 = trunc i32 %44 to i8
  %link = getelementptr i8, ptr %dev, i32 2324
  %45 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %link, align 4
  %bf.value = shl i8 %conv27, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %link, align 4
  %46 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_pause, align 4
  %conv29 = trunc i32 %47 to i8
  %bf.shl33 = shl i8 %conv29, 7
  %bf.clear34 = and i8 %bf.set, 127
  %bf.set35 = or i8 %bf.clear34, %bf.shl33
  store i8 %bf.set35, ptr %link, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then20, %if.then7, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then7 ], [ %call18, %if.then20 ], [ %call.i, %if.then24 ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hdroom) #16
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %orig_hdroom) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_port_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef %data) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #16
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.cond.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.promoted = load ptr, ptr %p, align 4
  %2 = call ptr @memcpy(ptr %p.promoted, ptr @mlxsw_sp_port_hw_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %p.promoted, i32 32
  %3 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %p.promoted, i32 64
  %4 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %p.promoted, i32 96
  %5 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %p.promoted, i32 128
  %6 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %p.promoted, i32 160
  %7 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %p.promoted, i32 192
  %8 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %p.promoted, i32 224
  %9 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %p.promoted, i32 256
  %10 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %p.promoted, i32 288
  %11 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %p.promoted, i32 320
  %12 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 10), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %p.promoted, i32 352
  %13 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 11), i32 32)
  %add.ptr.11 = getelementptr i8, ptr %p.promoted, i32 384
  %14 = call ptr @memcpy(ptr %add.ptr.11, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 12), i32 32)
  %add.ptr.12 = getelementptr i8, ptr %p.promoted, i32 416
  %15 = call ptr @memcpy(ptr %add.ptr.12, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 13), i32 32)
  %add.ptr.13 = getelementptr i8, ptr %p.promoted, i32 448
  %16 = call ptr @memcpy(ptr %add.ptr.13, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 14), i32 32)
  %add.ptr.14 = getelementptr i8, ptr %p.promoted, i32 480
  %17 = call ptr @memcpy(ptr %add.ptr.14, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 15), i32 32)
  %add.ptr.15 = getelementptr i8, ptr %p.promoted, i32 512
  %18 = call ptr @memcpy(ptr %add.ptr.15, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 16), i32 32)
  %add.ptr.16 = getelementptr i8, ptr %p.promoted, i32 544
  %19 = call ptr @memcpy(ptr %add.ptr.16, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 17), i32 32)
  %add.ptr.17 = getelementptr i8, ptr %p.promoted, i32 576
  %20 = call ptr @memcpy(ptr %add.ptr.17, ptr getelementptr inbounds ([19 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_stats, i32 0, i32 18), i32 32)
  %add.ptr.18 = getelementptr i8, ptr %p.promoted, i32 608
  %21 = call ptr @memcpy(ptr %add.ptr.18, ptr @mlxsw_sp_port_hw_rfc_2863_stats, i32 32)
  %add.ptr7 = getelementptr i8, ptr %p.promoted, i32 640
  %22 = call ptr @memcpy(ptr %add.ptr7, ptr getelementptr inbounds ([3 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2863_stats, i32 0, i32 1), i32 32)
  %add.ptr7.1 = getelementptr i8, ptr %p.promoted, i32 672
  %23 = call ptr @memcpy(ptr %add.ptr7.1, ptr getelementptr inbounds ([3 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2863_stats, i32 0, i32 2), i32 32)
  %add.ptr7.2 = getelementptr i8, ptr %p.promoted, i32 704
  %24 = call ptr @memcpy(ptr %add.ptr7.2, ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 32)
  %add.ptr17 = getelementptr i8, ptr %p.promoted, i32 736
  %25 = call ptr @memcpy(ptr %add.ptr17, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 1), i32 32)
  %add.ptr17.1 = getelementptr i8, ptr %p.promoted, i32 768
  %26 = call ptr @memcpy(ptr %add.ptr17.1, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 2), i32 32)
  %add.ptr17.2 = getelementptr i8, ptr %p.promoted, i32 800
  %27 = call ptr @memcpy(ptr %add.ptr17.2, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 3), i32 32)
  %add.ptr17.3 = getelementptr i8, ptr %p.promoted, i32 832
  %28 = call ptr @memcpy(ptr %add.ptr17.3, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 4), i32 32)
  %add.ptr17.4 = getelementptr i8, ptr %p.promoted, i32 864
  %29 = call ptr @memcpy(ptr %add.ptr17.4, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 5), i32 32)
  %add.ptr17.5 = getelementptr i8, ptr %p.promoted, i32 896
  %30 = call ptr @memcpy(ptr %add.ptr17.5, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 6), i32 32)
  %add.ptr17.6 = getelementptr i8, ptr %p.promoted, i32 928
  %31 = call ptr @memcpy(ptr %add.ptr17.6, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 7), i32 32)
  %add.ptr17.7 = getelementptr i8, ptr %p.promoted, i32 960
  %32 = call ptr @memcpy(ptr %add.ptr17.7, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 8), i32 32)
  %add.ptr17.8 = getelementptr i8, ptr %p.promoted, i32 992
  %33 = call ptr @memcpy(ptr %add.ptr17.8, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 9), i32 32)
  %add.ptr17.9 = getelementptr i8, ptr %p.promoted, i32 1024
  %34 = call ptr @memcpy(ptr %add.ptr17.9, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 10), i32 32)
  %add.ptr17.10 = getelementptr i8, ptr %p.promoted, i32 1056
  %35 = call ptr @memcpy(ptr %add.ptr17.10, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 11), i32 32)
  %add.ptr17.11 = getelementptr i8, ptr %p.promoted, i32 1088
  %36 = call ptr @memcpy(ptr %add.ptr17.11, ptr getelementptr inbounds ([13 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 0, i32 12), i32 32)
  %add.ptr17.12 = getelementptr i8, ptr %p.promoted, i32 1120
  %37 = call ptr @memcpy(ptr %add.ptr17.12, ptr @mlxsw_sp_port_hw_rfc_3635_stats, i32 32)
  %add.ptr27 = getelementptr i8, ptr %p.promoted, i32 1152
  %38 = call ptr @memcpy(ptr %add.ptr27, ptr getelementptr inbounds ([4 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_3635_stats, i32 0, i32 1), i32 32)
  %add.ptr27.1 = getelementptr i8, ptr %p.promoted, i32 1184
  %39 = call ptr @memcpy(ptr %add.ptr27.1, ptr getelementptr inbounds ([4 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_3635_stats, i32 0, i32 2), i32 32)
  %add.ptr27.2 = getelementptr i8, ptr %p.promoted, i32 1216
  %40 = call ptr @memcpy(ptr %add.ptr27.2, ptr getelementptr inbounds ([4 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_rfc_3635_stats, i32 0, i32 3), i32 32)
  %add.ptr27.3 = getelementptr i8, ptr %p.promoted, i32 1248
  %41 = call ptr @memcpy(ptr %add.ptr27.3, ptr @mlxsw_sp_port_hw_ext_stats, i32 32)
  %add.ptr37 = getelementptr i8, ptr %p.promoted, i32 1280
  store ptr %add.ptr37, ptr %p, align 4
  %42 = call ptr @memcpy(ptr %add.ptr37, ptr @mlxsw_sp_port_hw_discard_stats, i32 32)
  %add.ptr47 = getelementptr i8, ptr %p.promoted, i32 1312
  %43 = call ptr @memcpy(ptr %add.ptr47, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 1), i32 32)
  %add.ptr47.1 = getelementptr i8, ptr %p.promoted, i32 1344
  %44 = call ptr @memcpy(ptr %add.ptr47.1, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 2), i32 32)
  %add.ptr47.2 = getelementptr i8, ptr %p.promoted, i32 1376
  %45 = call ptr @memcpy(ptr %add.ptr47.2, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 3), i32 32)
  %add.ptr47.3 = getelementptr i8, ptr %p.promoted, i32 1408
  %46 = call ptr @memcpy(ptr %add.ptr47.3, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 4), i32 32)
  %add.ptr47.4 = getelementptr i8, ptr %p.promoted, i32 1440
  %47 = call ptr @memcpy(ptr %add.ptr47.4, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 5), i32 32)
  %add.ptr47.5 = getelementptr i8, ptr %p.promoted, i32 1472
  %48 = call ptr @memcpy(ptr %add.ptr47.5, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 6), i32 32)
  %add.ptr47.6 = getelementptr i8, ptr %p.promoted, i32 1504
  %49 = call ptr @memcpy(ptr %add.ptr47.6, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 7), i32 32)
  %add.ptr47.7 = getelementptr i8, ptr %p.promoted, i32 1536
  %50 = call ptr @memcpy(ptr %add.ptr47.7, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 8), i32 32)
  %add.ptr47.8 = getelementptr i8, ptr %p.promoted, i32 1568
  %51 = call ptr @memcpy(ptr %add.ptr47.8, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 9), i32 32)
  %add.ptr47.9 = getelementptr i8, ptr %p.promoted, i32 1600
  %52 = call ptr @memcpy(ptr %add.ptr47.9, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 10), i32 32)
  %add.ptr47.10 = getelementptr i8, ptr %p.promoted, i32 1632
  %53 = call ptr @memcpy(ptr %add.ptr47.10, ptr getelementptr inbounds ([12 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_discard_stats, i32 0, i32 11), i32 32)
  %add.ptr47.11 = getelementptr i8, ptr %p.promoted, i32 1664
  br label %for.body53

for.cond57.preheader:                             ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #18
  %call.i100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.7.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 0) #16
  %add.ptr.i101 = getelementptr i8, ptr %add.ptr.7.i124125, i32 288
  %call.1.i102 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 0) #16
  %add.ptr.1.i103 = getelementptr i8, ptr %add.ptr.7.i124125, i32 320
  %call.i100.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 1) #16
  %add.ptr.i101.1 = getelementptr i8, ptr %add.ptr.7.i124125, i32 352
  %call.1.i102.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.1, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 1) #16
  %add.ptr.1.i103.1 = getelementptr i8, ptr %add.ptr.7.i124125, i32 384
  %call.i100.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.1, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 2) #16
  %add.ptr.i101.2 = getelementptr i8, ptr %add.ptr.7.i124125, i32 416
  %call.1.i102.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.2, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 2) #16
  %add.ptr.1.i103.2 = getelementptr i8, ptr %add.ptr.7.i124125, i32 448
  %call.i100.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.2, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 3) #16
  %add.ptr.i101.3 = getelementptr i8, ptr %add.ptr.7.i124125, i32 480
  %call.1.i102.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.3, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 3) #16
  %add.ptr.1.i103.3 = getelementptr i8, ptr %add.ptr.7.i124125, i32 512
  %call.i100.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.3, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 4) #16
  %add.ptr.i101.4 = getelementptr i8, ptr %add.ptr.7.i124125, i32 544
  %call.1.i102.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.4, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 4) #16
  %add.ptr.1.i103.4 = getelementptr i8, ptr %add.ptr.7.i124125, i32 576
  %call.i100.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.4, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 5) #16
  %add.ptr.i101.5 = getelementptr i8, ptr %add.ptr.7.i124125, i32 608
  %call.1.i102.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.5, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 5) #16
  %add.ptr.1.i103.5 = getelementptr i8, ptr %add.ptr.7.i124125, i32 640
  %call.i100.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.5, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 6) #16
  %add.ptr.i101.6 = getelementptr i8, ptr %add.ptr.7.i124125, i32 672
  %call.1.i102.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.6, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 6) #16
  %add.ptr.1.i103.6 = getelementptr i8, ptr %add.ptr.7.i124125, i32 704
  %call.i100.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.6, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 7) #16
  %add.ptr.i101.7 = getelementptr i8, ptr %add.ptr.7.i124125, i32 736
  %call.1.i102.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.7, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 7) #16
  %add.ptr.1.i103.7 = getelementptr i8, ptr %add.ptr.7.i124125, i32 768
  %call.i100.8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.7, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 8) #16
  %add.ptr.i101.8 = getelementptr i8, ptr %add.ptr.7.i124125, i32 800
  %call.1.i102.8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.8, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 8) #16
  %add.ptr.1.i103.8 = getelementptr i8, ptr %add.ptr.7.i124125, i32 832
  %call.i100.9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.8, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 9) #16
  %add.ptr.i101.9 = getelementptr i8, ptr %add.ptr.7.i124125, i32 864
  %call.1.i102.9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.9, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 9) #16
  %add.ptr.1.i103.9 = getelementptr i8, ptr %add.ptr.7.i124125, i32 896
  %call.i100.10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.9, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 10) #16
  %add.ptr.i101.10 = getelementptr i8, ptr %add.ptr.7.i124125, i32 928
  %call.1.i102.10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.10, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 10) #16
  %add.ptr.1.i103.10 = getelementptr i8, ptr %add.ptr.7.i124125, i32 960
  %call.i100.11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.10, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 11) #16
  %add.ptr.i101.11 = getelementptr i8, ptr %add.ptr.7.i124125, i32 992
  %call.1.i102.11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.11, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 11) #16
  %add.ptr.1.i103.11 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1024
  %call.i100.12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.11, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 12) #16
  %add.ptr.i101.12 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1056
  %call.1.i102.12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.12, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 12) #16
  %add.ptr.1.i103.12 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1088
  %call.i100.13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.12, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 13) #16
  %add.ptr.i101.13 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1120
  %call.1.i102.13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.13, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 13) #16
  %add.ptr.1.i103.13 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1152
  %call.i100.14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.13, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 14) #16
  %add.ptr.i101.14 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1184
  %call.1.i102.14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.14, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 14) #16
  %add.ptr.1.i103.14 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1216
  %call.i100.15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i103.14, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_tc_stats, i32 noundef 15) #16
  %add.ptr.i101.15 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1248
  %call.1.i102.15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i101.15, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1), i32 noundef 15) #16
  %add.ptr.1.i103.15 = getelementptr i8, ptr %add.ptr.7.i124125, i32 1280
  %54 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.1.i103.15, ptr %p, align 4
  %mlxsw_sp = getelementptr i8, ptr %dev, i32 2312
  %55 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mlxsw_sp, align 8
  %ptp_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %56, i32 0, i32 37
  %57 = ptrtoint ptr %ptp_ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptp_ops, align 4
  %get_stats_strings = getelementptr inbounds %struct.mlxsw_sp_ptp_ops, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %get_stats_strings to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_stats_strings, align 4
  call void %60(ptr noundef nonnull %p) #16
  %61 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p, align 4
  %63 = call ptr @memcpy(ptr %62, ptr @mlxsw_sp_port_transceiver_stats, i32 32)
  br label %sw.epilog

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.cond.preheader
  %i.6126 = phi i32 [ 0, %for.cond.preheader ], [ %inc55, %for.body53.for.body53_crit_edge ]
  %add.ptr.7.i124125 = phi ptr [ %add.ptr47.11, %for.cond.preheader ], [ %add.ptr.7.i, %for.body53.for.body53_crit_edge ]
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.7.i124125, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef nonnull @mlxsw_sp_port_hw_prio_stats, i32 noundef %i.6126) #16
  %add.ptr.i99 = getelementptr i8, ptr %add.ptr.7.i124125, i32 32
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i99, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 1), i32 noundef %i.6126) #16
  %add.ptr.1.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 64
  %call.2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.1.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 2), i32 noundef %i.6126) #16
  %add.ptr.2.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 96
  %call.3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.2.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 3), i32 noundef %i.6126) #16
  %add.ptr.3.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 128
  %call.4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.3.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 4), i32 noundef %i.6126) #16
  %add.ptr.4.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 160
  %call.5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.4.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 5), i32 noundef %i.6126) #16
  %add.ptr.5.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 192
  %call.6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.5.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 6), i32 noundef %i.6126) #16
  %add.ptr.6.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 224
  %call.7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.6.i, i32 noundef 32, ptr noundef nonnull @.str.132, ptr noundef getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 7), i32 noundef %i.6126) #16
  %add.ptr.7.i = getelementptr i8, ptr %add.ptr.7.i124125, i32 256
  %inc55 = add nuw nsw i32 %i.6126, 1
  %exitcond.not = icmp eq i32 %inc55, 8
  br i1 %exitcond.not, label %for.cond57.preheader, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body53

sw.epilog:                                        ; preds = %for.cond57.preheader, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_set_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #2 align 64 {
entry:
  %mlcr_pl = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mlcr_pl) #16
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %active.0.off0 = phi i32 [ 0, %sw.bb2 ], [ 65535, %entry.sw.epilog_crit_edge ]
  %local_port = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %local_port, align 4
  %5 = call ptr @memset(ptr %mlcr_pl, i32 0, i32 12)
  %conv1.i = zext i16 %4 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %6 = ptrtoint ptr %mlcr_pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mlcr_pl, align 4
  %and7.i.i.i = and i32 %7, -67043329
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %8 = shl nuw i32 %conv1.i, 16
  %and6.i26.i.i = and i32 %8, 50331648
  %or.i30.i.i = or i32 %and6.i26.i.i, %or.i.i.i
  store i32 %or.i30.i.i, ptr %mlcr_pl, align 4
  %arrayidx.i.i29.i = getelementptr inbounds i32, ptr %mlcr_pl, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i29.i, align 4
  %and7.i.i31.i = and i32 %10, -65536
  %or.i.i32.i = or i32 %active.0.off0, %and7.i.i31.i
  store i32 %or.i.i32.i, ptr %arrayidx.i.i29.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 4
  %call4 = call i32 @mlxsw_reg_write(ptr noundef %12, ptr noundef nonnull @mlxsw_reg_mlcr, ptr noundef nonnull %mlcr_pl) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mlcr_pl) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_port_get_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #2 align 64 {
entry:
  %ppcnt_pl.i174 = alloca [256 x i8], align 1
  %ppcnt_pl.i155 = alloca [256 x i8], align 1
  %ppcnt_pl.i136 = alloca [256 x i8], align 1
  %ppcnt_pl.i117 = alloca [256 x i8], align 1
  %ppcnt_pl.i98 = alloca [256 x i8], align 1
  %ppcnt_pl.i79 = alloca [256 x i8], align 1
  %ppcnt_pl.i61 = alloca [256 x i8], align 1
  %ppcnt_pl.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i) #16
  %2 = call ptr @memset(ptr %ppcnt_pl.i, i32 255, i32 256)
  %call3.i = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ppcnt_pl.i) #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.042.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %getter.i = getelementptr %struct.mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_stats, i32 %i.042.i, i32 1
  %3 = ptrtoint ptr %getter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %getter.i, align 4
  %call5.i = call i64 %4(ptr noundef nonnull %ppcnt_pl.i) #16
  %arrayidx6.i = getelementptr i64, ptr %data, i32 %i.042.i
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call5.i, ptr %arrayidx6.i, align 8
  %cells_bytes.i = getelementptr %struct.mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_stats, i32 %i.042.i, i32 2
  %6 = ptrtoint ptr %cells_bytes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cells_bytes.i, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.i = icmp eq i8 %7, 0
  br i1 %tobool8.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end10.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = trunc i64 %call5.i to i32
  %call13.i = call i32 @mlxsw_sp_cells_bytes(ptr noundef %1, i32 noundef %conv.i) #16
  %conv14.i = zext i32 %call13.i to i64
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv14.i, ptr %arrayidx6.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %__mlxsw_sp_port_get_stats.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

__mlxsw_sp_port_get_stats.exit:                   ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i61) #16
  %9 = call ptr @memset(ptr %ppcnt_pl.i61, i32 255, i32 256)
  %call3.i63 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %ppcnt_pl.i61) #16
  %call5.i66 = call i64 @mlxsw_reg_ppcnt_if_in_discards_get(ptr noundef nonnull %ppcnt_pl.i61) #16
  %arrayidx6.i67 = getelementptr i64, ptr %data, i32 19
  %10 = ptrtoint ptr %arrayidx6.i67 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call5.i66, ptr %arrayidx6.i67, align 8
  %call5.i66.1 = call i64 @mlxsw_reg_ppcnt_if_out_discards_get(ptr noundef nonnull %ppcnt_pl.i61) #16
  %arrayidx6.i67.1 = getelementptr i64, ptr %data, i32 20
  %11 = ptrtoint ptr %arrayidx6.i67.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call5.i66.1, ptr %arrayidx6.i67.1, align 8
  %call5.i66.2 = call i64 @mlxsw_reg_ppcnt_if_out_errors_get(ptr noundef nonnull %ppcnt_pl.i61) #16
  %arrayidx6.i67.2 = getelementptr i64, ptr %data, i32 21
  %12 = ptrtoint ptr %arrayidx6.i67.2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call5.i66.2, ptr %arrayidx6.i67.2, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i61) #16
  %13 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i79) #16
  %15 = call ptr @memset(ptr %ppcnt_pl.i79, i32 255, i32 256)
  %call3.i81 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %ppcnt_pl.i79) #16
  br label %for.body.i89

for.body.i89:                                     ; preds = %for.inc.i96.for.body.i89_crit_edge, %__mlxsw_sp_port_get_stats.exit
  %i.042.i82 = phi i32 [ 0, %__mlxsw_sp_port_get_stats.exit ], [ %inc.i94, %for.inc.i96.for.body.i89_crit_edge ]
  %getter.i83 = getelementptr %struct.mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 %i.042.i82, i32 1
  %16 = ptrtoint ptr %getter.i83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %getter.i83, align 4
  %call5.i84 = call i64 %17(ptr noundef nonnull %ppcnt_pl.i79) #16
  %add.i85 = add nuw nsw i32 %i.042.i82, 22
  %arrayidx6.i86 = getelementptr i64, ptr %data, i32 %add.i85
  %18 = ptrtoint ptr %arrayidx6.i86 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call5.i84, ptr %arrayidx6.i86, align 8
  %cells_bytes.i87 = getelementptr %struct.mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_rfc_2819_stats, i32 %i.042.i82, i32 2
  %19 = ptrtoint ptr %cells_bytes.i87 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cells_bytes.i87, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not.i88 = icmp eq i8 %20, 0
  br i1 %tobool8.not.i88, label %for.body.i89.for.inc.i96_crit_edge, label %if.end10.i93

for.body.i89.for.inc.i96_crit_edge:               ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i96

if.end10.i93:                                     ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i90 = trunc i64 %call5.i84 to i32
  %call13.i91 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %14, i32 noundef %conv.i90) #16
  %conv14.i92 = zext i32 %call13.i91 to i64
  %21 = ptrtoint ptr %arrayidx6.i86 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv14.i92, ptr %arrayidx6.i86, align 8
  br label %for.inc.i96

for.inc.i96:                                      ; preds = %if.end10.i93, %for.body.i89.for.inc.i96_crit_edge
  %inc.i94 = add nuw nsw i32 %i.042.i82, 1
  %exitcond.not.i95 = icmp eq i32 %inc.i94, 13
  br i1 %exitcond.not.i95, label %__mlxsw_sp_port_get_stats.exit97, label %for.inc.i96.for.body.i89_crit_edge

for.inc.i96.for.body.i89_crit_edge:               ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i89

__mlxsw_sp_port_get_stats.exit97:                 ; preds = %for.inc.i96
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i79) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i98) #16
  %22 = call ptr @memset(ptr %ppcnt_pl.i98, i32 255, i32 256)
  %call3.i100 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %ppcnt_pl.i98) #16
  %call5.i103 = call i64 @mlxsw_reg_ppcnt_dot3stats_fcs_errors_get(ptr noundef nonnull %ppcnt_pl.i98) #16
  %arrayidx6.i105 = getelementptr i64, ptr %data, i32 35
  %23 = ptrtoint ptr %arrayidx6.i105 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call5.i103, ptr %arrayidx6.i105, align 8
  %call5.i103.1 = call i64 @mlxsw_reg_ppcnt_dot3stats_symbol_errors_get(ptr noundef nonnull %ppcnt_pl.i98) #16
  %arrayidx6.i105.1 = getelementptr i64, ptr %data, i32 36
  %24 = ptrtoint ptr %arrayidx6.i105.1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call5.i103.1, ptr %arrayidx6.i105.1, align 8
  %call5.i103.2 = call i64 @mlxsw_reg_ppcnt_dot3control_in_unknown_opcodes_get(ptr noundef nonnull %ppcnt_pl.i98) #16
  %arrayidx6.i105.2 = getelementptr i64, ptr %data, i32 37
  %25 = ptrtoint ptr %arrayidx6.i105.2 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call5.i103.2, ptr %arrayidx6.i105.2, align 8
  %call5.i103.3 = call i64 @mlxsw_reg_ppcnt_dot3in_pause_frames_get(ptr noundef nonnull %ppcnt_pl.i98) #16
  %arrayidx6.i105.3 = getelementptr i64, ptr %data, i32 38
  %26 = ptrtoint ptr %arrayidx6.i105.3 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call5.i103.3, ptr %arrayidx6.i105.3, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i98) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i117) #16
  %27 = call ptr @memset(ptr %ppcnt_pl.i117, i32 255, i32 256)
  %call3.i119 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %ppcnt_pl.i117) #16
  %call5.i122 = call i64 @mlxsw_reg_ppcnt_ecn_marked_get(ptr noundef nonnull %ppcnt_pl.i117) #16
  %arrayidx6.i124 = getelementptr i64, ptr %data, i32 39
  %28 = ptrtoint ptr %arrayidx6.i124 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call5.i122, ptr %arrayidx6.i124, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i117) #16
  %29 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i136) #16
  %31 = call ptr @memset(ptr %ppcnt_pl.i136, i32 255, i32 256)
  %call3.i138 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %ppcnt_pl.i136) #16
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i153.for.body.i146_crit_edge, %__mlxsw_sp_port_get_stats.exit97
  %i.042.i139 = phi i32 [ 0, %__mlxsw_sp_port_get_stats.exit97 ], [ %inc.i151, %for.inc.i153.for.body.i146_crit_edge ]
  %getter.i140 = getelementptr %struct.mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_discard_stats, i32 %i.042.i139, i32 1
  %32 = ptrtoint ptr %getter.i140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %getter.i140, align 4
  %call5.i141 = call i64 %33(ptr noundef nonnull %ppcnt_pl.i136) #16
  %add.i142 = add nuw nsw i32 %i.042.i139, 40
  %arrayidx6.i143 = getelementptr i64, ptr %data, i32 %add.i142
  %34 = ptrtoint ptr %arrayidx6.i143 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call5.i141, ptr %arrayidx6.i143, align 8
  %cells_bytes.i144 = getelementptr %struct.mlxsw_sp_port_hw_stats, ptr @mlxsw_sp_port_hw_discard_stats, i32 %i.042.i139, i32 2
  %35 = ptrtoint ptr %cells_bytes.i144 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cells_bytes.i144, align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool8.not.i145 = icmp eq i8 %36, 0
  br i1 %tobool8.not.i145, label %for.body.i146.for.inc.i153_crit_edge, label %if.end10.i150

for.body.i146.for.inc.i153_crit_edge:             ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i153

if.end10.i150:                                    ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i147 = trunc i64 %call5.i141 to i32
  %call13.i148 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %30, i32 noundef %conv.i147) #16
  %conv14.i149 = zext i32 %call13.i148 to i64
  %37 = ptrtoint ptr %arrayidx6.i143 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv14.i149, ptr %arrayidx6.i143, align 8
  br label %for.inc.i153

for.inc.i153:                                     ; preds = %if.end10.i150, %for.body.i146.for.inc.i153_crit_edge
  %inc.i151 = add nuw nsw i32 %i.042.i139, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, 12
  br i1 %exitcond.not.i152, label %__mlxsw_sp_port_get_stats.exit154, label %for.inc.i153.for.body.i146_crit_edge

for.inc.i153.for.body.i146_crit_edge:             ; preds = %for.inc.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i146

__mlxsw_sp_port_get_stats.exit154:                ; preds = %for.inc.i153
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i136) #16
  br label %for.body

for.body:                                         ; preds = %for.inc.i172.7.for.body_crit_edge, %__mlxsw_sp_port_get_stats.exit154
  %data_index.0194 = phi i32 [ 52, %__mlxsw_sp_port_get_stats.exit154 ], [ %add5, %for.inc.i172.7.for.body_crit_edge ]
  %i.0193 = phi i32 [ 0, %__mlxsw_sp_port_get_stats.exit154 ], [ %inc, %for.inc.i172.7.for.body_crit_edge ]
  %38 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i155) #16
  %40 = call ptr @memset(ptr %ppcnt_pl.i155, i32 255, i32 256)
  %call3.i157 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 16, i32 noundef %i.0193, ptr noundef nonnull %ppcnt_pl.i155) #16
  %41 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 0, i32 1), align 4
  %call5.i160 = call i64 %41(ptr noundef nonnull %ppcnt_pl.i155) #16
  %arrayidx6.i162 = getelementptr i64, ptr %data, i32 %data_index.0194
  %42 = ptrtoint ptr %arrayidx6.i162 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call5.i160, ptr %arrayidx6.i162, align 8
  %43 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 0, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool8.not.i164 = icmp eq i8 %43, 0
  br i1 %tobool8.not.i164, label %for.body.for.inc.i172_crit_edge, label %if.end10.i169

for.body.for.inc.i172_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172

if.end10.i169:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166 = trunc i64 %call5.i160 to i32
  %call13.i167 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166) #16
  %conv14.i168 = zext i32 %call13.i167 to i64
  %44 = ptrtoint ptr %arrayidx6.i162 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv14.i168, ptr %arrayidx6.i162, align 8
  br label %for.inc.i172

for.inc.i172:                                     ; preds = %if.end10.i169, %for.body.for.inc.i172_crit_edge
  %45 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 1, i32 1), align 4
  %call5.i160.1 = call i64 %45(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.1 = or i32 %data_index.0194, 1
  %arrayidx6.i162.1 = getelementptr i64, ptr %data, i32 %add.i161.1
  %46 = ptrtoint ptr %arrayidx6.i162.1 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %call5.i160.1, ptr %arrayidx6.i162.1, align 8
  %47 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 1, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not.i164.1 = icmp eq i8 %47, 0
  br i1 %tobool8.not.i164.1, label %for.inc.i172.for.inc.i172.1_crit_edge, label %if.end10.i169.1

for.inc.i172.for.inc.i172.1_crit_edge:            ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.1

if.end10.i169.1:                                  ; preds = %for.inc.i172
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.1 = trunc i64 %call5.i160.1 to i32
  %call13.i167.1 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.1) #16
  %conv14.i168.1 = zext i32 %call13.i167.1 to i64
  %48 = ptrtoint ptr %arrayidx6.i162.1 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv14.i168.1, ptr %arrayidx6.i162.1, align 8
  br label %for.inc.i172.1

for.inc.i172.1:                                   ; preds = %if.end10.i169.1, %for.inc.i172.for.inc.i172.1_crit_edge
  %49 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 2, i32 1), align 4
  %call5.i160.2 = call i64 %49(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.2 = or i32 %data_index.0194, 2
  %arrayidx6.i162.2 = getelementptr i64, ptr %data, i32 %add.i161.2
  %50 = ptrtoint ptr %arrayidx6.i162.2 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %call5.i160.2, ptr %arrayidx6.i162.2, align 8
  %51 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 2, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool8.not.i164.2 = icmp eq i8 %51, 0
  br i1 %tobool8.not.i164.2, label %for.inc.i172.1.for.inc.i172.2_crit_edge, label %if.end10.i169.2

for.inc.i172.1.for.inc.i172.2_crit_edge:          ; preds = %for.inc.i172.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.2

if.end10.i169.2:                                  ; preds = %for.inc.i172.1
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.2 = trunc i64 %call5.i160.2 to i32
  %call13.i167.2 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.2) #16
  %conv14.i168.2 = zext i32 %call13.i167.2 to i64
  %52 = ptrtoint ptr %arrayidx6.i162.2 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv14.i168.2, ptr %arrayidx6.i162.2, align 8
  br label %for.inc.i172.2

for.inc.i172.2:                                   ; preds = %if.end10.i169.2, %for.inc.i172.1.for.inc.i172.2_crit_edge
  %53 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 3, i32 1), align 4
  %call5.i160.3 = call i64 %53(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.3 = or i32 %data_index.0194, 3
  %arrayidx6.i162.3 = getelementptr i64, ptr %data, i32 %add.i161.3
  %54 = ptrtoint ptr %arrayidx6.i162.3 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %call5.i160.3, ptr %arrayidx6.i162.3, align 8
  %55 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 3, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool8.not.i164.3 = icmp eq i8 %55, 0
  br i1 %tobool8.not.i164.3, label %for.inc.i172.2.for.inc.i172.3_crit_edge, label %if.end10.i169.3

for.inc.i172.2.for.inc.i172.3_crit_edge:          ; preds = %for.inc.i172.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.3

if.end10.i169.3:                                  ; preds = %for.inc.i172.2
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.3 = trunc i64 %call5.i160.3 to i32
  %call13.i167.3 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.3) #16
  %conv14.i168.3 = zext i32 %call13.i167.3 to i64
  %56 = ptrtoint ptr %arrayidx6.i162.3 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv14.i168.3, ptr %arrayidx6.i162.3, align 8
  br label %for.inc.i172.3

for.inc.i172.3:                                   ; preds = %if.end10.i169.3, %for.inc.i172.2.for.inc.i172.3_crit_edge
  %57 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 4, i32 1), align 4
  %call5.i160.4 = call i64 %57(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.4 = add nuw nsw i32 %data_index.0194, 4
  %arrayidx6.i162.4 = getelementptr i64, ptr %data, i32 %add.i161.4
  %58 = ptrtoint ptr %arrayidx6.i162.4 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call5.i160.4, ptr %arrayidx6.i162.4, align 8
  %59 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 4, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool8.not.i164.4 = icmp eq i8 %59, 0
  br i1 %tobool8.not.i164.4, label %for.inc.i172.3.for.inc.i172.4_crit_edge, label %if.end10.i169.4

for.inc.i172.3.for.inc.i172.4_crit_edge:          ; preds = %for.inc.i172.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.4

if.end10.i169.4:                                  ; preds = %for.inc.i172.3
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.4 = trunc i64 %call5.i160.4 to i32
  %call13.i167.4 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.4) #16
  %conv14.i168.4 = zext i32 %call13.i167.4 to i64
  %60 = ptrtoint ptr %arrayidx6.i162.4 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv14.i168.4, ptr %arrayidx6.i162.4, align 8
  br label %for.inc.i172.4

for.inc.i172.4:                                   ; preds = %if.end10.i169.4, %for.inc.i172.3.for.inc.i172.4_crit_edge
  %61 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 5, i32 1), align 4
  %call5.i160.5 = call i64 %61(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.5 = add nuw nsw i32 %data_index.0194, 5
  %arrayidx6.i162.5 = getelementptr i64, ptr %data, i32 %add.i161.5
  %62 = ptrtoint ptr %arrayidx6.i162.5 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %call5.i160.5, ptr %arrayidx6.i162.5, align 8
  %63 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 5, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool8.not.i164.5 = icmp eq i8 %63, 0
  br i1 %tobool8.not.i164.5, label %for.inc.i172.4.for.inc.i172.5_crit_edge, label %if.end10.i169.5

for.inc.i172.4.for.inc.i172.5_crit_edge:          ; preds = %for.inc.i172.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.5

if.end10.i169.5:                                  ; preds = %for.inc.i172.4
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.5 = trunc i64 %call5.i160.5 to i32
  %call13.i167.5 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.5) #16
  %conv14.i168.5 = zext i32 %call13.i167.5 to i64
  %64 = ptrtoint ptr %arrayidx6.i162.5 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv14.i168.5, ptr %arrayidx6.i162.5, align 8
  br label %for.inc.i172.5

for.inc.i172.5:                                   ; preds = %if.end10.i169.5, %for.inc.i172.4.for.inc.i172.5_crit_edge
  %65 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 6, i32 1), align 4
  %call5.i160.6 = call i64 %65(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.6 = add nuw nsw i32 %data_index.0194, 6
  %arrayidx6.i162.6 = getelementptr i64, ptr %data, i32 %add.i161.6
  %66 = ptrtoint ptr %arrayidx6.i162.6 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %call5.i160.6, ptr %arrayidx6.i162.6, align 8
  %67 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 6, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool8.not.i164.6 = icmp eq i8 %67, 0
  br i1 %tobool8.not.i164.6, label %for.inc.i172.5.for.inc.i172.6_crit_edge, label %if.end10.i169.6

for.inc.i172.5.for.inc.i172.6_crit_edge:          ; preds = %for.inc.i172.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.6

if.end10.i169.6:                                  ; preds = %for.inc.i172.5
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.6 = trunc i64 %call5.i160.6 to i32
  %call13.i167.6 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.6) #16
  %conv14.i168.6 = zext i32 %call13.i167.6 to i64
  %68 = ptrtoint ptr %arrayidx6.i162.6 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv14.i168.6, ptr %arrayidx6.i162.6, align 8
  br label %for.inc.i172.6

for.inc.i172.6:                                   ; preds = %if.end10.i169.6, %for.inc.i172.5.for.inc.i172.6_crit_edge
  %69 = load ptr, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 7, i32 1), align 4
  %call5.i160.7 = call i64 %69(ptr noundef nonnull %ppcnt_pl.i155) #16
  %add.i161.7 = add nuw nsw i32 %data_index.0194, 7
  %arrayidx6.i162.7 = getelementptr i64, ptr %data, i32 %add.i161.7
  %70 = ptrtoint ptr %arrayidx6.i162.7 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call5.i160.7, ptr %arrayidx6.i162.7, align 8
  %71 = load i8, ptr getelementptr inbounds ([8 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_prio_stats, i32 0, i32 7, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool8.not.i164.7 = icmp eq i8 %71, 0
  br i1 %tobool8.not.i164.7, label %for.inc.i172.6.for.inc.i172.7_crit_edge, label %if.end10.i169.7

for.inc.i172.6.for.inc.i172.7_crit_edge:          ; preds = %for.inc.i172.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i172.7

if.end10.i169.7:                                  ; preds = %for.inc.i172.6
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i166.7 = trunc i64 %call5.i160.7 to i32
  %call13.i167.7 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %39, i32 noundef %conv.i166.7) #16
  %conv14.i168.7 = zext i32 %call13.i167.7 to i64
  %72 = ptrtoint ptr %arrayidx6.i162.7 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv14.i168.7, ptr %arrayidx6.i162.7, align 8
  br label %for.inc.i172.7

for.inc.i172.7:                                   ; preds = %if.end10.i169.7, %for.inc.i172.6.for.inc.i172.7_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i155) #16
  %add5 = add nuw nsw i32 %data_index.0194, 8
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.i172.7.for.body8_crit_edge, label %for.inc.i172.7.for.body_crit_edge

for.inc.i172.7.for.body_crit_edge:                ; preds = %for.inc.i172.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.i172.7.for.body8_crit_edge:               ; preds = %for.inc.i172.7
  br label %for.body8

for.body8:                                        ; preds = %for.inc.i191.1.for.body8_crit_edge, %for.inc.i172.7.for.body8_crit_edge
  %data_index.1196 = phi i32 [ %add9, %for.inc.i191.1.for.body8_crit_edge ], [ 116, %for.inc.i172.7.for.body8_crit_edge ]
  %i.1195 = phi i32 [ %inc11, %for.inc.i191.1.for.body8_crit_edge ], [ 0, %for.inc.i172.7.for.body8_crit_edge ]
  %73 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl.i174) #16
  %75 = call ptr @memset(ptr %ppcnt_pl.i174, i32 255, i32 256)
  %call3.i176 = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 17, i32 noundef %i.1195, ptr noundef nonnull %ppcnt_pl.i174) #16
  %76 = load ptr, ptr getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 0, i32 1), align 4
  %call5.i179 = call i64 %76(ptr noundef nonnull %ppcnt_pl.i174) #16
  %arrayidx6.i181 = getelementptr i64, ptr %data, i32 %data_index.1196
  %77 = ptrtoint ptr %arrayidx6.i181 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %call5.i179, ptr %arrayidx6.i181, align 8
  %78 = load i8, ptr getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 0, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool8.not.i183 = icmp eq i8 %78, 0
  br i1 %tobool8.not.i183, label %for.body8.for.inc.i191_crit_edge, label %if.end10.i188

for.body8.for.inc.i191_crit_edge:                 ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i191

if.end10.i188:                                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i185 = trunc i64 %call5.i179 to i32
  %call13.i186 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %74, i32 noundef %conv.i185) #16
  %conv14.i187 = zext i32 %call13.i186 to i64
  %79 = ptrtoint ptr %arrayidx6.i181 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv14.i187, ptr %arrayidx6.i181, align 8
  br label %for.inc.i191

for.inc.i191:                                     ; preds = %if.end10.i188, %for.body8.for.inc.i191_crit_edge
  %80 = load ptr, ptr getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1, i32 1), align 4
  %call5.i179.1 = call i64 %80(ptr noundef nonnull %ppcnt_pl.i174) #16
  %add.i180.1 = or i32 %data_index.1196, 1
  %arrayidx6.i181.1 = getelementptr i64, ptr %data, i32 %add.i180.1
  %81 = ptrtoint ptr %arrayidx6.i181.1 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %call5.i179.1, ptr %arrayidx6.i181.1, align 8
  %82 = load i8, ptr getelementptr inbounds ([2 x %struct.mlxsw_sp_port_hw_stats], ptr @mlxsw_sp_port_hw_tc_stats, i32 0, i32 1, i32 2), align 4, !range !356
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool8.not.i183.1 = icmp eq i8 %82, 0
  br i1 %tobool8.not.i183.1, label %for.inc.i191.for.inc.i191.1_crit_edge, label %if.end10.i188.1

for.inc.i191.for.inc.i191.1_crit_edge:            ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i191.1

if.end10.i188.1:                                  ; preds = %for.inc.i191
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i185.1 = trunc i64 %call5.i179.1 to i32
  %call13.i186.1 = call i32 @mlxsw_sp_cells_bytes(ptr noundef %74, i32 noundef %conv.i185.1) #16
  %conv14.i187.1 = zext i32 %call13.i186.1 to i64
  %83 = ptrtoint ptr %arrayidx6.i181.1 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv14.i187.1, ptr %arrayidx6.i181.1, align 8
  br label %for.inc.i191.1

for.inc.i191.1:                                   ; preds = %if.end10.i188.1, %for.inc.i191.for.inc.i191.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl.i174) #16
  %add9 = add nuw nsw i32 %data_index.1196, 2
  %inc11 = add nuw nsw i32 %i.1195, 1
  %exitcond197.not = icmp eq i32 %inc11, 16
  br i1 %exitcond197.not, label %for.end12, label %for.inc.i191.1.for.body8_crit_edge

for.inc.i191.1.for.body8_crit_edge:               ; preds = %for.inc.i191.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body8

for.end12:                                        ; preds = %for.inc.i191.1
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %84 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mlxsw_sp1.i, align 8
  %ptp_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %85, i32 0, i32 37
  %86 = ptrtoint ptr %ptp_ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ptp_ops, align 4
  %get_stats = getelementptr inbounds %struct.mlxsw_sp_ptp_ops, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_stats, align 4
  call void %89(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 148) #16
  %90 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mlxsw_sp1.i, align 8
  %ptp_ops14 = getelementptr inbounds %struct.mlxsw_sp, ptr %91, i32 0, i32 37
  %92 = ptrtoint ptr %ptp_ops14 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ptp_ops14, align 4
  %get_stats_count = getelementptr inbounds %struct.mlxsw_sp_ptp_ops, ptr %93, i32 0, i32 10
  %94 = ptrtoint ptr %get_stats_count to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get_stats_count, align 4
  %call15 = call i32 %95() #16
  %add16 = add i32 %call15, 148
  %call1.i = call i64 @mlxsw_sp_port_get_transceiver_overheat_stats(ptr noundef %add.ptr.i) #16
  %arrayidx2.i = getelementptr i64, ptr %data, i32 %add16
  %96 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call1.i, ptr %arrayidx2.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mlxsw_sp = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 8
  %ptp_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %ptp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_ops, align 4
  %get_stats_count = getelementptr inbounds %struct.mlxsw_sp_ptp_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %get_stats_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_stats_count, align 4
  %call1 = tail call i32 %5() #16
  %add = add i32 %call1, 149
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_reset(ptr noundef %dev, ptr noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %mapping = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mapping, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call3 = tail call i32 @mlxsw_env_reset_module(ptr noundef %dev, ptr noundef %5, i8 noundef zeroext %3, ptr noundef %flags) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_get_ts_info(ptr nocapture noundef readonly %netdev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %ptp_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %ptp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_ops, align 4
  %get_ts_info = getelementptr inbounds %struct.mlxsw_sp_ptp_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_ts_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_ts_info, align 4
  %call2 = tail call i32 %5(ptr noundef %1, ptr noundef %info) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_get_module_info(ptr nocapture noundef readonly %netdev, ptr noundef %modinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %mapping = getelementptr i8, ptr %netdev, i32 2344
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapping, align 8
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @mlxsw_env_get_module_info(ptr noundef %3, i32 noundef %conv, ptr noundef %modinfo) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_get_module_eeprom(ptr noundef %netdev, ptr noundef %ee, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %mapping = getelementptr i8, ptr %netdev, i32 2344
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapping, align 8
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @mlxsw_env_get_module_eeprom(ptr noundef %netdev, ptr noundef %3, i32 noundef %conv, ptr noundef %ee, ptr noundef %data) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %ptys_pl.i = alloca [64 x i8], align 1
  %eth_proto_cap = alloca i32, align 4
  %eth_proto_admin = alloca i32, align 4
  %eth_proto_oper = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  %0 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %eth_proto_cap, align 4, !annotation !357
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eth_proto_admin) #16
  %1 = ptrtoint ptr %eth_proto_admin to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %eth_proto_admin, align 4, !annotation !357
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eth_proto_oper) #16
  %2 = ptrtoint ptr %eth_proto_oper to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %eth_proto_oper, align 4, !annotation !357
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  %5 = call ptr @memset(ptr %ptys_pl.i, i32 255, i32 64)
  %port_type_speed_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %4, i32 0, i32 36
  %6 = ptrtoint ptr %port_type_speed_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_type_speed_ops.i, align 4
  %reg_ptys_eth_pack.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %reg_ptys_eth_pack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_ptys_eth_pack.i, align 4
  %local_port.i = getelementptr i8, ptr %dev, i32 2316
  %10 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %local_port.i, align 4
  call void %9(ptr noundef %4, ptr noundef nonnull %ptys_pl.i, i16 noundef zeroext %11, i32 noundef 0, i1 noundef zeroext false) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_ptys, ptr noundef nonnull %ptys_pl.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mlxsw_sp_port_ptys_query.exit

if.end.i:                                         ; preds = %entry
  %reg_ptys_eth_unpack.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %reg_ptys_eth_unpack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_ptys_eth_unpack.i, align 4
  call void %15(ptr noundef %4, ptr noundef nonnull %ptys_pl.i, ptr noundef nonnull %eth_proto_cap, ptr noundef nonnull %eth_proto_admin, ptr noundef nonnull %eth_proto_oper) #16
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %ptys_pl.i, i32 11
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  %18 = ptrtoint ptr %port_type_speed_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_type_speed_ops.i, align 4
  %link = getelementptr i8, ptr %dev, i32 2324
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %link, align 4
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eth_proto_cap, align 4
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %24 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_modes.i, align 4
  %or.i19.i = or i32 %25, 24640
  store i32 %or.i19.i, ptr %link_modes.i, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 4
  call void %27(ptr noundef %4, i32 noundef %23, ptr noundef %cmd) #16
  %from_ptys_link.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %from_ptys_link.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %from_ptys_link.i, align 4
  call void %29(ptr noundef %4, i32 noundef %23, ptr noundef %link_modes.i) #16
  br i1 %tobool3.not, label %if.end.i.mlxsw_sp_port_get_link_advertise.exit_crit_edge, label %if.end.i34

if.end.i.mlxsw_sp_port_get_link_advertise.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_port_get_link_advertise.exit

mlxsw_sp_port_ptys_query.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  br label %cleanup

if.end.i34:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %eth_proto_admin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eth_proto_admin, align 4
  %32 = ptrtoint ptr %port_type_speed_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port_type_speed_ops.i, align 4
  %advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %advertising.i, align 4
  %or.i.i = or i32 %35, 64
  store i32 %or.i.i, ptr %advertising.i, align 4
  %from_ptys_link.i33 = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %from_ptys_link.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %from_ptys_link.i33, align 4
  call void %37(ptr noundef %4, i32 noundef %31, ptr noundef %advertising.i) #16
  br label %mlxsw_sp_port_get_link_advertise.exit

mlxsw_sp_port_get_link_advertise.exit:            ; preds = %if.end.i34, %if.end.i.mlxsw_sp_port_get_link_advertise.exit_crit_edge
  %.lobit = lshr exact i8 %21, 5
  %autoneg6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %38 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.lobit, ptr %autoneg6, align 1
  %39 = trunc i32 %17 to i4
  %switch.tableidx = xor i4 %39, -8
  %switch.maskindex = zext i4 %switch.tableidx to i16
  %switch.shifted = lshr i16 -255, %switch.maskindex
  %40 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %switch.lobit.not = icmp eq i16 %40, 0
  br i1 %switch.lobit.not, label %land.end.i, label %switch.lookup

land.end.i:                                       ; preds = %mlxsw_sp_port_get_link_advertise.exit
  %.b43.i = load i1, ptr @mlxsw_sp_port_connector_port.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.mlxsw_sp_port_connector_port.exit_crit_edge, label %if.then.i, !prof !358

land.end.i.mlxsw_sp_port_connector_port.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_port_connector_port.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_port_connector_port.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.160, i32 noundef 923, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_port_connector_port.exit

switch.lookup:                                    ; preds = %mlxsw_sp_port_get_link_advertise.exit
  call void @__sanitizer_cov_trace_pc() #18
  %41 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x i8], ptr @switch.table.mlxsw_sp_port_get_link_ksettings, i32 0, i32 %41
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %42)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %mlxsw_sp_port_connector_port.exit

mlxsw_sp_port_connector_port.exit:                ; preds = %switch.lookup, %if.then.i, %land.end.i.mlxsw_sp_port_connector_port.exit_crit_edge
  %retval.0.i = phi i8 [ -1, %if.then.i ], [ -1, %land.end.i.mlxsw_sp_port_connector_port.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %43 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %retval.0.i, ptr %port, align 1
  %from_ptys_link_mode = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %19, i32 0, i32 3
  %44 = ptrtoint ptr %from_ptys_link_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %from_ptys_link_mode, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i, align 4
  %48 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i35 = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %eth_proto_oper to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eth_proto_oper, align 4
  call void %45(ptr noundef %4, i1 noundef zeroext %tobool.not.i35, i32 noundef %50, ptr noundef %cmd) #16
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_port_connector_port.exit, %mlxsw_sp_port_ptys_query.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eth_proto_oper) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eth_proto_admin) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_port_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %ptys_pl = alloca [64 x i8], align 1
  %eth_proto_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ptys_pl) #16
  %2 = call ptr @memset(ptr %ptys_pl, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  %3 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %eth_proto_cap, align 4, !annotation !357
  %port_type_speed_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %port_type_speed_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_type_speed_ops, align 4
  %reg_ptys_eth_pack = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %reg_ptys_eth_pack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ptys_eth_pack, align 4
  %local_port = getelementptr i8, ptr %dev, i32 2316
  %8 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %local_port, align 4
  call void %7(ptr noundef %1, ptr noundef nonnull %ptys_pl, i16 noundef zeroext %9, i32 noundef 0, i1 noundef zeroext false) #16
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %call3 = call i32 @mlxsw_reg_query(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_ptys, ptr noundef nonnull %ptys_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_ptys_eth_unpack = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %reg_ptys_eth_unpack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_ptys_eth_unpack, align 4
  call void %13(ptr noundef %1, ptr noundef nonnull %ptys_pl, ptr noundef nonnull %eth_proto_cap, ptr noundef null, ptr noundef null) #16
  %autoneg5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %autoneg5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autoneg5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %to_ptys_advert_link = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %to_ptys_advert_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %to_ptys_advert_link, align 4
  %call9 = call i32 %17(ptr noundef %1, ptr noundef %cmd) #16
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %to_ptys_speed_lanes = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %to_ptys_speed_lanes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %to_ptys_speed_lanes, align 4
  %width = getelementptr i8, ptr %dev, i32 2345
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width, align 1
  %call10 = call i32 %19(ptr noundef %1, i8 noundef zeroext %21, ptr noundef %cmd) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call9, %cond.true ], [ %call10, %cond.false ]
  %22 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eth_proto_cap, align 4
  %and = and i32 %23, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.164) #19
  br label %cleanup

if.end13:                                         ; preds = %cond.end
  %24 = ptrtoint ptr %reg_ptys_eth_pack to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_ptys_eth_pack, align 4
  %26 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %local_port, align 4
  call void %25(ptr noundef %1, ptr noundef nonnull %ptys_pl, i16 noundef zeroext %27, i32 noundef %and, i1 noundef zeroext %cmp) #16
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 4
  %call20 = call i32 @mlxsw_reg_write(ptr noundef %29, ptr noundef nonnull @mlxsw_reg_ptys, ptr noundef nonnull %ptys_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %link = getelementptr i8, ptr %dev, i32 2324
  %30 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %link, align 4
  %bf.shl = select i1 %cmp, i8 32, i8 0
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %link, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %call29 = call i32 @mlxsw_sp_port_admin_status_set(ptr noundef %add.ptr.i, i1 noundef zeroext false) #16
  %call30 = call i32 @mlxsw_sp_port_admin_status_set(ptr noundef %add.ptr.i, i1 noundef zeroext true) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %if.then12 ], [ %call3, %entry.cleanup_crit_edge ], [ %call20, %if.end13.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_get_module_eeprom_by_page(ptr nocapture noundef readonly %dev, ptr noundef %page, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %mapping = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mapping, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call3 = tail call i32 @mlxsw_env_get_module_eeprom_by_page(ptr noundef %5, i8 noundef zeroext %3, ptr noundef %page, ptr noundef %extack) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_get_eth_phy_stats(ptr noundef %dev, ptr nocapture noundef writeonly %phy_stats) #2 align 64 {
entry:
  %ppcnt_pl = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  %0 = call ptr @memset(ptr %ppcnt_pl, i32 255, i32 256)
  %call = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ppcnt_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_ppcnt_a_symbol_error_during_carrier_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mlxsw_reg_ppcnt_a_symbol_error_during_carrier_get.exit: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr inbounds i64, ptr %ppcnt_pl, i32 14
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i.i, align 8
  %3 = ptrtoint ptr %phy_stats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %phy_stats, align 8
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_ppcnt_a_symbol_error_during_carrier_get.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_get_eth_mac_stats(ptr noundef %dev, ptr nocapture noundef writeonly %mac_stats) #2 align 64 {
entry:
  %ppcnt_pl = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  %0 = call ptr @memset(ptr %ppcnt_pl, i32 255, i32 256)
  %call = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ppcnt_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_ppcnt_a_frames_transmitted_ok_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mlxsw_reg_ppcnt_a_frames_transmitted_ok_get.exit: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr inbounds i64, ptr %ppcnt_pl, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i.i, align 8
  %3 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %mac_stats, align 8
  %arrayidx.i.i54 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i.i54, align 8
  %FramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 3
  %6 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %FramesReceivedOK, align 8
  %arrayidx.i.i80 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i80, align 8
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 4
  %9 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %FrameCheckSequenceErrors, align 8
  %arrayidx.i.i106 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 4
  %10 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.i106, align 8
  %AlignmentErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 5
  %12 = ptrtoint ptr %AlignmentErrors to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %AlignmentErrors, align 8
  %arrayidx.i.i132 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 5
  %13 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i.i132, align 8
  %OctetsTransmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 6
  %15 = ptrtoint ptr %OctetsTransmittedOK to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %OctetsTransmittedOK, align 8
  %arrayidx.i.i158 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 6
  %16 = ptrtoint ptr %arrayidx.i.i158 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.i158, align 8
  %OctetsReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 12
  %18 = ptrtoint ptr %OctetsReceivedOK to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %OctetsReceivedOK, align 8
  %arrayidx.i.i184 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 7
  %19 = ptrtoint ptr %arrayidx.i.i184 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i.i184, align 8
  %MulticastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 14
  %21 = ptrtoint ptr %MulticastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %MulticastFramesXmittedOK, align 8
  %arrayidx.i.i210 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 8
  %22 = ptrtoint ptr %arrayidx.i.i210 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.i210, align 8
  %BroadcastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 15
  %24 = ptrtoint ptr %BroadcastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %BroadcastFramesXmittedOK, align 8
  %arrayidx.i.i236 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 9
  %25 = ptrtoint ptr %arrayidx.i.i236 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i236, align 8
  %MulticastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 17
  %27 = ptrtoint ptr %MulticastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %MulticastFramesReceivedOK, align 8
  %arrayidx.i.i262 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 10
  %28 = ptrtoint ptr %arrayidx.i.i262 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i262, align 8
  %BroadcastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 18
  %30 = ptrtoint ptr %BroadcastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %BroadcastFramesReceivedOK, align 8
  %arrayidx.i.i288 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 11
  %31 = ptrtoint ptr %arrayidx.i.i288 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i288, align 8
  %InRangeLengthErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 19
  %33 = ptrtoint ptr %InRangeLengthErrors to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %InRangeLengthErrors, align 8
  %arrayidx.i.i314 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 12
  %34 = ptrtoint ptr %arrayidx.i.i314 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.i314, align 8
  %OutOfRangeLengthField = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 20
  %36 = ptrtoint ptr %OutOfRangeLengthField to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %OutOfRangeLengthField, align 8
  %arrayidx.i.i340 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 13
  %37 = ptrtoint ptr %arrayidx.i.i340 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i340, align 8
  %FrameTooLongErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 21
  %39 = ptrtoint ptr %FrameTooLongErrors to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %FrameTooLongErrors, align 8
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_ppcnt_a_frames_transmitted_ok_get.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_get_eth_ctrl_stats(ptr noundef %dev, ptr nocapture noundef writeonly %ctrl_stats) #2 align 64 {
entry:
  %ppcnt_pl = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  %0 = call ptr @memset(ptr %ppcnt_pl, i32 255, i32 256)
  %call = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ppcnt_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_ppcnt_a_mac_control_frames_transmitted_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mlxsw_reg_ppcnt_a_mac_control_frames_transmitted_get.exit: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr inbounds i64, ptr %ppcnt_pl, i32 15
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i.i, align 8
  %3 = ptrtoint ptr %ctrl_stats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %ctrl_stats, align 8
  %arrayidx.i.i24 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 16
  %4 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i.i24, align 8
  %MACControlFramesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %ctrl_stats, i32 0, i32 1
  %6 = ptrtoint ptr %MACControlFramesReceived to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %MACControlFramesReceived, align 8
  %arrayidx.i.i50 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 17
  %7 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i50, align 8
  %UnsupportedOpcodesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %ctrl_stats, i32 0, i32 2
  %9 = ptrtoint ptr %UnsupportedOpcodesReceived to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %UnsupportedOpcodesReceived, align 8
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_ppcnt_a_mac_control_frames_transmitted_get.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_get_rmon_stats(ptr noundef %dev, ptr nocapture noundef writeonly %rmon, ptr nocapture noundef writeonly %ranges) #2 align 64 {
entry:
  %ppcnt_pl = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  %0 = call ptr @memset(ptr %ppcnt_pl, i32 255, i32 256)
  %call = call i32 @mlxsw_sp_port_get_stats_raw(ptr noundef %dev, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %ppcnt_pl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_ppcnt_ether_stats_undersize_pkts_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mlxsw_reg_ppcnt_ether_stats_undersize_pkts_get.exit: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr inbounds i64, ptr %ppcnt_pl, i32 7
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i.i, align 8
  %3 = ptrtoint ptr %rmon to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %rmon, align 8
  %arrayidx.i.i72 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 8
  %4 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i.i72, align 8
  %oversize_pkts = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 1
  %6 = ptrtoint ptr %oversize_pkts to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %oversize_pkts, align 8
  %arrayidx.i.i98 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 9
  %7 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i98, align 8
  %fragments = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 2
  %9 = ptrtoint ptr %fragments to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %fragments, align 8
  %arrayidx.i.i124 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 12
  %10 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.i124, align 8
  %hist = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4
  %12 = ptrtoint ptr %hist to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %hist, align 8
  %arrayidx.i.i150 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 13
  %13 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i.i150, align 8
  %arrayidx12 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx12, align 8
  %arrayidx.i.i176 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 14
  %16 = ptrtoint ptr %arrayidx.i.i176 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.i176, align 8
  %arrayidx16 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx16, align 8
  %arrayidx.i.i202 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 15
  %19 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i.i202, align 8
  %arrayidx20 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx20, align 8
  %arrayidx.i.i228 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 16
  %22 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.i228, align 8
  %arrayidx24 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx24, align 8
  %arrayidx.i.i254 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 17
  %25 = ptrtoint ptr %arrayidx.i.i254 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i254, align 8
  %arrayidx28 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx28, align 8
  %arrayidx.i.i280 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 18
  %28 = ptrtoint ptr %arrayidx.i.i280 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i280, align 8
  %arrayidx32 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx32, align 8
  %arrayidx.i.i306 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 19
  %31 = ptrtoint ptr %arrayidx.i.i306 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i306, align 8
  %arrayidx36 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 7
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx36, align 8
  %arrayidx.i.i332 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 20
  %34 = ptrtoint ptr %arrayidx.i.i332 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.i332, align 8
  %arrayidx40 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx40, align 8
  %arrayidx.i.i358 = getelementptr inbounds i64, ptr %ppcnt_pl, i32 21
  %37 = ptrtoint ptr %arrayidx.i.i358 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i358, align 8
  %arrayidx44 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 9
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx44, align 8
  %40 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mlxsw_rmon_ranges, ptr %ranges, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_ppcnt_ether_stats_undersize_pkts_get.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_pl) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_get_module_power_mode(ptr nocapture noundef readonly %dev, ptr noundef %params, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %mapping = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mapping, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call3 = tail call i32 @mlxsw_env_get_module_power_mode(ptr noundef %5, i8 noundef zeroext %3, ptr noundef %params, ptr noundef %extack) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_set_module_power_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %params, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %mapping = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mapping, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  %call3 = tail call i32 @mlxsw_env_set_module_power_mode(ptr noundef %5, i8 noundef zeroext %3, i32 noundef %7, ptr noundef %extack) #16
  ret i32 %call3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_from_ptys_supported_port(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %ptys_eth_proto, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ptys_eth_proto, 2142273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %1, 1024
  store i32 %or.i, ptr %link_modes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %ptys_eth_proto, 4194458
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %link_modes4 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %link_modes4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_modes4, align 4
  %or.i10 = or i32 %3, 65536
  store i32 %or.i10, ptr %link_modes4, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_from_ptys_link(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %ptys_eth_proto, ptr nocapture noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mask = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.05, i32 1
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and = and i32 %1, %ptys_eth_proto
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %mode, i32 %div2.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %5
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_from_ptys_speed(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %ptys_eth_proto) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ptys_eth_proto, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %for.inc.15.if.then_crit_edge, %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.06.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ], [ 16, %for.inc.15.if.then_crit_edge ]
  %speed = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.06.lcssa, i32 2
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %ptys_eth_proto, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %ptys_eth_proto, 28688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %ptys_eth_proto, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %ptys_eth_proto, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %ptys_eth_proto, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %ptys_eth_proto, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %and.7 = and i32 %ptys_eth_proto, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %and.8 = and i32 %ptys_eth_proto, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.if.then_crit_edge

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %and.9 = and i32 %ptys_eth_proto, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.if.then_crit_edge

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %and.10 = and i32 %ptys_eth_proto, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.if.then_crit_edge

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ptys_eth_proto)
  %tobool.not.11 = icmp sgt i32 %ptys_eth_proto, -1
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.if.then_crit_edge

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %and.12 = and i32 %ptys_eth_proto, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12)
  %tobool.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.if.then_crit_edge

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %and.13 = and i32 %ptys_eth_proto, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13)
  %tobool.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.if.then_crit_edge

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %and.14 = and i32 %ptys_eth_proto, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14)
  %tobool.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.if.then_crit_edge

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %and.15 = and i32 %ptys_eth_proto, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.15)
  %tobool.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool.not.15, label %for.inc.15, label %for.inc.14.if.then_crit_edge

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.15:                                       ; preds = %for.inc.14
  %and.16 = and i32 %ptys_eth_proto, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.16)
  %tobool.not.16 = icmp eq i32 %and.16, 0
  br i1 %tobool.not.16, label %for.inc.15.cleanup_crit_edge, label %for.inc.15.if.then_crit_edge

for.inc.15.if.then_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.15.cleanup_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -1, %for.inc.15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_from_ptys_link_mode(ptr nocapture noundef readnone %mlxsw_sp, i1 noundef zeroext %carrier_ok, i32 noundef %ptys_eth_proto, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %duplex, align 4
  %lanes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lanes, align 4
  br i1 %carrier_ok, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mask = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.013, i32 1
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %and = and i32 %4, %ptys_eth_proto
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %link.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  tail call void @ethtool_params_from_link_mode(ptr noundef %cmd, i32 noundef %link.sroa.0.0.copyload) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ptys_max_speed(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef writeonly %p_max_speed) #2 align 64 {
entry:
  %ptys_pl.i = alloca [64 x i8], align 1
  %eth_proto_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  %0 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %eth_proto_cap, align 4, !annotation !357
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %1 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  %3 = call ptr @memset(ptr %ptys_pl.i, i32 255, i32 64)
  %port_type_speed_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 36
  %4 = ptrtoint ptr %port_type_speed_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_type_speed_ops.i, align 4
  %reg_ptys_eth_pack.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %reg_ptys_eth_pack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ptys_eth_pack.i, align 4
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %8 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %local_port.i, align 4
  call void %7(ptr noundef %2, ptr noundef nonnull %ptys_pl.i, i16 noundef zeroext %9, i32 noundef 0, i1 noundef zeroext false) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_ptys, ptr noundef nonnull %ptys_pl.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_sp_port_ptys_query.exit, label %mlxsw_sp_port_ptys_query.exit.thread

mlxsw_sp_port_ptys_query.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  br label %cleanup

mlxsw_sp_port_ptys_query.exit:                    ; preds = %entry
  %reg_ptys_eth_unpack.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %reg_ptys_eth_unpack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_ptys_eth_unpack.i, align 4
  call void %13(ptr noundef %2, ptr noundef nonnull %ptys_pl.i, ptr noundef nonnull %eth_proto_cap, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  %14 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eth_proto_cap, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mlxsw_sp_port_ptys_query.exit
  %i.018 = phi i32 [ 0, %mlxsw_sp_port_ptys_query.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %max_speed.017 = phi i32 [ 0, %mlxsw_sp_port_ptys_query.exit ], [ %max_speed.1, %for.inc.for.body_crit_edge ]
  %mask = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.018, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %and = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %speed = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.018, i32 2
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed, align 4
  %20 = call i32 @llvm.umax.i32(i32 %19, i32 %max_speed.017)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %max_speed.1 = phi i32 [ %max_speed.017, %for.body.for.inc_crit_edge ], [ %20, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %p_max_speed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %max_speed.1, ptr %p_max_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mlxsw_sp_port_ptys_query.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %mlxsw_sp_port_ptys_query.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_to_ptys_advert_link(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ptys_proto.06 = phi i32 [ 0, %entry ], [ %ptys_proto.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %div3.i = lshr i32 %1, 5
  %arrayidx.i = getelementptr i32, ptr %advertising, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %mask = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.07, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %or = or i32 %7, %ptys_proto.06
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %ptys_proto.1 = phi i32 [ %or, %if.then ], [ %ptys_proto.06, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 %ptys_proto.1
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_to_ptys_speed_lanes(ptr nocapture noundef readnone %mlxsw_sp, i8 noundef zeroext %width, ptr nocapture noundef readonly %cmd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 4
  %conv = zext i8 %width to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.018 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %ptys_proto.017 = phi i32 [ 0, %for.cond.preheader ], [ %ptys_proto.1, %for.inc.for.body_crit_edge ]
  %speed4 = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.018, i32 2
  %4 = ptrtoint ptr %speed4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5 = icmp eq i32 %3, %5
  br i1 %cmp5, label %if.then7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %mask = getelementptr [17 x %struct.mlxsw_sp1_port_link_mode], ptr @mlxsw_sp1_port_link_mode, i32 0, i32 %i.018, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %or = or i32 %7, %ptys_proto.017
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %ptys_proto.1 = phi i32 [ %or, %if.then7 ], [ %ptys_proto.017, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ptys_proto.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_reg_ptys_eth_pack(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef %payload, i16 noundef zeroext %local_port, i32 noundef %proto_admin, i1 noundef zeroext %autoneg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %payload, i32 0, i32 64)
  %conv1.i = zext i16 %local_port to i32
  tail call fastcc void @mlxsw_reg_ptys_local_port_set(ptr noundef %payload, i32 noundef %conv1.i) #16
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i.i = and i32 %2, -8
  %or.i.i.i = or i32 %and7.i.i.i, 4
  store i32 %or.i.i.i, ptr %payload, align 4
  %arrayidx.i.i29.i = getelementptr i32, ptr %payload, i32 6
  %3 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %proto_admin, ptr %arrayidx.i.i29.i, align 4
  %spec.select.i.i51.i = select i1 %autoneg, i32 0, i32 1073741824
  %and7.i.i59.i = and i32 %or.i.i.i, -1073741828
  %or.i.i60.i = or i32 %spec.select.i.i51.i, %and7.i.i59.i
  store i32 %or.i.i60.i, ptr %payload, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_reg_ptys_eth_unpack(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %payload, ptr noundef writeonly %p_eth_proto_cap, ptr noundef writeonly %p_eth_proto_admin, ptr noundef writeonly %p_eth_proto_oper) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %p_eth_proto_cap, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %mlxsw_reg_ptys_eth_proto_cap_get.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

mlxsw_reg_ptys_eth_proto_cap_get.exit.i:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr i32, ptr %payload, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i.i, align 4
  %2 = ptrtoint ptr %p_eth_proto_cap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %p_eth_proto_cap, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %mlxsw_reg_ptys_eth_proto_cap_get.exit.i, %entry.if.end.i_crit_edge
  %tobool1.not.i = icmp eq ptr %p_eth_proto_admin, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %mlxsw_reg_ptys_eth_proto_admin_get.exit.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

mlxsw_reg_ptys_eth_proto_admin_get.exit.i:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i29.i = getelementptr i32, ptr %payload, i32 6
  %3 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i29.i, align 4
  %5 = ptrtoint ptr %p_eth_proto_admin to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_eth_proto_admin, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %mlxsw_reg_ptys_eth_proto_admin_get.exit.i, %if.end.i.if.end4.i_crit_edge
  %tobool5.not.i = icmp eq ptr %p_eth_proto_oper, null
  br i1 %tobool5.not.i, label %if.end4.i.mlxsw_reg_ptys_eth_unpack.exit_crit_edge, label %mlxsw_reg_ptys_eth_proto_oper_get.exit.i

if.end4.i.mlxsw_reg_ptys_eth_unpack.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_reg_ptys_eth_unpack.exit

mlxsw_reg_ptys_eth_proto_oper_get.exit.i:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i54.i = getelementptr i32, ptr %payload, i32 9
  %6 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i54.i, align 4
  %8 = ptrtoint ptr %p_eth_proto_oper to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_eth_proto_oper, align 4
  br label %mlxsw_reg_ptys_eth_unpack.exit

mlxsw_reg_ptys_eth_unpack.exit:                   ; preds = %mlxsw_reg_ptys_eth_proto_oper_get.exit.i, %if.end4.i.mlxsw_reg_ptys_eth_unpack.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ptys_proto_cap_masked_get(i32 noundef %eth_proto_cap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %eth_proto_cap, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = select i1 %tobool.not, i32 0, i32 3
  %and.1 = and i32 %eth_proto_cap, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %or.1 = select i1 %tobool.not.1, i32 0, i32 12
  %spec.select.1 = or i32 %or.1, %or
  %and.2 = and i32 %eth_proto_cap, 28688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %or.2 = select i1 %tobool.not.2, i32 0, i32 28688
  %spec.select.2 = or i32 %or.2, %spec.select.1
  %and.3 = and i32 %eth_proto_cap, 64
  %spec.select.3 = or i32 %and.3, %spec.select.2
  %and.4 = and i32 %eth_proto_cap, 128
  %spec.select.4 = or i32 %and.4, %spec.select.3
  %and.5 = and i32 %eth_proto_cap, 32768
  %spec.select.5 = or i32 %and.5, %spec.select.4
  %and.6 = and i32 %eth_proto_cap, 65536
  %spec.select.6 = or i32 %and.6, %spec.select.5
  %and.7 = and i32 %eth_proto_cap, 134217728
  %spec.select.7 = or i32 %and.7, %spec.select.6
  %and.8 = and i32 %eth_proto_cap, 268435456
  %spec.select.8 = or i32 %and.8, %spec.select.7
  %and.9 = and i32 %eth_proto_cap, 536870912
  %spec.select.9 = or i32 %and.9, %spec.select.8
  %and.10 = and i32 %eth_proto_cap, 1073741824
  %spec.select.10 = or i32 %and.10, %spec.select.9
  %0 = and i32 %eth_proto_cap, -2147483648
  %spec.select.11 = or i32 %0, %spec.select.10
  %and.12 = and i32 %eth_proto_cap, 262144
  %spec.select.12 = or i32 %and.12, %spec.select.11
  %and.13 = and i32 %eth_proto_cap, 1048576
  %spec.select.13 = or i32 %and.13, %spec.select.12
  %and.14 = and i32 %eth_proto_cap, 2097152
  %spec.select.14 = or i32 %and.14, %spec.select.13
  %and.15 = and i32 %eth_proto_cap, 4194304
  %spec.select.15 = or i32 %and.15, %spec.select.14
  %and.16 = and i32 %eth_proto_cap, 8388608
  %spec.select.16 = or i32 %and.16, %spec.select.15
  ret i32 %spec.select.16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp2_from_ptys_supported_port(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %ptys_eth_proto, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_modes, align 4
  %or.i5 = or i32 %1, 66560
  store i32 %or.i5, ptr %link_modes, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_from_ptys_link(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %ptys_eth_proto, ptr nocapture noundef %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mask = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.05, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and = and i32 %1, %ptys_eth_proto
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.05
  %m_ethtool_len.i = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.05, i32 1
  %2 = ptrtoint ptr %m_ethtool_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_ethtool_len.i, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then ]
  %arrayidx.i = getelementptr i32, ptr %5, i32 %i.05.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %rem.i.i = and i32 %7, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %7, 5
  %add.ptr.i.i = getelementptr i32, ptr %mode, i32 %div2.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %9
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %smax
  br i1 %exitcond.not, label %for.body.i.for.inc_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %for.body.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond7.not = icmp eq i32 %inc, 12
  br i1 %exitcond7.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_from_ptys_speed(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %ptys_eth_proto) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ptys_eth_proto, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.06.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ]
  %speed = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.06.lcssa, i32 3
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %ptys_eth_proto, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %ptys_eth_proto, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %ptys_eth_proto, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %ptys_eth_proto, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %ptys_eth_proto, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %ptys_eth_proto, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %and.7 = and i32 %ptys_eth_proto, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %and.8 = and i32 %ptys_eth_proto, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.if.then_crit_edge

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %and.9 = and i32 %ptys_eth_proto, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.if.then_crit_edge

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %and.10 = and i32 %ptys_eth_proto, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.if.then_crit_edge

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %and.11 = and i32 %ptys_eth_proto, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool.not.11, label %for.inc.10.cleanup_crit_edge, label %for.inc.10.if.then_crit_edge

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.10.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -1, %for.inc.10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_from_ptys_link_mode(ptr nocapture noundef readnone %mlxsw_sp, i1 noundef zeroext %carrier_ok, i32 noundef %ptys_eth_proto, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %duplex, align 4
  %lanes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lanes, align 4
  br i1 %carrier_ok, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mask = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.015, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %and = and i32 %4, %ptys_eth_proto
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.015
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %link.sroa.0.0.copyload11 = load ptr, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %link.sroa.0.0.copyload11, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  tail call void @ethtool_params_from_link_mode(ptr noundef %cmd, i32 noundef %7) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_ptys_max_speed(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef writeonly %p_max_speed) #2 align 64 {
entry:
  %ptys_pl.i = alloca [64 x i8], align 1
  %eth_proto_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  %0 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %eth_proto_cap, align 4, !annotation !357
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %1 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  %3 = call ptr @memset(ptr %ptys_pl.i, i32 255, i32 64)
  %port_type_speed_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 36
  %4 = ptrtoint ptr %port_type_speed_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_type_speed_ops.i, align 4
  %reg_ptys_eth_pack.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %reg_ptys_eth_pack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ptys_eth_pack.i, align 4
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %8 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %local_port.i, align 4
  call void %7(ptr noundef %2, ptr noundef nonnull %ptys_pl.i, i16 noundef zeroext %9, i32 noundef 0, i1 noundef zeroext false) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_ptys, ptr noundef nonnull %ptys_pl.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_sp_port_ptys_query.exit, label %mlxsw_sp_port_ptys_query.exit.thread

mlxsw_sp_port_ptys_query.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  br label %cleanup

mlxsw_sp_port_ptys_query.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %reg_ptys_eth_unpack.i = getelementptr inbounds %struct.mlxsw_sp_port_type_speed_ops, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %reg_ptys_eth_unpack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_ptys_eth_unpack.i, align 4
  call void %13(ptr noundef %2, ptr noundef nonnull %ptys_pl.i, ptr noundef nonnull %eth_proto_cap, ptr noundef null, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ptys_pl.i) #16
  %14 = ptrtoint ptr %eth_proto_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eth_proto_cap, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 100
  %and.1 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool1.not.1 = icmp eq i32 %and.1, 0
  %max_speed.1.1 = select i1 %tobool1.not.1, i32 %spec.select, i32 1000
  %and.2 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool1.not.2 = icmp eq i32 %and.2, 0
  %max_speed.1.2 = select i1 %tobool1.not.2, i32 %max_speed.1.1, i32 5000
  %and.3 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool1.not.3 = icmp eq i32 %and.3, 0
  %max_speed.1.3 = select i1 %tobool1.not.3, i32 %max_speed.1.2, i32 10000
  %and.4 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool1.not.4 = icmp eq i32 %and.4, 0
  %max_speed.1.4 = select i1 %tobool1.not.4, i32 %max_speed.1.3, i32 40000
  %and.5 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool1.not.5 = icmp eq i32 %and.5, 0
  %16 = call i32 @llvm.umax.i32(i32 %max_speed.1.4, i32 25000)
  %max_speed.1.5 = select i1 %tobool1.not.5, i32 %max_speed.1.4, i32 %16
  %17 = and i32 %15, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %max_speed.1.7 = select i1 %18, i32 %max_speed.1.5, i32 50000
  %19 = and i32 %15, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %max_speed.1.9 = select i1 %20, i32 %max_speed.1.7, i32 100000
  %and.10 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool1.not.10 = icmp eq i32 %and.10, 0
  %max_speed.1.10 = select i1 %tobool1.not.10, i32 %max_speed.1.9, i32 200000
  %and.11 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool1.not.11 = icmp eq i32 %and.11, 0
  %max_speed.1.11 = select i1 %tobool1.not.11, i32 %max_speed.1.10, i32 400000
  %21 = ptrtoint ptr %p_max_speed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %max_speed.1.11, ptr %p_max_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_port_ptys_query.exit, %mlxsw_sp_port_ptys_query.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eth_proto_cap) #16
  ret i32 %call.i
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_to_ptys_advert_link(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %cmd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ptys_proto.06 = phi i32 [ 0, %entry ], [ %ptys_proto.1, %for.inc.for.body_crit_edge ]
  %m_ethtool_len.i = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.07, i32 1
  %0 = ptrtoint ptr %m_ethtool_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_ethtool_len.i, align 4
  %arrayidx = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.011.i = phi i32 [ 0, %for.body ], [ %inc1.i, %for.body.i.for.body.i_crit_edge ]
  %cnt.010.i = phi i32 [ 0, %for.body ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %3, i32 %i.011.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %div3.i.i = lshr i32 %5, 5
  %arrayidx.i.i = getelementptr i32, ptr %advertising, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %5, 31
  %8 = lshr i32 %7, %and.i.i
  %9 = and i32 %8, 1
  %spec.select.i = add i32 %9, %cnt.010.i
  %inc1.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %1
  br i1 %exitcond.not.i, label %mlxsw_sp2_test_bit_ethtool.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

mlxsw_sp2_test_bit_ethtool.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %1)
  %cmp3.i = icmp eq i32 %spec.select.i, %1
  br i1 %cmp3.i, label %if.then, label %mlxsw_sp2_test_bit_ethtool.exit.for.inc_crit_edge

mlxsw_sp2_test_bit_ethtool.exit.for.inc_crit_edge: ; preds = %mlxsw_sp2_test_bit_ethtool.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %mlxsw_sp2_test_bit_ethtool.exit
  call void @__sanitizer_cov_trace_pc() #18
  %mask = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.07, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %or = or i32 %11, %ptys_proto.06
  br label %for.inc

for.inc:                                          ; preds = %if.then, %mlxsw_sp2_test_bit_ethtool.exit.for.inc_crit_edge
  %ptys_proto.1 = phi i32 [ %or, %if.then ], [ %ptys_proto.06, %mlxsw_sp2_test_bit_ethtool.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 %ptys_proto.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_to_ptys_speed_lanes(ptr nocapture noundef readnone %mlxsw_sp, i8 noundef zeroext %width, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %width, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.land.end.i_crit_edge

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %entry.land.end.i_crit_edge
  %.b39.i = load i1, ptr @mlxsw_sp_port_mask_width_get.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.mlxsw_sp_port_mask_width_get.exit_crit_edge, label %if.then.i, !prof !358

land.end.i.mlxsw_sp_port_mask_width_get.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_port_mask_width_get.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_port_mask_width_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.160, i32 noundef 1681, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_port_mask_width_get.exit

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 -117, %switch.tableidx
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %2 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.mlxsw_sp2_to_ptys_speed_lanes, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %mlxsw_sp_port_mask_width_get.exit

mlxsw_sp_port_mask_width_get.exit:                ; preds = %switch.lookup, %if.then.i, %land.end.i.mlxsw_sp_port_mask_width_get.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.then.i ], [ 0, %land.end.i.mlxsw_sp_port_mask_width_get.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %lanes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lanes, align 4
  %conv = zext i8 %width to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ugt i32 %5, %conv
  br i1 %cmp, label %mlxsw_sp_port_mask_width_get.exit.cleanup_crit_edge, label %for.cond.preheader

mlxsw_sp_port_mask_width_get.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_port_mask_width_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %mlxsw_sp_port_mask_width_get.exit
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.048 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %ptys_proto.047 = phi i32 [ 0, %for.cond.preheader ], [ %ptys_proto.1, %for.inc.for.body_crit_edge ]
  %speed4 = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.048, i32 3
  %8 = ptrtoint ptr %speed4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %if.then7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then7:                                         ; preds = %for.body
  %arrayidx = getelementptr [12 x %struct.mlxsw_sp2_port_link_mode], ptr @mlxsw_sp2_port_link_mode, i32 0, i32 %i.048
  %link_mode.sroa.4.0.arrayidx8.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %10 = ptrtoint ptr %link_mode.sroa.4.0.arrayidx8.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %link_mode.sroa.4.0.copyload35 = load i32, ptr %link_mode.sroa.4.0.arrayidx8.sroa_idx, align 4
  br i1 %tobool.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %link_mode.sroa.7.0.arrayidx8.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 20
  %11 = ptrtoint ptr %link_mode.sroa.7.0.arrayidx8.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %link_mode.sroa.7.0.copyload40 = load i8, ptr %link_mode.sroa.7.0.arrayidx8.sroa_idx, align 4
  %and45 = and i8 %link_mode.sroa.7.0.copyload40, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and45)
  %tobool13.not = icmp eq i8 %and45, 0
  %or = select i1 %tobool13.not, i32 0, i32 %link_mode.sroa.4.0.copyload35
  %spec.select = or i32 %or, %ptys_proto.047
  br label %for.inc

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %link_mode.sroa.638.0.arrayidx8.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %12 = ptrtoint ptr %link_mode.sroa.638.0.arrayidx8.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %link_mode.sroa.638.0.copyload39 = load i32, ptr %link_mode.sroa.638.0.arrayidx8.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %link_mode.sroa.638.0.copyload39)
  %cmp18 = icmp eq i32 %5, %link_mode.sroa.638.0.copyload39
  %or22 = select i1 %cmp18, i32 %link_mode.sroa.4.0.copyload35, i32 0
  %spec.select46 = or i32 %or22, %ptys_proto.047
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10, %for.body.for.inc_crit_edge
  %ptys_proto.1 = phi i32 [ %ptys_proto.047, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then10 ], [ %spec.select46, %if.else ]
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mlxsw_sp_port_mask_width_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlxsw_sp_port_mask_width_get.exit.cleanup_crit_edge ], [ %ptys_proto.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_reg_ptys_eth_pack(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef %payload, i16 noundef zeroext %local_port, i32 noundef %proto_admin, i1 noundef zeroext %autoneg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %payload, i32 0, i32 64)
  %conv1.i = zext i16 %local_port to i32
  tail call fastcc void @mlxsw_reg_ptys_local_port_set(ptr noundef %payload, i32 noundef %conv1.i) #16
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i.i = and i32 %2, -8
  %or.i.i.i = or i32 %and7.i.i.i, 4
  store i32 %or.i.i.i, ptr %payload, align 4
  %arrayidx.i.i29.i = getelementptr i32, ptr %payload, i32 5
  %3 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %proto_admin, ptr %arrayidx.i.i29.i, align 4
  %spec.select.i.i51.i = select i1 %autoneg, i32 0, i32 1073741824
  %and7.i.i59.i = and i32 %or.i.i.i, -1073741828
  %or.i.i60.i = or i32 %spec.select.i.i51.i, %and7.i.i59.i
  store i32 %or.i.i60.i, ptr %payload, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_reg_ptys_eth_unpack(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %payload, ptr noundef writeonly %p_eth_proto_cap, ptr noundef writeonly %p_eth_proto_admin, ptr noundef writeonly %p_eth_proto_oper) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %p_eth_proto_cap, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %mlxsw_reg_ptys_ext_eth_proto_cap_get.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

mlxsw_reg_ptys_ext_eth_proto_cap_get.exit.i:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr i32, ptr %payload, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i.i, align 4
  %2 = ptrtoint ptr %p_eth_proto_cap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %p_eth_proto_cap, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %mlxsw_reg_ptys_ext_eth_proto_cap_get.exit.i, %entry.if.end.i_crit_edge
  %tobool1.not.i = icmp eq ptr %p_eth_proto_admin, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %mlxsw_reg_ptys_ext_eth_proto_admin_get.exit.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

mlxsw_reg_ptys_ext_eth_proto_admin_get.exit.i:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i29.i = getelementptr i32, ptr %payload, i32 5
  %3 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i29.i, align 4
  %5 = ptrtoint ptr %p_eth_proto_admin to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_eth_proto_admin, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %mlxsw_reg_ptys_ext_eth_proto_admin_get.exit.i, %if.end.i.if.end4.i_crit_edge
  %tobool5.not.i = icmp eq ptr %p_eth_proto_oper, null
  br i1 %tobool5.not.i, label %if.end4.i.mlxsw_reg_ptys_ext_eth_unpack.exit_crit_edge, label %mlxsw_reg_ptys_ext_eth_proto_oper_get.exit.i

if.end4.i.mlxsw_reg_ptys_ext_eth_unpack.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_reg_ptys_ext_eth_unpack.exit

mlxsw_reg_ptys_ext_eth_proto_oper_get.exit.i:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i54.i = getelementptr i32, ptr %payload, i32 8
  %6 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i54.i, align 4
  %8 = ptrtoint ptr %p_eth_proto_oper to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_eth_proto_oper, align 4
  br label %mlxsw_reg_ptys_ext_eth_unpack.exit

mlxsw_reg_ptys_ext_eth_unpack.exit:               ; preds = %mlxsw_reg_ptys_ext_eth_proto_oper_get.exit.i, %if.end4.i.mlxsw_reg_ptys_ext_eth_unpack.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_ptys_proto_cap_masked_get(i32 noundef %eth_proto_cap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select.11 = and i32 %eth_proto_cap, 38907
  ret i32 %spec.select.11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_lossiness(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_hdroom_bufs_reset_sizes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_hdroom_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_frames_transmitted_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_frames_received_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_frame_check_sequence_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_alignment_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_octets_transmitted_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_octets_received_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 6
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_multicast_frames_xmitted_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 7
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_broadcast_frames_xmitted_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_multicast_frames_received_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 9
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_broadcast_frames_received_ok_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 10
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_in_range_length_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_out_of_range_length_field_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 12
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_frame_too_long_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_symbol_error_during_carrier_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 14
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_mac_control_frames_transmitted_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_mac_control_frames_received_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 16
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_unsupported_opcodes_received_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 17
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_pause_mac_ctrl_frames_received_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 18
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_a_pause_mac_ctrl_frames_transmitted_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 19
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_if_in_discards_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_if_out_discards_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_if_out_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 9
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_undersize_pkts_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 7
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_oversize_pkts_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_fragments_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 9
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts64octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 12
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts65to127octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts128to255octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 14
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts256to511octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts512to1023octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 16
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts1024to1518octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 17
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts1519to2047octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 18
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts2048to4095octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 19
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts4096to8191octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 20
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ether_stats_pkts8192to10239octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 21
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_dot3stats_fcs_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_dot3stats_symbol_errors_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_dot3control_in_unknown_opcodes_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 14
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_dot3in_pause_frames_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ecn_marked_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ingress_general_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ingress_policy_engine_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ingress_vlan_membership_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ingress_tag_frame_type_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_egress_vlan_membership_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_loopback_filter_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 6
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_egress_general_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 7
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_egress_hoq_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 9
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_egress_policy_engine_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_ingress_tx_link_down_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 12
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_egress_stp_filter_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_egress_sll_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 15
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_rx_octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_rx_frames_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_tx_octets_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 6
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_tx_frames_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 10
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_rx_pause_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_rx_pause_duration_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 12
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_tx_pause_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 13
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_tx_pause_duration_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 14
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_tc_transmit_queue_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_reg_ppcnt_tc_no_buffer_discard_uc_get(ptr nocapture noundef readonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr i64, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_port_get_transceiver_overheat_stats(ptr nocapture noundef readonly %mlxsw_sp_port) #2 align 64 {
entry:
  %stats = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 9
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load1_noabort(i32 %0)
  %port_mapping.sroa.0.0.copyload = load i8, ptr %mapping, align 8
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %1 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stats) #16
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %stats, align 8, !annotation !357
  %call = call i32 @mlxsw_env_module_overheat_counter_get(ptr noundef %4, i8 noundef zeroext %port_mapping.sroa.0.0.copyload, ptr noundef nonnull %stats) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %module_overheat_initial_val = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 21
  %6 = ptrtoint ptr %module_overheat_initial_val to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %module_overheat_initial_val, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %stats, align 8
  %module_overheat_initial_val1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 21
  %10 = ptrtoint ptr %module_overheat_initial_val1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %module_overheat_initial_val1, align 8
  %sub = sub i64 %9, %11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %7, %if.then ], [ %sub, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stats) #16
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_module_overheat_counter_get(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_get_stats_raw(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_cells_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_reset_module(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_eeprom(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_admin_status_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_eeprom_by_page(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_power_mode(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_set_module_power_mode(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_params_from_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_ptys_local_port_set(ptr nocapture noundef %buf, i32 noundef %val) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %and = shl i32 %val, 16
  %spec.select.i = and i32 %and, 16711680
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf, align 4
  %and7.i = and i32 %1, -16723969
  %or.i = or i32 %spec.select.i, %and7.i
  %2 = shl i32 %val, 4
  %and6.i26 = and i32 %2, 12288
  %or.i30 = or i32 %and6.i26, %or.i
  store i32 %or.i30, ptr %buf, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !120, !121, !123, !124, !126, !127, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !186, !187, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !257, !258, !260, !261, !263, !265, !266, !267, !268, !270, !271, !273, !274, !276, !278, !279, !281, !282, !284, !286, !288, !290, !292, !293, !294, !295, !297, !298, !300, !301, !303, !304, !306, !307, !309, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !343, !344, !346}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !{ptr @mlxsw_sp_port_ethtool_ops, !1, !"mlxsw_sp_port_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1242, i32 26}
!2 = !{ptr @mlxsw_sp1_port_type_speed_ops, !3, !"mlxsw_sp1_port_type_speed_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1522, i32 43}
!4 = !{ptr @mlxsw_sp2_port_type_speed_ops, !5, !"mlxsw_sp2_port_type_speed_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 2001, i32 43}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 22, i32 4}
!8 = !{ptr @mlxsw_sp_driver_version, !9, !"mlxsw_sp_driver_version", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 9, i32 19}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__mlxsw_item_offset._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @__mlxsw_item_offset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5932, i32 1}
!18 = distinct !{null, !17, !"mlxsw_reg_pddr_local_port_item", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !17, !"mlxsw_reg_pddr_lp_msb_item", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5942, i32 1}
!23 = distinct !{null, !22, !"mlxsw_reg_pddr_page_select_item", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5953, i32 1}
!26 = distinct !{null, !25, !"mlxsw_reg_pddr_trblsh_group_opcode_item", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5926, i32 1}
!29 = !{ptr @mlxsw_reg_pddr, !28, !"mlxsw_reg_pddr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5959, i32 1}
!32 = distinct !{null, !31, !"mlxsw_reg_pddr_trblsh_status_opcode_item", i1 false, i1 false}
!33 = !{ptr @mlxsw_sp_link_ext_state_opcode_map, !34, !"mlxsw_sp_link_ext_state_opcode_map", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 37, i32 1}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 219, i32 19}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 224, i32 19}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 244, i32 19}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 250, i32 19}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4792, i32 1}
!45 = distinct !{null, !44, !"mlxsw_reg_pfcc_local_port_item", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !44, !"mlxsw_reg_pfcc_lp_msb_item", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4880, i32 1}
!50 = distinct !{null, !49, !"mlxsw_reg_pfcc_pprx_item", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4852, i32 1}
!53 = distinct !{null, !52, !"mlxsw_reg_pfcc_pptx_item", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4786, i32 1}
!56 = !{ptr @mlxsw_reg_pfcc, !55, !"mlxsw_reg_pfcc", i1 false, i1 false}
!57 = !{ptr @mlxsw_sp_port_hw_stats, !58, !"mlxsw_sp_port_hw_stats", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 270, i32 38}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5012, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_ppcnt_a_frames_transmitted_ok_item", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5018, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_ppcnt_a_frames_received_ok_item", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5024, i32 1}
!67 = distinct !{null, !66, !"mlxsw_reg_ppcnt_a_frame_check_sequence_errors_item", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5030, i32 1}
!70 = distinct !{null, !69, !"mlxsw_reg_ppcnt_a_alignment_errors_item", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5036, i32 1}
!73 = distinct !{null, !72, !"mlxsw_reg_ppcnt_a_octets_transmitted_ok_item", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5042, i32 1}
!76 = distinct !{null, !75, !"mlxsw_reg_ppcnt_a_octets_received_ok_item", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5048, i32 1}
!79 = distinct !{null, !78, !"mlxsw_reg_ppcnt_a_multicast_frames_xmitted_ok_item", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5054, i32 1}
!82 = distinct !{null, !81, !"mlxsw_reg_ppcnt_a_broadcast_frames_xmitted_ok_item", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5060, i32 1}
!85 = distinct !{null, !84, !"mlxsw_reg_ppcnt_a_multicast_frames_received_ok_item", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5066, i32 1}
!88 = distinct !{null, !87, !"mlxsw_reg_ppcnt_a_broadcast_frames_received_ok_item", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5072, i32 1}
!91 = distinct !{null, !90, !"mlxsw_reg_ppcnt_a_in_range_length_errors_item", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5078, i32 1}
!94 = distinct !{null, !93, !"mlxsw_reg_ppcnt_a_out_of_range_length_field_item", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5084, i32 1}
!97 = distinct !{null, !96, !"mlxsw_reg_ppcnt_a_frame_too_long_errors_item", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5090, i32 1}
!100 = distinct !{null, !99, !"mlxsw_reg_ppcnt_a_symbol_error_during_carrier_item", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5096, i32 1}
!103 = distinct !{null, !102, !"mlxsw_reg_ppcnt_a_mac_control_frames_transmitted_item", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5102, i32 1}
!106 = distinct !{null, !105, !"mlxsw_reg_ppcnt_a_mac_control_frames_received_item", i1 false, i1 false}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5108, i32 1}
!109 = distinct !{null, !108, !"mlxsw_reg_ppcnt_a_unsupported_opcodes_received_item", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5114, i32 1}
!112 = distinct !{null, !111, !"mlxsw_reg_ppcnt_a_pause_mac_ctrl_frames_received_item", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5120, i32 1}
!115 = distinct !{null, !114, !"mlxsw_reg_ppcnt_a_pause_mac_ctrl_frames_transmitted_item", i1 false, i1 false}
!116 = !{ptr @mlxsw_sp_port_hw_rfc_2863_stats, !117, !"mlxsw_sp_port_hw_rfc_2863_stats", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 351, i32 38}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5128, i32 1}
!120 = distinct !{null, !119, !"mlxsw_reg_ppcnt_if_in_discards_item", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5134, i32 1}
!123 = distinct !{null, !122, !"mlxsw_reg_ppcnt_if_out_discards_item", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5140, i32 1}
!126 = distinct !{null, !125, !"mlxsw_reg_ppcnt_if_out_errors_item", i1 false, i1 false}
!127 = !{ptr @mlxsw_sp_port_hw_rfc_2819_stats, !128, !"mlxsw_sp_port_hw_rfc_2819_stats", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 369, i32 38}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5148, i32 1}
!131 = distinct !{null, !130, !"mlxsw_reg_ppcnt_ether_stats_undersize_pkts_item", i1 false, i1 false}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5154, i32 1}
!134 = distinct !{null, !133, !"mlxsw_reg_ppcnt_ether_stats_oversize_pkts_item", i1 false, i1 false}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5160, i32 1}
!137 = distinct !{null, !136, !"mlxsw_reg_ppcnt_ether_stats_fragments_item", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5166, i32 1}
!140 = distinct !{null, !139, !"mlxsw_reg_ppcnt_ether_stats_pkts64octets_item", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5172, i32 1}
!143 = distinct !{null, !142, !"mlxsw_reg_ppcnt_ether_stats_pkts65to127octets_item", i1 false, i1 false}
!144 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5178, i32 1}
!146 = distinct !{null, !145, !"mlxsw_reg_ppcnt_ether_stats_pkts128to255octets_item", i1 false, i1 false}
!147 = !{ptr @.str.84, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5184, i32 1}
!149 = distinct !{null, !148, !"mlxsw_reg_ppcnt_ether_stats_pkts256to511octets_item", i1 false, i1 false}
!150 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5190, i32 1}
!152 = distinct !{null, !151, !"mlxsw_reg_ppcnt_ether_stats_pkts512to1023octets_item", i1 false, i1 false}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5196, i32 1}
!155 = distinct !{null, !154, !"mlxsw_reg_ppcnt_ether_stats_pkts1024to1518octets_item", i1 false, i1 false}
!156 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5202, i32 1}
!158 = distinct !{null, !157, !"mlxsw_reg_ppcnt_ether_stats_pkts1519to2047octets_item", i1 false, i1 false}
!159 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5208, i32 1}
!161 = distinct !{null, !160, !"mlxsw_reg_ppcnt_ether_stats_pkts2048to4095octets_item", i1 false, i1 false}
!162 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5214, i32 1}
!164 = distinct !{null, !163, !"mlxsw_reg_ppcnt_ether_stats_pkts4096to8191octets_item", i1 false, i1 false}
!165 = !{ptr @.str.96, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5220, i32 1}
!167 = distinct !{null, !166, !"mlxsw_reg_ppcnt_ether_stats_pkts8192to10239octets_item", i1 false, i1 false}
!168 = !{ptr @mlxsw_sp_port_hw_rfc_3635_stats, !169, !"mlxsw_sp_port_hw_rfc_3635_stats", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 427, i32 38}
!170 = !{ptr @.str.98, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5228, i32 1}
!172 = distinct !{null, !171, !"mlxsw_reg_ppcnt_dot3stats_fcs_errors_item", i1 false, i1 false}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5234, i32 1}
!175 = distinct !{null, !174, !"mlxsw_reg_ppcnt_dot3stats_symbol_errors_item", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5240, i32 1}
!178 = distinct !{null, !177, !"mlxsw_reg_ppcnt_dot3control_in_unknown_opcodes_item", i1 false, i1 false}
!179 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5246, i32 1}
!181 = distinct !{null, !180, !"mlxsw_reg_ppcnt_dot3in_pause_frames_item", i1 false, i1 false}
!182 = !{ptr @mlxsw_sp_port_hw_ext_stats, !183, !"mlxsw_sp_port_hw_ext_stats", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 449, i32 38}
!184 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5254, i32 1}
!186 = distinct !{null, !185, !"mlxsw_reg_ppcnt_ecn_marked_item", i1 false, i1 false}
!187 = !{ptr @mlxsw_sp_port_hw_discard_stats, !188, !"mlxsw_sp_port_hw_discard_stats", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 458, i32 38}
!189 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5262, i32 1}
!191 = distinct !{null, !190, !"mlxsw_reg_ppcnt_ingress_general_item", i1 false, i1 false}
!192 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5268, i32 1}
!194 = distinct !{null, !193, !"mlxsw_reg_ppcnt_ingress_policy_engine_item", i1 false, i1 false}
!195 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5274, i32 1}
!197 = distinct !{null, !196, !"mlxsw_reg_ppcnt_ingress_vlan_membership_item", i1 false, i1 false}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5280, i32 1}
!200 = distinct !{null, !199, !"mlxsw_reg_ppcnt_ingress_tag_frame_type_item", i1 false, i1 false}
!201 = !{ptr @.str.116, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5286, i32 1}
!203 = distinct !{null, !202, !"mlxsw_reg_ppcnt_egress_vlan_membership_item", i1 false, i1 false}
!204 = !{ptr @.str.118, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5292, i32 1}
!206 = distinct !{null, !205, !"mlxsw_reg_ppcnt_loopback_filter_item", i1 false, i1 false}
!207 = !{ptr @.str.120, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5298, i32 1}
!209 = distinct !{null, !208, !"mlxsw_reg_ppcnt_egress_general_item", i1 false, i1 false}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5304, i32 1}
!212 = distinct !{null, !211, !"mlxsw_reg_ppcnt_egress_hoq_item", i1 false, i1 false}
!213 = !{ptr @.str.124, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5310, i32 1}
!215 = distinct !{null, !214, !"mlxsw_reg_ppcnt_egress_policy_engine_item", i1 false, i1 false}
!216 = !{ptr @.str.126, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5316, i32 1}
!218 = distinct !{null, !217, !"mlxsw_reg_ppcnt_ingress_tx_link_down_item", i1 false, i1 false}
!219 = !{ptr @.str.128, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5322, i32 1}
!221 = distinct !{null, !220, !"mlxsw_reg_ppcnt_egress_stp_filter_item", i1 false, i1 false}
!222 = !{ptr @.str.130, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5328, i32 1}
!224 = distinct !{null, !223, !"mlxsw_reg_ppcnt_egress_sll_item", i1 false, i1 false}
!225 = !{ptr @.str.132, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 611, i32 33}
!227 = !{ptr @mlxsw_sp_port_hw_prio_stats, !228, !"mlxsw_sp_port_hw_prio_stats", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 512, i32 38}
!229 = !{ptr @.str.133, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5336, i32 1}
!231 = distinct !{null, !230, !"mlxsw_reg_ppcnt_rx_octets_item", i1 false, i1 false}
!232 = !{ptr @.str.135, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5342, i32 1}
!234 = distinct !{null, !233, !"mlxsw_reg_ppcnt_rx_frames_item", i1 false, i1 false}
!235 = !{ptr @.str.137, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5348, i32 1}
!237 = distinct !{null, !236, !"mlxsw_reg_ppcnt_tx_octets_item", i1 false, i1 false}
!238 = !{ptr @.str.139, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5354, i32 1}
!240 = distinct !{null, !239, !"mlxsw_reg_ppcnt_tx_frames_item", i1 false, i1 false}
!241 = !{ptr @.str.141, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5360, i32 1}
!243 = distinct !{null, !242, !"mlxsw_reg_ppcnt_rx_pause_item", i1 false, i1 false}
!244 = !{ptr @.str.143, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5366, i32 1}
!246 = distinct !{null, !245, !"mlxsw_reg_ppcnt_rx_pause_duration_item", i1 false, i1 false}
!247 = !{ptr @.str.145, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5372, i32 1}
!249 = distinct !{null, !248, !"mlxsw_reg_ppcnt_tx_pause_item", i1 false, i1 false}
!250 = !{ptr @.str.147, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5378, i32 1}
!252 = distinct !{null, !251, !"mlxsw_reg_ppcnt_tx_pause_duration_item", i1 false, i1 false}
!253 = !{ptr @mlxsw_sp_port_hw_tc_stats, !254, !"mlxsw_sp_port_hw_tc_stats", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 549, i32 38}
!255 = !{ptr @.str.149, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5395, i32 1}
!257 = distinct !{null, !256, !"mlxsw_reg_ppcnt_tc_transmit_queue_item", i1 false, i1 false}
!258 = !{ptr @.str.151, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 5403, i32 1}
!260 = distinct !{null, !259, !"mlxsw_reg_ppcnt_tc_no_buffer_discard_uc_item", i1 false, i1 false}
!261 = !{ptr @mlxsw_sp_port_transceiver_stats, !262, !"mlxsw_sp_port_transceiver_stats", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 585, i32 35}
!263 = !{ptr @.str.153, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10403, i32 1}
!265 = distinct !{null, !264, !"mlxsw_reg_mlcr_local_port_item", i1 false, i1 false}
!266 = !{ptr @.str.155, !264, !"<string literal>", i1 false, i1 false}
!267 = distinct !{null, !264, !"mlxsw_reg_mlcr_lp_msb_item", i1 false, i1 false}
!268 = !{ptr @.str.157, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10413, i32 1}
!270 = distinct !{null, !269, !"mlxsw_reg_mlcr_beacon_duration_item", i1 false, i1 false}
!271 = !{ptr @.str.159, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10397, i32 1}
!273 = !{ptr @mlxsw_reg_mlcr, !272, !"mlxsw_reg_mlcr", i1 false, i1 false}
!274 = !{ptr @.str.160, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 751, i32 3}
!276 = !{ptr @.str.161, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4408, i32 1}
!278 = !{ptr @mlxsw_reg_ptys, !277, !"mlxsw_reg_ptys", i1 false, i1 false}
!279 = !{ptr @.str.162, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4580, i32 1}
!281 = distinct !{null, !280, !"mlxsw_reg_ptys_connector_type_item", i1 false, i1 false}
!282 = distinct !{null, !283, !"__already_done", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 923, i32 3}
!284 = !{ptr @.str.164, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1011, i32 19}
!286 = !{ptr @mlxsw_rmon_ranges, !287, !"mlxsw_rmon_ranges", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1152, i32 45}
!288 = !{ptr @mlxsw_sp1_port_link_mode, !289, !"mlxsw_sp1_port_link_mode", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1274, i32 46}
!290 = !{ptr @.str.165, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4422, i32 1}
!292 = distinct !{null, !291, !"mlxsw_reg_ptys_local_port_item", i1 false, i1 false}
!293 = !{ptr @.str.167, !291, !"<string literal>", i1 false, i1 false}
!294 = distinct !{null, !291, !"mlxsw_reg_ptys_lp_msb_item", i1 false, i1 false}
!295 = !{ptr @.str.169, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4434, i32 1}
!297 = distinct !{null, !296, !"mlxsw_reg_ptys_proto_mask_item", i1 false, i1 false}
!298 = !{ptr @.str.171, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4526, i32 1}
!300 = distinct !{null, !299, !"mlxsw_reg_ptys_eth_proto_admin_item", i1 false, i1 false}
!301 = !{ptr @.str.173, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4416, i32 1}
!303 = distinct !{null, !302, !"mlxsw_reg_ptys_an_disable_admin_item", i1 false, i1 false}
!304 = !{ptr @.str.175, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4495, i32 1}
!306 = distinct !{null, !305, !"mlxsw_reg_ptys_eth_proto_cap_item", i1 false, i1 false}
!307 = !{ptr @.str.177, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4550, i32 1}
!309 = distinct !{null, !308, !"mlxsw_reg_ptys_eth_proto_oper_item", i1 false, i1 false}
!310 = !{ptr @mlxsw_sp2_port_link_mode, !311, !"mlxsw_sp2_port_link_mode", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1695, i32 46}
!312 = !{ptr @mlxsw_sp2_mask_ethtool_sgmii_100m, !313, !"mlxsw_sp2_mask_ethtool_sgmii_100m", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1536, i32 1}
!314 = !{ptr @mlxsw_sp2_mask_ethtool_1000base_x_sgmii, !315, !"mlxsw_sp2_mask_ethtool_1000base_x_sgmii", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1544, i32 1}
!316 = !{ptr @mlxsw_sp2_mask_ethtool_5gbase_r, !317, !"mlxsw_sp2_mask_ethtool_5gbase_r", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1553, i32 1}
!318 = !{ptr @mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g, !319, !"mlxsw_sp2_mask_ethtool_xfi_xaui_1_10g", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1561, i32 1}
!320 = !{ptr @mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g, !321, !"mlxsw_sp2_mask_ethtool_xlaui_4_xlppi_4_40g", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1575, i32 1}
!322 = !{ptr @mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr, !323, !"mlxsw_sp2_mask_ethtool_25gaui_1_25gbase_cr_kr", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1586, i32 1}
!324 = !{ptr @mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2, !325, !"mlxsw_sp2_mask_ethtool_50gaui_2_laui_2_50gbase_cr2_kr2", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1596, i32 1}
!326 = !{ptr @mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr, !327, !"mlxsw_sp2_mask_ethtool_50gaui_1_laui_1_50gbase_cr_kr", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1606, i32 1}
!328 = !{ptr @mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4, !329, !"mlxsw_sp2_mask_ethtool_caui_4_100gbase_cr4_kr4", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1618, i32 1}
!330 = !{ptr @mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2, !331, !"mlxsw_sp2_mask_ethtool_100gaui_2_100gbase_cr2_kr2", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1629, i32 1}
!332 = !{ptr @mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4, !333, !"mlxsw_sp2_mask_ethtool_200gaui_4_200gbase_cr4_kr4", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1641, i32 1}
!334 = !{ptr @mlxsw_sp2_mask_ethtool_400gaui_8, !335, !"mlxsw_sp2_mask_ethtool_400gaui_8", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1653, i32 1}
!336 = distinct !{null, !337, !"__already_done", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c", i32 1681, i32 3}
!338 = !{ptr @.str.179, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4520, i32 1}
!340 = distinct !{null, !339, !"mlxsw_reg_ptys_ext_eth_proto_admin_item", i1 false, i1 false}
!341 = !{ptr @.str.181, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4465, i32 1}
!343 = distinct !{null, !342, !"mlxsw_reg_ptys_ext_eth_proto_cap_item", i1 false, i1 false}
!344 = !{ptr @.str.183, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4544, i32 1}
!346 = distinct !{null, !345, !"mlxsw_reg_ptys_ext_eth_proto_oper_item", i1 false, i1 false}
!347 = !{i32 1, !"wchar_size", i32 2}
!348 = !{i32 1, !"min_enum_size", i32 4}
!349 = !{i32 8, !"branch-target-enforcement", i32 0}
!350 = !{i32 8, !"sign-return-address", i32 0}
!351 = !{i32 8, !"sign-return-address-all", i32 0}
!352 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!353 = !{i32 7, !"uwtable", i32 1}
!354 = !{i32 7, !"frame-pointer", i32 2}
!355 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!356 = !{i8 0, i8 2}
!357 = !{!"auto-init"}
!358 = !{!"branch_weights", i32 2000, i32 1}
