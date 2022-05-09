; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/main.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iidc_auxiliary_drv = type { %struct.auxiliary_driver, ptr }
%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.auxiliary_device_id = type { [32 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iidc_qos_params = type { [8 x %struct.iidc_qos_info], [8 x i8], i8, i8, i8 }
%struct.iidc_qos_info = type { i64, i8, i8, i8, i8 }
%struct.irdma_l2params = type { [8 x %struct.irdma_qos_tc_info], [8 x %struct.irdma_dcb_app_info], i32, [8 x i16], i16, [8 x i8], i8, i8, i8, i8 }
%struct.irdma_qos_tc_info = type { i64, i8, i8, i8, i8 }
%struct.irdma_dcb_app_info = type { i8, i8, i16 }
%struct.iidc_auxiliary_dev = type { %struct.auxiliary_device, ptr }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.190 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.190 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.208, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.208 = type { ptr }
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
%struct.irdma_device = type { %struct.ib_device, ptr, ptr, ptr, %struct.irdma_sc_vsi, %struct.irdma_cm_core, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.252, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.252 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.237 }
%struct.anon.237 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.irdma_cm_core = type { ptr, ptr, %struct.list_head, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.irdma_pci_f = type { i8, i8, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.irdma_sc_dev, ptr, ptr, %struct.irdma_hw, %struct.irdma_cqp, %struct.irdma_ccq, %struct.irdma_aeq, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, %struct.spinlock, %struct.mc_table_list, ptr, ptr, %struct.tasklet_struct, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.atomic_t, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.irdma_sc_vsi, ptr, %struct.irdma_gen_ops, ptr }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_hw = type { ptr, ptr, ptr, %struct.irdma_hmc_info }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_cqp = type { %struct.irdma_sc_cqp, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.irdma_dma_mem, %struct.irdma_dma_mem, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.irdma_ccq = type { %struct.irdma_sc_cq, %struct.irdma_dma_mem, %struct.irdma_dma_mem }
%struct.irdma_sc_cq = type { %struct.irdma_cq_uk, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i8, i8 }
%struct.irdma_cq_uk = type { ptr, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8 }
%struct.irdma_aeq = type { %struct.irdma_sc_aeq, %struct.irdma_dma_mem, %struct.irdma_pble_alloc, i8 }
%struct.irdma_sc_aeq = type { i32, i64, ptr, ptr, ptr, i32, %struct.irdma_ring, i8, i32, i32, i8, i8 }
%struct.irdma_pble_alloc = type { i32, i32, %union.anon.308 }
%union.anon.308 = type { %struct.irdma_pble_level2 }
%struct.irdma_pble_level2 = type { %struct.irdma_pble_info, ptr, %struct.irdma_virt_mem, i32 }
%struct.irdma_pble_info = type { ptr, i32, i32, %struct.irdma_pble_chunkinfo }
%struct.irdma_pble_chunkinfo = type { ptr, i64, i64 }
%struct.mc_table_list = type { %struct.list_head, %struct.irdma_mc_table_info, %struct.irdma_mcast_grp_info }
%struct.irdma_mc_table_info = type { i32, [4 x i32], i8 }
%struct.irdma_mcast_grp_info = type <{ [6 x i8], i16, i8, i8, i16, i32, [4 x i32], i16, %struct.irdma_dma_mem, [2 x i8], [8 x %struct.irdma_mcast_grp_ctx_entry_info] }>
%struct.irdma_mcast_grp_ctx_entry_info = type { i32, i8, i16, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.309, i32 }
%union.anon.309 = type { ptr }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_gen_ops = type { ptr, ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.181, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.206, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.181 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.206 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.207, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.207 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iidc_event = type { [1 x i32], i32 }
%struct.iidc_rdma_qset_params = type { i32, i16, i16, i8 }
%struct.irdma_ws_node = type { %struct.list_head, %struct.list_head, ptr, i64, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_alias694 = internal constant [18 x i8] c"irdma.alias=i40iw\00", section ".modinfo", align 1
@__UNIQUE_ID_author695 = internal constant [67 x i8] c"irdma.author=Intel Corporation, <e1000-rdma@lists.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description696 = internal constant [61 x i8] c"irdma.description=Intel(R) Ethernet Protocol Driver for RDMA\00", section ".modinfo", align 1
@__UNIQUE_ID_file697 = internal constant [45 x i8] c"irdma.file=drivers/infiniband/hw/irdma/irdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license698 = internal constant [27 x i8] c"irdma.license=Dual BSD/GPL\00", section ".modinfo", align 1
@irdma_auxiliary_drv = internal global { %struct.iidc_auxiliary_drv, [52 x i8] } { %struct.iidc_auxiliary_drv { %struct.auxiliary_driver { ptr @irdma_probe, ptr @irdma_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, ptr @irdma_auxiliary_id_table }, ptr @irdma_iidc_event_handler }, [52 x i8] zeroinitializer }, align 32
@i40iw_auxiliary_drv = external dso_local global %struct.auxiliary_driver, align 4
@__initcall__kmod_irdma__705_361_irdma_init_module6 = internal global ptr @irdma_init_module, section ".initcall6.init", align 4
@__exitcall_irdma_exit_module = internal global ptr @irdma_exit_module, section ".exitcall.exit", align 4
@irdma_net_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @irdma_net_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@irdma_inetaddr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @irdma_inetaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@irdma_inetaddr6_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @irdma_inet6addr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@irdma_netdevice_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @irdma_netdevice_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@irdma_auxiliary_id_table = internal constant { [3 x %struct.auxiliary_device_id], [52 x i8] } { [3 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"ice.iwarp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id { [32 x i8] c"ice.roce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@irdma_probe.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irdma_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/hw/irdma/main.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"INIT: Gen2 PF[%d] device probe success\0A\00", [56 x i8] zeroinitializer }, align 32
@irdma_lan_register_qset.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irdma_lan_register_qset\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WS: LAN alloc_res for rdma qset failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@irdma_lan_unregister_qset.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irdma_lan_unregister_qset\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WS: LAN free_res for rdma qset failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Requesting a reset\0A\00", [44 x i8] zeroinitializer }, align 32
@irdma_remove.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"irdma_remove\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"INIT: Gen2 PF[%d] device remove success\0A\00", [55 x i8] zeroinitializer }, align 32
@irdma_iidc_event_handler.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irdma_iidc_event_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CLNT: new MTU = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@irdma_iidc_event_handler.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLNT: TC Change\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ICE OICR event notification: oicr = 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"critical PE Error, GLPE_CRITERR=0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Q1 Resource Check\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HMC Error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PE Push Error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"MTU setting [%d] too low for RDMA traffic. Minimum MTU is 576 for IPv4\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"MTU setting [%d] too low for RDMA traffic. Minimum MTU is 1280 for IPv6\\n\00", [54 x i8] zeroinitializer }, align 32
@irdma_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Failed i40iw(gen_1) auxiliary_driver_register() ret=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_init_module\00", [46 x i8] zeroinitializer }, align 32
@irdma_init_module._entry_ptr = internal global ptr @irdma_init_module._entry, section ".printk_index", align 4
@irdma_init_module._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Failed irdma auxiliary_driver_register() ret=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@irdma_init_module._entry_ptr.25 = internal global ptr @irdma_init_module._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"irdma_auxiliary_drv\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 321, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"irdma_net_notifier\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 19, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"irdma_inetaddr_notifier\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 11, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"irdma_inetaddr6_notifier\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 15, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"irdma_netdevice_notifier\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 23, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"irdma_auxiliary_id_table\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 313, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 297, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 173, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 201, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 151, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 215, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 90, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 109, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 115, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 123, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 127, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 131, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 135, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 58, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 60, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 336, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [38 x i8] c"../drivers/infiniband/hw/irdma/main.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 344, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias694, ptr @__UNIQUE_ID_author695, ptr @__UNIQUE_ID_description696, ptr @__UNIQUE_ID_file697, ptr @__UNIQUE_ID_license698, ptr @__exitcall_irdma_exit_module, ptr @__initcall__kmod_irdma__705_361_irdma_init_module6, ptr @irdma_exit_module, ptr @irdma_init_module._entry, ptr @irdma_init_module._entry.23, ptr @irdma_init_module._entry_ptr, ptr @irdma_init_module._entry_ptr.25, ptr @irdma_auxiliary_drv, ptr @irdma_net_notifier, ptr @irdma_inetaddr_notifier, ptr @irdma_inetaddr6_notifier, ptr @irdma_netdevice_notifier, ptr @irdma_auxiliary_id_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_auxiliary_drv to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_net_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_inetaddr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_inetaddr6_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_netdevice_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_auxiliary_id_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_init_module._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @irdma_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @unregister_netevent_notifier(ptr noundef nonnull @irdma_net_notifier) #7
  %call1.i = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @irdma_inetaddr_notifier) #7
  %call2.i = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @irdma_inetaddr6_notifier) #7
  %call3.i = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @irdma_netdevice_notifier) #7
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @irdma_auxiliary_drv) #7
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @i40iw_auxiliary_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auxiliary_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @i40iw_auxiliary_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @irdma_auxiliary_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @i40iw_auxiliary_drv) #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call2) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @irdma_inetaddr_notifier) #7
  %call1.i = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @irdma_inetaddr6_notifier) #7
  %call2.i = tail call i32 @register_netevent_notifier(ptr noundef nonnull @irdma_net_notifier) #7
  %call3.i = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @irdma_netdevice_notifier) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.then4 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netevent_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_net_event(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_inetaddr_event(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_inet6addr_event(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_netdevice_event(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_probe(ptr nocapture noundef %aux_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %qos_info = alloca %struct.iidc_qos_params, align 8
  %l2params = alloca %struct.irdma_l2params, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.iidc_auxiliary_dev, ptr %aux_dev, i32 0, i32 1
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 8
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %ice_get_main_vsi.exit.thread, label %ice_get_main_vsi.exit

ice_get_main_vsi.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %qos_info) #7
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %l2params) #7
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %qos_info) #7
  %6 = call ptr @memset(ptr %qos_info, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %l2params) #7
  %7 = call ptr @memset(ptr %l2params, i32 0, i32 200)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %if.end

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ice_get_main_vsi.exit
  %call3 = tail call ptr @_ib_alloc_device(i32 noundef 6376) #7
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 25136, i32 noundef 3520, i32 noundef 3) #11
  %rf10 = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %rf10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %rf10, align 8
  %tobool12.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_dealloc_device(ptr noundef nonnull %call3) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %cdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 44
  %9 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %cdev.i, align 4
  %gen_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 70
  %register_qset.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 70, i32 1
  %10 = ptrtoint ptr %register_qset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @irdma_lan_register_qset, ptr %register_qset.i, align 32
  %unregister_qset.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 70, i32 2
  %11 = ptrtoint ptr %unregister_qset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @irdma_lan_unregister_qset, ptr %unregister_qset.i, align 4
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 8
  %hw3.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 45
  %14 = ptrtoint ptr %hw3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %hw3.i, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %pcidev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 43
  %17 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %pcidev.i, align 16
  %num_rdma_msix.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %num_rdma_msix.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_rdma_msix.i, align 8
  %conv.i = zext i16 %19 to i32
  %msix_count.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %msix_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %msix_count.i, align 8
  %msix_entries.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msix_entries.i, align 4
  %rdma_base_vector.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 34
  %23 = ptrtoint ptr %rdma_base_vector.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rdma_base_vector.i, align 2
  %idxprom.i = zext i16 %24 to i32
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %22, i32 %idxprom.i
  %msix_entries5.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 61
  %25 = ptrtoint ptr %msix_entries5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i, ptr %msix_entries5.i, align 8
  %vsi_num.i = getelementptr inbounds %struct.ice_vsi, ptr %5, i32 0, i32 18
  %26 = ptrtoint ptr %vsi_num.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vsi_num.i, align 8
  %default_vsi.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 68
  %28 = ptrtoint ptr %default_vsi.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %default_vsi.i, align 64
  %rdma_mode.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 60
  %29 = ptrtoint ptr %rdma_mode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rdma_mode.i, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i70 = icmp eq i8 %31, 0
  %cond.i = select i1 %tobool.not.i70, i32 1, i32 2
  %protocol_used.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %protocol_used.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond.i, ptr %protocol_used.i, align 16
  %rdma_ver.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %rdma_ver.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %rdma_ver.i, align 4
  %rsrc_profile.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %rsrc_profile.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %rsrc_profile.i, align 1
  %rst_to.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %rst_to.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %rst_to.i, align 1
  %36 = ptrtoint ptr %gen_ops.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @irdma_request_reset, ptr %gen_ops.i, align 4
  %limits_sel.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 32
  %37 = ptrtoint ptr %limits_sel.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %limits_sel.i, align 8
  %iwdev8.i = getelementptr inbounds %struct.irdma_pci_f, ptr %call1.i.i.i, i32 0, i32 71
  %38 = ptrtoint ptr %iwdev8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call3, ptr %iwdev8.i, align 8
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 128
  %netdev9.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 2
  %41 = ptrtoint ptr %netdev9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %netdev9.i, align 4
  %42 = ptrtoint ptr %vsi_num.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vsi_num.i, align 8
  %vsi_num11.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 14
  %44 = ptrtoint ptr %vsi_num11.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %vsi_num11.i, align 2
  %init_state.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 18
  %45 = ptrtoint ptr %init_state.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %init_state.i, align 4
  %roce_cwnd.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 6
  %46 = ptrtoint ptr %roce_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1024, ptr %roce_cwnd.i, align 8
  %roce_ackcreds.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 7
  %47 = ptrtoint ptr %roce_ackcreds.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 30, ptr %roce_ackcreds.i, align 4
  %rcv_wnd.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 12
  %48 = ptrtoint ptr %rcv_wnd.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 262140, ptr %rcv_wnd.i, align 8
  %rcv_wscale.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 15
  %49 = ptrtoint ptr %rcv_wscale.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %rcv_wscale.i, align 8
  %50 = load i32, ptr %protocol_used.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i = icmp eq i32 %50, 2
  br i1 %cmp.i, label %if.then.i71, label %if.end14.irdma_fill_device_info.exit_crit_edge

if.end14.irdma_fill_device_info.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_fill_device_info.exit

if.then.i71:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %roce_mode.i = getelementptr inbounds %struct.irdma_device, ptr %call3, i32 0, i32 17
  %51 = ptrtoint ptr %roce_mode.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %roce_mode.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %roce_mode.i, align 2
  br label %irdma_fill_device_info.exit

irdma_fill_device_info.exit:                      ; preds = %if.then.i71, %if.end14.irdma_fill_device_info.exit_crit_edge
  %52 = ptrtoint ptr %rf10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rf10, align 8
  %call16 = tail call i32 @irdma_ctrl_init_hw(ptr noundef %53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %irdma_fill_device_info.exit.err_ctrl_init_crit_edge

irdma_fill_device_info.exit.err_ctrl_init_crit_edge: ; preds = %irdma_fill_device_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ctrl_init

if.end19:                                         ; preds = %irdma_fill_device_info.exit
  %54 = ptrtoint ptr %netdev9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev9.i, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mtu, align 4
  %conv = trunc i32 %57 to i16
  %mtu20 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 4
  %58 = ptrtoint ptr %mtu20 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv, ptr %mtu20, align 4
  call void @ice_get_qos_params(ptr noundef %1, ptr noundef nonnull %qos_info) #7
  %num_tc.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 4
  %59 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_tc.i, align 2
  %num_tc1.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 6
  %61 = ptrtoint ptr %num_tc1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %num_tc1.i, align 2
  %vport_priority_type.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 3
  %62 = ptrtoint ptr %vport_priority_type.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vport_priority_type.i, align 1
  %vsi_prio_type.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 8
  %64 = ptrtoint ptr %vsi_prio_type.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %vsi_prio_type.i, align 8
  %vport_relative_bw.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 2
  %65 = ptrtoint ptr %vport_relative_bw.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vport_relative_bw.i, align 8
  %vsi_rel_bw.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 7
  %67 = ptrtoint ptr %vsi_rel_bw.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %vsi_rel_bw.i, align 1
  %conv.i72 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp69.not.i = icmp eq i8 %60, 0
  br i1 %cmp69.not.i, label %if.end19.irdma_fill_qos_info.exit_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.irdma_fill_qos_info.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_fill_qos_info.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %i.070.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %arrayidx.i73 = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i
  %egress_virt_up.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 3
  %68 = ptrtoint ptr %egress_virt_up.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %egress_virt_up.i, align 2
  %arrayidx5.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i
  %egress_virt_up6.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 3
  %70 = ptrtoint ptr %egress_virt_up6.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %egress_virt_up6.i, align 2
  %ingress_virt_up.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 4
  %71 = ptrtoint ptr %ingress_virt_up.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ingress_virt_up.i, align 1
  %ingress_virt_up11.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 4
  %73 = ptrtoint ptr %ingress_virt_up11.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %ingress_virt_up11.i, align 1
  %prio_type.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 2
  %74 = ptrtoint ptr %prio_type.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %prio_type.i, align 1
  %prio_type16.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 2
  %76 = ptrtoint ptr %prio_type16.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %prio_type16.i, align 1
  %rel_bw.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 1
  %77 = ptrtoint ptr %rel_bw.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rel_bw.i, align 8
  %rel_bw21.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 1
  %79 = ptrtoint ptr %rel_bw21.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %rel_bw21.i, align 8
  %80 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.i73, align 8
  %82 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %arrayidx5.i, align 8
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i72
  br i1 %exitcond.not.i, label %for.body.i.irdma_fill_qos_info.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.irdma_fill_qos_info.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_fill_qos_info.exit

irdma_fill_qos_info.exit:                         ; preds = %for.body.i.irdma_fill_qos_info.exit_crit_edge, %if.end19.irdma_fill_qos_info.exit_crit_edge
  %arrayidx31.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 0
  %83 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx31.i, align 8
  %arrayidx33.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 0
  %85 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx33.i, align 2
  %arrayidx31.1.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx31.1.i, align 1
  %arrayidx33.1.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 1
  %88 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx33.1.i, align 1
  %arrayidx31.2.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx31.2.i, align 2
  %arrayidx33.2.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx33.2.i, align 8
  %arrayidx31.3.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 3
  %92 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx31.3.i, align 1
  %arrayidx33.3.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 3
  %94 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx33.3.i, align 1
  %arrayidx31.4.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 4
  %95 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx31.4.i, align 4
  %arrayidx33.4.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 4
  %97 = ptrtoint ptr %arrayidx33.4.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx33.4.i, align 2
  %arrayidx31.5.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 5
  %98 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx31.5.i, align 1
  %arrayidx33.5.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 5
  %100 = ptrtoint ptr %arrayidx33.5.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx33.5.i, align 1
  %arrayidx31.6.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 6
  %101 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx31.6.i, align 2
  %arrayidx33.6.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 6
  %103 = ptrtoint ptr %arrayidx33.6.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx33.6.i, align 4
  %arrayidx31.7.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 7
  %104 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx31.7.i, align 1
  %arrayidx33.7.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 7
  %106 = ptrtoint ptr %arrayidx33.7.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx33.7.i, align 1
  %call21 = call i32 @irdma_rt_init_hw(ptr noundef nonnull %call3, ptr noundef nonnull %l2params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %irdma_fill_qos_info.exit.err_rt_init_crit_edge

irdma_fill_qos_info.exit.err_rt_init_crit_edge:   ; preds = %irdma_fill_qos_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_rt_init

if.end24:                                         ; preds = %irdma_fill_qos_info.exit
  %call25 = call i32 @irdma_ib_register_device(ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %err_ibreg

if.end28:                                         ; preds = %if.end24
  %107 = ptrtoint ptr %vsi_num11.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vsi_num11.i, align 2
  %call29 = call i32 @ice_rdma_update_vsi_filter(ptr noundef %1, i16 noundef zeroext %108, i1 noundef zeroext true) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_probe.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_probe, %if.then35)) #7
          to label %do.end [label %if.then35], !srcloc !84

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %pcidev = getelementptr inbounds %struct.irdma_pci_f, ptr %53, i32 0, i32 43
  %109 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pcidev, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %devfn, align 4
  %and = and i32 %112, 7
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_probe.__UNIQUE_ID_ddebug704, ptr noundef nonnull %call3, ptr noundef nonnull @.str.3, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then35, %if.end28
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %aux_dev, i32 0, i32 8
  %113 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call3, ptr %driver_data.i.i, align 4
  br label %cleanup

err_ibreg:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @irdma_rt_deinit_hw(ptr noundef nonnull %call3) #7
  br label %err_rt_init

err_rt_init:                                      ; preds = %err_ibreg, %irdma_fill_qos_info.exit.err_rt_init_crit_edge
  %err.0 = phi i32 [ %call25, %err_ibreg ], [ -5, %irdma_fill_qos_info.exit.err_rt_init_crit_edge ]
  call void @irdma_ctrl_deinit_hw(ptr noundef %53) #7
  br label %err_ctrl_init

err_ctrl_init:                                    ; preds = %err_rt_init, %irdma_fill_device_info.exit.err_ctrl_init_crit_edge
  %err.1 = phi i32 [ %err.0, %err_rt_init ], [ -5, %irdma_fill_device_info.exit.err_ctrl_init_crit_edge ]
  %114 = ptrtoint ptr %rf10 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rf10, align 8
  call void @kfree(ptr noundef %115) #7
  call void @ib_dealloc_device(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %err_ctrl_init, %do.end, %if.then13, %if.end.cleanup_crit_edge, %ice_get_main_vsi.exit.cleanup_crit_edge, %ice_get_main_vsi.exit.thread
  %retval.0 = phi i32 [ %err.1, %err_ctrl_init ], [ 0, %do.end ], [ -12, %if.then13 ], [ -5, %ice_get_main_vsi.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -5, %ice_get_main_vsi.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %l2params) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %qos_info) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_remove(ptr nocapture noundef readonly %aux_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pf1 = getelementptr inbounds %struct.iidc_auxiliary_dev, ptr %aux_dev, i32 0, i32 1
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %aux_dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @irdma_ib_unregister_device(ptr noundef %3) #7
  %vsi_num = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vsi_num, align 2
  %call2 = tail call i32 @ice_rdma_update_vsi_filter(ptr noundef %1, i16 noundef zeroext %5, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_remove.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %and = and i32 %9, 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @irdma_remove.__UNIQUE_ID_ddebug703, ptr noundef nonnull @.str.10, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_iidc_event_handler(ptr noundef %pf, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %l2params = alloca %struct.irdma_l2params, align 8
  %qos_info = alloca %struct.iidc_qos_params, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 66
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %l2params) #7
  %4 = call ptr @memset(ptr %l2params, i32 0, i32 200)
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_iidc_event_handler.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_iidc_event_handler, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !84

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_iidc_event_handler.__UNIQUE_ID_ddebug699, ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %mtu6 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4, i32 10
  %11 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mtu6, align 8
  %conv = zext i16 %12 to i32
  %netdev7 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev7, align 4
  %mtu8 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %mtu8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp.not = icmp eq i32 %16, %conv
  br i1 %cmp.not, label %do.end.cleanup130_crit_edge, label %if.then10

do.end.cleanup130_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup130

if.then10:                                        ; preds = %do.end
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4
  %conv13 = trunc i32 %16 to i16
  %mtu14 = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 4
  %17 = ptrtoint ptr %mtu14 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv13, ptr %mtu14, align 4
  %mtu_changed = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 9
  %18 = ptrtoint ptr %mtu_changed to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %mtu_changed, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %mtu_changed, align 1
  %rf = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rf, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %20, i32 0, i32 42
  %conv.i = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 576, i16 %conv13)
  %cmp.i = icmp ult i16 %conv13, 576
  br i1 %cmp.i, label %if.then10.if.end9.sink.split.i_crit_edge, label %if.else.i

if.then10.if.end9.sink.split.i_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %conv13)
  %cmp4.i = icmp ult i16 %conv13, 1280
  br i1 %cmp4.i, label %if.else.i.if.end9.sink.split.i_crit_edge, label %if.else.i.irdma_log_invalid_mtu.exit_crit_edge

if.else.i.irdma_log_invalid_mtu.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_log_invalid_mtu.exit

if.else.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.else.i.if.end9.sink.split.i_crit_edge, %if.then10.if.end9.sink.split.i_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.19, %if.then10.if.end9.sink.split.i_crit_edge ], [ @.str.20, %if.else.i.if.end9.sink.split.i_crit_edge ]
  %call7.i = tail call ptr @to_ibdev(ptr noundef %sc_dev) #7
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %call7.i, ptr noundef nonnull %.str.20.sink.i, i32 noundef %conv.i) #10
  br label %irdma_log_invalid_mtu.exit

irdma_log_invalid_mtu.exit:                       ; preds = %if.end9.sink.split.i, %if.else.i.irdma_log_invalid_mtu.exit_crit_edge
  call void @irdma_change_l2params(ptr noundef %vsi, ptr noundef nonnull %l2params) #7
  br label %cleanup130

if.else:                                          ; preds = %entry
  %and20 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else
  %tc_change_pending = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4, i32 14
  %21 = ptrtoint ptr %tc_change_pending to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load24 = load i8, ptr %tc_change_pending, align 4
  %22 = and i8 %bf.load24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %bf.cast.not = icmp eq i8 %22, 0
  br i1 %bf.cast.not, label %if.end27, label %if.then22.cleanup130_crit_edge

if.then22.cleanup130_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup130

if.end27:                                         ; preds = %if.then22
  %vsi.i = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4
  %bf.set.i = or i8 %bf.load24, 64
  %23 = ptrtoint ptr %tc_change_pending to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set.i, ptr %tc_change_pending, align 4
  tail call void @irdma_sc_suspend_resume_qps(ptr noundef %vsi.i, i8 noundef zeroext 23) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 51) #7
  %qp_suspend_reqs.i = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %qp_suspend_reqs.i, i32 noundef 4) #7
  %24 = ptrtoint ptr %qp_suspend_reqs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %qp_suspend_reqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end27.irdma_prep_tc_change.exit_crit_edge, label %if.then12.i

if.end27.irdma_prep_tc_change.exit_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_prep_tc_change.exit

if.then12.i:                                      ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %26 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %suspend_wq.i = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 19
  %call1461.i = call i32 @prepare_to_wait_event(ptr noundef %suspend_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %call.i.i5762.i = call zeroext i1 @__kasan_check_read(ptr noundef %qp_suspend_reqs.i, i32 noundef 4) #7
  %27 = ptrtoint ptr %qp_suspend_reqs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %qp_suspend_reqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not63.i = icmp eq i32 %28, 0
  br i1 %tobool19.not63.i, label %if.then12.i.for.end.i_crit_edge, label %if.then12.i.cleanup.i_crit_edge

if.then12.i.cleanup.i_crit_edge:                  ; preds = %if.then12.i
  br label %cleanup.i

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then12.i.cleanup.i_crit_edge
  %__ret13.164.i = phi i32 [ %__ret13.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 50000, %if.then12.i.cleanup.i_crit_edge ]
  %call37.i = call i32 @schedule_timeout(i32 noundef %__ret13.164.i) #7
  %call14.i = call i32 @prepare_to_wait_event(ptr noundef %suspend_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %call.i.i57.i = call zeroext i1 @__kasan_check_read(ptr noundef %qp_suspend_reqs.i, i32 noundef 4) #7
  %29 = ptrtoint ptr %qp_suspend_reqs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %qp_suspend_reqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not.i = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool24.not.i = icmp eq i32 %call37.i, 0
  %31 = select i1 %tobool19.not.i, i1 %tobool24.not.i, i1 false
  %__ret13.1.i = select i1 %31, i32 1, i32 %call37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool30.not.i = icmp eq i32 %__ret13.1.i, 0
  %32 = select i1 %tobool19.not.i, i1 true, i1 %tobool30.not.i
  br i1 %32, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %suspend_wq.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %irdma_prep_tc_change.exit

irdma_prep_tc_change.exit:                        ; preds = %for.end.i, %if.end27.irdma_prep_tc_change.exit_crit_edge
  call void @irdma_ws_reset(ptr noundef %vsi.i) #7
  br label %cleanup130

if.else28:                                        ; preds = %if.else
  %and31 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else70, label %if.then33

if.then33:                                        ; preds = %if.else28
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %qos_info) #7
  %33 = call ptr @memset(ptr %qos_info, i32 0, i32 144)
  %vsi34 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4
  %tc_change_pending35 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4, i32 14
  %34 = ptrtoint ptr %tc_change_pending35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load36 = load i8, ptr %tc_change_pending35, align 4
  %35 = and i8 %bf.load36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %bf.cast39.not = icmp eq i8 %35, 0
  br i1 %bf.cast39.not, label %cleanup130.critedge, label %if.end41

if.end41:                                         ; preds = %if.then33
  %tc_changed = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 9
  %36 = ptrtoint ptr %tc_changed to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load42 = load i8, ptr %tc_changed, align 1
  %bf.set44 = or i8 %bf.load42, 64
  store i8 %bf.set44, ptr %tc_changed, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_iidc_event_handler.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_iidc_event_handler, %if.then57)) #7
          to label %do.end61 [label %if.then57], !srcloc !84

if.then57:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_iidc_event_handler.__UNIQUE_ID_ddebug700, ptr noundef %3, ptr noundef nonnull @.str.13) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %if.end41
  call void @ice_get_qos_params(ptr noundef %pf, ptr noundef nonnull %qos_info) #7
  %num_tc = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 4
  %37 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_tc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp63 = icmp ugt i8 %38, 1
  %dcb = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 17
  %39 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load65 = load i8, ptr %dcb, align 2
  %bf.shl = select i1 %cmp63, i8 32, i8 0
  %bf.clear66 = and i8 %bf.load65, -33
  %bf.set67 = or i8 %bf.clear66, %bf.shl
  store i8 %bf.set67, ptr %dcb, align 2
  %num_tc1.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 6
  %40 = ptrtoint ptr %num_tc1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %num_tc1.i, align 2
  %vport_priority_type.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 3
  %41 = ptrtoint ptr %vport_priority_type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vport_priority_type.i, align 1
  %vsi_prio_type.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 8
  %43 = ptrtoint ptr %vsi_prio_type.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %vsi_prio_type.i, align 8
  %vport_relative_bw.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 2
  %44 = ptrtoint ptr %vport_relative_bw.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vport_relative_bw.i, align 8
  %vsi_rel_bw.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 7
  %46 = ptrtoint ptr %vsi_rel_bw.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %vsi_rel_bw.i, align 1
  %conv.i171 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp69.not.i = icmp eq i8 %38, 0
  br i1 %cmp69.not.i, label %do.end61.irdma_fill_qos_info.exit_crit_edge, label %do.end61.for.body.i_crit_edge

do.end61.for.body.i_crit_edge:                    ; preds = %do.end61
  br label %for.body.i

do.end61.irdma_fill_qos_info.exit_crit_edge:      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_fill_qos_info.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end61.for.body.i_crit_edge
  %i.070.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end61.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i
  %egress_virt_up.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 3
  %47 = ptrtoint ptr %egress_virt_up.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %egress_virt_up.i, align 2
  %arrayidx5.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i
  %egress_virt_up6.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 3
  %49 = ptrtoint ptr %egress_virt_up6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %egress_virt_up6.i, align 2
  %ingress_virt_up.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 4
  %50 = ptrtoint ptr %ingress_virt_up.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ingress_virt_up.i, align 1
  %ingress_virt_up11.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 4
  %52 = ptrtoint ptr %ingress_virt_up11.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %ingress_virt_up11.i, align 1
  %prio_type.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 2
  %53 = ptrtoint ptr %prio_type.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %prio_type.i, align 1
  %prio_type16.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 2
  %55 = ptrtoint ptr %prio_type16.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %prio_type16.i, align 1
  %rel_bw.i = getelementptr [8 x %struct.iidc_qos_info], ptr %qos_info, i32 0, i32 %i.070.i, i32 1
  %56 = ptrtoint ptr %rel_bw.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rel_bw.i, align 8
  %rel_bw21.i = getelementptr [8 x %struct.irdma_qos_tc_info], ptr %l2params, i32 0, i32 %i.070.i, i32 1
  %58 = ptrtoint ptr %rel_bw21.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %rel_bw21.i, align 8
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx.i, align 8
  %61 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx5.i, align 8
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i171
  br i1 %exitcond.not.i, label %for.body.i.irdma_fill_qos_info.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.irdma_fill_qos_info.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irdma_fill_qos_info.exit

irdma_fill_qos_info.exit:                         ; preds = %for.body.i.irdma_fill_qos_info.exit_crit_edge, %do.end61.irdma_fill_qos_info.exit_crit_edge
  %arrayidx31.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 0
  %62 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx31.i, align 8
  %arrayidx33.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 0
  %64 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx33.i, align 2
  %arrayidx31.1.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx31.1.i, align 1
  %arrayidx33.1.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx33.1.i, align 1
  %arrayidx31.2.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx31.2.i, align 2
  %arrayidx33.2.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx33.2.i, align 8
  %arrayidx31.3.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx31.3.i, align 1
  %arrayidx33.3.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx33.3.i, align 1
  %arrayidx31.4.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 4
  %74 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx31.4.i, align 4
  %arrayidx33.4.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 4
  %76 = ptrtoint ptr %arrayidx33.4.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx33.4.i, align 2
  %arrayidx31.5.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 5
  %77 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx31.5.i, align 1
  %arrayidx33.5.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 5
  %79 = ptrtoint ptr %arrayidx33.5.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx33.5.i, align 1
  %arrayidx31.6.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 6
  %80 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx31.6.i, align 2
  %arrayidx33.6.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 6
  %82 = ptrtoint ptr %arrayidx33.6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx33.6.i, align 4
  %arrayidx31.7.i = getelementptr inbounds %struct.iidc_qos_params, ptr %qos_info, i32 0, i32 1, i32 7
  %83 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx31.7.i, align 1
  %arrayidx33.7.i = getelementptr inbounds %struct.irdma_l2params, ptr %l2params, i32 0, i32 5, i32 7
  %85 = ptrtoint ptr %arrayidx33.7.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx33.7.i, align 1
  call void @irdma_change_l2params(ptr noundef %vsi34, ptr noundef nonnull %l2params) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %qos_info) #7
  br label %cleanup130

if.else70:                                        ; preds = %if.else28
  %and73 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.else70.cleanup130_crit_edge, label %if.then75

if.else70.cleanup130_crit_edge:                   ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup130

if.then75:                                        ; preds = %if.else70
  %reg = getelementptr inbounds %struct.iidc_event, ptr %event, i32 0, i32 1
  %86 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %reg, align 4
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %87) #10
  %88 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %reg, align 4
  %and78 = and i32 %89, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then75.if.end97_crit_edge, label %if.then80

if.then75.if.end97_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then80:                                        ; preds = %if.then75
  %rf81 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %90 = ptrtoint ptr %rf81 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rf81, align 8
  %arrayidx = getelementptr %struct.irdma_pci_f, ptr %91, i32 0, i32 42, i32 17, i32 21
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx, align 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1291976960, i32 %94)
  %cmp86.not = icmp eq i32 %94, 1291976960
  br i1 %cmp86.not, label %if.else94, label %if.then88

if.then88:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %95) #10
  %96 = ptrtoint ptr %rf81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rf81, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load91 = load i8, ptr %97, align 8
  %bf.set93 = or i8 %bf.load91, -128
  store i8 %bf.set93, ptr %97, align 8
  br label %if.end97

if.else94:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %3, ptr noundef nonnull @.str.16) #10
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then88, %if.then75.if.end97_crit_edge
  %99 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %reg, align 4
  %and99 = and i32 %100, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end97.if.end107_crit_edge, label %if.then101

if.end97.if.end107_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #10
  %rf103 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %101 = ptrtoint ptr %rf103 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rf103, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load104 = load i8, ptr %102, align 8
  %bf.set106 = or i8 %bf.load104, -128
  store i8 %bf.set106, ptr %102, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %if.end97.if.end107_crit_edge
  %104 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reg, align 4
  %and109 = and i32 %105, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end117_crit_edge, label %if.then111

if.end107.if.end117_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #10
  %rf113 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %106 = ptrtoint ptr %rf113 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rf113, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load114 = load i8, ptr %107, align 8
  %bf.set116 = or i8 %bf.load114, -128
  store i8 %bf.set116, ptr %107, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %if.end107.if.end117_crit_edge
  %rf118 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %109 = ptrtoint ptr %rf118 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rf118, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load119 = load i8, ptr %110, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load119)
  %bf.cast121.not = icmp sgt i8 %bf.load119, -1
  br i1 %bf.cast121.not, label %if.end117.cleanup130_crit_edge, label %if.then122

if.end117.cleanup130_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup130

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %gen_ops = getelementptr inbounds %struct.irdma_pci_f, ptr %110, i32 0, i32 70
  %112 = ptrtoint ptr %gen_ops to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %gen_ops, align 4
  tail call void %113(ptr noundef %110) #7
  br label %cleanup130

cleanup130.critedge:                              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %qos_info) #7
  br label %cleanup130

cleanup130:                                       ; preds = %cleanup130.critedge, %if.then122, %if.end117.cleanup130_crit_edge, %if.else70.cleanup130_crit_edge, %irdma_fill_qos_info.exit, %irdma_prep_tc_change.exit, %if.then22.cleanup130_crit_edge, %irdma_log_invalid_mtu.exit, %do.end.cleanup130_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %l2params) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_ctrl_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_get_qos_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_rt_init_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_ib_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rdma_update_vsi_filter(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_rt_deinit_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ctrl_deinit_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_lan_register_qset(ptr nocapture noundef %vsi, ptr nocapture noundef %tc_node) #2 align 64 {
entry:
  %qset = alloca %struct.iidc_rdma_qset_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back_vsi = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back_vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_vsi, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %cdev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %qset) #7
  %6 = call ptr @memset(ptr %qset, i32 0, i32 12)
  %qs_handle = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 6
  %7 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %qs_handle, align 2
  %qs_handle1 = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 1
  %9 = ptrtoint ptr %qs_handle1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %qs_handle1, align 4
  %traffic_class = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 8
  %10 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %traffic_class, align 2
  %tc = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 3
  %12 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tc, align 4
  %13 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vsi, align 8
  %vport_id = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 2
  %15 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %vport_id, align 2
  %call = call i32 @ice_add_rdma_qset(ptr noundef %5, ptr noundef nonnull %qset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_lan_register_qset.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_lan_register_qset, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !84

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_lan_register_qset.__UNIQUE_ID_ddebug701, ptr noundef %1, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %qset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qset, align 4
  %l2_sched_node_id = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 4
  %18 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %l2_sched_node_id, align 8
  %user_pri = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 9
  %19 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %user_pri, align 1
  %idxprom = zext i8 %20 to i32
  %l2_sched_node_id9 = getelementptr %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 15, i32 %idxprom, i32 3
  %21 = ptrtoint ptr %l2_sched_node_id9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %l2_sched_node_id9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -73, %if.then6 ], [ -73, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %qset) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_lan_unregister_qset(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %tc_node) #2 align 64 {
entry:
  %qset = alloca %struct.iidc_rdma_qset_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back_vsi = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back_vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_vsi, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %cdev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %qset) #7
  %6 = getelementptr inbounds i8, ptr %qset, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %qs_handle = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 6
  %8 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %qs_handle, align 2
  %qs_handle1 = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 1
  %10 = ptrtoint ptr %qs_handle1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %qs_handle1, align 4
  %traffic_class = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 8
  %11 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %traffic_class, align 2
  %tc = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 3
  %13 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %tc, align 4
  %14 = ptrtoint ptr %vsi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsi, align 8
  %vport_id = getelementptr inbounds %struct.iidc_rdma_qset_params, ptr %qset, i32 0, i32 2
  %16 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vport_id, align 2
  %l2_sched_node_id = getelementptr inbounds %struct.irdma_ws_node, ptr %tc_node, i32 0, i32 4
  %17 = ptrtoint ptr %l2_sched_node_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %l2_sched_node_id, align 8
  %19 = ptrtoint ptr %qset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %qset, align 4
  %call = call i32 @ice_del_rdma_qset(ptr noundef %5, ptr noundef nonnull %qset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_lan_unregister_qset.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_lan_unregister_qset, %if.then6)) #7
          to label %if.end7 [label %if.then6], !srcloc !84

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_lan_unregister_qset.__UNIQUE_ID_ddebug702, ptr noundef %1, ptr noundef nonnull @.str.7) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %qset) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_request_reset(ptr nocapture noundef readonly %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 44
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %2 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev, align 8
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  %call = tail call i32 @ice_rdma_request_reset(ptr noundef %1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_rdma_qset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_del_rdma_qset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rdma_request_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ib_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_change_l2params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_suspend_resume_qps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ws_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netevent_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__UNIQUE_ID_alias694, !1, !"__UNIQUE_ID_alias694", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 6, i32 1}
!2 = !{ptr @__UNIQUE_ID_author695, !3, !"__UNIQUE_ID_author695", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 7, i32 1}
!4 = !{ptr @__UNIQUE_ID_description696, !5, !"__UNIQUE_ID_description696", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 8, i32 1}
!6 = !{ptr @__UNIQUE_ID_file697, !7, !"__UNIQUE_ID_file697", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 9, i32 1}
!8 = !{ptr @__UNIQUE_ID_license698, !7, !"__UNIQUE_ID_license698", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_irdma__705_361_irdma_init_module6, !10, !"__initcall__kmod_irdma__705_361_irdma_init_module6", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 361, i32 1}
!11 = !{ptr @__exitcall_irdma_exit_module, !12, !"__exitcall_irdma_exit_module", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 362, i32 1}
!13 = !{ptr @irdma_net_notifier, !14, !"irdma_net_notifier", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 19, i32 30}
!15 = !{ptr @irdma_inetaddr_notifier, !16, !"irdma_inetaddr_notifier", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 11, i32 30}
!17 = !{ptr @irdma_inetaddr6_notifier, !18, !"irdma_inetaddr6_notifier", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 15, i32 30}
!19 = !{ptr @irdma_netdevice_notifier, !20, !"irdma_netdevice_notifier", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 23, i32 30}
!21 = !{ptr @irdma_auxiliary_drv, !22, !"irdma_auxiliary_drv", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 321, i32 34}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 297, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @irdma_probe.__UNIQUE_ID_ddebug704, !24, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 173, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @irdma_lan_register_qset.__UNIQUE_ID_ddebug701, !30, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 201, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @irdma_lan_unregister_qset.__UNIQUE_ID_ddebug702, !34, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 151, i32 32}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 215, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @irdma_remove.__UNIQUE_ID_ddebug703, !40, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!43 = !{ptr @irdma_auxiliary_id_table, !44, !"irdma_auxiliary_id_table", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 313, i32 41}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 90, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @irdma_iidc_event_handler.__UNIQUE_ID_ddebug699, !46, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 109, i32 3}
!51 = !{ptr @irdma_iidc_event_handler.__UNIQUE_ID_ddebug700, !50, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 115, i32 29}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 123, i32 30}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 127, i32 31}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 131, i32 29}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 135, i32 29}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 58, i32 29}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 60, i32 29}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 336, i32 3}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @irdma_init_module._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @irdma_init_module._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/irdma/main.c", i32 344, i32 3}
!73 = !{ptr @irdma_init_module._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @irdma_init_module._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148855950, i64 2148855955, i64 2148855968, i64 2148856012, i64 2148856046, i64 2148856067}
!85 = !{i64 6049777}
!86 = !{i64 2161470011}
