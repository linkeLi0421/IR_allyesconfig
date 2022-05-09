; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_fw_update.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_fw_update.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pldmfw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.138, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.138 = type { ptr }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
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
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.ice_fwu_priv = type { %struct.pldmfw, ptr, ptr, i8, i8, i8 }
%struct.pldmfw = type { ptr, ptr }
%struct.devlink_flash_update_params = type { ptr, ptr, i32 }
%struct.pldmfw_component = type { %struct.list_head, i16, i16, i16, i16, i32, i32, ptr, ptr, i8, i8, i8 }
%struct.ice_aqc_nvm_comp_tbl = type <{ i16, i16, i8, i32, i8, i8, [0 x i8] }>
%struct.ice_rq_event_info = type { %struct.ice_aq_desc, i16, i16, ptr }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.ice_aqc_nvm = type { i16, i8, i8, i16, i16, i32, i32 }

@ice_get_pending_updates.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ice: Unable to read device capabilities\00", [56 x i8] zeroinitializer }, align 32
@ice_get_pending_updates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 785, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"The fw.mgmt flash component has a pending update\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_get_pending_updates\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/ice/ice_fw_update.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_get_pending_updates._entry_ptr = internal global ptr @ice_get_pending_updates._entry, section ".printk_index", align 4
@ice_get_pending_updates._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 790, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"The fw.undi flash component has a pending update\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_get_pending_updates._entry_ptr.7 = internal global ptr @ice_get_pending_updates._entry.5, section ".printk_index", align 4
@ice_get_pending_updates._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 795, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"The fw.netlist flash component has a pending update\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_get_pending_updates._entry_ptr.10 = internal global ptr @ice_get_pending_updates._entry.8, section ".printk_index", align 4
@ice_devlink_flash_update.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ice: Requested overwrite mask is not supported\00", [49 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update.__msg.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ice: Current firmware does not support unified update\00", [42 x i8] zeroinitializer }, align 32
@ice_fwu_ops = internal constant { %struct.pldmfw_ops, [44 x i8] } { %struct.pldmfw_ops { ptr @pldmfw_op_pci_match_record, ptr @ice_send_package_data, ptr @ice_send_component_table, ptr @ice_flash_component, ptr @ice_finalize_update }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Preparing to flash\00", [45 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 939, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to acquire device flash lock, err %d aq_err %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_devlink_flash_update\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update._entry_ptr = internal global ptr @ice_devlink_flash_update._entry, section ".printk_index", align 4
@ice_devlink_flash_update.__msg.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ice: Failed to acquire device flash lock\00", [55 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 946, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Firmware image has no record matching this device\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update._entry_ptr.19 = internal global ptr @ice_devlink_flash_update._entry.17, section ".printk_index", align 4
@ice_devlink_flash_update.__msg.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ice: Firmware image has no record matching this device\00", [41 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 953, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to flash PLDM image, err %d\00", [61 x i8] zeroinitializer }, align 32
@ice_devlink_flash_update._entry_ptr.23 = internal global ptr @ice_devlink_flash_update._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_send_package_data.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_send_package_data\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Sending PLDM record package data to firmware\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_send_package_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 70, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to send record package data to firmware, err %d aq_err %s\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_send_package_data._entry_ptr = internal global ptr @ice_send_package_data._entry, section ".printk_index", align 4
@ice_send_package_data.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ice: Failed to record package data to firmware\00", [49 x i8] zeroinitializer }, align 32
@ice_send_component_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 227, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Unable to update due to a firmware component with unknown ID %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_send_component_table\00", [39 x i8] zeroinitializer }, align 32
@ice_send_component_table._entry_ptr = internal global ptr @ice_send_component_table._entry, section ".printk_index", align 4
@ice_send_component_table.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ice: Unable to update due to unknown firmware component\00", [40 x i8] zeroinitializer }, align 32
@ice_send_component_table.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sending component table to firmware:\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_send_component_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 255, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to transfer component table to firmware, err %d aq_err %s\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_send_component_table._entry_ptr.33 = internal global ptr @ice_send_component_table._entry.31, section ".printk_index", align 4
@ice_send_component_table.__msg.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ice: Failed to transfer component table to firmware\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.undi\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.mgmt\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw.netlist\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unexpected unknown component identifier 0x%02x\00", [49 x i8] zeroinitializer }, align 32
@ice_check_component_response.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_check_component_response\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: firmware response 0x%x, code 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 123, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"firmware recommends not updating %s, as it may result in a downgrade. continuing anyways\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr = internal global ptr @ice_check_component_response._entry, section ".printk_index", align 4
@ice_check_component_response._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"firmware has rejected updating %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.45 = internal global ptr @ice_check_component_response._entry.43, section ".printk_index", align 4
@ice_check_component_response._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 133, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Component comparison stamp for %s is identical to the running image\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.48 = internal global ptr @ice_check_component_response._entry.46, section ".printk_index", align 4
@ice_check_component_response.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ice: Component comparison stamp is identical to running image\00", [34 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 138, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Component comparison stamp for %s is lower than the running image\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.51 = internal global ptr @ice_check_component_response._entry.49, section ".printk_index", align 4
@ice_check_component_response.__msg.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ice: Component comparison stamp is lower than running image\00", [36 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.39, ptr @.str.2, i32 143, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Component comparison stamp for %s is invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.55 = internal global ptr @ice_check_component_response._entry.53, section ".printk_index", align 4
@ice_check_component_response.__msg.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ice: Component comparison stamp is invalid\00", [53 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.39, ptr @.str.2, i32 148, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s conflicts with a previous component table\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.59 = internal global ptr @ice_check_component_response._entry.57, section ".printk_index", align 4
@ice_check_component_response.__msg.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ice: Component table conflict occurred\00", [57 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.39, ptr @.str.2, i32 153, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Pre-requisites for component %s have not been met\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.63 = internal global ptr @ice_check_component_response._entry.61, section ".printk_index", align 4
@ice_check_component_response.__msg.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ice: Component pre-requisites not met\00", [58 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.39, ptr @.str.2, i32 158, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s is not a supported component\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.67 = internal global ptr @ice_check_component_response._entry.65, section ".printk_index", align 4
@ice_check_component_response.__msg.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice: Component not supported\00", [35 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.39, ptr @.str.2, i32 163, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Security restrictions prevent %s from being downgraded\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.71 = internal global ptr @ice_check_component_response._entry.69, section ".printk_index", align 4
@ice_check_component_response.__msg.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Component cannot be downgraded\00", [60 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.39, ptr @.str.2, i32 168, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Received an incomplete component image for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.75 = internal global ptr @ice_check_component_response._entry.73, section ".printk_index", align 4
@ice_check_component_response.__msg.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ice: Incomplete component image\00", [32 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.39, ptr @.str.2, i32 173, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Component version for %s is identical to the running image\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.79 = internal global ptr @ice_check_component_response._entry.77, section ".printk_index", align 4
@ice_check_component_response.__msg.80 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ice: Component version is identical to running image\00", [43 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.39, ptr @.str.2, i32 178, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Component version for %s is lower than the running image\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.83 = internal global ptr @ice_check_component_response._entry.81, section ".printk_index", align 4
@ice_check_component_response.__msg.84 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ice: Component version is lower than the running image\00", [41 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.39, ptr @.str.2, i32 183, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unexpected response code 0x02%x for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_check_component_response._entry_ptr.87 = internal global ptr @ice_check_component_response._entry.85, section ".printk_index", align 4
@ice_check_component_response.__msg.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ice: Received unexpected response code from firmware\00", [43 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_erase_nvm_module\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Beginning erase of flash component '%s', module 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Erasing\00", [24 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.89, ptr @.str.2, i32 499, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to erase %s (module 0x%02x), err %d aq_err %s\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry_ptr = internal global ptr @ice_erase_nvm_module._entry, section ".printk_index", align 4
@ice_erase_nvm_module.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ice: Failed to erase flash module\00", [62 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 508, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Timed out waiting for firmware to respond with erase completion for %s (module 0x%02x), err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry_ptr.95 = internal global ptr @ice_erase_nvm_module._entry.93, section ".printk_index", align 4
@ice_erase_nvm_module.__msg.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Timed out waiting for firmware\00", [60 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.89, ptr @.str.2, i32 518, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Unexpected module_typeid in erase completion for %s: got 0x%x, expected 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry_ptr.99 = internal global ptr @ice_erase_nvm_module._entry.97, section ".printk_index", align 4
@ice_erase_nvm_module.__msg.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ice: Unexpected firmware response\00", [62 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.89, ptr @.str.2, i32 527, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware failed to erase %s (module 0x02%x), aq_err %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module._entry_ptr.103 = internal global ptr @ice_erase_nvm_module._entry.101, section ".printk_index", align 4
@ice_erase_nvm_module.__msg.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Firmware failed to erase flash\00", [60 x i8] zeroinitializer }, align 32
@ice_erase_nvm_module.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.89, ptr @.str.2, ptr @.str.105, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Completed erase of flash component '%s', module 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Erasing failed\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Erasing done\00", [19 x i8] zeroinitializer }, align 32
@ice_write_nvm_module.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_write_nvm_module\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Beginning write of flash component '%s', module 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Flashing\00", [23 x i8] zeroinitializer }, align 32
@ice_write_nvm_module.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.108, ptr @.str.2, ptr @.str.111, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Completed write of flash component '%s', module 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Flashing failed\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flashing done\00", [18 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_write_one_nvm_block\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Writing block of %u bytes for module 0x%02x at offset %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 311, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Failed to flash module 0x%02x with block of size %u at offset %u, err %d aq_err %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry_ptr = internal global ptr @ice_write_one_nvm_block._entry, section ".printk_index", align 4
@ice_write_one_nvm_block.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Failed to program flash module\00", [60 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.114, ptr @.str.2, i32 325, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Timed out while trying to flash module 0x%02x with block of size %u at offset %u, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry_ptr.119 = internal global ptr @ice_write_one_nvm_block._entry.117, section ".printk_index", align 4
@ice_write_one_nvm_block.__msg.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Timed out waiting for firmware\00", [60 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.2, i32 338, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Unexpected module_typeid in write completion: got 0x%x, expected 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry_ptr.123 = internal global ptr @ice_write_one_nvm_block._entry.121, section ".printk_index", align 4
@ice_write_one_nvm_block.__msg.124 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ice: Unexpected firmware response\00", [62 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.114, ptr @.str.2, i32 345, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unexpected offset in write completion: got %u, expected %u\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry_ptr.127 = internal global ptr @ice_write_one_nvm_block._entry.125, section ".printk_index", align 4
@ice_write_one_nvm_block.__msg.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ice: Unexpected firmware response\00", [62 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.114, ptr @.str.2, i32 353, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Firmware failed to flash module 0x%02x with block of size %u at offset %u, err %s\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block._entry_ptr.131 = internal global ptr @ice_write_one_nvm_block._entry.129, section ".printk_index", align 4
@ice_write_one_nvm_block.__msg.132 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ice: Firmware failed to program flash module\00", [51 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.114, ptr @.str.2, ptr @.str.133, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware reported required reset level as %u\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_write_one_nvm_block.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.114, ptr @.str.2, ptr @.str.134, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Firmware doesn't support indicating required reset level. Assuming a power cycle is required\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_finalize_update.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_finalize_update\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Firmware indicated EMP reset as sufficient, but EMP reset is disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Activate new firmware by devlink reload\00", [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Activate new firmware by rebooting the system\00", [50 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Activate new firmware by power cycling the system\00", [46 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 574, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to switch active flash banks, err %d aq_err %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_switch_flash_banks\00", [41 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks._entry_ptr = internal global ptr @ice_switch_flash_banks._entry, section ".printk_index", align 4
@ice_switch_flash_banks.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ice: Failed to switch active flash banks\00", [55 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Firmware indicated that EMP reset is %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"available\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not available\00", [18 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.141, ptr @.str.2, ptr @.str.145, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Firmware does not support restricting EMP reset availability\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.141, ptr @.str.2, i32 599, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Timed out waiting for firmware to switch active flash banks, err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks._entry_ptr.148 = internal global ptr @ice_switch_flash_banks._entry.146, section ".printk_index", align 4
@ice_switch_flash_banks.__msg.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Timed out waiting for firmware\00", [60 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.141, ptr @.str.2, i32 607, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware failed to switch active flash banks aq_err %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_switch_flash_banks._entry_ptr.152 = internal global ptr @ice_switch_flash_banks._entry.150, section ".printk_index", align 4
@ice_switch_flash_banks.__msg.153 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ice: Firmware failed to switch active flash banks\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Canceling previous pending update\00", [62 x i8] zeroinitializer }, align 32
@ice_cancel_pending_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.156, ptr @.str.2, i32 857, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_cancel_pending_update\00", [38 x i8] zeroinitializer }, align 32
@ice_cancel_pending_update._entry_ptr = internal global ptr @ice_cancel_pending_update._entry, section ".printk_index", align 4
@ice_cancel_pending_update.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ice: Failed to acquire device flash lock\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 16, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 16, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 16, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.163 = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11]
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 777, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 785, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 790, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 795, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 913, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 918, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"ice_fwu_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 739, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 930, i32 46 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 938, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 940, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 946, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 947, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 953, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 58, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 69, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 71, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 226, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 228, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 245, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 254, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 256, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 102, i32 15 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 105, i32 15 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 108, i32 15 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 111, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 115, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 123, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 126, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 132, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 134, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 137, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 139, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 142, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 144, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 147, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 149, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 152, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 154, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 157, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 159, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 162, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 164, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 167, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 169, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 172, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 174, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 177, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 179, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 182, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 184, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 487, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 493, i32 47 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 497, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 500, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 507, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 509, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 517, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 519, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 525, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 528, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 533, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 537, i32 47 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 540, i32 47 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 409, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 413, i32 46 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 444, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 447, i32 47 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 450, i32 47 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 303, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 309, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 312, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 324, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 326, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 337, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 339, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 344, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 346, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 351, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 354, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 368, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 372, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 711, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 718, i32 10 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 723, i32 10 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 729, i32 10 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 573, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 575, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 586, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 591, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 598, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 600, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 606, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 608, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 851, i32 9 }
@___asan_gen_.602 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 856, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.609 = private constant [50 x i8] c"../drivers/net/ethernet/intel/ice/ice_fw_update.c\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 858, i32 3 }
@llvm.compiler.used = appending global [184 x ptr] [ptr @ice_cancel_pending_update._entry, ptr @ice_cancel_pending_update._entry_ptr, ptr @ice_check_component_response._entry, ptr @ice_check_component_response._entry.43, ptr @ice_check_component_response._entry.46, ptr @ice_check_component_response._entry.49, ptr @ice_check_component_response._entry.53, ptr @ice_check_component_response._entry.57, ptr @ice_check_component_response._entry.61, ptr @ice_check_component_response._entry.65, ptr @ice_check_component_response._entry.69, ptr @ice_check_component_response._entry.73, ptr @ice_check_component_response._entry.77, ptr @ice_check_component_response._entry.81, ptr @ice_check_component_response._entry.85, ptr @ice_check_component_response._entry_ptr, ptr @ice_check_component_response._entry_ptr.45, ptr @ice_check_component_response._entry_ptr.48, ptr @ice_check_component_response._entry_ptr.51, ptr @ice_check_component_response._entry_ptr.55, ptr @ice_check_component_response._entry_ptr.59, ptr @ice_check_component_response._entry_ptr.63, ptr @ice_check_component_response._entry_ptr.67, ptr @ice_check_component_response._entry_ptr.71, ptr @ice_check_component_response._entry_ptr.75, ptr @ice_check_component_response._entry_ptr.79, ptr @ice_check_component_response._entry_ptr.83, ptr @ice_check_component_response._entry_ptr.87, ptr @ice_devlink_flash_update._entry, ptr @ice_devlink_flash_update._entry.17, ptr @ice_devlink_flash_update._entry.21, ptr @ice_devlink_flash_update._entry_ptr, ptr @ice_devlink_flash_update._entry_ptr.19, ptr @ice_devlink_flash_update._entry_ptr.23, ptr @ice_erase_nvm_module._entry, ptr @ice_erase_nvm_module._entry.101, ptr @ice_erase_nvm_module._entry.93, ptr @ice_erase_nvm_module._entry.97, ptr @ice_erase_nvm_module._entry_ptr, ptr @ice_erase_nvm_module._entry_ptr.103, ptr @ice_erase_nvm_module._entry_ptr.95, ptr @ice_erase_nvm_module._entry_ptr.99, ptr @ice_get_pending_updates._entry, ptr @ice_get_pending_updates._entry.5, ptr @ice_get_pending_updates._entry.8, ptr @ice_get_pending_updates._entry_ptr, ptr @ice_get_pending_updates._entry_ptr.10, ptr @ice_get_pending_updates._entry_ptr.7, ptr @ice_send_component_table._entry, ptr @ice_send_component_table._entry.31, ptr @ice_send_component_table._entry_ptr, ptr @ice_send_component_table._entry_ptr.33, ptr @ice_send_package_data._entry, ptr @ice_send_package_data._entry_ptr, ptr @ice_switch_flash_banks._entry, ptr @ice_switch_flash_banks._entry.146, ptr @ice_switch_flash_banks._entry.150, ptr @ice_switch_flash_banks._entry_ptr, ptr @ice_switch_flash_banks._entry_ptr.148, ptr @ice_switch_flash_banks._entry_ptr.152, ptr @ice_write_one_nvm_block._entry, ptr @ice_write_one_nvm_block._entry.117, ptr @ice_write_one_nvm_block._entry.121, ptr @ice_write_one_nvm_block._entry.125, ptr @ice_write_one_nvm_block._entry.129, ptr @ice_write_one_nvm_block._entry_ptr, ptr @ice_write_one_nvm_block._entry_ptr.119, ptr @ice_write_one_nvm_block._entry_ptr.123, ptr @ice_write_one_nvm_block._entry_ptr.127, ptr @ice_write_one_nvm_block._entry_ptr.131, ptr @ice_get_pending_updates.__msg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @ice_devlink_flash_update.__msg, ptr @ice_devlink_flash_update.__msg.11, ptr @ice_fwu_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ice_devlink_flash_update.__msg.16, ptr @.str.18, ptr @ice_devlink_flash_update.__msg.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ice_send_package_data.__msg, ptr @.str.28, ptr @.str.29, ptr @ice_send_component_table.__msg, ptr @.str.30, ptr @.str.32, ptr @ice_send_component_table.__msg.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @ice_check_component_response.__msg, ptr @.str.50, ptr @ice_check_component_response.__msg.52, ptr @.str.54, ptr @ice_check_component_response.__msg.56, ptr @.str.58, ptr @ice_check_component_response.__msg.60, ptr @.str.62, ptr @ice_check_component_response.__msg.64, ptr @.str.66, ptr @ice_check_component_response.__msg.68, ptr @.str.70, ptr @ice_check_component_response.__msg.72, ptr @.str.74, ptr @ice_check_component_response.__msg.76, ptr @.str.78, ptr @ice_check_component_response.__msg.80, ptr @.str.82, ptr @ice_check_component_response.__msg.84, ptr @.str.86, ptr @ice_check_component_response.__msg.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @ice_erase_nvm_module.__msg, ptr @.str.94, ptr @ice_erase_nvm_module.__msg.96, ptr @.str.98, ptr @ice_erase_nvm_module.__msg.100, ptr @.str.102, ptr @ice_erase_nvm_module.__msg.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @ice_write_one_nvm_block.__msg, ptr @.str.118, ptr @ice_write_one_nvm_block.__msg.120, ptr @.str.122, ptr @ice_write_one_nvm_block.__msg.124, ptr @.str.126, ptr @ice_write_one_nvm_block.__msg.128, ptr @.str.130, ptr @ice_write_one_nvm_block.__msg.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @ice_switch_flash_banks.__msg, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @ice_switch_flash_banks.__msg.149, ptr @.str.151, ptr @ice_switch_flash_banks.__msg.153, ptr @.str.155, ptr @.str.156, ptr @ice_cancel_pending_update.__msg], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_pending_updates.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_pending_updates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_pending_updates._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_get_pending_updates._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update.__msg.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_fwu_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update.__msg.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update.__msg.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_flash_update._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_send_package_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_send_package_data.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_send_component_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_send_component_table.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_send_component_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_send_component_table.__msg.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.80 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.84 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_check_component_response.__msg.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module.__msg.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module.__msg.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_erase_nvm_module.__msg.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block.__msg.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block.__msg.124 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block.__msg.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_write_one_nvm_block.__msg.132 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_switch_flash_banks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_switch_flash_banks.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_switch_flash_banks._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_switch_flash_banks.__msg.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_switch_flash_banks._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_switch_flash_banks.__msg.153 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_cancel_pending_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_cancel_pending_update.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_pending_updates(ptr noundef %pf, ptr nocapture noundef %pending, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call3 = tail call i32 @ice_discover_dev_caps(ptr noundef %hw2, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_get_pending_updates.__msg) #7
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup.sink.split_crit_edge, label %if.then7

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ice_get_pending_updates.__msg, ptr %extack, align 4
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pending, align 1
  %nvm_update_pending_nvm = getelementptr inbounds %struct.ice_hw_common_caps, ptr %call7.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %nvm_update_pending_nvm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nvm_update_pending_nvm, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %do.end14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str) #11
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pending, align 1
  %9 = or i8 %8, 8
  store i8 %9, ptr %pending, align 1
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end9.if.end16_crit_edge
  %nvm_update_pending_orom = getelementptr inbounds %struct.ice_hw_common_caps, ptr %call7.i.i, i32 0, i32 17
  %10 = ptrtoint ptr %nvm_update_pending_orom to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nvm_update_pending_orom, align 1, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.end16.if.end26_crit_edge, label %do.end22

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pending, align 1
  %14 = or i8 %13, 16
  store i8 %14, ptr %pending, align 1
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.end16.if.end26_crit_edge
  %nvm_update_pending_netlist = getelementptr inbounds %struct.ice_hw_common_caps, ptr %call7.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %nvm_update_pending_netlist to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nvm_update_pending_netlist, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool28.not = icmp eq i8 %16, 0
  br i1 %tobool28.not, label %if.end26.cleanup.sink.split_crit_edge, label %do.end32

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  %17 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pending, align 1
  %19 = or i8 %18, 32
  store i8 %19, ptr %pending, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end32, %if.end26.cleanup.sink.split_crit_edge, %if.then7, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3, %if.then7 ], [ %call3, %do.body.cleanup.sink.split_crit_edge ], [ 0, %do.end32 ], [ 0, %if.end26.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_discover_dev_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_devlink_flash_update(ptr noundef %devlink, ptr nocapture noundef readonly %params, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %pending.i = alloca i8, align 1
  %priv = alloca %struct.ice_fwu_priv, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %priv) #7
  %overwrite_mask = getelementptr inbounds %struct.devlink_flash_update_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %overwrite_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %overwrite_mask, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 0, label %entry.if.end14_crit_edge
    i32 1, label %if.then4
    i32 3, label %if.then8
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_flash_update.__msg) #7
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %if.then11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_devlink_flash_update.__msg, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then8, %if.then4, %entry.if.end14_crit_edge
  %preservation.0 = phi i8 [ 6, %if.then4 ], [ 0, %if.then8 ], [ 2, %entry.if.end14_crit_edge ]
  %nvm_unified_update = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 27, i32 0, i32 19
  %6 = ptrtoint ptr %nvm_unified_update to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nvm_unified_update, align 1, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %do.body17, label %if.end25

do.body17:                                        ; preds = %if.end14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_flash_update.__msg.11) #7
  %tobool19.not = icmp eq ptr %extack, null
  br i1 %tobool19.not, label %do.body17.cleanup_crit_edge, label %if.then20

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ice_devlink_flash_update.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %9 = getelementptr inbounds i8, ptr %priv, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ice_fwu_ops, ptr %priv, align 4
  %dev27 = getelementptr inbounds %struct.pldmfw, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %dev27, align 4
  %extack28 = getelementptr inbounds %struct.ice_fwu_priv, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %extack28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %extack, ptr %extack28, align 4
  %pf29 = getelementptr inbounds %struct.ice_fwu_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %pf29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %pf29, align 4
  %activate_flags = getelementptr inbounds %struct.ice_fwu_priv, ptr %priv, i32 0, i32 3
  %15 = ptrtoint ptr %activate_flags to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %preservation.0, ptr %activate_flags, align 4
  tail call void @devlink_flash_update_status_notify(ptr noundef %devlink, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %call) #7
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pending.i) #7
  %18 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %pending.i, align 1, !annotation !305
  %call3.i = call i32 @ice_get_pending_updates(ptr noundef %call, ptr noundef nonnull %pending.i, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end45.i, label %if.end25.ice_cancel_pending_update.exit.thread_crit_edge

if.end25.ice_cancel_pending_update.exit.thread_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_cancel_pending_update.exit.thread

if.end45.i:                                       ; preds = %if.end25
  %19 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pending.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool46.not.i = icmp eq i8 %20, 0
  br i1 %tobool46.not.i, label %ice_cancel_pending_update.exit.thread110, label %if.end48.i

ice_cancel_pending_update.exit.thread110:         ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending.i) #7
  br label %if.end33

if.end48.i:                                       ; preds = %if.end45.i
  tail call void @devlink_flash_update_status_notify(ptr noundef %call.i, ptr noundef nonnull @.str.155, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %call49.i = tail call i32 @ice_acquire_nvm(ptr noundef %hw2, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %ice_cancel_pending_update.exit, label %do.end54.i

do.end54.i:                                       ; preds = %if.end48.i
  %sq_last_status.i = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %21 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sq_last_status.i, align 4
  %call55.i = tail call ptr @ice_aq_str(i32 noundef %22) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.13, i32 noundef %call49.i, ptr noundef %call55.i) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_cancel_pending_update.__msg) #7
  %tobool57.not.i = icmp eq ptr %extack, null
  br i1 %tobool57.not.i, label %do.end54.i.ice_cancel_pending_update.exit.thread_crit_edge, label %if.then58.i

do.end54.i.ice_cancel_pending_update.exit.thread_crit_edge: ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_cancel_pending_update.exit.thread

if.then58.i:                                      ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ice_cancel_pending_update.__msg, ptr %extack, align 4
  br label %ice_cancel_pending_update.exit.thread

ice_cancel_pending_update.exit.thread:            ; preds = %if.then58.i, %do.end54.i.ice_cancel_pending_update.exit.thread_crit_edge, %if.end25.ice_cancel_pending_update.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call49.i, %do.end54.i.ice_cancel_pending_update.exit.thread_crit_edge ], [ %call49.i, %if.then58.i ], [ %call3.i, %if.end25.ice_cancel_pending_update.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending.i) #7
  br label %cleanup

ice_cancel_pending_update.exit:                   ; preds = %if.end48.i
  %24 = or i8 %20, 64
  %call65.i = tail call fastcc i32 @ice_switch_flash_banks(ptr noundef %call, i8 noundef zeroext %24, ptr noundef null, ptr noundef %extack) #7
  tail call void @ice_release_nvm(ptr noundef %hw2) #7
  %fw_emp_reset_disabled.i = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 38
  %25 = ptrtoint ptr %fw_emp_reset_disabled.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fw_emp_reset_disabled.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool31.not = icmp eq i32 %call65.i, 0
  br i1 %tobool31.not, label %ice_cancel_pending_update.exit.if.end33_crit_edge, label %ice_cancel_pending_update.exit.cleanup_crit_edge

ice_cancel_pending_update.exit.cleanup_crit_edge: ; preds = %ice_cancel_pending_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_cancel_pending_update.exit.if.end33_crit_edge: ; preds = %ice_cancel_pending_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %ice_cancel_pending_update.exit.if.end33_crit_edge, %ice_cancel_pending_update.exit.thread110
  %call34 = tail call i32 @ice_acquire_nvm(ptr noundef %hw2, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end49, label %do.end39

do.end39:                                         ; preds = %if.end33
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %26 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sq_last_status, align 4
  %call40 = tail call ptr @ice_aq_str(i32 noundef %27) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call34, ptr noundef %call40) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_flash_update.__msg.16) #7
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.end39.cleanup_crit_edge, label %if.then44

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ice_devlink_flash_update.__msg.16, ptr %extack, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end33
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %params, align 4
  %call51 = call i32 @pldmfw_flash_image(ptr noundef nonnull %priv, ptr noundef %30) #7
  %31 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call51, label %do.end70 [
    i32 -2, label %do.end56
    i32 0, label %if.end49.if.end72_crit_edge
  ]

if.end49.if.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end56:                                         ; preds = %if.end49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_flash_update.__msg.20) #7
  %tobool59.not = icmp eq ptr %extack, null
  br i1 %tobool59.not, label %do.end56.if.end72_crit_edge, label %if.then60

do.end56.if.end72_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then60:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ice_devlink_flash_update.__msg.20, ptr %extack, align 4
  br label %if.end72

do.end70:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call51) #11
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %if.then60, %do.end56.if.end72_crit_edge, %if.end49.if.end72_crit_edge
  call void @ice_release_nvm(ptr noundef %hw2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then44, %do.end39.cleanup_crit_edge, %ice_cancel_pending_update.exit.cleanup_crit_edge, %ice_cancel_pending_update.exit.thread, %if.then20, %do.body17.cleanup_crit_edge, %if.then11, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end72 ], [ -95, %if.then11 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then20 ], [ -95, %do.body17.cleanup_crit_edge ], [ %call65.i, %ice_cancel_pending_update.exit.cleanup_crit_edge ], [ %call34, %if.then44 ], [ %call34, %do.end39.cleanup_crit_edge ], [ %retval.0.i.ph, %ice_cancel_pending_update.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %priv) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_status_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_acquire_nvm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_aq_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pldmfw_flash_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pldmfw_op_pci_match_record(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_send_package_data(ptr nocapture noundef readonly %context, ptr noundef %data, i16 noundef zeroext %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %dev2 = getelementptr inbounds %struct.pldmfw, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %pf3 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %pf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pf3, align 4
  %hw4 = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_send_package_data.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_send_package_data, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_send_package_data.__UNIQUE_ID_ddebug613, ptr noundef %3, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i16 %length to i32
  %call8 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %conv, i32 noundef 3264) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call i32 @ice_nvm_set_pkg_data(ptr noundef %hw4, i1 noundef zeroext false, ptr noundef nonnull %call8, i16 noundef zeroext %length, ptr noundef null) #7
  tail call void @kfree(ptr noundef nonnull %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 58, i32 30, i32 8
  %6 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_last_status, align 4
  %call18 = tail call ptr @ice_aq_str(i32 noundef %7) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %call12, ptr noundef %call18) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_send_package_data.__msg) #7
  %tobool20.not = icmp eq ptr %1, null
  br i1 %tobool20.not, label %do.end17.cleanup_crit_edge, label %if.then21

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ice_send_package_data.__msg, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ -5, %if.then21 ], [ -5, %do.end17.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_send_component_table(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %component, i8 noundef zeroext %transfer_flag) #0 align 64 {
entry:
  %comp_response = alloca i8, align 1
  %comp_response_code = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_response) #7
  %2 = ptrtoint ptr %comp_response to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %comp_response, align 1, !annotation !305
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %comp_response_code) #7
  %3 = ptrtoint ptr %comp_response_code to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %comp_response_code, align 1, !annotation !305
  %dev2 = getelementptr inbounds %struct.pldmfw, ptr %context, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %pf3 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %pf3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf3, align 4
  %hw4 = getelementptr inbounds %struct.ice_pf, ptr %7, i32 0, i32 58
  %identifier = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 2
  %8 = ptrtoint ptr %identifier to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %identifier, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.158)
  switch i16 %9, label %do.end [
    i16 5, label %entry.sw.epilog_crit_edge
    i16 6, label %entry.sw.epilog_crit_edge90
    i16 8, label %entry.sw.epilog_crit_edge91
  ]

entry.sw.epilog_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %conv) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_send_component_table.__msg) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.then

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ice_send_component_table.__msg, ptr %1, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge90, %entry.sw.epilog_crit_edge91
  %version_len = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 10
  %12 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %version_len, align 1
  %conv10 = zext i8 %13 to i32
  %spec.select.i89 = add nuw nsw i32 %conv10, 11
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i89, i32 noundef 3520) #12
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %sw.epilog.cleanup_crit_edge, label %if.end14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  %classification = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 1
  %14 = ptrtoint ptr %classification to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %classification, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %call9.i.i, align 128
  %18 = ptrtoint ptr %identifier to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %identifier, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %comp_id = getelementptr inbounds %struct.ice_aqc_nvm_comp_tbl, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %comp_id to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %comp_id, align 2
  %comp_class_idx = getelementptr inbounds %struct.ice_aqc_nvm_comp_tbl, ptr %call9.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %comp_class_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %comp_class_idx, align 4
  %comparison_stamp = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 5
  %23 = ptrtoint ptr %comparison_stamp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %comparison_stamp, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %comp_cmp_stamp = getelementptr inbounds %struct.ice_aqc_nvm_comp_tbl, ptr %call9.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %comp_cmp_stamp to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %comp_cmp_stamp, align 1
  %version_type = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 9
  %27 = ptrtoint ptr %version_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %version_type, align 4
  %cvs_type = getelementptr inbounds %struct.ice_aqc_nvm_comp_tbl, ptr %call9.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %cvs_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cvs_type, align 1
  %30 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %version_len, align 1
  %cvs_len = getelementptr inbounds %struct.ice_aqc_nvm_comp_tbl, ptr %call9.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %cvs_len to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %cvs_len, align 2
  %cvs = getelementptr inbounds %struct.ice_aqc_nvm_comp_tbl, ptr %call9.i.i, i32 0, i32 6
  %version_string = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 8
  %33 = ptrtoint ptr %version_string to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %version_string, align 4
  %conv18 = zext i8 %31 to i32
  %35 = call ptr @memcpy(ptr %cvs, ptr %34, i32 %conv18)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_send_component_table.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_send_component_table, %if.then25)) #7
          to label %do.end28 [label %if.then25], !srcloc !306

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_send_component_table.__UNIQUE_ID_ddebug615, ptr noundef %5, ptr noundef nonnull @.str.30) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %if.end14
  %conv29 = trunc i32 %spec.select.i89 to i16
  %call30 = call i32 @ice_nvm_pass_component_tbl(ptr noundef %hw4, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv29, i8 noundef zeroext %transfer_flag, ptr noundef nonnull %comp_response, ptr noundef nonnull %comp_response_code, ptr noundef null) #7
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end45, label %do.end35

do.end35:                                         ; preds = %do.end28
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %7, i32 0, i32 58, i32 30, i32 8
  %36 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sq_last_status, align 4
  %call36 = call ptr @ice_aq_str(i32 noundef %37) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %call30, ptr noundef %call36) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_send_component_table.__msg.34) #7
  %tobool39.not = icmp eq ptr %1, null
  br i1 %tobool39.not, label %do.end35.cleanup_crit_edge, label %if.then40

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ice_send_component_table.__msg.34, ptr %1, align 4
  br label %cleanup

if.end45:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %identifier to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %identifier, align 2
  %41 = ptrtoint ptr %comp_response to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %comp_response, align 1
  %43 = ptrtoint ptr %comp_response_code to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %comp_response_code, align 1
  %call47 = call fastcc i32 @ice_check_component_response(ptr noundef %7, i16 noundef zeroext %40, i8 noundef zeroext %42, i8 noundef zeroext %44, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then40, %do.end35.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end45 ], [ -95, %if.then ], [ -95, %do.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -5, %if.then40 ], [ -5, %do.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_response_code) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %comp_response) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_flash_component(ptr noundef %context, ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %pf2 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %pf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2, align 4
  %identifier = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 2
  %4 = ptrtoint ptr %identifier to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %identifier, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.159)
  switch i16 %5, label %do.end [
    i16 5, label %entry.sw.epilog_crit_edge
    i16 6, label %sw.bb3
    i16 8, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reset_level4 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %5 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 664, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %entry.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.37, %sw.bb5 ], [ @.str.36, %sw.bb3 ], [ @.str.35, %entry.sw.epilog_crit_edge ]
  %reset_level.0 = phi ptr [ null, %sw.bb5 ], [ %reset_level4, %sw.bb3 ], [ null, %entry.sw.epilog_crit_edge ]
  %module.0 = phi i16 [ 70, %sw.bb5 ], [ 66, %sw.bb3 ], [ 68, %entry.sw.epilog_crit_edge ]
  %flag.0 = phi i8 [ 32, %sw.bb5 ], [ 8, %sw.bb3 ], [ 16, %entry.sw.epilog_crit_edge ]
  %activate_flags = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 3
  %7 = ptrtoint ptr %activate_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %activate_flags, align 4
  %or = or i8 %8, %flag.0
  store i8 %or, ptr %activate_flags, align 4
  %call = tail call fastcc i32 @ice_erase_nvm_module(ptr noundef %3, i16 noundef zeroext %module.0, ptr noundef nonnull %name.0, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end28, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %component_data = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 7
  %9 = ptrtoint ptr %component_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %component_data, align 4
  %component_size = getelementptr inbounds %struct.pldmfw_component, ptr %component, i32 0, i32 6
  %11 = ptrtoint ptr %component_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %component_size, align 4
  %call29 = tail call fastcc i32 @ice_write_nvm_module(ptr noundef %3, i16 noundef zeroext %module.0, ptr noundef nonnull %name.0, ptr noundef %10, i32 noundef %12, ptr noundef %reset_level.0, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call29, %if.end28 ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_finalize_update(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %pf2 = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %pf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2, align 4
  %activate_flags = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 3
  %4 = ptrtoint ptr %activate_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %activate_flags, align 4
  %emp_reset_available = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 5
  %call = tail call fastcc i32 @ice_switch_flash_banks(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %emp_reset_available, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @priv_to_devlink(ptr noundef %3) #7
  %reset_level = getelementptr inbounds %struct.ice_fwu_priv, ptr %context, i32 0, i32 4
  %6 = ptrtoint ptr %reset_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reset_level, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %7, label %sw.default [
    i8 2, label %land.lhs.true
    i8 1, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %emp_reset_available to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %emp_reset_available, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %do.body, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_finalize_update.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_finalize_update, %if.then13)) #7
          to label %if.end16.thread45 [label %if.then13], !srcloc !306

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_finalize_update.__UNIQUE_ID_ddebug627, ptr noundef %dev, ptr noundef nonnull @.str.136) #7
  br label %if.end16.thread45

if.end16.thread45:                                ; preds = %if.then13, %do.body
  %13 = ptrtoint ptr %reset_level to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %reset_level, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end16.thread45, %land.lhs.true.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.str.139.sink = phi ptr [ @.str.139, %sw.default ], [ @.str.137, %land.lhs.true.sw.epilog_crit_edge ], [ @.str.138, %if.end.sw.epilog_crit_edge ], [ @.str.138, %if.end16.thread45 ]
  tail call void @devlink_flash_update_status_notify(ptr noundef %call3, ptr noundef nonnull %.str.139.sink, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %14 = ptrtoint ptr %emp_reset_available to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %emp_reset_available, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  %fw_emp_reset_disabled = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 38
  %frombool25 = zext i1 %tobool22.not to i8
  %16 = ptrtoint ptr %fw_emp_reset_disabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool25, ptr %fw_emp_reset_disabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_nvm_set_pkg_data(ptr noundef, i1 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_nvm_pass_component_tbl(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_check_component_response(ptr nocapture noundef readonly %pf, i16 noundef zeroext %id, i8 noundef zeroext %response, i8 noundef zeroext %code, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = zext i16 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %id, label %do.end [
    i16 5, label %entry.do.body19_crit_edge
    i16 6, label %sw.bb2
    i16 8, label %sw.bb3
  ]

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %id to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 111, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %cleanup

do.body19:                                        ; preds = %sw.bb3, %sw.bb2, %entry.do.body19_crit_edge
  %component.0 = phi ptr [ @.str.37, %sw.bb3 ], [ @.str.36, %sw.bb2 ], [ @.str.35, %entry.do.body19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_check_component_response.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_check_component_response, %if.then28)) #7
          to label %do.end33 [label %if.then28], !srcloc !306

if.then28:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = zext i8 %response to i32
  %conv30 = zext i8 %code to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_check_component_response.__UNIQUE_ID_ddebug614, ptr noundef %dev1, ptr noundef nonnull @.str.40, ptr noundef nonnull %component.0, i32 noundef %conv29, i32 noundef %conv30) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body19
  %3 = zext i8 %response to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.162)
  switch i8 %response, label %do.end33.sw.epilog44_crit_edge [
    i8 0, label %do.end33.cleanup_crit_edge
    i8 1, label %do.end39
    i8 2, label %do.end43
  ]

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33.sw.epilog44_crit_edge:                   ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog44

do.end39:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef nonnull %component.0) #11
  br label %cleanup

do.end43:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef nonnull %component.0) #11
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %do.end43, %do.end33.sw.epilog44_crit_edge
  %4 = zext i8 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %code, label %do.end167 [
    i8 1, label %do.end49
    i8 2, label %do.end59
    i8 3, label %do.end71
    i8 4, label %do.end83
    i8 5, label %do.end95
    i8 6, label %do.end107
    i8 7, label %do.end119
    i8 8, label %do.end131
    i8 10, label %do.end143
    i8 11, label %do.end155
  ]

do.end49:                                         ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg) #7
  %tobool51.not = icmp eq ptr %extack, null
  br i1 %tobool51.not, label %do.end49.cleanup_crit_edge, label %if.then52

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_check_component_response.__msg, ptr %extack, align 4
  br label %cleanup

do.end59:                                         ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.52) #7
  %tobool62.not = icmp eq ptr %extack, null
  br i1 %tobool62.not, label %do.end59.cleanup_crit_edge, label %if.then63

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then63:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ice_check_component_response.__msg.52, ptr %extack, align 4
  br label %cleanup

do.end71:                                         ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.56) #7
  %tobool74.not = icmp eq ptr %extack, null
  br i1 %tobool74.not, label %do.end71.cleanup_crit_edge, label %if.then75

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then75:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ice_check_component_response.__msg.56, ptr %extack, align 4
  br label %cleanup

do.end83:                                         ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.60) #7
  %tobool86.not = icmp eq ptr %extack, null
  br i1 %tobool86.not, label %do.end83.cleanup_crit_edge, label %if.then87

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ice_check_component_response.__msg.60, ptr %extack, align 4
  br label %cleanup

do.end95:                                         ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.64) #7
  %tobool98.not = icmp eq ptr %extack, null
  br i1 %tobool98.not, label %do.end95.cleanup_crit_edge, label %if.then99

do.end95.cleanup_crit_edge:                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then99:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ice_check_component_response.__msg.64, ptr %extack, align 4
  br label %cleanup

do.end107:                                        ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.68) #7
  %tobool110.not = icmp eq ptr %extack, null
  br i1 %tobool110.not, label %do.end107.cleanup_crit_edge, label %if.then111

do.end107.cleanup_crit_edge:                      ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then111:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ice_check_component_response.__msg.68, ptr %extack, align 4
  br label %cleanup

do.end119:                                        ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.72) #7
  %tobool122.not = icmp eq ptr %extack, null
  br i1 %tobool122.not, label %do.end119.cleanup_crit_edge, label %if.then123

do.end119.cleanup_crit_edge:                      ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then123:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ice_check_component_response.__msg.72, ptr %extack, align 4
  br label %cleanup

do.end131:                                        ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.76) #7
  %tobool134.not = icmp eq ptr %extack, null
  br i1 %tobool134.not, label %do.end131.cleanup_crit_edge, label %if.then135

do.end131.cleanup_crit_edge:                      ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then135:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ice_check_component_response.__msg.76, ptr %extack, align 4
  br label %cleanup

do.end143:                                        ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.78, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.80) #7
  %tobool146.not = icmp eq ptr %extack, null
  br i1 %tobool146.not, label %do.end143.cleanup_crit_edge, label %if.then147

do.end143.cleanup_crit_edge:                      ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then147:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ice_check_component_response.__msg.80, ptr %extack, align 4
  br label %cleanup

do.end155:                                        ; preds = %sw.epilog44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.84) #7
  %tobool158.not = icmp eq ptr %extack, null
  br i1 %tobool158.not, label %do.end155.cleanup_crit_edge, label %if.then159

do.end155.cleanup_crit_edge:                      ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then159:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ice_check_component_response.__msg.84, ptr %extack, align 4
  br label %cleanup

do.end167:                                        ; preds = %sw.epilog44
  %conv45 = zext i8 %code to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.86, i32 noundef %conv45, ptr noundef nonnull %component.0) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_check_component_response.__msg.88) #7
  %tobool171.not = icmp eq ptr %extack, null
  br i1 %tobool171.not, label %do.end167.cleanup_crit_edge, label %if.then172

do.end167.cleanup_crit_edge:                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then172:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ice_check_component_response.__msg.88, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then172, %do.end167.cleanup_crit_edge, %if.then159, %do.end155.cleanup_crit_edge, %if.then147, %do.end143.cleanup_crit_edge, %if.then135, %do.end131.cleanup_crit_edge, %if.then123, %do.end119.cleanup_crit_edge, %if.then111, %do.end107.cleanup_crit_edge, %if.then99, %do.end95.cleanup_crit_edge, %if.then87, %do.end83.cleanup_crit_edge, %if.then75, %do.end71.cleanup_crit_edge, %if.then63, %do.end59.cleanup_crit_edge, %if.then52, %do.end49.cleanup_crit_edge, %do.end39, %do.end33.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end39 ], [ 0, %do.end33.cleanup_crit_edge ], [ -125, %do.end167.cleanup_crit_edge ], [ -125, %if.then172 ], [ -125, %do.end155.cleanup_crit_edge ], [ -125, %if.then159 ], [ -125, %do.end143.cleanup_crit_edge ], [ -125, %if.then147 ], [ -125, %do.end131.cleanup_crit_edge ], [ -125, %if.then135 ], [ -125, %do.end119.cleanup_crit_edge ], [ -125, %if.then123 ], [ -125, %do.end107.cleanup_crit_edge ], [ -125, %if.then111 ], [ -125, %do.end95.cleanup_crit_edge ], [ -125, %if.then99 ], [ -125, %do.end83.cleanup_crit_edge ], [ -125, %if.then87 ], [ -125, %do.end71.cleanup_crit_edge ], [ -125, %if.then75 ], [ -125, %do.end59.cleanup_crit_edge ], [ -125, %if.then63 ], [ -125, %do.end49.cleanup_crit_edge ], [ -125, %if.then52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_erase_nvm_module(ptr noundef %pf, i16 noundef zeroext %module, ptr noundef %component, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ice_rq_event_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event) #7
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_erase_nvm_module.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_erase_nvm_module, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %module to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_erase_nvm_module.__UNIQUE_ID_ddebug623, ptr noundef %dev1, ptr noundef nonnull @.str.90, ptr noundef %component, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = call ptr @memset(ptr %event, i32 0, i32 40)
  %call5 = tail call ptr @priv_to_devlink(ptr noundef %pf) #7
  tail call void @devlink_flash_update_timeout_notify(ptr noundef %call5, ptr noundef nonnull @.str.91, ptr noundef %component, i32 noundef 300) #7
  %call6 = tail call i32 @ice_aq_erase_nvm(ptr noundef %hw2, i16 noundef zeroext %module, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end20, label %do.end11

do.end11:                                         ; preds = %do.end
  %conv12 = zext i16 %module to i32
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 30, i32 8
  %3 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sq_last_status, align 4
  %call13 = tail call ptr @ice_aq_str(i32 noundef %4) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.92, ptr noundef %component, i32 noundef %conv12, i32 noundef %call6, ptr noundef %call13) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_erase_nvm_module.__msg) #7
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.end11.if.end93_crit_edge, label %do.end11.if.then92.sink.split_crit_edge

do.end11.if.then92.sink.split_crit_edge:          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.sink.split

do.end11.if.end93_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end20:                                         ; preds = %do.end
  %call21 = call i32 @ice_aq_wait_for_event(ptr noundef %pf, i16 noundef zeroext 1794, i32 noundef 30000, ptr noundef nonnull %event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end36, label %do.end26

do.end26:                                         ; preds = %if.end20
  %conv27 = zext i16 %module to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.94, ptr noundef %component, i32 noundef %conv27, i32 noundef %call21) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_erase_nvm_module.__msg.96) #7
  %tobool30.not = icmp eq ptr %extack, null
  br i1 %tobool30.not, label %do.end26.if.end93_crit_edge, label %do.end26.if.then92.sink.split_crit_edge

do.end26.if.then92.sink.split_crit_edge:          ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.sink.split

do.end26.if.end93_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end36:                                         ; preds = %if.end20
  %module_typeid = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 6, i32 0, i32 1
  %5 = ptrtoint ptr %module_typeid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %module_typeid, align 4
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %retval38 = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 3
  %8 = ptrtoint ptr %retval38 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %retval38, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %conv40 = zext i16 %module to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %module)
  %cmp.not = icmp eq i16 %7, %module
  br i1 %cmp.not, label %if.end56, label %do.end45

do.end45:                                         ; preds = %if.end36
  %conv39 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.98, ptr noundef %component, i32 noundef %conv39, i32 noundef %conv40) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_erase_nvm_module.__msg.100) #7
  %tobool50.not = icmp eq ptr %extack, null
  br i1 %tobool50.not, label %do.end45.if.end93_crit_edge, label %do.end45.if.then92.sink.split_crit_edge

do.end45.if.then92.sink.split_crit_edge:          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.sink.split

do.end45.if.end93_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end56:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool57.not = icmp eq i16 %9, 0
  br i1 %tobool57.not, label %do.body74, label %do.end61

do.end61:                                         ; preds = %if.end56
  %conv63 = zext i16 %10 to i32
  %call64 = call ptr @ice_aq_str(i32 noundef %conv63) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.102, ptr noundef %component, i32 noundef %conv40, ptr noundef %call64) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_erase_nvm_module.__msg.104) #7
  %tobool67.not = icmp eq ptr %extack, null
  br i1 %tobool67.not, label %do.end61.if.end93_crit_edge, label %do.end61.if.then92.sink.split_crit_edge

do.end61.if.then92.sink.split_crit_edge:          ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.sink.split

do.end61.if.end93_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.body74:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_erase_nvm_module.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_erase_nvm_module, %if.then86)) #7
          to label %if.end93 [label %if.then86], !srcloc !306

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_erase_nvm_module.__UNIQUE_ID_ddebug624, ptr noundef %dev1, ptr noundef nonnull @.str.105, ptr noundef %component, i32 noundef %conv40) #7
  br label %if.end93

if.then92.sink.split:                             ; preds = %do.end61.if.then92.sink.split_crit_edge, %do.end45.if.then92.sink.split_crit_edge, %do.end26.if.then92.sink.split_crit_edge, %do.end11.if.then92.sink.split_crit_edge
  %ice_erase_nvm_module.__msg.sink = phi ptr [ @ice_erase_nvm_module.__msg, %do.end11.if.then92.sink.split_crit_edge ], [ @ice_erase_nvm_module.__msg.96, %do.end26.if.then92.sink.split_crit_edge ], [ @ice_erase_nvm_module.__msg.100, %do.end45.if.then92.sink.split_crit_edge ], [ @ice_erase_nvm_module.__msg.104, %do.end61.if.then92.sink.split_crit_edge ]
  %err.0.ph.ph = phi i32 [ -5, %do.end11.if.then92.sink.split_crit_edge ], [ %call21, %do.end26.if.then92.sink.split_crit_edge ], [ -5, %do.end45.if.then92.sink.split_crit_edge ], [ -5, %do.end61.if.then92.sink.split_crit_edge ]
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ice_erase_nvm_module.__msg.sink, ptr %extack, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92.sink.split, %if.then86, %do.body74, %do.end61.if.end93_crit_edge, %do.end45.if.end93_crit_edge, %do.end26.if.end93_crit_edge, %do.end11.if.end93_crit_edge
  %.str.107.sink = phi ptr [ @.str.106, %if.then92.sink.split ], [ @.str.106, %do.end11.if.end93_crit_edge ], [ @.str.106, %do.end26.if.end93_crit_edge ], [ @.str.106, %do.end45.if.end93_crit_edge ], [ @.str.106, %do.end61.if.end93_crit_edge ], [ @.str.107, %if.then86 ], [ @.str.107, %do.body74 ]
  %err.0141 = phi i32 [ %err.0.ph.ph, %if.then92.sink.split ], [ -5, %do.end11.if.end93_crit_edge ], [ %call21, %do.end26.if.end93_crit_edge ], [ -5, %do.end45.if.end93_crit_edge ], [ -5, %do.end61.if.end93_crit_edge ], [ 0, %if.then86 ], [ 0, %do.body74 ]
  call void @devlink_flash_update_status_notify(ptr noundef %call5, ptr noundef nonnull %.str.107.sink, ptr noundef %component, i32 noundef 0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event) #7
  ret i32 %err.0141
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_write_nvm_module(ptr noundef %pf, i16 noundef zeroext %module, ptr noundef %component, ptr nocapture noundef readonly %image, i32 noundef %length, ptr noundef %reset_level, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_nvm_module.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_nvm_module, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %module to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_nvm_module.__UNIQUE_ID_ddebug619, ptr noundef %dev1, ptr noundef nonnull @.str.109, ptr noundef %component, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @priv_to_devlink(ptr noundef %pf) #7
  tail call void @devlink_flash_update_status_notify(ptr noundef %call4, ptr noundef nonnull @.str.110, ptr noundef %component, i32 noundef 0, i32 noundef %length) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup49_crit_edge, label %do.end.do.body9_crit_edge

do.end.do.body9_crit_edge:                        ; preds = %do.end
  br label %do.body9

do.end.cleanup49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

do.body9:                                         ; preds = %cleanup.do.body9_crit_edge, %do.end.do.body9_crit_edge
  %offset.0 = phi i32 [ %add, %cleanup.do.body9_crit_edge ], [ 0, %do.end.do.body9_crit_edge ]
  %sub = sub i32 %length, %offset.0
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %add = add i32 %3, %offset.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %length)
  %cmp12 = icmp uge i32 %add, %length
  %add.ptr = getelementptr i8, ptr %image, i32 %offset.0
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %add.ptr, i32 %3)
  %conv17 = trunc i32 %3 to i16
  %call19 = tail call fastcc i32 @ice_write_one_nvm_block(ptr noundef %pf, i16 noundef zeroext %module, i32 noundef %offset.0, i16 noundef zeroext %conv17, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %cmp12, ptr noundef %reset_level, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %do.body9.do.body29_crit_edge

do.body9.do.body29_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

cleanup:                                          ; preds = %do.body9
  tail call void @devlink_flash_update_status_notify(ptr noundef %call4, ptr noundef nonnull @.str.110, ptr noundef %component, i32 noundef %add, i32 noundef %length) #7
  br i1 %cmp12, label %cleanup.do.body29_crit_edge, label %cleanup.do.body9_crit_edge

cleanup.do.body9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

cleanup.do.body29_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

do.body29:                                        ; preds = %cleanup.do.body29_crit_edge, %do.body9.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_nvm_module.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_nvm_module, %if.then41)) #7
          to label %do.end45 [label %if.then41], !srcloc !306

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %conv42 = zext i16 %module to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_nvm_module.__UNIQUE_ID_ddebug622, ptr noundef %dev1, ptr noundef nonnull @.str.111, ptr noundef %component, i32 noundef %conv42) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %.str.113..str.112 = select i1 %tobool20.not, ptr @.str.113, ptr @.str.112
  tail call void @devlink_flash_update_status_notify(ptr noundef %call4, ptr noundef nonnull %.str.113..str.112, ptr noundef %component, i32 noundef %length, i32 noundef %length) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup49

cleanup49:                                        ; preds = %do.end45, %do.end.cleanup49_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end45 ], [ -12, %do.end.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_timeout_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_erase_nvm(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_wait_for_event(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_write_one_nvm_block(ptr noundef %pf, i16 noundef zeroext %module, i32 noundef %offset, i16 noundef zeroext %block_size, ptr noundef %block, i1 noundef zeroext %last_cmd, ptr noundef %reset_level, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ice_rq_event_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event) #7
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %2 = call ptr @memset(ptr %event, i32 0, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_one_nvm_block.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_one_nvm_block, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %block_size to i32
  %conv6 = zext i16 %module to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_one_nvm_block.__UNIQUE_ID_ddebug616, ptr noundef %dev1, ptr noundef nonnull @.str.115, i32 noundef %conv, i32 noundef %conv6, i32 noundef %offset) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @ice_aq_update_nvm(ptr noundef %hw2, i16 noundef zeroext %module, i32 noundef %offset, i16 noundef zeroext %block_size, ptr noundef %block, i1 noundef zeroext %last_cmd, i8 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end23, label %do.end13

do.end13:                                         ; preds = %do.end
  %conv14 = zext i16 %module to i32
  %conv15 = zext i16 %block_size to i32
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 30, i32 8
  %3 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sq_last_status, align 4
  %call16 = tail call ptr @ice_aq_str(i32 noundef %4) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.116, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %offset, i32 noundef %call8, ptr noundef %call16) #11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_write_one_nvm_block.__msg) #7
  %tobool18.not = icmp eq ptr %extack, null
  br i1 %tobool18.not, label %do.end13.cleanup_crit_edge, label %if.then19

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ice_write_one_nvm_block.__msg, ptr %extack, align 4
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %call24 = call i32 @ice_aq_wait_for_event(ptr noundef %pf, i16 noundef zeroext 1795, i32 noundef 1500, ptr noundef nonnull %event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end40, label %do.end29

do.end29:                                         ; preds = %if.end23
  %conv30 = zext i16 %module to i32
  %conv31 = zext i16 %block_size to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.118, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %offset, i32 noundef %call24) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_write_one_nvm_block.__msg.120) #7
  %tobool34.not = icmp eq ptr %extack, null
  br i1 %tobool34.not, label %do.end29.cleanup_crit_edge, label %if.then35

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ice_write_one_nvm_block.__msg.120, ptr %extack, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end23
  %params = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 6
  %module_typeid = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %module_typeid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %module_typeid, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %retval42 = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 3
  %10 = ptrtoint ptr %retval42 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %retval42, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %params, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv45 = zext i16 %15 to i32
  %offset_high = getelementptr inbounds %struct.ice_aqc_nvm, ptr %params, i32 0, i32 1
  %16 = ptrtoint ptr %offset_high to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset_high, align 2
  %conv48 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv48, 16
  %or = or i32 %shl, %conv45
  %conv50 = zext i16 %module to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %module)
  %cmp.not = icmp eq i16 %9, %module
  br i1 %cmp.not, label %if.end66, label %do.end55

do.end55:                                         ; preds = %if.end40
  %conv49 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.122, i32 noundef %conv49, i32 noundef %conv50) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_write_one_nvm_block.__msg.124) #7
  %tobool60.not = icmp eq ptr %extack, null
  br i1 %tobool60.not, label %do.end55.cleanup_crit_edge, label %if.then61

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then61:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ice_write_one_nvm_block.__msg.124, ptr %extack, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %offset)
  %cmp67.not = icmp eq i32 %or, %offset
  br i1 %cmp67.not, label %if.end81, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.126, i32 noundef %or, i32 noundef %offset) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_write_one_nvm_block.__msg.128) #7
  %tobool75.not = icmp eq ptr %extack, null
  br i1 %tobool75.not, label %do.end72.cleanup_crit_edge, label %if.then76

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ice_write_one_nvm_block.__msg.128, ptr %extack, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool82.not = icmp eq i16 %11, 0
  br i1 %tobool82.not, label %if.end99, label %do.end86

do.end86:                                         ; preds = %if.end81
  %conv88 = zext i16 %block_size to i32
  %conv89 = zext i16 %12 to i32
  %call90 = call ptr @ice_aq_str(i32 noundef %conv89) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.130, i32 noundef %conv50, i32 noundef %conv88, i32 noundef %offset, ptr noundef %call90) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_write_one_nvm_block.__msg.132) #7
  %tobool93.not = icmp eq ptr %extack, null
  br i1 %tobool93.not, label %do.end86.cleanup_crit_edge, label %if.then94

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then94:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ice_write_one_nvm_block.__msg.132, ptr %extack, align 4
  br label %cleanup

if.end99:                                         ; preds = %if.end81
  %tobool100.not = icmp ne ptr %reset_level, null
  %21 = and i1 %tobool100.not, %last_cmd
  call void @__sanitizer_cov_trace_const_cmp2(i16 66, i16 %module)
  %cmp105 = icmp eq i16 %module, 66
  %or.cond = and i1 %cmp105, %21
  br i1 %or.cond, label %if.then107, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then107:                                       ; preds = %if.end99
  %pcie_reset_avoidance = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 27, i32 0, i32 20
  %22 = ptrtoint ptr %pcie_reset_avoidance to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pcie_reset_avoidance, align 2, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool108.not = icmp eq i8 %23, 0
  br i1 %tobool108.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags = getelementptr inbounds %struct.ice_aqc_nvm, ptr %params, i32 0, i32 2
  %24 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cmd_flags, align 1
  %26 = and i8 %25, 3
  %27 = ptrtoint ptr %reset_level to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %reset_level, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_one_nvm_block.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_one_nvm_block, %if.then126)) #7
          to label %cleanup [label %if.then126], !srcloc !306

if.then126:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %reset_level to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reset_level, align 1
  %conv127 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_one_nvm_block.__UNIQUE_ID_ddebug617, ptr noundef %dev1, ptr noundef nonnull @.str.133, i32 noundef %conv127) #7
  br label %cleanup

if.else:                                          ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %reset_level to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reset_level, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_write_one_nvm_block.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_write_one_nvm_block, %if.then143)) #7
          to label %cleanup [label %if.then143], !srcloc !306

if.then143:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_write_one_nvm_block.__UNIQUE_ID_ddebug618, ptr noundef %dev1, ptr noundef nonnull @.str.134) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.else, %if.then126, %if.then109, %if.end99.cleanup_crit_edge, %if.then94, %do.end86.cleanup_crit_edge, %if.then76, %do.end72.cleanup_crit_edge, %if.then61, %do.end55.cleanup_crit_edge, %if.then35, %do.end29.cleanup_crit_edge, %if.then19, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then19 ], [ -5, %do.end13.cleanup_crit_edge ], [ -5, %if.then35 ], [ -5, %do.end29.cleanup_crit_edge ], [ -5, %if.then61 ], [ -5, %do.end55.cleanup_crit_edge ], [ -5, %if.then76 ], [ -5, %do.end72.cleanup_crit_edge ], [ -5, %if.then94 ], [ -5, %do.end86.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ], [ 0, %if.then126 ], [ 0, %if.then143 ], [ 0, %if.then109 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_update_nvm(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_switch_flash_banks(ptr noundef %pf, i8 noundef zeroext %activate_flags, ptr noundef %emp_reset_available, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ice_rq_event_info, align 4
  %response_flags = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event) #7
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response_flags) #7
  %2 = ptrtoint ptr %response_flags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %response_flags, align 1, !annotation !305
  %3 = call ptr @memset(ptr %event, i32 0, i32 40)
  %call = call i32 @ice_nvm_write_activate(ptr noundef %hw2, i8 noundef zeroext %activate_flags, ptr noundef nonnull %response_flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %entry
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 30, i32 8
  %4 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_last_status, align 4
  %call3 = call ptr @ice_aq_str(i32 noundef %5) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.140, i32 noundef %call, ptr noundef %call3) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_switch_flash_banks.__msg) #7
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %emp_reset_available, null
  br i1 %tobool10.not, label %if.end9.if.end43_crit_edge, label %if.then11

if.end9.if.end43_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then11:                                        ; preds = %if.end9
  %reset_restrict_support = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 27, i32 0, i32 21
  %6 = ptrtoint ptr %reset_restrict_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reset_restrict_support, align 1, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %response_flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %response_flags, align 1
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %emp_reset_available to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %emp_reset_available, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_switch_flash_banks.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_switch_flash_banks, %if.then20)) #7
          to label %if.end43 [label %if.then20], !srcloc !306

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %emp_reset_available to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %emp_reset_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool22.not, ptr @.str.144, ptr @.str.143
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_switch_flash_banks.__UNIQUE_ID_ddebug625, ptr noundef %dev1, ptr noundef nonnull @.str.142, ptr noundef nonnull %cond) #7
  br label %if.end43

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %emp_reset_available to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %emp_reset_available, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_switch_flash_banks.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_switch_flash_banks, %if.then38)) #7
          to label %if.end43 [label %if.then38], !srcloc !306

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_switch_flash_banks.__UNIQUE_ID_ddebug626, ptr noundef %dev1, ptr noundef nonnull @.str.145) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.else, %if.then20, %if.then13, %if.end9.if.end43_crit_edge
  %call44 = call i32 @ice_aq_wait_for_event(ptr noundef %pf, i16 noundef zeroext 1799, i32 noundef 3000, ptr noundef nonnull %event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end58, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.147, i32 noundef %call44) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_switch_flash_banks.__msg.149) #7
  %tobool52.not = icmp eq ptr %extack, null
  br i1 %tobool52.not, label %do.end49.cleanup_crit_edge, label %do.end49.cleanup.sink.split_crit_edge

do.end49.cleanup.sink.split_crit_edge:            ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.end43
  %retval59 = getelementptr inbounds %struct.ice_aq_desc, ptr %event, i32 0, i32 3
  %15 = ptrtoint ptr %retval59 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %retval59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool60.not = icmp eq i16 %16, 0
  br i1 %tobool60.not, label %if.end58.cleanup_crit_edge, label %do.end64

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end64:                                         ; preds = %if.end58
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv65 = zext i16 %17 to i32
  %call66 = call ptr @ice_aq_str(i32 noundef %conv65) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.151, ptr noundef %call66) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_switch_flash_banks.__msg.153) #7
  %tobool69.not = icmp eq ptr %extack, null
  br i1 %tobool69.not, label %do.end64.cleanup_crit_edge, label %do.end64.cleanup.sink.split_crit_edge

do.end64.cleanup.sink.split_crit_edge:            ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end64.cleanup.sink.split_crit_edge, %do.end49.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %ice_switch_flash_banks.__msg.153.sink = phi ptr [ @ice_switch_flash_banks.__msg, %do.end.cleanup.sink.split_crit_edge ], [ @ice_switch_flash_banks.__msg.149, %do.end49.cleanup.sink.split_crit_edge ], [ @ice_switch_flash_banks.__msg.153, %do.end64.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %do.end.cleanup.sink.split_crit_edge ], [ %call44, %do.end49.cleanup.sink.split_crit_edge ], [ -5, %do.end64.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ice_switch_flash_banks.__msg.153.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end64.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.cleanup_crit_edge ], [ %call44, %do.end49.cleanup_crit_edge ], [ -5, %do.end64.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response_flags) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_nvm_write_activate(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !104, !106, !107, !108, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !125, !126, !128, !130, !131, !132, !134, !136, !137, !138, !140, !142, !143, !144, !146, !148, !149, !150, !152, !154, !155, !156, !158, !160, !161, !162, !164, !166, !167, !168, !170, !172, !173, !174, !176, !178, !179, !180, !182, !184, !185, !186, !188, !190, !191, !193, !195, !197, !198, !199, !201, !203, !204, !206, !208, !210, !211, !212, !214, !215, !216, !218, !220, !221, !222, !224, !226, !227, !228, !230, !232, !233, !234, !236, !238, !239, !240, !242, !244, !245, !247, !248, !250, !251, !252, !254, !256, !258, !260, !261, !262, !263, !265, !267, !268, !269, !270, !272, !273, !275, !276, !277, !279, !281, !282, !283, !285, !287, !289, !291, !292, !293}
!llvm.module.flags = !{!295, !296, !297, !298, !299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = !{ptr @ice_get_pending_updates.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 777, i32 3}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 785, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ice_get_pending_updates._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ice_get_pending_updates._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 790, i32 3}
!12 = !{ptr @ice_get_pending_updates._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ice_get_pending_updates._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 795, i32 3}
!16 = !{ptr @ice_get_pending_updates._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ice_get_pending_updates._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @ice_devlink_flash_update.__msg, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 913, i32 3}
!20 = !{ptr @ice_devlink_flash_update.__msg.11, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 918, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 930, i32 46}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 938, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ice_devlink_flash_update._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @ice_devlink_flash_update._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ice_devlink_flash_update.__msg.16, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 940, i32 3}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 946, i32 3}
!34 = !{ptr @ice_devlink_flash_update._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ice_devlink_flash_update._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ice_devlink_flash_update.__msg.20, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 947, i32 3}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 953, i32 3}
!40 = !{ptr @ice_devlink_flash_update._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ice_devlink_flash_update._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ice_fwu_ops, !43, !"ice_fwu_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 739, i32 32}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 58, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ice_send_package_data.__UNIQUE_ID_ddebug613, !45, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 69, i32 3}
!51 = !{ptr @ice_send_package_data._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ice_send_package_data._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ice_send_package_data.__msg, !54, !"__msg", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 71, i32 3}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 226, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ice_send_component_table._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ice_send_component_table._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ice_send_component_table.__msg, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 228, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 245, i32 2}
!64 = !{ptr @ice_send_component_table.__UNIQUE_ID_ddebug615, !63, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 254, i32 3}
!67 = !{ptr @ice_send_component_table._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ice_send_component_table._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ice_send_component_table.__msg.34, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 256, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 102, i32 15}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 105, i32 15}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 108, i32 15}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 111, i32 3}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 115, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ice_check_component_response.__UNIQUE_ID_ddebug614, !80, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 123, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ice_check_component_response._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ice_check_component_response._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 126, i32 3}
!90 = !{ptr @ice_check_component_response._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ice_check_component_response._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 132, i32 3}
!94 = !{ptr @ice_check_component_response._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ice_check_component_response._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ice_check_component_response.__msg, !97, !"__msg", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 134, i32 3}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 137, i32 3}
!100 = !{ptr @ice_check_component_response._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ice_check_component_response._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ice_check_component_response.__msg.52, !103, !"__msg", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 139, i32 3}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 142, i32 3}
!106 = !{ptr @ice_check_component_response._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ice_check_component_response._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @ice_check_component_response.__msg.56, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 144, i32 3}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 147, i32 3}
!112 = !{ptr @ice_check_component_response._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ice_check_component_response._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @ice_check_component_response.__msg.60, !115, !"__msg", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 149, i32 3}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 152, i32 3}
!118 = !{ptr @ice_check_component_response._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ice_check_component_response._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @ice_check_component_response.__msg.64, !121, !"__msg", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 154, i32 3}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 157, i32 3}
!124 = !{ptr @ice_check_component_response._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ice_check_component_response._entry_ptr.67, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @ice_check_component_response.__msg.68, !127, !"__msg", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 159, i32 3}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 162, i32 3}
!130 = !{ptr @ice_check_component_response._entry.69, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ice_check_component_response._entry_ptr.71, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @ice_check_component_response.__msg.72, !133, !"__msg", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 164, i32 3}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 167, i32 3}
!136 = !{ptr @ice_check_component_response._entry.73, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ice_check_component_response._entry_ptr.75, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @ice_check_component_response.__msg.76, !139, !"__msg", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 169, i32 3}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 172, i32 3}
!142 = !{ptr @ice_check_component_response._entry.77, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ice_check_component_response._entry_ptr.79, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @ice_check_component_response.__msg.80, !145, !"__msg", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 174, i32 3}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 177, i32 3}
!148 = !{ptr @ice_check_component_response._entry.81, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ice_check_component_response._entry_ptr.83, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @ice_check_component_response.__msg.84, !151, !"__msg", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 179, i32 3}
!152 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 182, i32 3}
!154 = !{ptr @ice_check_component_response._entry.85, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ice_check_component_response._entry_ptr.87, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @ice_check_component_response.__msg.88, !157, !"__msg", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 184, i32 3}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 487, i32 2}
!160 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ice_erase_nvm_module.__UNIQUE_ID_ddebug623, !159, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!162 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 493, i32 47}
!164 = !{ptr @.str.92, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 497, i32 3}
!166 = !{ptr @ice_erase_nvm_module._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ice_erase_nvm_module._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @ice_erase_nvm_module.__msg, !169, !"__msg", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 500, i32 3}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 507, i32 3}
!172 = !{ptr @ice_erase_nvm_module._entry.93, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ice_erase_nvm_module._entry_ptr.95, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @ice_erase_nvm_module.__msg.96, !175, !"__msg", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 509, i32 3}
!176 = !{ptr @.str.98, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 517, i32 3}
!178 = !{ptr @ice_erase_nvm_module._entry.97, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ice_erase_nvm_module._entry_ptr.99, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @ice_erase_nvm_module.__msg.100, !181, !"__msg", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 519, i32 3}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 525, i32 3}
!184 = !{ptr @ice_erase_nvm_module._entry.101, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ice_erase_nvm_module._entry_ptr.103, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @ice_erase_nvm_module.__msg.104, !187, !"__msg", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 528, i32 3}
!188 = !{ptr @.str.105, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 533, i32 2}
!190 = !{ptr @ice_erase_nvm_module.__UNIQUE_ID_ddebug624, !189, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 537, i32 47}
!193 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 540, i32 47}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 409, i32 2}
!197 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @ice_write_nvm_module.__UNIQUE_ID_ddebug619, !196, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 413, i32 46}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 444, i32 2}
!203 = !{ptr @ice_write_nvm_module.__UNIQUE_ID_ddebug622, !202, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!204 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 447, i32 47}
!206 = !{ptr @.str.113, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 450, i32 47}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 303, i32 2}
!210 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ice_write_one_nvm_block.__UNIQUE_ID_ddebug616, !209, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 309, i32 3}
!214 = !{ptr @ice_write_one_nvm_block._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @ice_write_one_nvm_block._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @ice_write_one_nvm_block.__msg, !217, !"__msg", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 312, i32 3}
!218 = !{ptr @.str.118, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 324, i32 3}
!220 = !{ptr @ice_write_one_nvm_block._entry.117, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @ice_write_one_nvm_block._entry_ptr.119, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @ice_write_one_nvm_block.__msg.120, !223, !"__msg", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 326, i32 3}
!224 = !{ptr @.str.122, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 337, i32 3}
!226 = !{ptr @ice_write_one_nvm_block._entry.121, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @ice_write_one_nvm_block._entry_ptr.123, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @ice_write_one_nvm_block.__msg.124, !229, !"__msg", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 339, i32 3}
!230 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 344, i32 3}
!232 = !{ptr @ice_write_one_nvm_block._entry.125, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @ice_write_one_nvm_block._entry_ptr.127, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @ice_write_one_nvm_block.__msg.128, !235, !"__msg", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 346, i32 3}
!236 = !{ptr @.str.130, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 351, i32 3}
!238 = !{ptr @ice_write_one_nvm_block._entry.129, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @ice_write_one_nvm_block._entry_ptr.131, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @ice_write_one_nvm_block.__msg.132, !241, !"__msg", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 354, i32 3}
!242 = !{ptr @.str.133, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 368, i32 4}
!244 = !{ptr @ice_write_one_nvm_block.__UNIQUE_ID_ddebug617, !243, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!245 = !{ptr @.str.134, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 372, i32 4}
!247 = !{ptr @ice_write_one_nvm_block.__UNIQUE_ID_ddebug618, !246, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!248 = !{ptr @.str.135, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 711, i32 3}
!250 = !{ptr @.str.136, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @ice_finalize_update.__UNIQUE_ID_ddebug627, !249, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!252 = !{ptr @.str.137, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 718, i32 10}
!254 = !{ptr @.str.138, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 723, i32 10}
!256 = !{ptr @.str.139, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 729, i32 10}
!258 = !{ptr @.str.140, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 573, i32 3}
!260 = !{ptr @.str.141, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @ice_switch_flash_banks._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @ice_switch_flash_banks._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @ice_switch_flash_banks.__msg, !264, !"__msg", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 575, i32 3}
!265 = !{ptr @.str.142, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 586, i32 4}
!267 = !{ptr @ice_switch_flash_banks.__UNIQUE_ID_ddebug625, !266, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!268 = !{ptr @.str.143, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.144, !266, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.145, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 591, i32 4}
!272 = !{ptr @ice_switch_flash_banks.__UNIQUE_ID_ddebug626, !271, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!273 = !{ptr @.str.147, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 598, i32 3}
!275 = !{ptr @ice_switch_flash_banks._entry.146, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @ice_switch_flash_banks._entry_ptr.148, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @ice_switch_flash_banks.__msg.149, !278, !"__msg", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 600, i32 3}
!279 = !{ptr @.str.151, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 606, i32 3}
!281 = !{ptr @ice_switch_flash_banks._entry.150, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @ice_switch_flash_banks._entry_ptr.152, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @ice_switch_flash_banks.__msg.153, !284, !"__msg", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 608, i32 3}
!285 = distinct !{null, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 840, i32 4}
!287 = !{ptr @.str.155, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 851, i32 9}
!289 = !{ptr @.str.156, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 856, i32 3}
!291 = !{ptr @ice_cancel_pending_update._entry, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @ice_cancel_pending_update._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @ice_cancel_pending_update.__msg, !294, !"__msg", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/intel/ice/ice_fw_update.c", i32 858, i32 3}
!295 = !{i32 1, !"wchar_size", i32 2}
!296 = !{i32 1, !"min_enum_size", i32 4}
!297 = !{i32 8, !"branch-target-enforcement", i32 0}
!298 = !{i32 8, !"sign-return-address", i32 0}
!299 = !{i32 8, !"sign-return-address-all", i32 0}
!300 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"uwtable", i32 1}
!302 = !{i32 7, !"frame-pointer", i32 2}
!303 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!304 = !{i8 0, i8 2}
!305 = !{!"auto-init"}
!306 = !{i64 2148387123, i64 2148387128, i64 2148387141, i64 2148387185, i64 2148387219, i64 2148387240}
