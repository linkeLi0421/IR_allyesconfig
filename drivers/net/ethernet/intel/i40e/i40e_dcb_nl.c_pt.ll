; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcb_app = type { i8, i8, i16 }
%struct.i40e_vsi = type { ptr, [128 x i32], i8, i8, i32, [1 x i32], i32, %struct.spinlock, [256 x %struct.hlist_head], i8, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.i40e_eth_stats, %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, %struct.tc_mqprio_qopt_offload, %struct.i40e_tc_configuration, %struct.i40e_aqc_vsi_properties_data, i16, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i16, i16, ptr, i8, i32, i16, i16, i16, i8, i16, %struct.list_head, [8 x i16], [4 x i32], %struct.list_head, i32, ptr, ptr, ptr, [88 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.i40e_tc_configuration = type { i8, i8, [8 x %struct.i40e_tc_info] }
%struct.i40e_tc_info = type { i16, i16, i8 }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.i40e_pf = type { ptr, %struct.i40e_hw, [2 x i32], ptr, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i8, i8, %struct.hlist_head, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.list_head, %struct.list_head, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, %struct.hlist_head, i16, i32, i16, i16, i32, [32 x i8], i16, i32, i32, %struct.timer_list, %struct.work_struct, i32, i32, ptr, i8, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, %struct.mutex, i16, i16, i16, ptr, [16 x ptr], ptr, ptr, i16, i16, i16, ptr, ptr, i8, i16, ptr, i32, i32, i32, i16, %struct.i40e_filter_control_settings, %struct.i40e_rx_pb_config, %struct.i40e_dcbx_config, ptr, %struct.ptp_clock_info, ptr, i32, %struct.hwtstamp_config, %struct.timespec64, %struct.work_struct, %struct.work_struct, %struct.work_struct, i64, %struct.mutex, i32, i32, i32, i32, i32, i64, i32, %struct.spinlock, [3 x %struct.ptp_pin_desc], [4 x i32], i8, i8, ptr, i16, i32, i32, i32, i32, i16, i16, i16, i16, %struct.list_head }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.204, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.204 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.205 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.i40e_hw_port_stats = type { %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64, i64, [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }

@dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @i40e_dcbnl_ieee_getets, ptr @i40e_dcbnl_ieee_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i40e_dcbnl_ieee_getpfc, ptr @i40e_dcbnl_ieee_setpfc, ptr null, ptr @i40e_dcbnl_ieee_setapp, ptr @i40e_dcbnl_ieee_delapp, ptr null, ptr null, ptr @i40e_dcbnl_getstate, ptr @i40e_dcbnl_setstate, ptr @i40e_dcbnl_get_perm_hw_addr, ptr @i40e_dcbnl_set_pg_tc_cfg_tx, ptr @i40e_dcbnl_set_pg_bwg_cfg_tx, ptr @i40e_dcbnl_set_pg_tc_cfg_rx, ptr @i40e_dcbnl_set_pg_bwg_cfg_rx, ptr @i40e_dcbnl_get_pg_tc_cfg_tx, ptr @i40e_dcbnl_get_pg_bwg_cfg_tx, ptr @i40e_dcbnl_get_pg_tc_cfg_rx, ptr @i40e_dcbnl_get_pg_bwg_cfg_rx, ptr @i40e_dcbnl_set_pfc_cfg, ptr @i40e_dcbnl_get_pfc_cfg, ptr @i40e_dcbnl_cee_set_all, ptr @i40e_dcbnl_get_cap, ptr @i40e_dcbnl_getnumtcs, ptr @i40e_dcbnl_setnumtcs, ptr @i40e_dcbnl_getpfcstate, ptr @i40e_dcbnl_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i40e_dcbnl_getapp, ptr null, ptr null, ptr @i40e_dcbnl_getdcbx, ptr @i40e_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@i40e_dcbnl_del_app.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i40e_dcbnl_del_app\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Deleting app for VSI seid=%d err=%d sel=%d proto=0x%x prio=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@i40e_dcbnl_ieee_setets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed setting DCB ETS configuration err %s aq_err %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_ieee_setets\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i40e_dcbnl_ieee_setets._entry_ptr = internal global ptr @i40e_dcbnl_ieee_setets._entry, section ".printk_index", align 4
@i40e_dcbnl_ieee_setpfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed setting DCB PFC configuration err %s aq_err %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_ieee_setpfc\00", [41 x i8] zeroinitializer }, align 32
@i40e_dcbnl_ieee_setpfc._entry_ptr = internal global ptr @i40e_dcbnl_ieee_setpfc._entry, section ".printk_index", align 4
@i40e_dcbnl_ieee_setapp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 230, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed setting DCB configuration err %s aq_err %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_ieee_setapp\00", [41 x i8] zeroinitializer }, align 32
@i40e_dcbnl_ieee_setapp._entry_ptr = internal global ptr @i40e_dcbnl_ieee_setapp._entry, section ".printk_index", align 4
@i40e_dcbnl_ieee_delapp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_ieee_delapp\00", [41 x i8] zeroinitializer }, align 32
@i40e_dcbnl_ieee_delapp._entry_ptr = internal global ptr @i40e_dcbnl_ieee_delapp._entry, section ".printk_index", align 4
@i40e_dcbnl_getstate.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_dcbnl_getstate\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DCB state=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@i40e_dcbnl_setstate.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_dcbnl_setstate\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"new state=%d current state=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@i40e_dcbnl_set_pg_tc_cfg_tx.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_dcbnl_set_pg_tc_cfg_tx\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Set PG config tc=%d bwg_id=%d prio_type=%d bw_pct=%d up_map=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@i40e_dcbnl_set_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_dcbnl_set_pg_bwg_cfg_tx\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Set PG BW config tc=%d bw_pct=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_dcbnl_set_pg_tc_cfg_rx\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Rx TC PG Config Not Supported.\0A\00", [32 x i8] zeroinitializer }, align 32
@i40e_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_dcbnl_set_pg_bwg_cfg_rx\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rx BWG PG Config Not Supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@i40e_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i40e_dcbnl_get_pg_tc_cfg_tx\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Get PG config prio=%d tc=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@i40e_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"i40e_dcbnl_get_pg_bwg_cfg_tx\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Get PG BW config tc=%d bw_pct=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@i40e_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_set_pfc_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Set PFC Config up=%d setting=%d pfcenable=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_get_pfc_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Get PFC Config up=%d setting=%d pfcenable=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@i40e_dcbnl_cee_set_all.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_cee_set_all\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Commit DCB Configuration to the hardware\0A\00", [54 x i8] zeroinitializer }, align 32
@i40e_dcbnl_get_cap.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i40e_dcbnl_get_cap\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Get Capability cap=%d capval=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@i40e_dcbnl_setpfcstate.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_dcbnl_setpfcstate\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PFC State is modified via PFC config.\0A\00", [57 x i8] zeroinitializer }, align 32
@i40e_dcbnl_setdcbx.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i40e_dcbnl_setdcbx\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 5, i64 6, i64 9]
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"dcbnl_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 841, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 959, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 137, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 176, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 227, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 292, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 312, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 333, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 389, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 416, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 441, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 458, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 488, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 513, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 592, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 618, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 638, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 679, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 745, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [49 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 802, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @i40e_dcbnl_ieee_delapp._entry, ptr @i40e_dcbnl_ieee_delapp._entry_ptr, ptr @i40e_dcbnl_ieee_setapp._entry, ptr @i40e_dcbnl_ieee_setapp._entry_ptr, ptr @i40e_dcbnl_ieee_setets._entry, ptr @i40e_dcbnl_ieee_setets._entry_ptr, ptr @i40e_dcbnl_ieee_setpfc._entry, ptr @i40e_dcbnl_ieee_setpfc._entry_ptr, ptr @dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_dcbnl_ieee_setets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_dcbnl_ieee_setpfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_dcbnl_ieee_setapp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_dcbnl_ieee_delapp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcbnl_set_all(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  %sapp = alloca %struct.dcb_app, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sapp) #9
  %6 = getelementptr inbounds %struct.dcb_app, ptr %sapp, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dcb_app, ptr %sapp, i32 0, i32 2
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 89
  %8 = ptrtoint ptr %sapp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sapp, align 4
  %9 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dcbx_cap, align 8
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 54
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and2 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and7 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end11_crit_edge, label %land.lhs.true

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %iscsi = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 1, i32 15, i32 12
  %14 = ptrtoint ptr %iscsi to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iscsi, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %numapps = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 1, i32 32, i32 2
  %16 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numapps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp53.not = icmp eq i32 %17, 0
  br i1 %cmp53.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %enabled_tc = getelementptr inbounds %struct.i40e_vsi, ptr %vsi, i32 0, i32 50, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_pf, ptr %5, i32 0, i32 1, i32 32, i32 7, i32 %i.054
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 2
  %idxprom = zext i8 %19 to i32
  %arrayidx13 = getelementptr %struct.i40e_pf, ptr %5, i32 0, i32 1, i32 32, i32 4, i32 3, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %21 to i32
  %shl = shl nuw i32 1, %conv14
  %22 = ptrtoint ptr %enabled_tc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled_tc, align 1
  %conv17 = zext i8 %23 to i32
  %and18 = and i32 %shl, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %selector = getelementptr %struct.i40e_pf, ptr %5, i32 0, i32 1, i32 32, i32 7, i32 %i.054, i32 1
  %24 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %selector, align 1
  %26 = ptrtoint ptr %sapp to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sapp, align 4
  %protocolid = getelementptr %struct.i40e_pf, ptr %5, i32 0, i32 1, i32 32, i32 7, i32 %i.054, i32 2
  %27 = ptrtoint ptr %protocolid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %protocolid, align 2
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %7, align 2
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %19, ptr %6, align 1
  %call27 = call i32 @dcb_ieee_setapp(ptr noundef %1, ptr noundef nonnull %sapp) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %31 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %numapps, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %call29 = call i32 @dcbnl_ieee_notify(ptr noundef %1, i32 noundef 79, i32 noundef 20, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sapp) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcbnl_ieee_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcbnl_flush_apps(ptr nocapture noundef readonly %pf, ptr nocapture noundef readonly %old_cfg, ptr nocapture noundef readonly %new_cfg) local_unnamed_addr #0 align 64 {
entry:
  %sapp.i.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iscsi = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 15, i32 12
  %2 = ptrtoint ptr %iscsi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iscsi, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %numapps = getelementptr inbounds %struct.i40e_dcbx_config, ptr %old_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numapps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.not = icmp eq i32 %5, 0
  br i1 %cmp25.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %numapps.i = getelementptr inbounds %struct.i40e_dcbx_config, ptr %new_cfg, i32 0, i32 2
  %num_alloc_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 20
  %vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 74
  %6 = getelementptr inbounds %struct.dcb_app, ptr %sapp.i.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.dcb_app, ptr %sapp.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_dcbx_config, ptr %old_cfg, i32 0, i32 7, i32 %i.026
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 2
  %app.sroa.0.0.extract.shift = lshr i32 %9, 24
  %app.sroa.0.0.extract.trunc = trunc i32 %app.sroa.0.0.extract.shift to i8
  %app.sroa.7.0.extract.shift = lshr i32 %9, 16
  %app.sroa.7.0.extract.trunc = trunc i32 %app.sroa.7.0.extract.shift to i8
  %app.sroa.11.0.extract.trunc = trunc i32 %9 to i16
  %10 = ptrtoint ptr %numapps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numapps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30.not.i = icmp eq i32 %11, 0
  br i1 %cmp30.not.i, label %for.body.if.then3_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.if.then3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %cmp33.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %for.body.for.body.i_crit_edge ]
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.i40e_dcbx_config, ptr %new_cfg, i32 0, i32 7, i32 %i.031.i
  %selector2.i = getelementptr %struct.i40e_dcbx_config, ptr %new_cfg, i32 0, i32 7, i32 %i.031.i, i32 1
  %12 = ptrtoint ptr %selector2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %selector2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %app.sroa.7.0.extract.trunc)
  %cmp4.i = icmp eq i8 %13, %app.sroa.7.0.extract.trunc
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %protocolid9.i = getelementptr %struct.i40e_dcbx_config, ptr %new_cfg, i32 0, i32 7, i32 %i.031.i, i32 2
  %14 = ptrtoint ptr %protocolid9.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocolid9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %app.sroa.11.0.extract.trunc)
  %cmp11.i = icmp eq i16 %15, %app.sroa.11.0.extract.trunc
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %app.sroa.0.0.extract.trunc)
  %cmp19.i = icmp eq i8 %17, %app.sroa.0.0.extract.trunc
  br i1 %cmp19.i, label %land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i40e_dcbnl_find_app.exit

for.inc.i:                                        ; preds = %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.031.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp.i = icmp ult i32 %inc.i, %11
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.i40e_dcbnl_find_app.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.i40e_dcbnl_find_app.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i40e_dcbnl_find_app.exit

i40e_dcbnl_find_app.exit:                         ; preds = %for.inc.i.i40e_dcbnl_find_app.exit_crit_edge, %land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.i40e_dcbnl_find_app.exit_crit_edge ], [ %cmp33.i, %land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %i40e_dcbnl_find_app.exit.for.inc_crit_edge, label %i40e_dcbnl_find_app.exit.if.then3_crit_edge

i40e_dcbnl_find_app.exit.if.then3_crit_edge:      ; preds = %i40e_dcbnl_find_app.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

i40e_dcbnl_find_app.exit.for.inc_crit_edge:       ; preds = %i40e_dcbnl_find_app.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %i40e_dcbnl_find_app.exit.if.then3_crit_edge, %for.body.if.then3_crit_edge
  %18 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_alloc_vsi.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp35.not.i = icmp eq i16 %19, 0
  br i1 %cmp35.not.i, label %if.then3.for.inc_crit_edge, label %for.body.lr.ph.i11

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.lr.ph.i11:                               ; preds = %if.then3
  %conv15.i = and i32 %app.sroa.7.0.extract.shift, 255
  %conv16.i = and i32 %9, 65535
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.inc.i17.for.body.i13_crit_edge, %for.body.lr.ph.i11
  %v.036.i = phi i32 [ 0, %for.body.lr.ph.i11 ], [ %inc.i15, %for.inc.i17.for.body.i13_crit_edge ]
  %20 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vsi.i, align 8
  %arrayidx.i12 = getelementptr ptr, ptr %21, i32 %v.036.i
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i12, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %for.body.i13.for.inc.i17_crit_edge, label %land.lhs.true.i14

for.body.i13.for.inc.i17_crit_edge:               ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i17

land.lhs.true.i14:                                ; preds = %for.body.i13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %land.lhs.true.i14.for.inc.i17_crit_edge, label %i40e_dcbnl_vsi_del_app.exit.i

land.lhs.true.i14.for.inc.i17_crit_edge:          ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i17

i40e_dcbnl_vsi_del_app.exit.i:                    ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sapp.i.i) #9
  %26 = ptrtoint ptr %sapp.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %app.sroa.7.0.extract.trunc, ptr %sapp.i.i, align 2
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %app.sroa.11.0.extract.trunc, ptr %6, align 2
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %app.sroa.0.0.extract.trunc, ptr %7, align 1
  %call.i.i = call i32 @dcb_ieee_delapp(ptr noundef nonnull %25, ptr noundef nonnull %sapp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sapp.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_del_app.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_flush_apps, %if.then11.i)) #9
          to label %for.inc.i17 [label %if.then11.i], !srcloc !95

if.then11.i:                                      ; preds = %i40e_dcbnl_vsi_del_app.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vsi.i, align 8
  %arrayidx13.i = getelementptr ptr, ptr %32, i32 %v.036.i
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx13.i, align 4
  %seid.i = getelementptr inbounds %struct.i40e_vsi, ptr %34, i32 0, i32 38
  %35 = ptrtoint ptr %seid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %seid.i, align 2
  %conv14.i = zext i16 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_del_app.__UNIQUE_ID_ddebug690, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %conv14.i, i32 noundef %call.i.i, i32 noundef %conv15.i, i32 noundef %conv16.i, i32 noundef %app.sroa.0.0.extract.shift) #9
  br label %for.inc.i17

for.inc.i17:                                      ; preds = %if.then11.i, %i40e_dcbnl_vsi_del_app.exit.i, %land.lhs.true.i14.for.inc.i17_crit_edge, %for.body.i13.for.inc.i17_crit_edge
  %inc.i15 = add nuw nsw i32 %v.036.i, 1
  %37 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_alloc_vsi.i, align 2
  %conv.i = zext i16 %38 to i32
  %cmp.i16 = icmp ult i32 %inc.i15, %conv.i
  br i1 %cmp.i16, label %for.inc.i17.for.body.i13_crit_edge, label %for.inc.i17.for.inc_crit_edge

for.inc.i17.for.inc_crit_edge:                    ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc.i17.for.body.i13_crit_edge:               ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i13

for.inc:                                          ; preds = %for.inc.i17.for.inc_crit_edge, %if.then3.for.inc_crit_edge, %i40e_dcbnl_find_app.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %39 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %numapps, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_dcbnl_setup(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back.i, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 139
  %8 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dcbnl_ops, ptr %dcbnl_ops, align 16
  tail call void @i40e_dcbnl_set_all(ptr noundef %vsi)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_dcbnl_ieee_getets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %etscfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4
  %7 = ptrtoint ptr %etscfg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %etscfg, align 4
  %9 = ptrtoint ptr %ets to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ets, align 1
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %10 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %ets_cap, align 1
  %cbs = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 1
  %11 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cbs, align 1
  %cbs3 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %13 = ptrtoint ptr %cbs3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %cbs3, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %tcbwtable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 4
  %14 = ptrtoint ptr %tcbwtable to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %tcbwtable, align 1
  %16 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %tc_tx_bw, align 1
  %tc_rx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 4
  %17 = load i64, ptr %tcbwtable, align 1
  %18 = ptrtoint ptr %tc_rx_bw to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %tc_rx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %tsatable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 5
  %19 = ptrtoint ptr %tsatable to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %tsatable, align 1
  %21 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %prioritytable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 3
  %22 = ptrtoint ptr %prioritytable to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %prioritytable, align 1
  %24 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %prio_tc, align 1
  %tc_reco_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 7
  %tcbwtable17 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 5, i32 4
  %25 = ptrtoint ptr %tcbwtable17 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %tcbwtable17, align 1
  %27 = ptrtoint ptr %tc_reco_bw to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %tc_reco_bw, align 1
  %tc_reco_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 8
  %tsatable21 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 5, i32 5
  %28 = ptrtoint ptr %tsatable21 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %tsatable21, align 1
  %30 = ptrtoint ptr %tc_reco_tsa to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %tc_reco_tsa, align 1
  %reco_prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 9
  %31 = load i64, ptr %prioritytable, align 1
  %32 = ptrtoint ptr %reco_prio_tc to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %reco_prio_tc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_dcbnl_ieee_setets(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_dcbx_config = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32
  %tmp_cfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92
  %8 = call ptr @memcpy(ptr %tmp_cfg, ptr %local_dcbx_config, i32 200)
  %9 = ptrtoint ptr %ets to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ets, align 1
  %etscfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4
  %11 = ptrtoint ptr %etscfg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %etscfg, align 4
  %maxtcs = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 2
  %12 = ptrtoint ptr %maxtcs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %maxtcs, align 2
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %13 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cbs, align 1
  %cbs11 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 1
  %15 = ptrtoint ptr %cbs11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %cbs11, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.090 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.090
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %arrayidx15 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 4, i32 %i.090
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.090
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx16, align 1
  %arrayidx19 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 5, i32 %i.090
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.090
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20, align 1
  %arrayidx23 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 %i.090
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 7, i32 %i.090
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24, align 1
  %arrayidx27 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 5, i32 4, i32 %i.090
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 8, i32 %i.090
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28, align 1
  %arrayidx32 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 5, i32 5, i32 %i.090
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 9, i32 %i.090
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx33, align 1
  %arrayidx37 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 5, i32 3, i32 %i.090
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx37, align 1
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %call39 = tail call i32 @i40e_hw_dcb_config(ptr noundef %3, ptr noundef %tmp_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call43 = tail call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call39) #9
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %36 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %asq_last_status, align 8
  %call46 = tail call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %37) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %call43, ptr noundef %call46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %pfccap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 2
  %7 = ptrtoint ptr %pfccap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pfccap, align 2
  %9 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pfc, align 8
  %pfcenable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 3
  %10 = ptrtoint ptr %pfcenable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pfcenable, align 1
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %12 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pfc_en, align 1
  %mbc = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 1
  %13 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mbc, align 1
  %mbc5 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %15 = ptrtoint ptr %mbc5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mbc5, align 2
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 536576
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %19 = and i32 %18, 65535
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %shr.i = lshr exact i32 %20, 16
  %conv.i = trunc i32 %shr.i to i16
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %delay, align 2
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx, align 8
  %arrayidx7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 0
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 0
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 0
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx10, align 8
  %arrayidx.1 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.1, align 8
  %arrayidx7.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx7.1, align 8
  %arrayidx9.1 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 1
  %31 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx9.1, align 8
  %arrayidx10.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx10.1, align 8
  %arrayidx.2 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.2, align 8
  %arrayidx7.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx7.2, align 8
  %arrayidx9.2 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 2
  %37 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx9.2, align 8
  %arrayidx10.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx10.2, align 8
  %arrayidx.3 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.3, align 8
  %arrayidx7.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx7.3, align 8
  %arrayidx9.3 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 3
  %43 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx9.3, align 8
  %arrayidx10.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx10.3, align 8
  %arrayidx.4 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.4, align 8
  %arrayidx7.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx7.4, align 8
  %arrayidx9.4 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 4
  %49 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx9.4, align 8
  %arrayidx10.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 4
  %51 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx10.4, align 8
  %arrayidx.5 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 5
  %52 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.5, align 8
  %arrayidx7.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 5
  %54 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx7.5, align 8
  %arrayidx9.5 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 5
  %55 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx9.5, align 8
  %arrayidx10.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 5
  %57 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx10.5, align 8
  %arrayidx.6 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 6
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx.6, align 8
  %arrayidx7.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx7.6, align 8
  %arrayidx9.6 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 6
  %61 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx9.6, align 8
  %arrayidx10.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 6
  %63 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx10.6, align 8
  %arrayidx.7 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 15, i32 7
  %64 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx.7, align 8
  %arrayidx7.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 7
  %66 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx7.7, align 8
  %arrayidx9.7 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 57, i32 11, i32 7
  %67 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx9.7, align 8
  %arrayidx10.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 7
  %69 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %arrayidx10.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_dcbnl_ieee_setpfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %pfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_dcbx_config = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32
  %tmp_cfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92
  %8 = call ptr @memcpy(ptr %tmp_cfg, ptr %local_dcbx_config, i32 200)
  %9 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  %spec.select = select i1 %tobool5.not, i8 8, i8 %10
  %11 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 6, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %11, align 2
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %13 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pfc_en, align 1
  %pfcenable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 6, i32 3
  %15 = ptrtoint ptr %pfcenable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %pfcenable, align 1
  %call17 = tail call i32 @i40e_hw_dcb_config(ptr noundef %3, ptr noundef %tmp_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call21 = tail call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call17) #9
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %18 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asq_last_status, align 8
  %call24 = tail call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %19) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %call21, ptr noundef %call24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_dcbnl_ieee_setapp(ptr noundef %netdev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %local_dcbx_config = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32
  %numapps = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 2
  %8 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numapps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp = icmp eq i32 %9, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @dcb_ieee_setapp(ptr noundef %netdev, ptr noundef %app) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %app, align 2
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 2
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %14 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priority, align 1
  %16 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numapps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp30.not.i = icmp eq i32 %17, 0
  br i1 %cmp30.not.i, label %if.end11.if.end16_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %cmp33.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %if.end11.for.body.i_crit_edge ]
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 7, i32 %i.031.i
  %selector2.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 7, i32 %i.031.i, i32 1
  %18 = ptrtoint ptr %selector2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %selector2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %19)
  %cmp4.i = icmp eq i8 %11, %19
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %protocolid9.i = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 7, i32 %i.031.i, i32 2
  %20 = ptrtoint ptr %protocolid9.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %protocolid9.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %21)
  %cmp11.i = icmp eq i16 %13, %21
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %23)
  %cmp19.i = icmp eq i8 %15, %23
  br i1 %cmp19.i, label %land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i40e_dcbnl_find_app.exit

for.inc.i:                                        ; preds = %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.031.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %17)
  %cmp.i = icmp ult i32 %inc.i, %17
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.i40e_dcbnl_find_app.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.i40e_dcbnl_find_app.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i40e_dcbnl_find_app.exit

i40e_dcbnl_find_app.exit:                         ; preds = %for.inc.i.i40e_dcbnl_find_app.exit_crit_edge, %land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.i40e_dcbnl_find_app.exit_crit_edge ], [ %cmp33.i, %land.lhs.true13.i.i40e_dcbnl_find_app.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %i40e_dcbnl_find_app.exit.cleanup_crit_edge, label %i40e_dcbnl_find_app.exit.if.end16_crit_edge

i40e_dcbnl_find_app.exit.if.end16_crit_edge:      ; preds = %i40e_dcbnl_find_app.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

i40e_dcbnl_find_app.exit.cleanup_crit_edge:       ; preds = %i40e_dcbnl_find_app.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %i40e_dcbnl_find_app.exit.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %tmp_cfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92
  %24 = call ptr @memcpy(ptr %tmp_cfg, ptr %local_dcbx_config, i32 200)
  %numapps20 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 2
  %25 = ptrtoint ptr %numapps20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %numapps20, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %numapps20, align 4
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 7, i32 %26
  %new_app.sroa.9.0.insert.ext = zext i16 %13 to i32
  %new_app.sroa.6.0.insert.ext = zext i8 %11 to i32
  %new_app.sroa.6.0.insert.shift = shl nuw nsw i32 %new_app.sroa.6.0.insert.ext, 16
  %new_app.sroa.6.0.insert.insert = or i32 %new_app.sroa.6.0.insert.shift, %new_app.sroa.9.0.insert.ext
  %new_app.sroa.0.0.insert.ext = zext i8 %15 to i32
  %new_app.sroa.0.0.insert.shift = shl nuw i32 %new_app.sroa.0.0.insert.ext, 24
  %new_app.sroa.0.0.insert.insert = or i32 %new_app.sroa.6.0.insert.insert, %new_app.sroa.0.0.insert.shift
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %new_app.sroa.0.0.insert.insert, ptr %arrayidx, align 2
  %call22 = tail call i32 @i40e_hw_dcb_config(ptr noundef %3, ptr noundef %tmp_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end16.cleanup_crit_edge, label %do.end

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call26 = tail call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call22) #9
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %30 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asq_last_status, align 8
  %call29 = tail call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %31) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %call26, ptr noundef %call29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %i40e_dcbnl_find_app.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %i40e_dcbnl_find_app.exit.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_dcbnl_ieee_delapp(ptr noundef %netdev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @dcb_ieee_delapp(ptr noundef %netdev, ptr noundef %app) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1
  %numapps = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 2
  %8 = ptrtoint ptr %numapps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numapps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %local_dcbx_config = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32
  %tmp_cfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92
  %10 = call ptr @memcpy(ptr %tmp_cfg, ptr %local_dcbx_config, i32 200)
  %numapps13 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 2
  %11 = ptrtoint ptr %numapps13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numapps13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14135 = icmp ugt i32 %12, 1
  br i1 %cmp14135, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %13 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %app, align 2
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 7, i32 %i.0136
  %selector19 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 7, i32 %i.0136, i32 1
  %15 = ptrtoint ptr %selector19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %selector19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp21 = icmp eq i8 %14, %16
  br i1 %cmp21, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol, align 2
  %protocolid = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 7, i32 %i.0136, i32 2
  %19 = ptrtoint ptr %protocolid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %protocolid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp28 = icmp eq i16 %18, %20
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %priority, align 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp37 = icmp eq i8 %22, %24
  br i1 %cmp37, label %if.then39, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then39:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %arrayidx, align 2
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true30.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then39, %if.end11.for.end_crit_edge
  %i.0133 = phi i32 [ %i.0136, %if.then39 ], [ 1, %if.end11.for.end_crit_edge ], [ %12, %for.inc.for.end_crit_edge ]
  %26 = ptrtoint ptr %numapps13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numapps13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0133, i32 %27)
  %cmp55 = icmp eq i32 %i.0133, %27
  br i1 %cmp55, label %for.end.cleanup_crit_edge, label %if.end58

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %for.end
  %dec = add i32 %27, -1
  %28 = ptrtoint ptr %numapps13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dec, ptr %numapps13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0133, i32 %dec)
  %cmp64138 = icmp ult i32 %i.0133, %dec
  br i1 %cmp64138, label %if.end58.for.body66_crit_edge, label %if.end58.for.end74_crit_edge

if.end58.for.end74_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end74

if.end58.for.body66_crit_edge:                    ; preds = %if.end58
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %if.end58.for.body66_crit_edge
  %j.0139 = phi i32 [ %add, %for.body66.for.body66_crit_edge ], [ %i.0133, %if.end58.for.body66_crit_edge ]
  %arrayidx69 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 7, i32 %j.0139
  %add = add nuw i32 %j.0139, 1
  %arrayidx71 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 7, i32 %add
  %29 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx71, align 2
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %arrayidx69, align 2
  %32 = ptrtoint ptr %numapps13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %numapps13, align 4
  %cmp64 = icmp ult i32 %add, %33
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.for.end74_crit_edge

for.body66.for.end74_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end74

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

for.end74:                                        ; preds = %for.body66.for.end74_crit_edge, %if.end58.for.end74_crit_edge
  %call76 = tail call i32 @i40e_hw_dcb_config(ptr noundef %3, ptr noundef %tmp_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.end74.cleanup_crit_edge, label %do.end

for.end74.cleanup_crit_edge:                      ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call80 = tail call ptr @i40e_stat_str(ptr noundef %hw, i32 noundef %call76) #9
  %asq_last_status = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 23, i32 14
  %36 = ptrtoint ptr %asq_last_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %asq_last_status, align 8
  %call83 = tail call ptr @i40e_aq_str(ptr noundef %hw, i32 noundef %37) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %call80, ptr noundef %call83) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end74.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %for.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_getstate(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_getstate.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_getstate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = lshr i32 %7, 7
  %and.lobit = and i32 %and, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_getstate.__UNIQUE_ID_ddebug676, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %and.lobit) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags9 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %8 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags9, align 8
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 7
  ret i8 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_setstate(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_setstate.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_setstate, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !95

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv11 = zext i8 %state to i32
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and12 = lshr i32 %11, 7
  %and12.lobit = and i32 %and12, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_setstate.__UNIQUE_ID_ddebug677, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv11, i32 noundef %and12.lobit) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool15.not = icmp eq i8 %state, 0
  %lnot.ext17 = zext i1 %tobool15.not to i32
  %flags18 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %12 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags18, align 8
  %and19 = lshr i32 %13, 7
  %and19.lobit = and i32 %and19, 1
  %14 = xor i32 %and19.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %lnot.ext17)
  %cmp = icmp eq i32 %14, %lnot.ext17
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %and.i = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  br i1 %tobool15.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %13, 128
  %15 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %flags18, align 8
  %desired_dcbx_config = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 34
  %local_dcbx_config = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32
  %16 = call ptr @memcpy(ptr %desired_dcbx_config, ptr %local_dcbx_config, i32 200)
  br label %cleanup

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %and34 = and i32 %13, -129
  %17 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and34, ptr %flags18, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then30, %if.end26.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.else ], [ 1, %if.end26.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_get_perm_hw_addr(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %perm_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %4 = call ptr @memset(ptr %perm_addr, i32 255, i32 32)
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp31.not = icmp eq i8 %6, 0
  br i1 %cmp31.not, label %entry.for.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.cond4.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp734.not = icmp eq i8 %11, 0
  br i1 %cmp734.not, label %for.cond4.preheader.for.end17_crit_edge, label %for.cond4.preheader.for.body9_crit_edge

for.cond4.preheader.for.body9_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body9

for.cond4.preheader.for.end17_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 3, i32 2, i32 %i.032
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %perm_addr, i32 %i.032
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3, align 1
  %inc = add nuw nsw i32 %i.032, 1
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond4.preheader.for.body9_crit_edge
  %j.036 = phi i32 [ %inc15, %for.body9.for.body9_crit_edge ], [ 0, %for.cond4.preheader.for.body9_crit_edge ]
  %i.135 = phi i32 [ %inc16, %for.body9.for.body9_crit_edge ], [ %inc, %for.cond4.preheader.for.body9_crit_edge ]
  %arrayidx12 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 3, i32 3, i32 %j.036
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %perm_addr, i32 %i.135
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx13, align 1
  %inc15 = add nuw nsw i32 %j.036, 1
  %inc16 = add nuw nsw i32 %i.135, 1
  %15 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr_len, align 1
  %conv6 = zext i8 %16 to i32
  %cmp7 = icmp ult i32 %inc15, %conv6
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.end17_crit_edge

for.body9.for.end17_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.end17:                                        ; preds = %for.body9.for.end17_crit_edge, %for.cond4.preheader.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_set_pg_tc_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %tc, i8 noundef zeroext %prio_type, i8 noundef zeroext %bwg_id, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %cmp = icmp sgt i32 %tc, 7
  %or.cond41 = or i1 %cmp, %7
  br i1 %or.cond41, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv10 = zext i8 %up_map to i32
  %conv14 = trunc i32 %tc to i8
  %and11 = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then13

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.cond.preheader.for.inc_crit_edge
  %and11.1 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1)
  %tobool12.not.1 = icmp eq i32 %and11.1, 0
  br i1 %tobool12.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then13.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then13.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %for.inc.for.inc.1_crit_edge
  %and11.2 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2)
  %tobool12.not.2 = icmp eq i32 %and11.2, 0
  br i1 %tobool12.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then13.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then13.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then13.2, %for.inc.1.for.inc.2_crit_edge
  %and11.3 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3)
  %tobool12.not.3 = icmp eq i32 %and11.3, 0
  br i1 %tobool12.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then13.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then13.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then13.3, %for.inc.2.for.inc.3_crit_edge
  %and11.4 = and i32 %conv10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.4)
  %tobool12.not.4 = icmp eq i32 %and11.4, 0
  br i1 %tobool12.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then13.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then13.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then13.4, %for.inc.3.for.inc.4_crit_edge
  %and11.5 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.5)
  %tobool12.not.5 = icmp eq i32 %and11.5, 0
  br i1 %tobool12.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then13.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then13.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.5 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then13.5, %for.inc.4.for.inc.5_crit_edge
  %and11.6 = and i32 %conv10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.6)
  %tobool12.not.6 = icmp eq i32 %and11.6, 0
  br i1 %tobool12.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then13.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then13.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.6 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %arrayidx.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then13.6, %for.inc.5.for.inc.6_crit_edge
  %and11.7 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.7)
  %tobool12.not.7 = icmp eq i32 %and11.7, 0
  br i1 %tobool12.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then13.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then13.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.7 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 3, i32 7
  %15 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %arrayidx.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then13.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx18 = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 5, i32 %tc
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx18, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_set_pg_tc_cfg_tx.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_set_pg_tc_cfg_tx, %if.then23)) #9
          to label %cleanup [label %if.then23], !srcloc !95

if.then23:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %conv24 = zext i8 %bwg_id to i32
  %conv25 = zext i8 %prio_type to i32
  %conv26 = zext i8 %bw_pct to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_set_pg_tc_cfg_tx.__UNIQUE_ID_ddebug678, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %tc, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %conv10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %for.inc.7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_set_pg_bwg_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  %or.cond21 = or i1 %cmp, %7
  br i1 %or.cond21, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 4, i32 4, i32 %pgid
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bw_pct, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_set_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_set_pg_bwg_cfg_tx, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !95

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv13 = zext i8 %bw_pct to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_set_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug679, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %pgid, i32 noundef %conv13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_set_pg_tc_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %prio_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_set_pg_tc_cfg_rx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug680, ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_set_pg_bwg_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_set_pg_bwg_cfg_rx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug681, ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_get_pg_tc_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef readnone %prio_type, ptr nocapture noundef %pgid, ptr nocapture noundef readnone %bw_pct, ptr nocapture noundef readnone %up_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond21 = or i1 %cmp, %7
  br i1 %or.cond21, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 3, i32 %prio
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pgid, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_get_pg_tc_cfg_tx, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !95

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pgid, align 1
  %conv13 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug682, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %prio, i32 noundef %conv13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_get_pg_bwg_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef %bw_pct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  %or.cond21 = or i1 %cmp, %7
  br i1 %or.cond21, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 4, i32 %pgid
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bw_pct, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_get_pg_bwg_cfg_tx, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !95

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %bw_pct to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bw_pct, align 1
  %conv13 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug683, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %pgid, i32 noundef %conv13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @i40e_dcbnl_get_pg_tc_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef readnone %prio_type, ptr nocapture noundef writeonly %pgid, ptr nocapture noundef readnone %bw_pct, ptr nocapture noundef readnone %up_map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond11 = or i1 %cmp, %7
  br i1 %or.cond11, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 4, i32 3, i32 %prio
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %pgid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @i40e_dcbnl_get_pg_bwg_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bw_pct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_set_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, i8 noundef zeroext %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond43 = or i1 %cmp, %7
  br i1 %or.cond43, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pfccap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 6, i32 2
  %8 = ptrtoint ptr %pfccap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %pfccap, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %setting)
  %tobool8.not = icmp eq i8 %setting, 0
  %shl14 = shl nuw nsw i32 1, %prio
  %pfcenable17 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 6, i32 3
  %9 = ptrtoint ptr %pfcenable17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfcenable17, align 1
  %11 = trunc i32 %shl14 to i8
  %conv13 = or i8 %10, %11
  %12 = xor i8 %11, -1
  %conv20 = and i8 %10, %12
  %conv13.sink = select i1 %tobool8.not, i8 %conv20, i8 %conv13
  store i8 %conv13.sink, ptr %pfcenable17, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_set_pfc_cfg, %if.then26)) #9
          to label %cleanup [label %if.then26], !srcloc !95

if.then26:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv27 = zext i8 %setting to i32
  %pfcenable30 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92, i32 6, i32 3
  %15 = ptrtoint ptr %pfcenable30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfcenable30, align 1
  %conv31 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug684, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %prio, i32 noundef %conv27, i32 noundef %conv31) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_get_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %prio, ptr nocapture noundef %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp ne i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %prio)
  %cmp = icmp sgt i32 %prio, 7
  %or.cond30 = or i1 %cmp, %7
  br i1 %or.cond30, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pfcenable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 3
  %8 = ptrtoint ptr %pfcenable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pfcenable, align 1
  %conv8 = zext i8 %9 to i32
  %shr = lshr i32 %conv8, %prio
  %10 = trunc i32 %shr to i8
  %conv10 = and i8 %10, 1
  %11 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %setting, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_get_pfc_cfg, %if.then15)) #9
          to label %cleanup [label %if.then15], !srcloc !95

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %setting to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %setting, align 1
  %conv16 = zext i8 %15 to i32
  %16 = ptrtoint ptr %pfcenable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pfcenable, align 1
  %conv21 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug685, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %prio, i32 noundef %conv16, i32 noundef %conv21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_cee_set_all(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_cee_set_all.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_cee_set_all, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !95

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_cee_set_all.__UNIQUE_ID_ddebug686, ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %tmp_cfg = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 92
  %call11 = tail call i32 @i40e_hw_dcb_config(ptr noundef %3, ptr noundef %tmp_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp ne i32 %call11, 0
  %conv13 = zext i1 %tobool12.not to i8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv13, %do.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_get_cap(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr nocapture noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %capid, label %sw.default [
    i32 2, label %if.end.do.body_crit_edge
    i32 3, label %if.end.do.body_crit_edge19
    i32 5, label %if.end.sw.bb1_crit_edge
    i32 6, label %if.end.sw.bb1_crit_edge20
    i32 9, label %sw.bb2
  ]

if.end.sw.bb1_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.do.body_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge20
  br label %do.body

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %7 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dcbx_cap, align 8
  %conv = trunc i16 %8 to i8
  br label %do.body

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb2, %sw.bb1, %if.end.do.body_crit_edge, %if.end.do.body_crit_edge19
  %.sink = phi i8 [ -128, %sw.bb1 ], [ %conv, %sw.bb2 ], [ 0, %sw.default ], [ 1, %if.end.do.body_crit_edge ], [ 1, %if.end.do.body_crit_edge19 ]
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %cap, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_get_cap.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_get_cap, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !95

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cap, align 1
  %conv9 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_get_cap.__UNIQUE_ID_ddebug687, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %capid, i32 noundef %conv9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %do.body ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_dcbnl_getnumtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, ptr nocapture noundef writeonly %num) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_dcbnl_setnumtcs(ptr nocapture noundef readnone %netdev, i32 noundef %tcid, i8 noundef zeroext %num) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_getpfcstate(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %pfcenable = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32, i32 6, i32 3
  %4 = ptrtoint ptr %pfcenable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfcenable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %. = zext i1 %tobool.not to i8
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_dcbnl_setpfcstate(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_setpfcstate.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_setpfcstate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_setpfcstate.__UNIQUE_ID_ddebug688, ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_dcbnl_getapp(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #0 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #9
  %4 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %6 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %idtype, ptr %app, align 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %id, ptr %5, align 2
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %9 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dcbx_cap, align 8
  %11 = and i16 %10, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %12 = icmp eq i16 %11, 4
  br i1 %12, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call zeroext i8 @dcb_getapp(ptr noundef %netdev, ptr noundef nonnull %app) #9
  %conv6 = zext i8 %call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_getdcbx(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %conv = trunc i16 %5 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @i40e_dcbnl_setdcbx(ptr nocapture noundef readonly %netdev, i8 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %back.i = getelementptr inbounds %struct.i40e_vsi, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back.i, align 8
  %dcbx_cap = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dcbx_cap, align 8
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %mode to i32
  %and2 = and i32 %conv1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %and8 = and i32 %conv1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %7 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %.not = icmp eq i32 %7, 12
  %and12 = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond51 = or i1 %.not, %tobool13.not
  br i1 %or.cond51, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %8 = zext i8 %mode to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %8)
  %cmp = icmp eq i16 %5, %8
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %dcbx_cap, align 8
  %spec.select = select i1 %tobool9.not, i8 2, i8 1
  %10 = getelementptr inbounds %struct.i40e_pf, ptr %3, i32 0, i32 1, i32 32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_dcbnl_setdcbx.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_dcbnl_setdcbx, %if.then36)) #9
          to label %cleanup [label %if.then36], !srcloc !95

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_dcbnl_setdcbx.__UNIQUE_ID_ddebug689, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end21, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end21 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_hw_dcb_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_stat_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_aq_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 959, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @i40e_dcbnl_del_app.__UNIQUE_ID_ddebug690, !1, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!6 = !{ptr @dcbnl_ops, !7, !"dcbnl_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 841, i32 36}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 137, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @i40e_dcbnl_ieee_setets._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @i40e_dcbnl_ieee_setets._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 176, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @i40e_dcbnl_ieee_setpfc._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @i40e_dcbnl_ieee_setpfc._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 227, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @i40e_dcbnl_ieee_setapp._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @i40e_dcbnl_ieee_setapp._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 292, i32 3}
!27 = !{ptr @i40e_dcbnl_ieee_delapp._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @i40e_dcbnl_ieee_delapp._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 312, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @i40e_dcbnl_getstate.__UNIQUE_ID_ddebug676, !30, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 333, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @i40e_dcbnl_setstate.__UNIQUE_ID_ddebug677, !34, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 389, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @i40e_dcbnl_set_pg_tc_cfg_tx.__UNIQUE_ID_ddebug678, !38, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 416, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @i40e_dcbnl_set_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug679, !42, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 441, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @i40e_dcbnl_set_pg_tc_cfg_rx.__UNIQUE_ID_ddebug680, !46, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 458, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @i40e_dcbnl_set_pg_bwg_cfg_rx.__UNIQUE_ID_ddebug681, !50, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 488, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @i40e_dcbnl_get_pg_tc_cfg_tx.__UNIQUE_ID_ddebug682, !54, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 513, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @i40e_dcbnl_get_pg_bwg_cfg_tx.__UNIQUE_ID_ddebug683, !58, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 592, i32 2}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @i40e_dcbnl_set_pfc_cfg.__UNIQUE_ID_ddebug684, !62, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 618, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @i40e_dcbnl_get_pfc_cfg.__UNIQUE_ID_ddebug685, !66, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 638, i32 2}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @i40e_dcbnl_cee_set_all.__UNIQUE_ID_ddebug686, !70, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 679, i32 2}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @i40e_dcbnl_get_cap.__UNIQUE_ID_ddebug687, !74, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 745, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @i40e_dcbnl_setpfcstate.__UNIQUE_ID_ddebug688, !78, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c", i32 802, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @i40e_dcbnl_setdcbx.__UNIQUE_ID_ddebug689, !82, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{i64 2149084956, i64 2149084961, i64 2149084974, i64 2149085018, i64 2149085052, i64 2149085073}
!96 = !{i64 6184950}
!97 = !{i64 2160282573}
