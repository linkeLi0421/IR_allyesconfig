; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef100_nic.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef100_nic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.efx_hw_stat_desc = type { ptr, i16, i16 }
%struct.atomic_t = type { i32 }
%union.efx_dword = type { [1 x i32] }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ef100_nic_data = type { ptr, %struct.efx_buffer, i32, i32, i32, i32, i16, [6 x i8], [1 x i32], [38 x i64], i16, i16, i16, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%union.efx_qword = type { [1 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.efx_mcdi_data = type { %struct.efx_mcdi_iface, %struct.efx_mcdi_mon, i32 }
%struct.efx_mcdi_iface = type { ptr, i32, i32, %struct.wait_queue_head, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.timer_list, ptr, i8, i32, i32, %struct.wait_queue_head }
%struct.efx_mcdi_mon = type { %struct.efx_buffer, %struct.mutex, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ef100_tlv_state = type { i32, i64, i32, i16, i8 }
%struct.efx_mcdi_phy_data = type { i32, i32, i32, i32, i32, i32, [20 x i8], i32, i32, [20 x i8], i32 }

@ef100_pf_nic_type = dso_local constant { %struct.efx_nic_type, [144 x i8] } { %struct.efx_nic_type { i8 0, ptr null, ptr null, ptr @ef100_probe_pf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef100_map_reset_reason, ptr @ef100_map_reset_flags, ptr @ef100_reset, ptr null, ptr null, ptr null, ptr @efx_fini_dmaq, ptr null, ptr null, ptr null, ptr null, ptr @ef100_describe_stats, ptr @ef100_update_stats, ptr null, ptr @efx_mcdi_mac_start_stats, ptr @efx_mcdi_mac_pull_stats, ptr @efx_mcdi_mac_stop_stats, ptr @efx_channel_dummy_op_void, ptr @efx_mcdi_port_reconfigure, ptr null, ptr @ef100_reconfigure_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef100_check_caps, ptr null, ptr @efx_new_mcdi_nvram_test_all, ptr @ef100_mcdi_request, ptr @ef100_mcdi_poll_response, ptr @ef100_mcdi_read_response, ptr @ef100_mcdi_poll_reboot, ptr @ef100_mcdi_reboot_detected, ptr @efx_port_dummy_op_void, ptr @efx_ef100_irq_test_generate, ptr @efx_port_dummy_op_void, ptr @ef100_msi_interrupt, ptr null, ptr @ef100_tx_probe, ptr @ef100_tx_init, ptr null, ptr @ef100_tx_write, ptr @ef100_enqueue_skb, ptr null, ptr @efx_mcdi_pf_rx_push_rss_config, ptr @efx_mcdi_rx_pull_rss_config, ptr @efx_mcdi_rx_push_rss_context_config, ptr @efx_mcdi_rx_pull_rss_context_config, ptr @efx_mcdi_rx_restore_rss_contexts, ptr @efx_mcdi_rx_probe, ptr @efx_mcdi_rx_init, ptr @efx_mcdi_rx_remove, ptr @ef100_rx_write, ptr null, ptr @__ef100_rx_packet, ptr @ef100_rx_buf_hash_valid, ptr @ef100_ev_probe, ptr @ef100_ev_init, ptr @efx_mcdi_ev_fini, ptr @efx_mcdi_ev_remove, ptr @ef100_ev_process, ptr @ef100_ev_read_ack, ptr @efx_ef100_ev_test_generate, ptr @ef100_filter_table_up, ptr @efx_mcdi_filter_table_restore, ptr @ef100_filter_table_down, ptr null, ptr @efx_mcdi_filter_insert, ptr @efx_mcdi_filter_remove_safe, ptr @efx_mcdi_filter_get_safe, ptr @efx_mcdi_filter_clear_rx, ptr @efx_mcdi_filter_count_rx_used, ptr @efx_mcdi_filter_get_rx_id_limit, ptr @efx_mcdi_filter_get_rx_ids, ptr @efx_mcdi_filter_rfs_expire_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ef100_get_phys_port_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i32 22, i32 8, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i32 0, i64 28312424677609, i32 2, i32 8192, i32 0, i32 40 }, [144 x i8] zeroinitializer }, align 32
@ef100_vf_nic_type = dso_local constant { %struct.efx_nic_type, [144 x i8] } { %struct.efx_nic_type { i8 1, ptr null, ptr null, ptr @ef100_probe_vf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef100_map_reset_reason, ptr @ef100_map_reset_flags, ptr @ef100_reset, ptr null, ptr null, ptr null, ptr @efx_fini_dmaq, ptr null, ptr null, ptr null, ptr null, ptr @ef100_describe_stats, ptr @ef100_update_stats, ptr null, ptr @efx_mcdi_mac_start_stats, ptr @efx_mcdi_mac_pull_stats, ptr @efx_mcdi_mac_stop_stats, ptr @efx_channel_dummy_op_void, ptr null, ptr null, ptr @ef100_reconfigure_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ef100_check_caps, ptr null, ptr @efx_new_mcdi_nvram_test_all, ptr @ef100_mcdi_request, ptr @ef100_mcdi_poll_response, ptr @ef100_mcdi_read_response, ptr @ef100_mcdi_poll_reboot, ptr @ef100_mcdi_reboot_detected, ptr @efx_port_dummy_op_void, ptr @efx_ef100_irq_test_generate, ptr @efx_port_dummy_op_void, ptr @ef100_msi_interrupt, ptr null, ptr @ef100_tx_probe, ptr @ef100_tx_init, ptr null, ptr @ef100_tx_write, ptr @ef100_enqueue_skb, ptr null, ptr @efx_mcdi_pf_rx_push_rss_config, ptr @efx_mcdi_rx_pull_rss_config, ptr null, ptr null, ptr @efx_mcdi_rx_restore_rss_contexts, ptr @efx_mcdi_rx_probe, ptr @efx_mcdi_rx_init, ptr @efx_mcdi_rx_remove, ptr @ef100_rx_write, ptr null, ptr @__ef100_rx_packet, ptr @ef100_rx_buf_hash_valid, ptr @ef100_ev_probe, ptr @ef100_ev_init, ptr @efx_mcdi_ev_fini, ptr @efx_mcdi_ev_remove, ptr @ef100_ev_process, ptr @ef100_ev_read_ack, ptr @efx_ef100_ev_test_generate, ptr @ef100_filter_table_up, ptr @efx_mcdi_filter_table_restore, ptr @ef100_filter_table_down, ptr null, ptr @efx_mcdi_filter_insert, ptr @efx_mcdi_filter_remove_safe, ptr @efx_mcdi_filter_get_safe, ptr @efx_mcdi_filter_clear_rx, ptr @efx_mcdi_filter_count_rx_used, ptr @efx_mcdi_filter_get_rx_id_limit, ptr @efx_mcdi_filter_get_rx_ids, ptr @efx_mcdi_filter_rfs_expire_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i64 0, i32 22, i32 8, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i32 0, i64 28312424677609, i32 2, i32 8192, i32 0, i32 40 }, [144 x i8] zeroinitializer }, align 32
@ef100_stat_desc = internal constant { [38 x %struct.efx_hw_stat_desc], [80 x i8] } { [38 x %struct.efx_hw_stat_desc] [%struct.efx_hw_stat_desc { ptr @.str, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.1, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.2, i16 64, i16 56 }, %struct.efx_hw_stat_desc { ptr @.str.3, i16 64, i16 8 }, %struct.efx_hw_stat_desc { ptr @.str.4, i16 64, i16 16 }, %struct.efx_hw_stat_desc { ptr @.str.5, i16 64, i16 32 }, %struct.efx_hw_stat_desc { ptr @.str.6, i16 64, i16 40 }, %struct.efx_hw_stat_desc { ptr @.str.7, i16 64, i16 48 }, %struct.efx_hw_stat_desc { ptr @.str.8, i16 64, i16 72 }, %struct.efx_hw_stat_desc { ptr @.str.9, i16 64, i16 80 }, %struct.efx_hw_stat_desc { ptr @.str.10, i16 64, i16 88 }, %struct.efx_hw_stat_desc { ptr @.str.11, i16 64, i16 96 }, %struct.efx_hw_stat_desc { ptr @.str.12, i16 64, i16 104 }, %struct.efx_hw_stat_desc { ptr @.str.13, i16 64, i16 112 }, %struct.efx_hw_stat_desc { ptr @.str.14, i16 64, i16 120 }, %struct.efx_hw_stat_desc { ptr @.str.15, i16 64, i16 128 }, %struct.efx_hw_stat_desc { ptr @.str.16, i16 64, i16 280 }, %struct.efx_hw_stat_desc { ptr @.str.17, i16 64, i16 224 }, %struct.efx_hw_stat_desc { ptr @.str.18, i16 64, i16 240 }, %struct.efx_hw_stat_desc { ptr @.str.19, i16 64, i16 368 }, %struct.efx_hw_stat_desc { ptr @.str.20, i16 64, i16 232 }, %struct.efx_hw_stat_desc { ptr @.str.21, i16 64, i16 256 }, %struct.efx_hw_stat_desc { ptr @.str.22, i16 64, i16 264 }, %struct.efx_hw_stat_desc { ptr @.str.23, i16 64, i16 272 }, %struct.efx_hw_stat_desc { ptr @.str.24, i16 64, i16 360 }, %struct.efx_hw_stat_desc { ptr @.str.25, i16 64, i16 296 }, %struct.efx_hw_stat_desc { ptr @.str.26, i16 64, i16 304 }, %struct.efx_hw_stat_desc { ptr @.str.27, i16 64, i16 312 }, %struct.efx_hw_stat_desc { ptr @.str.28, i16 64, i16 320 }, %struct.efx_hw_stat_desc { ptr @.str.29, i16 64, i16 328 }, %struct.efx_hw_stat_desc { ptr @.str.30, i16 64, i16 336 }, %struct.efx_hw_stat_desc { ptr @.str.31, i16 64, i16 344 }, %struct.efx_hw_stat_desc { ptr @.str.32, i16 64, i16 352 }, %struct.efx_hw_stat_desc { ptr @.str.33, i16 64, i16 424 }, %struct.efx_hw_stat_desc { ptr @.str.34, i16 64, i16 400 }, %struct.efx_hw_stat_desc { ptr @.str.35, i16 64, i16 408 }, %struct.efx_hw_stat_desc { ptr @.str.36, i16 64, i16 376 }, %struct.efx_hw_stat_desc { ptr @.str.37, i16 64, i16 432 }], [80 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_noskb_drops\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_nodesc_trunc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_tx_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_tx_packets\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_tx_pause\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_tx_unicast\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_tx_multicast\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_tx_broadcast\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port_tx_lt64\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_tx_64\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_tx_65_to_127\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_tx_128_to_255\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_tx_256_to_511\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_tx_512_to_1023\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_tx_1024_to_15xx\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port_tx_15xx_to_jumbo\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_rx_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_packets\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port_rx_good\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_rx_bad\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_rx_pause\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_unicast\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_multicast\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_broadcast\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port_rx_lt64\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_rx_64\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_65_to_127\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_rx_128_to_255\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_rx_256_to_511\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_512_to_1023\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_1024_to_15xx\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port_rx_15xx_to_jumbo\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_gtjumbo\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_bad_gtjumbo\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_align_error\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_length_error\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port_rx_overflow\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_nodesc_drops\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/sfc/ef100_nic.c\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hardware unavailable\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Driver initiated event %08x:%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unhandled event %08x:%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: failed rc=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.efx_ef100_ev_test_generate = private unnamed_addr constant [27 x i8] c"efx_ef100_ev_test_generate\00", align 1
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported design parameters\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No network port on this PCI function\00", [59 x i8] zeroinitializer }, align 32
@ef100_probe_main.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.38, ptr @.str.47, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ef100_probe_main\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware version %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1.1.0.1000\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware uses old event descriptors\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Firmware uses unsolicited-event credits\0A\00", [55 x i8] zeroinitializer }, align 32
@ef100_check_design_params.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.51, ptr @.str.38, ptr @.str.52, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ef100_check_design_params\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%u bytes of design parameters\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"truncated design parameter (incomplete type %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"truncated design parameter %u\0A\00", [33 x i8] zeroinitializer }, align 32
@ef100_tlv_feed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TSO_MAX_HDR_NUM_SEGS < 1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s size granularity is %llu, can't guarantee safety\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RXQ\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TXQ\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"DP_COMPAT has unknown bits %#llx, driver not compatible with this hw\0A\00", [58 x i8] zeroinitializer }, align 32
@ef100_process_design_param.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.60, ptr @.str.38, ptr @.str.61, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ef100_process_design_param\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"NIC has other than default VI_STRIDES (mask %#llx), early probing might use wrong one\0A\00", [41 x i8] zeroinitializer }, align 32
@ef100_process_design_param.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.60, ptr @.str.38, ptr @.str.62, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Ignoring unrecognised design parameter %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to read datapath firmware capabilities\0A\00", [49 x i8] zeroinitializer }, align 32
@efx_ef100_init_datapath_caps.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.64, ptr @.str.38, ptr @.str.65, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efx_ef100_init_datapath_caps\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware reports num_mac_stats = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not initialise PHY settings\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 20, i64 148]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967196]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.74 = internal global [20 x i64] [i64 18, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"ef100_pf_nic_type\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 706, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"ef100_vf_nic_type\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 791, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"ef100_stat_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 506, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 544, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 543, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 507, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 508, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 509, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 510, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 511, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 512, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 513, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 514, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 515, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 516, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 517, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 518, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 519, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 520, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 521, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 522, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 523, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 524, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 525, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 526, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 527, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 528, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 529, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 530, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 531, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 532, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 533, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 534, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 535, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 536, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 537, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 538, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 539, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 540, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 541, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 542, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 401, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 52, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 286, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 291, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 679, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1132, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1172, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1203, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1205, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1206, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1212, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1064, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1086, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1090, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 976, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 990, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1010, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1032, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1047, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 164, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 201, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 872, i32 24 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private constant [40 x i8] c"../drivers/net/ethernet/sfc/ef100_nic.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 360, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @ef100_pf_nic_type, ptr @ef100_vf_nic_type, ptr @ef100_stat_desc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_pf_nic_type to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_vf_nic_type to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_stat_desc to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef100_probe_pf(ptr noundef %efx) #0 align 64 {
entry:
  %outbuf.i = alloca [4 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %call = tail call fastcc i32 @ef100_probe_main(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 8
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outbuf.i) #14
  %4 = call ptr @memset(ptr %outbuf.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #14
  %5 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %outlen.i, align 4, !annotation !153
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 85, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf.i, i32 noundef 16, ptr noundef nonnull %outlen.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ef100_get_mac_address.exit.thread_crit_edge

if.end.ef100_get_mac_address.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %ef100_get_mac_address.exit.thread

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp ult i32 %7, 16
  br i1 %cmp.i, label %if.end.i.ef100_get_mac_address.exit.thread_crit_edge, label %if.end6

if.end.i.ef100_get_mac_address.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ef100_get_mac_address.exit.thread

ef100_get_mac_address.exit.thread:                ; preds = %if.end.i.ef100_get_mac_address.exit.thread_crit_edge, %if.end.ef100_get_mac_address.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.ef100_get_mac_address.exit.thread_crit_edge ], [ %call.i, %if.end.ef100_get_mac_address.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outbuf.i) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbuf.i, align 4
  %10 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %perm_addr, align 4
  %add.ptr.i.i = getelementptr inbounds i8, ptr %outbuf.i, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 4
  %add.ptr1.i.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outbuf.i) #14
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %perm_addr, i32 noundef 6) #14
  %port_id = getelementptr inbounds %struct.ef100_nic_data, ptr %3, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %port_id, ptr %perm_addr, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %ef100_get_mac_address.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %ef100_get_mac_address.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef100_map_reset_reason(i32 noundef %reason) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %reason)
  %cmp = icmp eq i32 %reason, 9
  %. = select i1 %cmp, i32 9, i32 7
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef100_map_reset_flags(ptr nocapture noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ -6291457, %entry.return.sink.split_crit_edge ], [ -2, %if.end.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 2, %entry.return.sink.split_crit_edge ], [ 7, %if.end.return.sink.split_crit_edge ]
  %and5 = and i32 %1, %.sink
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and5, ptr %flags, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_reset(ptr noundef %efx, i32 noundef %reset_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev, align 4
  tail call void @dev_close(ptr noundef %1) #14
  %2 = zext i32 %reset_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reset_type, label %entry.cleanup_crit_edge [
    i32 9, label %if.then
    i32 2, label %if.then4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev, align 4
  tail call void @netif_device_attach(ptr noundef %4) #14
  %reset_pending = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %5 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reset_pending, align 4
  %and.i = and i32 %6, -513
  store i32 %and.i, ptr %reset_pending, align 4
  br label %cleanup.sink.split

if.then4:                                         ; preds = %entry
  %call5 = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  tail call void @netif_device_attach(ptr noundef %8) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  %call = tail call i32 @dev_open(ptr noundef %10, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ %call, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_fini_dmaq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_describe_stats(ptr nocapture noundef readnone %efx, ptr noundef %names) #0 align 64 {
entry:
  %mask = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #14
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -21110679087874005, ptr %mask, align 8
  %call = call i32 @efx_nic_describe_stats(ptr noundef nonnull @ef100_stat_desc, i32 noundef 38, ptr noundef nonnull %mask, ptr noundef %names) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_update_stats(ptr noundef %efx, ptr noundef writeonly %full_stats, ptr noundef writeonly %core_stats) #0 align 64 {
entry:
  %mask.i = alloca [2 x i32], align 8
  %mask = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %0 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_mac_stats, align 8
  %conv = zext i16 %1 to i32
  %2 = shl nuw nsw i32 %conv, 3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 2592) #17
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %3 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nic_data2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #14
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -4294967233, ptr %mask, align 8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats3 = getelementptr inbounds %struct.ef100_nic_data, ptr %4, i32 0, i32 9
  %call6 = tail call i32 @efx_nic_copy_stats(ptr noundef %efx, ptr noundef nonnull %call9.i) #14
  call void @efx_nic_update_stats(ptr noundef nonnull @ef100_stat_desc, i32 noundef 38, ptr noundef nonnull %mask, ptr noundef %stats3, ptr noundef nonnull %call9.i, i1 noundef zeroext false) #14
  call void @kfree(ptr noundef nonnull %call9.i) #14
  %6 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_data2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #14
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -21110679087874005, ptr %mask.i, align 8
  %stats2.i = getelementptr inbounds %struct.ef100_nic_data, ptr %7, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %full_stats, null
  br i1 %tobool.not.i, label %if.end.if.end10.i_crit_edge, label %if.then.i19

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then.i19:                                      ; preds = %if.end
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 38, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %call.i)
  %cmp72.i = icmp ult i32 %call.i, 38
  br i1 %cmp72.i, label %if.then.i19.for.body.i_crit_edge, label %if.then.i19.if.end10.i_crit_edge

if.then.i19.if.end10.i_crit_edge:                 ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then.i19.for.body.i_crit_edge:                 ; preds = %if.then.i19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i19.for.body.i_crit_edge
  %index.075.i = phi i32 [ %call9.i20, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.then.i19.for.body.i_crit_edge ]
  %stats_count.074.i = phi i32 [ %stats_count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i19.for.body.i_crit_edge ]
  %full_stats.addr.073.i = phi ptr [ %full_stats.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %full_stats, %if.then.i19.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [38 x %struct.efx_hw_stat_desc], ptr @ef100_stat_desc, i32 0, i32 %index.075.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx7.i = getelementptr i64, ptr %stats2.i, i32 %index.075.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx7.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %full_stats.addr.073.i, i32 1
  %13 = ptrtoint ptr %full_stats.addr.073.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %full_stats.addr.073.i, align 8
  %inc.i = add i32 %stats_count.074.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %full_stats.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then6.i ], [ %full_stats.addr.073.i, %for.body.i.for.inc.i_crit_edge ]
  %stats_count.1.i = phi i32 [ %inc.i, %if.then6.i ], [ %stats_count.074.i, %for.body.i.for.inc.i_crit_edge ]
  %add.i = add nuw nsw i32 %index.075.i, 1
  %call9.i20 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 38, i32 noundef %add.i) #14
  %cmp.i21 = icmp ult i32 %call9.i20, 38
  br i1 %cmp.i21, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end10.i_crit_edge

for.inc.i.if.end10.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end10.i:                                       ; preds = %for.inc.i.if.end10.i_crit_edge, %if.then.i19.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %stats_count.2.i = phi i32 [ 0, %if.end.if.end10.i_crit_edge ], [ 0, %if.then.i19.if.end10.i_crit_edge ], [ %stats_count.1.i, %for.inc.i.if.end10.i_crit_edge ]
  %tobool11.not.i = icmp eq ptr %core_stats, null
  br i1 %tobool11.not.i, label %if.end10.i.ef100_update_stats_common.exit_crit_edge, label %if.end13.i

if.end10.i.ef100_update_stats_common.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ef100_update_stats_common.exit

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx14.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 17
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx14.i, align 8
  %16 = ptrtoint ptr %core_stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %core_stats, align 8
  %arrayidx15.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx15.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 1
  %19 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tx_packets.i, align 8
  %arrayidx16.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 16
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx16.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 2
  %22 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rx_bytes.i, align 8
  %arrayidx17.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx17.i, align 8
  %tx_bytes.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 3
  %25 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tx_bytes.i, align 8
  %arrayidx18.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 37
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx18.i, align 8
  %arrayidx19.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx19.i, align 8
  %add20.i = add i64 %29, %27
  %30 = ptrtoint ptr %stats2.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %stats2.i, align 8
  %add22.i = add i64 %add20.i, %31
  %rx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 6
  %32 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add22.i, ptr %rx_dropped.i, align 8
  %arrayidx23.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 22
  %33 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx23.i, align 8
  %multicast.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 8
  %35 = ptrtoint ptr %multicast.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %multicast.i, align 8
  %arrayidx24.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 32
  %36 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx24.i, align 8
  %arrayidx25.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 35
  %38 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx25.i, align 8
  %add26.i = add i64 %39, %37
  %rx_length_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 10
  %40 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add26.i, ptr %rx_length_errors.i, align 8
  %arrayidx27.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 19
  %41 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx27.i, align 8
  %rx_crc_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 12
  %43 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %rx_crc_errors.i, align 8
  %arrayidx28.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 34
  %44 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx28.i, align 8
  %rx_frame_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 13
  %46 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %rx_frame_errors.i, align 8
  %arrayidx29.i = getelementptr %struct.ef100_nic_data, ptr %7, i32 0, i32 9, i32 36
  %47 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx29.i, align 8
  %rx_fifo_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 14
  %49 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %rx_fifo_errors.i, align 8
  %add32.i = add i64 %42, %add26.i
  %add34.i = add i64 %add32.i, %45
  %rx_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 4
  %50 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add34.i, ptr %rx_errors.i, align 8
  br label %ef100_update_stats_common.exit

ef100_update_stats_common.exit:                   ; preds = %if.end13.i, %if.end10.i.ef100_update_stats_common.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #14
  br label %cleanup

cleanup:                                          ; preds = %ef100_update_stats_common.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %stats_count.2.i, %ef100_update_stats_common.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_start_stats(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_pull_stats(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_stop_stats(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_channel_dummy_op_void(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_reconfigure_mac(ptr noundef %efx, i1 noundef zeroext %mtu_only) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #14
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !154

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 401, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @efx_mcdi_filter_sync_rx_mode(ptr noundef %efx) #14
  br i1 %mtu_only, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_caps, align 4
  %call21 = tail call i32 %3(ptr noundef %efx, i8 noundef zeroext 9, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end25_crit_edge, label %if.then23

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call i32 @efx_mcdi_set_mtu(ptr noundef %efx) #14
  br label %return

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %call26 = tail call i32 @efx_mcdi_set_mac(ptr noundef %efx) #14
  br label %return

return:                                           ; preds = %if.end25, %if.then23
  %retval.0 = phi i32 [ %call24, %if.then23 ], [ %call26, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef100_check_caps(ptr nocapture noundef readonly %efx, i8 noundef zeroext %flag, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %2 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %offset, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 20, label %sw.bb4
    i32 148, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %datapath_caps = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %datapath_caps, align 8
  %sh_prom = zext i8 %flag to i64
  %shl = shl nuw i64 1, %sh_prom
  %5 = trunc i64 %shl to i32
  %conv3 = and i32 %4, %5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %datapath_caps2 = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %datapath_caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datapath_caps2, align 4
  %sh_prom7 = zext i8 %flag to i64
  %shl8 = shl nuw i64 1, %sh_prom7
  %8 = trunc i64 %shl8 to i32
  %conv10 = and i32 %7, %8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %datapath_caps3 = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %datapath_caps3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %datapath_caps3, align 8
  %sh_prom14 = zext i8 %flag to i64
  %shl15 = shl nuw i64 1, %sh_prom14
  %11 = trunc i64 %shl15 to i32
  %conv17 = and i32 %10, %11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv17, %sw.bb11 ], [ %conv10, %sw.bb4 ], [ %conv3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_new_mcdi_nvram_test_all(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef100_mcdi_request(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %hdr, i32 noundef %hdr_len, ptr nocapture noundef readonly %sdu, i32 noundef %sdu_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  %dma_addr2.i = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dma_addr2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr2.i, align 4
  %mcdi_buf3.i = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mcdi_buf3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcdi_buf3.i, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %hdr, i32 %hdr_len)
  %add.ptr = getelementptr i8, ptr %5, i32 %hdr_len
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %sdu, i32 %sdu_len)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !155
  tail call void @arm_heavy_mb() #14
  %reg_base.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 129
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_base.i, align 4
  %add.i = add i32 %9, 32
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !156
  %12 = tail call i32 @llvm.bswap.i32(i32 %3)
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_base.i, align 4
  %add.i11 = add i32 %14, 36
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %16, i32 %add.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %12) #14, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ef100_mcdi_poll_response(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  %mcdi_buf3.i = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mcdi_buf3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi_buf3.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %hdr.sroa.0.0.copyload = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !157
  %5 = and i32 %hdr.sroa.0.0.copyload, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ef100_mcdi_read_response(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %outbuf, i32 noundef %offset, i32 noundef %outlen) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  %mcdi_buf3.i = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mcdi_buf3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi_buf3.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %4 = call ptr @memcpy(ptr %outbuf, ptr %add.ptr, i32 %outlen)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_mcdi_poll_reboot(ptr nocapture noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %reg_base.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 129
  %2 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i = add i32 %3, 16
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %add.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp eq i32 %6, -1
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable.i, align 4
  %and1.i = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then2.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.39) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %state.i, align 32
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %12 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  %shr.mask.i = and i32 %12, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i)
  %cmp5.i = icmp eq i32 %shr.mask.i, -1341718528
  br i1 %cmp5.i, label %if.end, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  %warm_boot_count = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %warm_boot_count to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %warm_boot_count, align 8
  %15 = trunc i32 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %15)
  %cmp2 = icmp eq i16 %14, %15
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %warm_boot_count to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %warm_boot_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ -5, %if.end5 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ef100_mcdi_reboot_detected(ptr nocapture noundef %efx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_port_dummy_op_void(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef100_irq_test_generate(ptr noundef %efx) #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #14
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %0 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_level, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 227, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_msi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %irq_soft_enabled, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then, !prof !160

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.efx_msi_context, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 73
  %6 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_level, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !143) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 132
  %12 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_irq_cpu, align 16
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.efx_nic, ptr %1, i32 0, i32 25, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = tail call i32 @llvm.read_register.i32(metadata !143) #14
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.efx_channel, ptr %16, i32 0, i32 13
  %21 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.efx_channel, ptr %16, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #14
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i.i, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef100_tx_probe(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef100_tx_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef100_tx_write(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef100_enqueue_skb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_pf_rx_push_rss_config(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_pull_rss_config(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_push_rss_context_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_pull_rss_context_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_restore_rss_contexts(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_probe(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_remove(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef100_rx_write(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ef100_rx_packet(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ef100_rx_buf_hash_valid(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_ev_probe(ptr noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_mask, align 8
  %add = shl i32 %3, 3
  %mul = add i32 %add, 16
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %1, ptr noundef %eventq, i32 noundef %mul, i32 noundef 3264) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_ev_init(ptr noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %evq_phases = getelementptr inbounds %struct.ef100_nic_data, ptr %3, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %evq_phases) #14
  %call = tail call i32 @efx_mcdi_ev_init(ptr noundef %channel, i1 noundef zeroext false, i1 noundef zeroext false) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_ev_fini(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_ev_remove(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_ev_process(ptr noundef %channel, i32 noundef %quota) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %enabled = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 4
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !160

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_data5 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %nic_data5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_data5, align 8
  %channel6 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel6, align 4
  %evq_phases = getelementptr inbounds %struct.ef100_nic_data, ptr %5, i32 0, i32 8
  %div3.i = lshr i32 %7, 5
  %arrayidx.i = getelementptr i32, ptr %evq_phases, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7 = icmp ne i32 %11, 0
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %12 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eventq_read_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %cmp116 = icmp sgt i32 %quota, 0
  br i1 %cmp116, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %eventq.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %eventq_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %spent.0119 = phi i32 [ 0, %while.body.lr.ph ], [ %spent.1, %sw.epilog.while.body_crit_edge ]
  %read_ptr.0118 = phi i32 [ %13, %while.body.lr.ph ], [ %inc51, %sw.epilog.while.body_crit_edge ]
  %evq_phase.0.off0117 = phi i1 [ %tobool7, %while.body.lr.ph ], [ %spec.select, %sw.epilog.while.body_crit_edge ]
  %14 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eventq.i, align 4
  %16 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eventq_mask.i, align 8
  %and.i115 = and i32 %17, %read_ptr.0118
  %add.ptr.i = getelementptr %union.efx_qword, ptr %15, i32 %and.i115
  %arrayidx = getelementptr [2 x i32], ptr %add.ptr.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = and i32 %20, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  %cmp20.not = xor i1 %evq_phase.0.off0117, %22
  br i1 %cmp20.not, label %if.end23, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end23:                                         ; preds = %while.body
  %shr25 = lshr i32 %20, 28
  %23 = zext i32 %shr25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %shr25, label %do.body40 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb28
    i32 1, label %sw.bb29
    i32 5, label %do.body31
  ]

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_ef100_ev_rx(ptr noundef %channel, ptr noundef %add.ptr.i) #14
  %inc = add nsw i32 %spent.0119, 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_mcdi_process_event(ptr noundef %channel, ptr noundef %add.ptr.i) #14
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ef100_ev_tx(ptr noundef %channel, ptr noundef %add.ptr.i) #14
  br label %sw.epilog

do.body31:                                        ; preds = %if.end23
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and32 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.sw.epilog_crit_edge, label %if.then34

do.body31.sw.epilog_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.40, i32 noundef %20, i32 noundef %30) #18
  br label %sw.epilog

do.body40:                                        ; preds = %if.end23
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and42 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body40.sw.epilog_crit_edge, label %if.then44

do.body40.sw.epilog_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then44:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.41, i32 noundef %20, i32 noundef %37) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then44, %do.body40.sw.epilog_crit_edge, %if.then34, %do.body31.sw.epilog_crit_edge, %sw.bb29, %sw.bb28, %sw.bb
  %spent.1 = phi i32 [ %spent.0119, %if.then44 ], [ %spent.0119, %do.body40.sw.epilog_crit_edge ], [ %spent.0119, %if.then34 ], [ %spent.0119, %do.body31.sw.epilog_crit_edge ], [ %spent.0119, %sw.bb29 ], [ %spent.0119, %sw.bb28 ], [ %inc, %sw.bb ]
  %inc51 = add i32 %read_ptr.0118, 1
  %38 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eventq_mask.i, align 8
  %and52 = and i32 %39, %inc51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  %spec.select = xor i1 %evq_phase.0.off0117, %cmp53
  %cmp = icmp slt i32 %spent.1, %quota
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %evq_phase.0.off0.lcssa = phi i1 [ %tobool7, %if.end.while.end_crit_edge ], [ %evq_phase.0.off0117, %while.body.while.end_crit_edge ], [ %spec.select, %sw.epilog.while.end_crit_edge ]
  %read_ptr.0.lcssa = phi i32 [ %13, %if.end.while.end_crit_edge ], [ %read_ptr.0118, %while.body.while.end_crit_edge ], [ %inc51, %sw.epilog.while.end_crit_edge ]
  %spent.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %spent.0119, %while.body.while.end_crit_edge ], [ %spent.1, %sw.epilog.while.end_crit_edge ]
  %40 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %read_ptr.0.lcssa, ptr %eventq_read_ptr, align 4
  %41 = xor i1 %tobool7, %evq_phase.0.off0.lcssa
  br i1 %41, label %if.then68, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then68:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel6, align 4
  tail call void @_change_bit(i32 noundef %43, ptr noundef %evq_phases) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spent.0.lcssa, %if.then68 ], [ %spent.0.lcssa, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef100_ev_read_ack(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1, align 4
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_read_ptr, align 4
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %4 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eventq_mask, align 8
  %and = and i32 %5, %3
  %shl = shl i32 %and, 16
  %or310 = or i32 %shl, %1
  %6 = tail call i32 @llvm.bswap.i32(i32 %or310)
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %channel, align 128
  %reg_base.i = getelementptr inbounds %struct.efx_nic, ptr %8, i32 0, i32 129
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_base.i, align 4
  %add.i = add i32 %10, 64
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #14, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef100_ev_test_generate(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #14
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %channel4 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel4, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %inbuf, align 4
  %add.ptr10 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %6 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %add.ptr10, align 4
  %event.sroa.5.0.add.ptr10.sroa_idx = getelementptr inbounds i8, ptr %inbuf, i32 8
  %7 = ptrtoint ptr %event.sroa.5.0.add.ptr10.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 80, ptr %event.sroa.5.0.add.ptr10.sroa_idx, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %1, i32 noundef 134, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #14
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call, label %do.end21 [
    i32 0, label %entry.cleanup_crit_edge
    i32 -100, label %entry.cleanup_crit_edge49
  ]

entry.cleanup_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end21:                                         ; preds = %entry
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 678, i32 noundef 9, ptr noundef null) #14
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %do.end21.cleanup_crit_edge, label %if.then36

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.efx_ef100_ev_test_generate, i32 noundef %call) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.end21.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_filter_table_up(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @efx_mcdi_filter_add_vlan(ptr noundef %efx, i16 noundef zeroext -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @efx_mcdi_filter_add_vlan(ptr noundef %efx, i16 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_mcdi_filter_del_vlan(ptr noundef %efx, i16 noundef zeroext -1) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup.sink.split_crit_edge ]
  tail call void @efx_mcdi_filter_table_down(ptr noundef %efx) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_table_restore(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef100_filter_table_down(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_mcdi_filter_del_vlan(ptr noundef %efx, i16 noundef zeroext 0) #14
  tail call void @efx_mcdi_filter_del_vlan(ptr noundef %efx, i16 noundef zeroext -1) #14
  tail call void @efx_mcdi_filter_table_down(ptr noundef %efx) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_insert(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_remove_safe(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_get_safe(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_clear_rx(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_count_rx_used(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_get_rx_id_limit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_get_rx_ids(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_mcdi_filter_rfs_expire_one(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef100_get_phys_port_id(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %ppid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %port_id = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.ef100_nic_data, ptr %1, i32 0, i32 7, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %7 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %id_len, align 1
  %8 = call ptr @memcpy(ptr %ppid, ptr %port_id, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef100_probe_vf(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ef100_probe_main(ptr noundef %efx)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_probe_main(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %fw_version = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %mem_bar = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 128
  %2 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_bar, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %3
  %end.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %3, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %5, 1
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fw_version) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp = icmp eq i32 %sub.i, %7
  %10 = call ptr @memset(ptr %fw_version, i32 255, i32 32)
  br i1 %cmp, label %do.end, label %if.end22, !prof !160

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 1109, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 368) #19
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %nic_data27 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %12 = ptrtoint ptr %nic_data27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %nic_data27, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %efx, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %offload_features = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 134
  %16 = ptrtoint ptr %offload_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offload_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 23
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features, align 16
  %or = or i64 %19, %17
  store i64 %or, ptr %features, align 16
  %20 = load ptr, ptr %type, align 4
  %offload_features30 = getelementptr inbounds %struct.efx_nic_type, ptr %20, i32 0, i32 134
  %21 = ptrtoint ptr %offload_features30 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offload_features30, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 24
  %23 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hw_features, align 8
  %or31 = or i64 %24, %22
  store i64 %or31, ptr %hw_features, align 8
  %25 = load ptr, ptr %type, align 4
  %offload_features33 = getelementptr inbounds %struct.efx_nic_type, ptr %25, i32 0, i32 134
  %26 = ptrtoint ptr %offload_features33 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offload_features33, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 27
  %28 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hw_enc_features, align 16
  %or34 = or i64 %29, %27
  store i64 %or34, ptr %hw_enc_features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 26
  %30 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vlan_features, align 8
  %or35 = or i64 %31, 1900585
  store i64 %or35, ptr %vlan_features, align 8
  %tso_max_hdr_len = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %tso_max_hdr_len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 192, ptr %tso_max_hdr_len, align 8
  %tso_max_frames = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %tso_max_frames to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 8192, ptr %tso_max_frames, align 4
  %tso_max_payload_num_segs = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %tso_max_payload_num_segs to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1023, ptr %tso_max_payload_num_segs, align 2
  %tso_max_payload_len = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 13
  %35 = ptrtoint ptr %tso_max_payload_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4194303, ptr %tso_max_payload_len, align 8
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 138
  %36 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store volatile i16 4, ptr %gso_max_segs.i, align 4
  %call36 = tail call fastcc i32 @ef100_check_design_params(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end49, label %do.body39

do.body39:                                        ; preds = %if.end26
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 4
  %and = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %do.body39.fail_crit_edge, label %if.then41

do.body39.fail_crit_edge:                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then41:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.43) #18
  br label %fail

do.end49:                                         ; preds = %if.end26
  %mcdi_buf = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 1
  %call50 = tail call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %mcdi_buf, i32 noundef 1032, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.cond.preheader, label %do.end49.fail_crit_edge

do.end49.fail_crit_edge:                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

for.cond.preheader:                               ; preds = %do.end49
  %reg_base.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 129
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %41 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i = add i32 %42, 16
  %43 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 %add.i.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i = icmp eq i32 %45, -1
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %for.cond.preheader
  %46 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable.i, align 4
  %and1.i = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then2.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.39) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then2.i, %do.body.i.do.end.i_crit_edge
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %state.i, align 32
  br label %if.end57

if.else.i:                                        ; preds = %for.cond.preheader
  %51 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %shr.mask.i = and i32 %51, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i)
  %cmp5.i = icmp eq i32 %shr.mask.i, -1341718528
  br i1 %cmp5.i, label %if.else.i.for.end_crit_edge, label %if.else.i.if.end57_crit_edge

if.else.i.if.end57_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.else.i.for.end_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end57:                                         ; preds = %if.else.i.if.end57_crit_edge, %do.end.i
  tail call void @msleep(i32 noundef 1000) #14
  %52 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i.1 = add i32 %53, 16
  %54 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %55, i32 %add.i.i.1
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.1 = icmp eq i32 %56, -1
  br i1 %cmp.i.1, label %do.body.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %if.end57
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #14
  %shr.mask.i.1 = and i32 %57, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.1)
  %cmp5.i.1 = icmp eq i32 %shr.mask.i.1, -1341718528
  br i1 %cmp5.i.1, label %if.else.i.1.for.end_crit_edge, label %if.else.i.1.if.end57.1_crit_edge

if.else.i.1.if.end57.1_crit_edge:                 ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.1

if.else.i.1.for.end_crit_edge:                    ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.i.1:                                      ; preds = %if.end57
  %58 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable.i, align 4
  %and1.i.1 = and i32 %59, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.1)
  %tobool.not.i.1 = icmp eq i32 %and1.i.1, 0
  br i1 %tobool.not.i.1, label %do.body.i.1.do.end.i.1_crit_edge, label %if.then2.i.1

do.body.i.1.do.end.i.1_crit_edge:                 ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.1

if.then2.i.1:                                     ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.39) #18
  br label %do.end.i.1

do.end.i.1:                                       ; preds = %if.then2.i.1, %do.body.i.1.do.end.i.1_crit_edge
  %62 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %state.i, align 32
  br label %if.end57.1

if.end57.1:                                       ; preds = %do.end.i.1, %if.else.i.1.if.end57.1_crit_edge
  tail call void @msleep(i32 noundef 1000) #14
  %63 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i.2 = add i32 %64, 16
  %65 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %66, i32 %add.i.i.2
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp.i.2 = icmp eq i32 %67, -1
  br i1 %cmp.i.2, label %do.body.i.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %if.end57.1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #14
  %shr.mask.i.2 = and i32 %68, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.2)
  %cmp5.i.2 = icmp eq i32 %shr.mask.i.2, -1341718528
  br i1 %cmp5.i.2, label %if.else.i.2.for.end_crit_edge, label %if.else.i.2.if.end57.2_crit_edge

if.else.i.2.if.end57.2_crit_edge:                 ; preds = %if.else.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.2

if.else.i.2.for.end_crit_edge:                    ; preds = %if.else.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.i.2:                                      ; preds = %if.end57.1
  %69 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable.i, align 4
  %and1.i.2 = and i32 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.2)
  %tobool.not.i.2 = icmp eq i32 %and1.i.2, 0
  br i1 %tobool.not.i.2, label %do.body.i.2.do.end.i.2_crit_edge, label %if.then2.i.2

do.body.i.2.do.end.i.2_crit_edge:                 ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.2

if.then2.i.2:                                     ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.39) #18
  br label %do.end.i.2

do.end.i.2:                                       ; preds = %if.then2.i.2, %do.body.i.2.do.end.i.2_crit_edge
  %73 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %state.i, align 32
  br label %if.end57.2

if.end57.2:                                       ; preds = %do.end.i.2, %if.else.i.2.if.end57.2_crit_edge
  tail call void @msleep(i32 noundef 1000) #14
  %74 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i.3 = add i32 %75, 16
  %76 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %77, i32 %add.i.i.3
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.3 = icmp eq i32 %78, -1
  br i1 %cmp.i.3, label %do.body.i.3, label %if.else.i.3

if.else.i.3:                                      ; preds = %if.end57.2
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #14
  %shr.mask.i.3 = and i32 %79, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.3)
  %cmp5.i.3 = icmp eq i32 %shr.mask.i.3, -1341718528
  br i1 %cmp5.i.3, label %if.else.i.3.for.end_crit_edge, label %if.else.i.3.if.end57.3_crit_edge

if.else.i.3.if.end57.3_crit_edge:                 ; preds = %if.else.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.3

if.else.i.3.for.end_crit_edge:                    ; preds = %if.else.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.i.3:                                      ; preds = %if.end57.2
  %80 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable.i, align 4
  %and1.i.3 = and i32 %81, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.3)
  %tobool.not.i.3 = icmp eq i32 %and1.i.3, 0
  br i1 %tobool.not.i.3, label %do.body.i.3.do.end.i.3_crit_edge, label %if.then2.i.3

do.body.i.3.do.end.i.3_crit_edge:                 ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.3

if.then2.i.3:                                     ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.39) #18
  br label %do.end.i.3

do.end.i.3:                                       ; preds = %if.then2.i.3, %do.body.i.3.do.end.i.3_crit_edge
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %state.i, align 32
  br label %if.end57.3

if.end57.3:                                       ; preds = %do.end.i.3, %if.else.i.3.if.end57.3_crit_edge
  tail call void @msleep(i32 noundef 1000) #14
  %85 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reg_base.i.i, align 4
  %add.i.i.4 = add i32 %86, 16
  %87 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.4 = getelementptr i8, ptr %88, i32 %add.i.i.4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.4) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp.i.4 = icmp eq i32 %89, -1
  br i1 %cmp.i.4, label %do.body.i.4, label %if.else.i.4

if.else.i.4:                                      ; preds = %if.end57.3
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #14
  %shr.mask.i.4 = and i32 %90, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.4)
  %cmp5.i.4 = icmp eq i32 %shr.mask.i.4, -1341718528
  br i1 %cmp5.i.4, label %if.else.i.4.for.end_crit_edge, label %if.else.i.4.fail_crit_edge

if.else.i.4.fail_crit_edge:                       ; preds = %if.else.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.else.i.4.for.end_crit_edge:                    ; preds = %if.else.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.i.4:                                      ; preds = %if.end57.3
  %91 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable.i, align 4
  %and1.i.4 = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.4)
  %tobool.not.i.4 = icmp eq i32 %and1.i.4, 0
  br i1 %tobool.not.i.4, label %do.body.i.4.do.end.i.4_crit_edge, label %if.then2.i.4

do.body.i.4.do.end.i.4_crit_edge:                 ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.4

if.then2.i.4:                                     ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %94, ptr noundef nonnull @.str.39) #18
  br label %do.end.i.4

do.end.i.4:                                       ; preds = %if.then2.i.4, %do.body.i.4.do.end.i.4_crit_edge
  %95 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %state.i, align 32
  br label %fail

for.end:                                          ; preds = %if.else.i.4.for.end_crit_edge, %if.else.i.3.for.end_crit_edge, %if.else.i.2.for.end_crit_edge, %if.else.i.1.for.end_crit_edge, %if.else.i.for.end_crit_edge
  %.lcssa = phi i32 [ %51, %if.else.i.for.end_crit_edge ], [ %57, %if.else.i.1.for.end_crit_edge ], [ %68, %if.else.i.2.for.end_crit_edge ], [ %79, %if.else.i.3.for.end_crit_edge ], [ %90, %if.else.i.4.for.end_crit_edge ]
  %conv = trunc i32 %.lcssa to i16
  %warm_boot_count = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 6
  %96 = ptrtoint ptr %warm_boot_count to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv, ptr %warm_boot_count, align 8
  %97 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg_base.i.i, align 4
  %add.i247 = add i32 %98, 36
  %99 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %100, i32 %add.i247
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #14, !srcloc !156
  %call62 = tail call i32 @efx_mcdi_init(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true, label %for.end.fail_crit_edge

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

land.lhs.true:                                    ; preds = %for.end
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %101 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mcdi, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fn_flags, align 4
  %and64 = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end79, label %do.body67

do.body67:                                        ; preds = %land.lhs.true
  %105 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_enable.i, align 4
  %and69 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body67.fail_crit_edge, label %if.then71

do.body67.fail_crit_edge:                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %108, ptr noundef nonnull @.str.44) #18
  br label %fail

if.end79:                                         ; preds = %land.lhs.true
  %call80 = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.fail_crit_edge

if.end79.fail_crit_edge:                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @efx_mcdi_log_ctrl(ptr noundef %efx, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.fail_crit_edge

if.end83.fail_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end87:                                         ; preds = %if.end83
  %pf_index = getelementptr inbounds %struct.ef100_nic_data, ptr %call7.i.i, i32 0, i32 5
  %call88 = tail call i32 @efx_get_pf_index(ptr noundef %efx, ptr noundef %pf_index) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.fail_crit_edge

if.end87.fail_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end91:                                         ; preds = %if.end87
  %call92 = tail call fastcc i32 @efx_ef100_init_datapath_caps(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end91.fail_crit_edge, label %if.end96

if.end91.fail_crit_edge:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end96:                                         ; preds = %if.end91
  %max_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 40
  %109 = ptrtoint ptr %max_vis to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4096, ptr %max_vis, align 32
  %call97 = tail call i32 @efx_mcdi_port_get_number(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end96.fail_crit_edge, label %if.end101

if.end96.fail_crit_edge:                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end101:                                        ; preds = %if.end96
  %port_num = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %110 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call97, ptr %port_num, align 8
  call void @efx_mcdi_print_fwver(ptr noundef %efx, ptr noundef nonnull %fw_version, i32 noundef 32) #14
  %111 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_enable.i, align 4
  %and104 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end101.do.end125_crit_edge, label %do.body107

if.end101.do.end125_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end125

do.body107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_probe_main.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_probe_main, %if.then117)) #14
          to label %do.end125 [label %if.then117], !srcloc !161

if.then117:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net_dev1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_probe_main.__UNIQUE_ID_ddebug542, ptr noundef %114, ptr noundef nonnull @.str.47, ptr noundef nonnull %fw_version) #14
  br label %do.end125

do.end125:                                        ; preds = %if.then117, %do.body107, %if.end101.do.end125_crit_edge
  %call127 = call fastcc i32 @compare_versions(ptr noundef nonnull %fw_version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %do.body131, label %if.end140

do.body131:                                       ; preds = %do.end125
  %115 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %msg_enable.i, align 4
  %and133 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body131.fail_crit_edge, label %if.then135

do.body131.fail_crit_edge:                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then135:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #16
  %117 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %net_dev1, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %118, ptr noundef nonnull @.str.49) #18
  br label %fail

if.end140:                                        ; preds = %do.end125
  %119 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %120, i32 0, i32 35
  %121 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %check_caps, align 4
  %call142 = call i32 %122(ptr noundef %efx, i8 noundef zeroext 7, i32 noundef 148) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end154, label %do.body145

do.body145:                                       ; preds = %if.end140
  %123 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %msg_enable.i, align 4
  %and147 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body145.fail_crit_edge, label %if.then149

do.body145.fail_crit_edge:                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then149:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net_dev1, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %126, ptr noundef nonnull @.str.50) #18
  br label %fail

if.end154:                                        ; preds = %if.end140
  %call155 = call fastcc i32 @ef100_phy_probe(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end154.fail_crit_edge

if.end154.fail_crit_edge:                         ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end158:                                        ; preds = %if.end154
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  call void @down_write(ptr noundef %filter_sem) #14
  %call.i = call i32 @efx_mcdi_filter_table_probe(ptr noundef %efx, i1 noundef zeroext true) #14
  call void @up_write(ptr noundef %filter_sem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool161.not = icmp eq i32 %call.i, 0
  br i1 %tobool161.not, label %if.end163, label %if.end158.fail_crit_edge

if.end158.fail_crit_edge:                         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end163:                                        ; preds = %if.end158
  %rx_hash_key = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4
  call void @netdev_rss_key_fill(ptr noundef %rx_hash_key, i32 noundef 40) #14
  %n_rx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %127 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %n_rx_channels, align 4
  %call165 = call i32 @efx_mcdi_push_default_indir_table(ptr noundef %efx, i32 noundef %128) #14
  %call166 = call i32 @ef100_register_netdev(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end163.cleanup_crit_edge, label %if.end163.fail_crit_edge

if.end163.fail_crit_edge:                         ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fail:                                             ; preds = %if.end163.fail_crit_edge, %if.end158.fail_crit_edge, %if.end154.fail_crit_edge, %if.then149, %do.body145.fail_crit_edge, %if.then135, %do.body131.fail_crit_edge, %if.end96.fail_crit_edge, %if.end91.fail_crit_edge, %if.end87.fail_crit_edge, %if.end83.fail_crit_edge, %if.end79.fail_crit_edge, %if.then71, %do.body67.fail_crit_edge, %for.end.fail_crit_edge, %do.end.i.4, %if.else.i.4.fail_crit_edge, %do.end49.fail_crit_edge, %if.then41, %do.body39.fail_crit_edge
  %rc.1 = phi i32 [ %call36, %if.then41 ], [ %call36, %do.body39.fail_crit_edge ], [ %call50, %do.end49.fail_crit_edge ], [ %call80, %if.end79.fail_crit_edge ], [ %call84, %if.end83.fail_crit_edge ], [ %call88, %if.end87.fail_crit_edge ], [ %call92, %if.end91.fail_crit_edge ], [ %call97, %if.end96.fail_crit_edge ], [ %call155, %if.end154.fail_crit_edge ], [ %call.i, %if.end158.fail_crit_edge ], [ %call166, %if.end163.fail_crit_edge ], [ -22, %if.then135 ], [ -22, %do.body131.fail_crit_edge ], [ -22, %if.then149 ], [ -22, %do.body145.fail_crit_edge ], [ -19, %do.body67.fail_crit_edge ], [ -19, %if.then71 ], [ %call62, %for.end.fail_crit_edge ], [ -5, %if.else.i.4.fail_crit_edge ], [ -100, %do.end.i.4 ]
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end163.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %rc.1, %fail ], [ -12, %if.end22.cleanup_crit_edge ], [ 0, %if.end163.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fw_version) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef100_remove(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  tail call void @ef100_unregister_netdev(ptr noundef %efx) #14
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #14
  tail call void @efx_mcdi_filter_table_remove(ptr noundef %efx) #14
  tail call void @up_write(ptr noundef %filter_sem) #14
  tail call void @efx_fini_channels(ptr noundef %efx) #14
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %2 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data, align 16
  tail call void @kfree(ptr noundef %3) #14
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %phy_data, align 16
  tail call void @efx_mcdi_detach(ptr noundef %efx) #14
  tail call void @efx_mcdi_fini(ptr noundef %efx) #14
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mcdi_buf = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 1
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %mcdi_buf) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  %5 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %nic_data1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef100_unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_table_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_describe_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_copy_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_update_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_sync_rx_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_mtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_mac(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_ev_init(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ef100_ev_rx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_process_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef100_ev_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_add_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_table_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_del_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_check_design_params(ptr nocapture noundef readonly %efx) unnamed_addr #0 align 64 {
entry:
  %reader = alloca %struct.ef100_tlv_state, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reader) #14
  %0 = call ptr @memset(ptr %reader, i32 0, i32 24)
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %1 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 3072
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !158
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_check_design_params.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_check_design_params, %if.then6)) #14
          to label %do.end9 [label %if.then6], !srcloc !161

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_check_design_params.__UNIQUE_ID_ddebug540, ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef %4) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp95.not = icmp eq i32 %3, 0
  br i1 %cmp95.not, label %do.end9.while.end_crit_edge, label %while.body.lr.ph

do.end9.while.end_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end9
  %value_offset23.i = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 2
  %value25.i = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %len29.i = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 4
  %type8.i = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 3
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end23
  %cmp = icmp ult i32 %13, %4
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.while.end_crit_edge

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %offset.096 = phi i32 [ 0, %while.body.lr.ph ], [ %13, %while.cond.loopexit.while.body_crit_edge ]
  %add = add i32 %offset.096, 3076
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #14, !srcloc !158
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = add i32 %offset.096, 4
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %while.body
  %data.090 = phi i32 [ %12, %while.body ], [ %shr, %if.end23.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %while.body ], [ %inc24, %if.end23.for.body_crit_edge ]
  %conv = trunc i32 %data.090 to i8
  %14 = ptrtoint ptr %reader to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reader, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %15, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb21.i
  ]

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %17 = and i8 %conv, 127
  %conv2.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %type8.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv2.i, ptr %type8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %tobool.not.i = icmp sgt i8 %conv, -1
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %19 = ptrtoint ptr %reader to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i, ptr %reader, align 8
  %20 = ptrtoint ptr %value25.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %value25.i, align 8
  %21 = ptrtoint ptr %value_offset23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %value_offset23.i, align 8
  br label %if.end23

sw.bb6.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %22 = trunc i32 %data.090 to i16
  %conv7.i = shl i16 %22, 7
  %shl.i = and i16 %conv7.i, 32640
  %23 = ptrtoint ptr %type8.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %type8.i, align 4
  %or.i = or i16 %24, %shl.i
  store i16 %or.i, ptr %type8.i, align 4
  %25 = ptrtoint ptr %reader to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %reader, align 8
  br label %if.end23

sw.bb12.i:                                        ; preds = %for.body
  %26 = ptrtoint ptr %len29.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %len29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv)
  %cmp.i = icmp ugt i8 %conv, 8
  br i1 %cmp.i, label %sw.bb12.i.out_crit_edge, label %if.end.i

sw.bb12.i.out_crit_edge:                          ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool18.not.i = icmp eq i8 %conv, 0
  %cond19.i = select i1 %tobool18.not.i, i32 0, i32 3
  %27 = ptrtoint ptr %reader to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond19.i, ptr %reader, align 8
  br label %land.lhs.true

sw.bb21.i:                                        ; preds = %for.body
  %conv.mask = and i32 %data.090, 255
  %conv22.i = zext i32 %conv.mask to i64
  %28 = ptrtoint ptr %value_offset23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value_offset23.i, align 8
  %mul.i = shl i32 %29, 3
  %sh_prom.i = zext i32 %mul.i to i64
  %shl24.i = shl i64 %conv22.i, %sh_prom.i
  %30 = ptrtoint ptr %value25.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %value25.i, align 8
  %or26.i = or i64 %shl24.i, %31
  store i64 %or26.i, ptr %value25.i, align 8
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %value_offset23.i, align 8
  %32 = ptrtoint ptr %len29.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %len29.i, align 2
  %conv30.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv30.i)
  %cmp31.not.i = icmp ult i32 %inc.i, %conv30.i
  br i1 %cmp31.not.i, label %land.lhs.truethread-pre-split, label %land.lhs.true.thread79

land.lhs.true.thread79:                           ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %reader to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %reader, align 8
  br label %if.end20

land.end.i:                                       ; preds = %for.body
  %.b94.i = load i1, ptr @ef100_tlv_feed.__already_done, align 1
  br i1 %.b94.i, label %land.end.i.out_crit_edge, label %if.then42.i, !prof !154

land.end.i.out_crit_edge:                         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then42.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ef100_tlv_feed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 941, i32 noundef 9, ptr noundef null) #14
  br label %out

land.lhs.truethread-pre-split:                    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %reader to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %reader, align 8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.truethread-pre-split, %if.end.i
  %36 = phi i32 [ %.pr, %land.lhs.truethread-pre-split ], [ %cond19.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp16 = icmp eq i32 %36, 0
  br i1 %cmp16, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %land.lhs.true.thread79
  %call19 = call fastcc i32 @ef100_process_design_param(ptr noundef %efx, ptr noundef nonnull %reader)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23:                                         ; preds = %if.end20.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %sw.bb6.i, %sw.bb.i
  %shr = lshr i32 %data.090, 8
  %inc24 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc24, 4
  br i1 %exitcond.not, label %while.cond.loopexit, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %do.end9.while.end_crit_edge
  %37 = ptrtoint ptr %reader to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reader, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %38, label %do.body43 [
    i32 0, label %while.end.out_crit_edge
    i32 1, label %do.body33
  ]

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body33:                                        ; preds = %while.end
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 4
  %and35 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body33.out_crit_edge, label %if.then37

do.body33.out_crit_edge:                          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then37:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev38 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %42 = ptrtoint ptr %net_dev38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev38, align 4
  %type = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 3
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %type, align 4
  %conv39 = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.53, i32 noundef %conv39) #18
  br label %out

do.body43:                                        ; preds = %while.end
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 4
  %and45 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.out_crit_edge, label %if.then47

do.body43.out_crit_edge:                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev48 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %48 = ptrtoint ptr %net_dev48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev48, align 4
  %type49 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 3
  %50 = ptrtoint ptr %type49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %type49, align 4
  %conv50 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.54, i32 noundef %conv50) #18
  br label %out

out:                                              ; preds = %if.then47, %do.body43.out_crit_edge, %if.then37, %do.body33.out_crit_edge, %while.end.out_crit_edge, %if.end20.out_crit_edge, %if.then42.i, %land.end.i.out_crit_edge, %sw.bb12.i.out_crit_edge
  %rc.3 = phi i32 [ %38, %while.end.out_crit_edge ], [ -5, %do.body43.out_crit_edge ], [ -5, %if.then47 ], [ -5, %do.body33.out_crit_edge ], [ -5, %if.then37 ], [ -5, %land.end.i.out_crit_edge ], [ -5, %if.then42.i ], [ -95, %sw.bb12.i.out_crit_edge ], [ %call19, %if.end20.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reader) #14
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_log_ctrl(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_get_pf_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef100_init_datapath_caps(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [38 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %outbuf) #14
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 152)
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %1 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #14
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !153
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 190, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 152, ptr noundef nonnull %outlen) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %5)
  %cmp = icmp ult i32 %5, 78
  br i1 %cmp, label %do.body3, label %if.end9

do.body3:                                         ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body3.cleanup_crit_edge, label %if.then5

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.63) #18
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outbuf, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %datapath_caps = getelementptr inbounds %struct.ef100_nic_data, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %datapath_caps, align 8
  %add.ptr13 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 5
  %14 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr13, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %datapath_caps2 = getelementptr inbounds %struct.ef100_nic_data, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %datapath_caps2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %datapath_caps2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %5)
  %cmp17 = icmp ult i32 %5, 152
  br i1 %cmp17, label %if.end9.if.end25_crit_edge, label %if.else

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr20 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 37
  %18 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr20, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end9.if.end25_crit_edge
  %.sink = phi i32 [ %20, %if.else ], [ 0, %if.end9.if.end25_crit_edge ]
  %21 = getelementptr inbounds %struct.ef100_nic_data, ptr %2, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %outbuf, i32 72
  %23 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr27, align 4
  %call28 = call i32 @efx_mcdi_window_mode_to_stride(ptr noundef %efx, i8 noundef zeroext %24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %25 = ptrtoint ptr %datapath_caps2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datapath_caps2, align 4
  %27 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool34.not = icmp eq i32 %27, 0
  br i1 %tobool34.not, label %if.end31.if.end41_crit_edge, label %if.then35

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev37 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %28 = ptrtoint ptr %net_dev37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev37, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %features, align 16
  %or = or i64 %31, 483459072
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 24
  %32 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %hw_features, align 8
  %or38 = or i64 %33, 483459072
  store i64 %or38, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 27
  %34 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hw_enc_features, align 16
  %or39 = or i64 %35, 483459072
  store i64 %or39, ptr %hw_enc_features, align 16
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 29
  %36 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %gso_partial_features, align 64
  %or40 = or i64 %37, 8388608
  store i64 %or40, ptr %gso_partial_features, align 64
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end31.if.end41_crit_edge
  %add.ptr43 = getelementptr inbounds i8, ptr %outbuf, i32 76
  %38 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr43, align 4
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %41 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %num_mac_stats, align 8
  %msg_enable47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %42 = ptrtoint ptr %msg_enable47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable47, align 4
  %and48 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end41.cleanup_crit_edge, label %do.body51

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body51:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef100_init_datapath_caps.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef100_init_datapath_caps, %if.then56)) #14
          to label %cleanup [label %if.then56], !srcloc !161

if.then56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev57 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %44 = ptrtoint ptr %net_dev57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev57, align 4
  %46 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_mac_stats, align 8
  %conv59 = zext i16 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef100_init_datapath_caps.__UNIQUE_ID_ddebug526, ptr noundef %45, ptr noundef nonnull @.str.65, i32 noundef %conv59) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body51, %if.end41.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then5, %do.body3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.then5 ], [ -5, %do.body3.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %do.body51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #14
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %outbuf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_get_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_print_fwver(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @compare_versions(ptr nocapture noundef readonly %a) unnamed_addr #12 align 64 {
entry:
  %a_major = alloca i32, align 4
  %a_minor = alloca i32, align 4
  %a_point = alloca i32, align 4
  %a_patch = alloca i32, align 4
  %b_major = alloca i32, align 4
  %b_minor = alloca i32, align 4
  %b_point = alloca i32, align 4
  %b_patch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_major) #14
  %0 = ptrtoint ptr %a_major to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %a_major, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_minor) #14
  %1 = ptrtoint ptr %a_minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %a_minor, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_point) #14
  %2 = ptrtoint ptr %a_point to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %a_point, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a_patch) #14
  %3 = ptrtoint ptr %a_patch to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %a_patch, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_major) #14
  %4 = ptrtoint ptr %b_major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %b_major, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_minor) #14
  %5 = ptrtoint ptr %b_minor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %b_minor, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_point) #14
  %6 = ptrtoint ptr %b_point to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %b_point, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_patch) #14
  %7 = ptrtoint ptr %b_patch to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %b_patch, align 4, !annotation !153
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %a, ptr noundef nonnull @.str.66, ptr noundef nonnull %a_major, ptr noundef nonnull %a_minor, ptr noundef nonnull %a_point, ptr noundef nonnull %a_patch)
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.66, ptr noundef nonnull %b_major, ptr noundef nonnull %b_minor, ptr noundef nonnull %b_point, ptr noundef nonnull %b_patch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp ne i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 4
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp3.not = icmp eq i32 %call, 4
  %cmp3.not.not = xor i1 %cmp3.not, true
  %or.cond1 = and i1 %cmp2.not, %cmp3.not.not
  br i1 %or.cond1, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %or.cond2 = or i1 %cmp3.not, %cmp2.not
  br i1 %or.cond2, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %a_major to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %a_major, align 4
  %10 = ptrtoint ptr %b_major to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_major, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13.not = icmp eq i32 %9, %11
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %9, %11
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %a_minor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a_minor, align 4
  %14 = ptrtoint ptr %b_minor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_minor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp16.not = icmp eq i32 %13, %15
  br i1 %cmp16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %sub18 = sub i32 %13, %15
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %a_point to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %a_point, align 4
  %18 = ptrtoint ptr %b_point to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_point, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp20.not = icmp eq i32 %17, %19
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %sub22 = sub i32 %17, %19
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %a_patch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a_patch, align 4
  %22 = ptrtoint ptr %b_patch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_patch, align 4
  %sub24 = sub i32 %21, %23
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then17, %if.then14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then14 ], [ %sub18, %if.then17 ], [ %sub22, %if.then21 ], [ %sub24, %if.end23 ], [ 1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_patch) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_point) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_minor) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_major) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_patch) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_point) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_minor) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a_major) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_phy_probe(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #19
  %phy_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %1 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %phy_data1, align 16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @efx_mcdi_get_phy_cfg(ptr noundef %efx, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1, align 16
  %media = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %media, align 4
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %supported_cap, align 4
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  tail call void @mcdi_to_ethtool_linkset(i32 noundef %5, i32 noundef %7, ptr noundef %link_advertising) #14
  %8 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported_cap, align 4
  %call10 = tail call i32 @mcdi_fec_caps_to_ethtool(i32 noundef %9, i1 noundef zeroext false) #14
  %fec_config = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 96
  %10 = ptrtoint ptr %fec_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call10, ptr %fec_config, align 32
  %wanted_fc = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %11 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %wanted_fc, align 8
  %12 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %supported_cap, align 4
  %and = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool12.not, i8 3, i8 7
  %14 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.store.select, ptr %wanted_fc, align 8
  tail call void @efx_link_set_wanted_fc(ptr noundef %efx, i8 noundef zeroext %spec.store.select) #14
  %call18 = tail call i32 @efx_mcdi_port_reconfigure(ptr noundef %efx) #14
  %15 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call18, label %do.body [
    i32 0, label %if.end7.cleanup_crit_edge
    i32 -1, label %if.end7.cleanup_crit_edge47
  ]

if.end7.cleanup_crit_edge47:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end7
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and22 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body.cleanup_crit_edge, label %if.then24

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.67) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end7.cleanup_crit_edge47, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge47 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_push_default_indir_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef100_register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_process_design_param(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %reader) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %type = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %3, label %do.body120 [
    i16 0, label %entry.cleanup_crit_edge
    i16 1, label %entry.cleanup_crit_edge205
    i16 2, label %entry.cleanup_crit_edge206
    i16 3, label %entry.cleanup_crit_edge207
    i16 4, label %entry.cleanup_crit_edge208
    i16 5, label %sw.bb6
    i16 6, label %sw.bb9
    i16 7, label %entry.sw.bb14_crit_edge
    i16 8, label %entry.sw.bb14_crit_edge209
    i16 9, label %sw.bb41
    i16 10, label %sw.bb53
    i16 11, label %sw.bb66
    i16 12, label %sw.bb76
    i16 13, label %entry.cleanup_crit_edge210
    i16 14, label %entry.cleanup_crit_edge211
    i16 15, label %entry.cleanup_crit_edge212
    i16 16, label %sw.bb94
    i16 17, label %entry.cleanup_crit_edge213
  ]

entry.cleanup_crit_edge213:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge212:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge211:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge210:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.sw.bb14_crit_edge209:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

entry.cleanup_crit_edge208:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge207:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge206:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge205:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %value = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %value, align 8
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 65535)
  %8 = trunc i64 %7 to i16
  %tso_max_hdr_len = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %tso_max_hdr_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tso_max_hdr_len, align 8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %value10 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %10 = ptrtoint ptr %value10 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %value10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %do.body, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %sw.bb9
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.55) #18
  br label %cleanup

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge209
  %value15 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %16 = ptrtoint ptr %value15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %value15, align 8
  %18 = add i64 %17, -513
  call void @__sanitizer_cov_trace_const_cmp8(i64 -512, i64 %18)
  %19 = icmp ult i64 %18, -512
  br i1 %19, label %sw.bb14.do.body25_crit_edge, label %lor.lhs.false20

sw.bb14.do.body25_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

lor.lhs.false20:                                  ; preds = %sw.bb14
  %rem.rhs.trunc = trunc i64 %17 to i16
  %rem200 = urem i16 512, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem200)
  %tobool23.not = icmp eq i16 %rem200, 0
  br i1 %tobool23.not, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false20.do.body25_crit_edge

lor.lhs.false20.do.body25_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body25

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body25:                                        ; preds = %lor.lhs.false20.do.body25_crit_edge, %sw.bb14.do.body25_crit_edge
  %msg_enable26 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable26, align 4
  %and27 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body25.cleanup_crit_edge, label %if.then29

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev30 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %3)
  %cmp33 = icmp eq i16 %3, 7
  %cond35 = select i1 %cmp33, ptr @.str.57, ptr @.str.58
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.56, ptr noundef nonnull %cond35, i64 noundef %17) #18
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %value42 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %24 = ptrtoint ptr %value42 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %value42, align 8
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 65536)
  %27 = trunc i64 %26 to i32
  %tso_max_payload_len = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %tso_max_payload_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tso_max_payload_len, align 8
  %net_dev51 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %29 = ptrtoint ptr %net_dev51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev51, align 4
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 137
  %31 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %27, ptr %gso_max_size.i, align 8
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %value54 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %32 = ptrtoint ptr %value54 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %value54, align 8
  %34 = tail call i64 @llvm.umin.i64(i64 %33, i64 65535)
  %35 = trunc i64 %34 to i16
  %tso_max_payload_num_segs = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %tso_max_payload_num_segs to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %tso_max_payload_num_segs, align 2
  %net_dev63 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %37 = ptrtoint ptr %net_dev63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev63, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 138
  %39 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store volatile i16 %35, ptr %gso_max_segs.i, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %value67 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %40 = ptrtoint ptr %value67 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %value67, align 8
  %42 = tail call i64 @llvm.umin.i64(i64 %41, i64 65535)
  %43 = trunc i64 %42 to i16
  %tso_max_frames = getelementptr inbounds %struct.ef100_nic_data, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %tso_max_frames to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %tso_max_frames, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %entry
  %value77 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %45 = ptrtoint ptr %value77 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %value77, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool78.not = icmp eq i64 %46, 0
  br i1 %tobool78.not, label %sw.bb76.cleanup_crit_edge, label %do.body80

sw.bb76.cleanup_crit_edge:                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body80:                                        ; preds = %sw.bb76
  %msg_enable81 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %47 = ptrtoint ptr %msg_enable81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable81, align 4
  %and82 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body80.cleanup_crit_edge, label %if.then84

do.body80.cleanup_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then84:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev85 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %49 = ptrtoint ptr %net_dev85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev85, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.59, i64 noundef %46) #18
  br label %cleanup

sw.bb94:                                          ; preds = %entry
  %value95 = getelementptr inbounds %struct.ef100_tlv_state, ptr %reader, i32 0, i32 1
  %51 = ptrtoint ptr %value95 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %value95, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %52)
  %cmp96.not = icmp eq i64 %52, 16
  br i1 %cmp96.not, label %sw.bb94.cleanup_crit_edge, label %do.body99

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body99:                                        ; preds = %sw.bb94
  %msg_enable100 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %53 = ptrtoint ptr %msg_enable100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable100, align 4
  %and101 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body99.cleanup_crit_edge, label %do.body104

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body104:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_process_design_param.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_process_design_param, %if.then109)) #14
          to label %cleanup [label %if.then109], !srcloc !161

if.then109:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev110 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %55 = ptrtoint ptr %net_dev110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev110, align 4
  %57 = ptrtoint ptr %value95 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %value95, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_process_design_param.__UNIQUE_ID_ddebug538, ptr noundef %56, ptr noundef nonnull @.str.61, i64 noundef %58) #14
  br label %cleanup

do.body120:                                       ; preds = %entry
  %msg_enable121 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %59 = ptrtoint ptr %msg_enable121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_enable121, align 4
  %and122 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body120.cleanup_crit_edge, label %do.body125

do.body120.cleanup_crit_edge:                     ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body125:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_process_design_param.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_process_design_param, %if.then137)) #14
          to label %cleanup [label %if.then137], !srcloc !161

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev138 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %61 = ptrtoint ptr %net_dev138 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net_dev138, align 4
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %type, align 4
  %conv140 = zext i16 %64 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_process_design_param.__UNIQUE_ID_ddebug539, ptr noundef %62, ptr noundef nonnull @.str.62, i32 noundef %conv140) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %do.body125, %do.body120.cleanup_crit_edge, %if.then109, %do.body104, %do.body99.cleanup_crit_edge, %sw.bb94.cleanup_crit_edge, %if.then84, %do.body80.cleanup_crit_edge, %sw.bb76.cleanup_crit_edge, %sw.bb66, %sw.bb53, %sw.bb41, %if.then29, %do.body25.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.then12, %do.body.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb6, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge205, %entry.cleanup_crit_edge206, %entry.cleanup_crit_edge207, %entry.cleanup_crit_edge208, %entry.cleanup_crit_edge210, %entry.cleanup_crit_edge211, %entry.cleanup_crit_edge212, %entry.cleanup_crit_edge213
  %retval.0 = phi i32 [ 0, %sw.bb66 ], [ 0, %sw.bb53 ], [ 0, %sw.bb41 ], [ 0, %sw.bb6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge205 ], [ 0, %entry.cleanup_crit_edge206 ], [ 0, %entry.cleanup_crit_edge207 ], [ 0, %entry.cleanup_crit_edge208 ], [ -95, %if.then12 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %sw.bb9.cleanup_crit_edge ], [ -95, %if.then29 ], [ -95, %do.body25.cleanup_crit_edge ], [ 0, %lor.lhs.false20.cleanup_crit_edge ], [ -95, %if.then84 ], [ -95, %do.body80.cleanup_crit_edge ], [ 0, %sw.bb76.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge210 ], [ 0, %entry.cleanup_crit_edge211 ], [ 0, %entry.cleanup_crit_edge212 ], [ 0, %do.body99.cleanup_crit_edge ], [ 0, %if.then109 ], [ 0, %sw.bb94.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge213 ], [ 0, %if.then137 ], [ 0, %do.body120.cleanup_crit_edge ], [ 0, %do.body104 ], [ 0, %do.body125 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_window_mode_to_stride(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_get_phy_cfg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcdi_to_ethtool_linkset(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcdi_fec_caps_to_ethtool(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_set_wanted_fc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_table_probe(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !110, !111, !112, !114, !116, !118, !120, !122, !123, !124, !126, !128, !129, !130, !132, !133, !135, !137, !138, !139, !141}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @ef100_pf_nic_type, !1, !"ef100_pf_nic_type", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 706, i32 27}
!2 = !{ptr @ef100_vf_nic_type, !3, !"ef100_vf_nic_type", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 791, i32 27}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 544, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 543, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 507, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 508, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 509, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 510, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 511, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 512, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 513, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 514, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 515, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 516, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 517, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 518, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 519, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 520, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 521, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 522, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 523, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 524, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 525, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 526, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 527, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 528, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 529, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 530, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 531, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 532, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 533, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 534, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 535, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 536, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 537, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 538, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 539, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 540, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 541, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 542, i32 2}
!80 = !{ptr @ef100_stat_desc, !81, !"ef100_stat_desc", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 506, i32 38}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 401, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 52, i32 3}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 286, i32 4}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 291, i32 4}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 679, i32 2}
!92 = !{ptr @__func__.efx_ef100_ev_test_generate, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1132, i32 3}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1172, i32 3}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1203, i32 2}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ef100_probe_main.__UNIQUE_ID_ddebug542, !98, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1205, i32 35}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1206, i32 3}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1212, i32 3}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1064, i32 2}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ef100_check_design_params.__UNIQUE_ID_ddebug540, !109, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1086, i32 4}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1090, i32 4}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 941, i32 3}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 976, i32 4}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 990, i32 4}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1010, i32 4}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1032, i32 4}
!128 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ef100_process_design_param.__UNIQUE_ID_ddebug538, !127, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 1047, i32 3}
!132 = !{ptr @ef100_process_design_param.__UNIQUE_ID_ddebug539, !131, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 164, i32 3}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 201, i32 2}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @efx_ef100_init_datapath_caps.__UNIQUE_ID_ddebug526, !136, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 872, i32 24}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/sfc/ef100_nic.c", i32 360, i32 3}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"auto-init"}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2159583582}
!156 = !{i64 6631584}
!157 = !{i64 2159583949}
!158 = !{i64 6632002}
!159 = !{i8 0, i8 2}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 2149143530, i64 2149143535, i64 2149143548, i64 2149143592, i64 2149143626, i64 2149143647}
