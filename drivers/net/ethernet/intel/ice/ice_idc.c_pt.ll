; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_idc.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_idc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ice_add_rdma_qset\22, \22a\22\09"
module asm "\09.weak\09__crc_ice_add_rdma_qset\09\09\09\09"
module asm "\09.long\09__crc_ice_add_rdma_qset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ice_add_rdma_qset:\09\09\09\09\09"
module asm "\09.asciz \09\22ice_add_rdma_qset\22\09\09\09\09\09"
module asm "__kstrtabns_ice_add_rdma_qset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ice_del_rdma_qset\22, \22a\22\09"
module asm "\09.weak\09__crc_ice_del_rdma_qset\09\09\09\09"
module asm "\09.long\09__crc_ice_del_rdma_qset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ice_del_rdma_qset:\09\09\09\09\09"
module asm "\09.asciz \09\22ice_del_rdma_qset\22\09\09\09\09\09"
module asm "__kstrtabns_ice_del_rdma_qset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ice_rdma_request_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_ice_rdma_request_reset\09\09\09\09"
module asm "\09.long\09__crc_ice_rdma_request_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ice_rdma_request_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ice_rdma_request_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ice_rdma_request_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ice_rdma_update_vsi_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_ice_rdma_update_vsi_filter\09\09\09\09"
module asm "\09.long\09__crc_ice_rdma_update_vsi_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ice_rdma_update_vsi_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22ice_rdma_update_vsi_filter\22\09\09\09\09\09"
module asm "__kstrtabns_ice_rdma_update_vsi_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ice_get_qos_params\22, \22a\22\09"
module asm "\09.weak\09__crc_ice_get_qos_params\09\09\09\09"
module asm "\09.long\09__crc_ice_get_qos_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ice_get_qos_params:\09\09\09\09\09"
module asm "\09.asciz \09\22ice_get_qos_params\22\09\09\09\09\09"
module asm "__kstrtabns_ice_get_qos_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.197, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.197 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.138, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.138 = type { ptr }
%struct.iidc_rdma_qset_params = type { i32, i16, i16, i8 }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_port_info = type { ptr, ptr, i32, i16, i16, i8, i8, i16, i16, i16, i16, %struct.ice_fc_info, %struct.ice_mac_info, %struct.ice_phy_info, %struct.mutex, [8 x [9 x ptr]], [9 x %struct.list_head], %struct.ice_qos_cfg, i8 }
%struct.ice_fc_info = type { i32, i32 }
%struct.ice_mac_info = type { [6 x i8], [6 x i8] }
%struct.ice_phy_info = type { %struct.ice_link_status, %struct.ice_link_status, i64, i64, i32, i8, i16, i32, i32, %struct.ice_aqc_set_phy_cfg_data }
%struct.ice_link_status = type { i64, i64, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.ice_aqc_set_phy_cfg_data = type { i64, i64, i8, i8, i16, i16, i8, i8 }
%struct.ice_qos_cfg = type { %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, i8 }
%struct.ice_dcbx_cfg = type { i32, i32, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_pfc_cfg, i8, [64 x %struct.ice_dcb_app_priority_table], [2 x i32], [64 x i8], i8, i8 }
%struct.ice_dcb_ets_cfg = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.ice_dcb_pfc_cfg = type { i8, i8, i8, i8 }
%struct.ice_dcb_app_priority_table = type { i16, i8, i8 }
%struct.iidc_qos_params = type { [8 x %struct.iidc_qos_info], [8 x i8], i8, i8, i8 }
%struct.iidc_qos_info = type { i64, i8, i8, i8, i8 }
%struct.iidc_auxiliary_dev = type { %struct.auxiliary_device, ptr }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/ice/ice_idc.c\00", [55 x i8] zeroinitializer }, align 32
@ice_add_rdma_qset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDMA QSet invalid VSI\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_add_rdma_qset\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_add_rdma_qset._entry_ptr = internal global ptr @ice_add_rdma_qset._entry, section ".printk_index", align 4
@ice_add_rdma_qset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed VSI RDMA Qset config\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_add_rdma_qset._entry_ptr.7 = internal global ptr @ice_add_rdma_qset._entry.5, section ".printk_index", align 4
@ice_add_rdma_qset._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed VSI RDMA Qset enable\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_add_rdma_qset._entry_ptr.10 = internal global ptr @ice_add_rdma_qset._entry.8, section ".printk_index", align 4
@__kstrtab_ice_add_rdma_qset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ice_add_rdma_qset = external dso_local constant [0 x i8], align 1
@__ksymtab_ice_add_rdma_qset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ice_add_rdma_qset to i32), ptr @__kstrtab_ice_add_rdma_qset, ptr @__kstrtabns_ice_add_rdma_qset }, section "___ksymtab_gpl+ice_add_rdma_qset", align 4
@ice_del_rdma_qset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RDMA Invalid VSI\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_del_rdma_qset\00", [46 x i8] zeroinitializer }, align 32
@ice_del_rdma_qset._entry_ptr = internal global ptr @ice_del_rdma_qset._entry, section ".printk_index", align 4
@__kstrtab_ice_del_rdma_qset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ice_del_rdma_qset = external dso_local constant [0 x i8], align 1
@__ksymtab_ice_del_rdma_qset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ice_del_rdma_qset to i32), ptr @__kstrtab_ice_del_rdma_qset, ptr @__kstrtabns_ice_del_rdma_qset }, section "___ksymtab_gpl+ice_del_rdma_qset", align 4
@ice_rdma_request_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"incorrect reset request\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_rdma_request_reset\00", [41 x i8] zeroinitializer }, align 32
@ice_rdma_request_reset._entry_ptr = internal global ptr @ice_rdma_request_reset._entry, section ".printk_index", align 4
@__kstrtab_ice_rdma_request_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ice_rdma_request_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ice_rdma_request_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ice_rdma_request_reset to i32), ptr @__kstrtab_ice_rdma_request_reset, ptr @__kstrtabns_ice_rdma_request_reset }, section "___ksymtab_gpl+ice_rdma_request_reset", align 4
@ice_rdma_update_vsi_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to  %sable RDMA filtering\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_rdma_update_vsi_filter\00", [37 x i8] zeroinitializer }, align 32
@ice_rdma_update_vsi_filter._entry_ptr = internal global ptr @ice_rdma_update_vsi_filter._entry, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_ice_rdma_update_vsi_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_ice_rdma_update_vsi_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_ice_rdma_update_vsi_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ice_rdma_update_vsi_filter to i32), ptr @__kstrtab_ice_rdma_update_vsi_filter, ptr @__kstrtabns_ice_rdma_update_vsi_filter }, section "___ksymtab_gpl+ice_rdma_update_vsi_filter", align 4
@__kstrtab_ice_get_qos_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_ice_get_qos_params = external dso_local constant [0 x i8], align 1
@__ksymtab_ice_get_qos_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ice_get_qos_params to i32), ptr @__kstrtab_ice_get_qos_params, ptr @__kstrtabns_ice_get_qos_params }, section "___ksymtab_gpl+ice_get_qos_params", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"roce\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iwarp\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@ice_init_rdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve vectors for RDMA\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ice_init_rdma\00", [18 x i8] zeroinitializer }, align 32
@ice_init_rdma._entry_ptr = internal global ptr @ice_init_rdma._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ice_rdma_request_reset = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 77, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 87, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 100, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 107, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 133, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 169, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 197, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 291, i32 59 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 291, i32 68 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 300, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [44 x i8] c"../drivers/net/ethernet/intel/ice/ice_idc.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 335, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [36 x i8] c"switch.table.ice_rdma_request_reset\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_ice_add_rdma_qset, ptr @__ksymtab_ice_del_rdma_qset, ptr @__ksymtab_ice_get_qos_params, ptr @__ksymtab_ice_rdma_request_reset, ptr @__ksymtab_ice_rdma_update_vsi_filter, ptr @ice_add_rdma_qset._entry, ptr @ice_add_rdma_qset._entry.5, ptr @ice_add_rdma_qset._entry.8, ptr @ice_add_rdma_qset._entry_ptr, ptr @ice_add_rdma_qset._entry_ptr.10, ptr @ice_add_rdma_qset._entry_ptr.7, ptr @ice_del_rdma_qset._entry, ptr @ice_del_rdma_qset._entry_ptr, ptr @ice_init_rdma._entry, ptr @ice_init_rdma._entry_ptr, ptr @ice_rdma_request_reset._entry, ptr @ice_rdma_request_reset._entry_ptr, ptr @ice_rdma_update_vsi_filter._entry, ptr @ice_rdma_update_vsi_filter._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.ice_rdma_request_reset], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_rdma_qset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_rdma_qset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_rdma_qset._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_del_rdma_qset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_rdma_request_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_rdma_update_vsi_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_rdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_rdma_request_reset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_send_event_to_aux(ptr noundef %pf, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 66
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %lor.lhs.false.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

lor.lhs.false.i:                                  ; preds = %if.end
  %driver.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -24
  %tobool2.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool2.not.i, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.i.if.end6_crit_edge, label %land.lhs.true

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %lor.lhs.false.i
  %event_handler = getelementptr i8, ptr %5, i32 80
  %6 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event_handler, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %pf, ptr noundef %event) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %lor.lhs.false.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  %mutex.i16 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_rdma_qset(ptr noundef %pf, ptr noundef %qset) #0 align 64 {
entry:
  %max_rdmaqs = alloca [8 x i16], align 2
  %qset_teid = alloca i32, align 4
  %qs_handle = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max_rdmaqs) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qset_teid) #6
  %0 = ptrtoint ptr %qset_teid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qset_teid, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %qs_handle) #6
  %tobool.not = icmp eq ptr %pf, null
  %tobool1.not = icmp eq ptr %qset, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %6 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end28.do.end34_crit_edge, label %ice_get_main_vsi.exit

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

ice_get_main_vsi.exit:                            ; preds = %if.end28
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool30.not = icmp eq ptr %9, null
  br i1 %tobool30.not, label %ice_get_main_vsi.exit.do.end34_crit_edge, label %for.body.preheader

ice_get_main_vsi.exit.do.end34_crit_edge:         ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

for.body.preheader:                               ; preds = %ice_get_main_vsi.exit
  %10 = call ptr @memset(ptr %max_rdmaqs, i32 0, i32 16)
  %tc = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 3
  %11 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tc, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx36 = getelementptr [8 x i16], ptr %max_rdmaqs, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx36, align 2
  %inc37 = add i16 %14, 1
  store i16 %inc37, ptr %arrayidx36, align 2
  %qs_handle38 = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 1
  %15 = ptrtoint ptr %qs_handle38 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %qs_handle38, align 4
  %17 = ptrtoint ptr %qs_handle to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %qs_handle, align 2
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_info, align 4
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %9, i32 0, i32 19
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idx, align 2
  %ena_tc = getelementptr inbounds %struct.ice_vsi, ptr %9, i32 0, i32 56, i32 1
  %22 = ptrtoint ptr %ena_tc to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ena_tc, align 2
  %call40 = call i32 @ice_cfg_vsi_rdma(ptr noundef %19, i16 noundef zeroext %21, i16 noundef zeroext %23, ptr noundef nonnull %max_rdmaqs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end34:                                         ; preds = %ice_get_main_vsi.exit.do.end34_crit_edge, %if.end28.do.end34_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.end45:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end46:                                         ; preds = %for.body.preheader
  %24 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_info, align 4
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %idx, align 2
  %28 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tc, align 4
  %call50 = call i32 @ice_ena_vsi_rdma_qset(ptr noundef %25, i16 noundef zeroext %27, i8 noundef zeroext %29, ptr noundef nonnull %qs_handle, i16 noundef zeroext 1, ptr noundef nonnull %qset_teid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %qs_handle38 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %qs_handle38, align 4
  %32 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tc, align 4
  %idxprom59 = zext i8 %33 to i32
  %arrayidx60 = getelementptr %struct.ice_vsi, ptr %9, i32 0, i32 55, i32 %idxprom59
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %31, ptr %arrayidx60, align 2
  %35 = ptrtoint ptr %qset_teid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qset_teid, align 4
  %37 = ptrtoint ptr %qset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %qset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end55, %do.end45, %do.end34, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call40, %do.end45 ], [ %call50, %do.end55 ], [ 0, %if.end56 ], [ -22, %do.end34 ], [ -22, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %qs_handle) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qset_teid) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max_rdmaqs) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_cfg_vsi_rdma(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_ena_vsi_rdma_qset(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_del_rdma_qset(ptr noundef readonly %pf, ptr noundef readonly %qset) #0 align 64 {
entry:
  %teid = alloca i32, align 4
  %q_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %teid) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %q_id) #6
  %tobool.not = icmp eq ptr %pf, null
  %tobool1.not = icmp eq ptr %qset, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %vport_id = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 2
  %0 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport_id, align 2
  %num_alloc_vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 49
  %2 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_alloc_vsi.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp18.not.i = icmp eq i16 %3, 0
  br i1 %cmp18.not.i, label %if.end24.do.end29_crit_edge, label %for.body.lr.ph.i

if.end24.do.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

for.body.lr.ph.i:                                 ; preds = %if.end24
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %4 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.019.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vsi_num4.i = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %vsi_num4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vsi_num4.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %1)
  %cmp7.i = icmp eq i16 %9, %1
  br i1 %cmp7.i, label %if.end30, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end29_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end29_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

do.end29:                                         ; preds = %for.inc.i.do.end29_crit_edge, %if.end24.do.end29_crit_edge
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %qs_handle = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 1
  %12 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %qs_handle, align 4
  %14 = ptrtoint ptr %q_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %q_id, align 2
  %15 = ptrtoint ptr %qset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qset, align 4
  %17 = ptrtoint ptr %teid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %teid, align 4
  %tc = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 3
  %18 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tc, align 4
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr %struct.ice_vsi, ptr %7, i32 0, i32 55, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayidx, align 2
  %port_info = getelementptr inbounds %struct.ice_vsi, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_info, align 4
  %call32 = call i32 @ice_dis_vsi_rdma_qset(ptr noundef %22, i16 noundef zeroext 1, ptr noundef nonnull %teid, ptr noundef nonnull %q_id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call32, %if.end30 ], [ -22, %do.end29 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %q_id) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %teid) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_dis_vsi_rdma_qset(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rdma_request_reset(ptr noundef %pf, i32 noundef %reset_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pf, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reset_type)
  %0 = icmp ult i32 %reset_type, 3
  br i1 %0, label %switch.lookup, label %do.end28

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ice_rdma_request_reset, i32 0, i32 %reset_type
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @ice_schedule_reset(ptr noundef nonnull %pf, i32 noundef %switch.load) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ %call, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rdma_update_vsi_filter(ptr noundef %pf, i16 noundef zeroext %vsi_id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pf, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %num_alloc_vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 49
  %0 = ptrtoint ptr %num_alloc_vsi.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_alloc_vsi.i, align 4
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp18.not.i = icmp eq i16 %1, 0
  br i1 %cmp18.not.i, label %if.end23.cleanup_crit_edge, label %for.body.lr.ph.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end23
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %2 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.019.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vsi_num4.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %vsi_num4.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsi_num4.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vsi_id)
  %cmp7.i = icmp eq i16 %7, %vsi_id
  br i1 %cmp7.i, label %if.end26, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.i
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idx, align 2
  %call28 = tail call i32 @ice_cfg_rdma_fltr(ptr noundef %hw, i16 noundef zeroext %9, i1 noundef zeroext %enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %cond = select i1 %enable, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #9
  br label %cleanup

if.else:                                          ; preds = %if.end26
  %q_opt_flags = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 35, i32 21
  %12 = ptrtoint ptr %q_opt_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %q_opt_flags, align 16
  br i1 %enable, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = or i8 %13, 1
  %15 = ptrtoint ptr %q_opt_flags to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %q_opt_flags, align 16
  br label %cleanup

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %16 = and i8 %13, -2
  %17 = ptrtoint ptr %q_opt_flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %q_opt_flags, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then36, %do.end33, %for.inc.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then36 ], [ 0, %if.else38 ], [ %call28, %do.end33 ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_cfg_rdma_fltr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_get_qos_params(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %qos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %port_info = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 3
  %0 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_info, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1910464
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !66
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %call3 = tail call zeroext i8 @ice_dcb_get_num_tc(ptr noundef %qos_cfg) #6
  %num_tc = getelementptr inbounds %struct.iidc_qos_params, ptr %qos, i32 0, i32 4
  %6 = ptrtoint ptr %num_tc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call3, ptr %num_tc, align 2
  %7 = trunc i32 %5 to i8
  %conv = and i8 %7, 7
  %arrayidx = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %9 = trunc i32 %5 to i8
  %10 = lshr i8 %9, 3
  %conv.1 = and i8 %10, 7
  %arrayidx.1 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %5, 6
  %12 = trunc i32 %shr.2 to i8
  %conv.2 = and i8 %12, 7
  %arrayidx.2 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %5, 9
  %14 = trunc i32 %shr.3 to i8
  %conv.3 = and i8 %14, 7
  %arrayidx.3 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  %shr.4 = lshr i32 %5, 12
  %16 = trunc i32 %shr.4 to i8
  %conv.4 = and i8 %16, 7
  %arrayidx.4 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.4, ptr %arrayidx.4, align 1
  %shr.5 = lshr i32 %5, 15
  %18 = trunc i32 %shr.5 to i8
  %conv.5 = and i8 %18, 7
  %arrayidx.5 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.5, ptr %arrayidx.5, align 1
  %shr.6 = lshr i32 %5, 18
  %20 = trunc i32 %shr.6 to i8
  %conv.6 = and i8 %20, 7
  %arrayidx.6 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.6, ptr %arrayidx.6, align 1
  %shr.7 = lshr i32 %5, 21
  %22 = trunc i32 %shr.7 to i8
  %conv.7 = and i8 %22, 7
  %arrayidx.7 = getelementptr %struct.iidc_qos_params, ptr %qos, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.7, ptr %arrayidx.7, align 1
  %arrayidx9 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 0
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx9, align 1
  %rel_bw = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %rel_bw to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %rel_bw, align 8
  %arrayidx9.1 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9.1, align 1
  %rel_bw.1 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %rel_bw.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %rel_bw.1, align 8
  %arrayidx9.2 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 2
  %30 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx9.2, align 1
  %rel_bw.2 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %rel_bw.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %rel_bw.2, align 8
  %arrayidx9.3 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 3
  %33 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx9.3, align 1
  %rel_bw.3 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %rel_bw.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %rel_bw.3, align 8
  %arrayidx9.4 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 4
  %36 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9.4, align 1
  %rel_bw.4 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %rel_bw.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %rel_bw.4, align 8
  %arrayidx9.5 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 5
  %39 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx9.5, align 1
  %rel_bw.5 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %rel_bw.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %rel_bw.5, align 8
  %arrayidx9.6 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 6
  %42 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9.6, align 1
  %rel_bw.6 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %rel_bw.6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %rel_bw.6, align 8
  %arrayidx9.7 = getelementptr %struct.ice_port_info, ptr %1, i32 0, i32 17, i32 0, i32 2, i32 4, i32 7
  %45 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx9.7, align 1
  %rel_bw.7 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %rel_bw.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %rel_bw.7, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ice_dcb_get_num_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_plug_aux_dev(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_aux_ena(ptr noundef %pf) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 944) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %adev5 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 66
  %1 = ptrtoint ptr %adev5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %adev5, align 8
  %pf6 = getelementptr inbounds %struct.iidc_auxiliary_dev, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pf6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pf, ptr %pf6, align 8
  %aux_idx = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 67
  %3 = ptrtoint ptr %aux_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aux_idx, align 4
  %id = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 4
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ice_adev_release, ptr %release, align 4
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev7, ptr %parent, align 8
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 60
  %10 = ptrtoint ptr %rdma_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rdma_mode, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool9.not, ptr @.str.20, ptr @.str.19
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond, ptr %name, align 8
  %call10 = tail call i32 @auxiliary_device_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %adev5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %adev5, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %call15 = tail call i32 @__auxiliary_device_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %adev5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %adev5, align 8
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call15, %if.then17 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_aux_ena(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_adev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @auxiliary_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_unplug_aux_dev(ptr nocapture noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 66
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_del(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void @put_device(ptr noundef %3) #6
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %adev, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_rdma(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %flags.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %irq_tracker.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 6
  %5 = ptrtoint ptr %irq_tracker.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_tracker.i, align 8
  %num_rdma_msix.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 33
  %7 = ptrtoint ptr %num_rdma_msix.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_rdma_msix.i, align 8
  %call1.i = tail call i32 @ice_get_res(ptr noundef %pf, ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext 32766) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %num_rdma_msix.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_rdma_msix.i, align 8
  %num_avail_sw_msix.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 42
  %11 = ptrtoint ptr %num_avail_sw_msix.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_avail_sw_msix.i, align 2
  %sub.i = sub i16 %12, %10
  store i16 %sub.i, ptr %num_avail_sw_msix.i, align 2
  %conv6.i = trunc i32 %call1.i to i16
  %rdma_base_vector.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 34
  %13 = ptrtoint ptr %rdma_base_vector.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i, ptr %rdma_base_vector.i, align 2
  br label %if.end

do.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %cleanup.thread.i, %entry.if.end_crit_edge
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 60
  %14 = ptrtoint ptr %rdma_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rdma_mode, align 1
  %16 = or i8 %15, 2
  store i8 %16, ptr %rdma_mode, align 1
  %call3 = tail call i32 @ice_plug_aux_dev(ptr noundef %pf)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1.i, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_res(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 77, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 87, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ice_add_rdma_qset._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @ice_add_rdma_qset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 100, i32 3}
!11 = !{ptr @ice_add_rdma_qset._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_add_rdma_qset._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 107, i32 3}
!15 = !{ptr @ice_add_rdma_qset._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @ice_add_rdma_qset._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_ice_add_rdma_qset, !18, !"__ksymtab_ice_add_rdma_qset", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 115, i32 1}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 133, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ice_del_rdma_qset._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ice_del_rdma_qset._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_ice_del_rdma_qset, !25, !"__ksymtab_ice_del_rdma_qset", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 144, i32 1}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 169, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ice_rdma_request_reset._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ice_rdma_request_reset._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_ice_rdma_request_reset, !32, !"__ksymtab_ice_rdma_request_reset", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 175, i32 1}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 197, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ice_rdma_update_vsi_filter._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ice_rdma_update_vsi_filter._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__ksymtab_ice_rdma_update_vsi_filter, !41, !"__ksymtab_ice_rdma_update_vsi_filter", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 208, i32 1}
!42 = !{ptr @__ksymtab_ice_get_qos_params, !43, !"__ksymtab_ice_get_qos_params", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 231, i32 1}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 291, i32 59}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 291, i32 68}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 300, i32 8}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_idc.c", i32 335, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ice_init_rdma._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ice_init_rdma._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 6745895}
!67 = !{i64 2160102733}
