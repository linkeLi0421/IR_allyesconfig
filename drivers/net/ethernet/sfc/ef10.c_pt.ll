; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef10.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.efx_hw_stat_desc = type { ptr, i16, i16 }
%struct.efx_ef10_nvram_type_info = type { i16, i16, i8, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.efx_ef10_nic_data = type { %struct.efx_buffer, i16, i32, i32, i32, ptr, ptr, i32, [16 x i32], i16, i8, ptr, [95 x i64], i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, [6 x i8], i32, ptr, [6 x i8], %struct.list_head, %struct.mutex, [16 x %struct.efx_udp_tunnel], i8, %struct.mutex, i64 }
%struct.efx_udp_tunnel = type { i16, i16 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.efx_tx_buffer = type { %union.anon.156, %union.anon.157, i16, i16, i16, i16 }
%union.anon.156 = type { ptr }
%union.anon.157 = type { %union.efx_qword }
%union.efx_qword = type { [1 x i64] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.137, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.137 = type { ptr }
%struct.ef10_vf = type { ptr, ptr, i32, i32, [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.138, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.138 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_mcdi_data = type { %struct.efx_mcdi_iface, %struct.efx_mcdi_mon, i32 }
%struct.efx_mcdi_iface = type { ptr, i32, i32, %struct.wait_queue_head, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.timer_list, ptr, i8, i32, i32, %struct.wait_queue_head }
%struct.efx_mcdi_mon = type { %struct.efx_buffer, %struct.mutex, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.efx_rx_buffer = type { i32, ptr, i16, i16, i16 }
%struct.efx_mcdi_filter_vlan = type { %struct.list_head, i16, [32 x i16], [256 x i16], [15 x i16] }
%struct.efx_ef10_vlan = type { %struct.list_head, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_fec_stats = type { %struct.ethtool_fec_stat, %struct.ethtool_fec_stat, %struct.ethtool_fec_stat }
%struct.ethtool_fec_stat = type { i64, [8 x i64] }
%struct.efx_self_tests = type { i32, i32, i32, [32 x i32], [32 x i32], i32, i32, [20 x i32], [18 x %struct.efx_loopback_self_tests] }
%struct.efx_loopback_self_tests = type { [4 x i32], [4 x i32], i32, i32 }
%struct.efx_mcdi_mtd_partition = type { %struct.efx_mtd_partition, i8, i16, i16 }
%struct.efx_mtd_partition = type { %struct.list_head, %struct.mtd_info, ptr, ptr, [36 x i8] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.158 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.158 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@efx_ef10_tx_tso_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ethernet/sfc/ef10.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MSS of %u is too small for TSO v2\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_hunt_a0_vf_nic_type = dso_local constant { %struct.efx_nic_type, [144 x i8] } { %struct.efx_nic_type { i8 1, ptr @efx_ef10_vf_mem_bar, ptr @efx_ef10_mem_map_size, ptr @efx_ef10_probe_vf, ptr @efx_ef10_remove, ptr @efx_ef10_init_nic, ptr @efx_ef10_dimension_resources, ptr @efx_ef10_fini_nic, ptr null, ptr @efx_ef10_map_reset_reason, ptr @efx_ef10_map_reset_flags, ptr @efx_ef10_reset, ptr @efx_mcdi_port_probe, ptr @efx_mcdi_port_remove, ptr null, ptr @efx_fini_dmaq, ptr null, ptr null, ptr @efx_ef10_prepare_flr, ptr @efx_port_dummy_op_void, ptr @efx_ef10_describe_stats, ptr @efx_ef10_update_stats_vf, ptr @efx_ef10_update_stats_atomic_vf, ptr @efx_port_dummy_op_void, ptr @efx_port_dummy_op_void, ptr @efx_port_dummy_op_void, ptr @efx_ef10_push_irq_moderation, ptr @efx_mcdi_port_reconfigure, ptr null, ptr @efx_ef10_mac_reconfigure, ptr @efx_mcdi_mac_check_fault, ptr @efx_ef10_get_wol_vf, ptr @efx_ef10_set_wol_vf, ptr @efx_port_dummy_op_void, ptr null, ptr @ef10_check_caps, ptr null, ptr null, ptr @efx_ef10_mcdi_request, ptr @efx_ef10_mcdi_poll_response, ptr @efx_ef10_mcdi_read_response, ptr @efx_ef10_mcdi_poll_reboot, ptr @efx_ef10_mcdi_reboot_detected, ptr @efx_port_dummy_op_void, ptr @efx_ef10_irq_test_generate, ptr @efx_port_dummy_op_void, ptr @efx_ef10_msi_interrupt, ptr @efx_ef10_legacy_interrupt, ptr @efx_ef10_tx_probe, ptr @efx_ef10_tx_init, ptr @efx_mcdi_tx_remove, ptr @efx_ef10_tx_write, ptr @__efx_enqueue_skb, ptr @efx_ef10_tx_limit_len, ptr @efx_mcdi_vf_rx_push_rss_config, ptr @efx_mcdi_rx_pull_rss_config, ptr null, ptr null, ptr null, ptr @efx_mcdi_rx_probe, ptr @efx_mcdi_rx_init, ptr @efx_mcdi_rx_remove, ptr @efx_ef10_rx_write, ptr @efx_ef10_rx_defer_refill, ptr @__efx_rx_packet, ptr null, ptr @efx_mcdi_ev_probe, ptr @efx_ef10_ev_init, ptr @efx_mcdi_ev_fini, ptr @efx_mcdi_ev_remove, ptr @efx_ef10_ev_process, ptr @efx_ef10_ev_read_ack, ptr @efx_ef10_ev_test_generate, ptr @efx_ef10_filter_table_probe, ptr @efx_mcdi_filter_table_restore, ptr @efx_mcdi_filter_table_remove, ptr @efx_mcdi_update_rx_scatter, ptr @efx_mcdi_filter_insert, ptr @efx_mcdi_filter_remove_safe, ptr @efx_mcdi_filter_get_safe, ptr @efx_mcdi_filter_clear_rx, ptr @efx_mcdi_filter_count_rx_used, ptr @efx_mcdi_filter_get_rx_id_limit, ptr @efx_mcdi_filter_get_rx_ids, ptr @efx_mcdi_filter_rfs_expire_one, ptr @efx_port_dummy_op_int, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ef10_ptp_write_host_time_vf, ptr null, ptr @efx_ef10_ptp_set_ts_config_vf, ptr null, ptr @efx_ef10_vlan_rx_add_vid, ptr @efx_ef10_vlan_rx_kill_vid, ptr @efx_ef10_get_phys_port_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_ef10_vswitching_probe_vf, ptr @efx_ef10_vswitching_restore_vf, ptr @efx_ef10_vswitching_remove_vf, ptr @efx_ef10_get_mac_address_vf, ptr @efx_ef10_set_mac_address, ptr null, ptr null, ptr null, ptr @efx_ef10_print_additional_fwver, ptr @efx_mcdi_sensor_event, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i64 281474976710655, i32 14, i32 0, i32 10, i32 0, i8 1, i8 1, i8 0, i32 0, i32 256, i64 824633721362, i32 2, i32 8192, i32 3, i32 40 }, [144 x i8] zeroinitializer }, align 32
@efx_hunt_a0_nic_type = dso_local constant { %struct.efx_nic_type, [144 x i8] } { %struct.efx_nic_type { i8 0, ptr @efx_ef10_pf_mem_bar, ptr @efx_ef10_mem_map_size, ptr @efx_ef10_probe_pf, ptr @efx_ef10_remove, ptr @efx_ef10_init_nic, ptr @efx_ef10_dimension_resources, ptr @efx_ef10_fini_nic, ptr null, ptr @efx_ef10_map_reset_reason, ptr @efx_ef10_map_reset_flags, ptr @efx_ef10_reset, ptr @efx_mcdi_port_probe, ptr @efx_mcdi_port_remove, ptr null, ptr @efx_fini_dmaq, ptr null, ptr null, ptr @efx_ef10_prepare_flr, ptr @efx_port_dummy_op_void, ptr @efx_ef10_describe_stats, ptr @efx_ef10_update_stats_pf, ptr null, ptr @efx_mcdi_mac_start_stats, ptr @efx_mcdi_mac_pull_stats, ptr @efx_mcdi_mac_stop_stats, ptr @efx_ef10_push_irq_moderation, ptr @efx_mcdi_port_reconfigure, ptr null, ptr @efx_ef10_mac_reconfigure, ptr @efx_mcdi_mac_check_fault, ptr @efx_ef10_get_wol, ptr @efx_ef10_set_wol, ptr @efx_port_dummy_op_void, ptr @efx_ef10_get_fec_stats, ptr @ef10_check_caps, ptr @efx_ef10_test_chip, ptr @efx_mcdi_nvram_test_all, ptr @efx_ef10_mcdi_request, ptr @efx_ef10_mcdi_poll_response, ptr @efx_ef10_mcdi_read_response, ptr @efx_ef10_mcdi_poll_reboot, ptr @efx_ef10_mcdi_reboot_detected, ptr @efx_port_dummy_op_void, ptr @efx_ef10_irq_test_generate, ptr @efx_port_dummy_op_void, ptr @efx_ef10_msi_interrupt, ptr @efx_ef10_legacy_interrupt, ptr @efx_ef10_tx_probe, ptr @efx_ef10_tx_init, ptr @efx_mcdi_tx_remove, ptr @efx_ef10_tx_write, ptr @__efx_enqueue_skb, ptr @efx_ef10_tx_limit_len, ptr @efx_mcdi_pf_rx_push_rss_config, ptr @efx_mcdi_rx_pull_rss_config, ptr @efx_mcdi_rx_push_rss_context_config, ptr @efx_mcdi_rx_pull_rss_context_config, ptr @efx_mcdi_rx_restore_rss_contexts, ptr @efx_mcdi_rx_probe, ptr @efx_mcdi_rx_init, ptr @efx_mcdi_rx_remove, ptr @efx_ef10_rx_write, ptr @efx_ef10_rx_defer_refill, ptr @__efx_rx_packet, ptr null, ptr @efx_mcdi_ev_probe, ptr @efx_ef10_ev_init, ptr @efx_mcdi_ev_fini, ptr @efx_mcdi_ev_remove, ptr @efx_ef10_ev_process, ptr @efx_ef10_ev_read_ack, ptr @efx_ef10_ev_test_generate, ptr @efx_ef10_filter_table_probe, ptr @efx_mcdi_filter_table_restore, ptr @efx_mcdi_filter_table_remove, ptr @efx_mcdi_update_rx_scatter, ptr @efx_mcdi_filter_insert, ptr @efx_mcdi_filter_remove_safe, ptr @efx_mcdi_filter_get_safe, ptr @efx_mcdi_filter_clear_rx, ptr @efx_mcdi_filter_count_rx_used, ptr @efx_mcdi_filter_get_rx_id_limit, ptr @efx_mcdi_filter_get_rx_ids, ptr @efx_mcdi_filter_rfs_expire_one, ptr @efx_ef10_mtd_probe, ptr @efx_mcdi_mtd_rename, ptr @efx_mcdi_mtd_read, ptr @efx_mcdi_mtd_erase, ptr @efx_mcdi_mtd_write, ptr @efx_mcdi_mtd_sync, ptr @efx_ef10_ptp_write_host_time, ptr @efx_ef10_ptp_set_ts_sync_events, ptr @efx_ef10_ptp_set_ts_config, ptr @efx_ef10_sriov_configure, ptr @efx_ef10_vlan_rx_add_vid, ptr @efx_ef10_vlan_rx_kill_vid, ptr @efx_ef10_get_phys_port_id, ptr @efx_ef10_sriov_init, ptr @efx_ef10_sriov_fini, ptr @efx_ef10_sriov_wanted, ptr @efx_ef10_sriov_reset, ptr @efx_ef10_sriov_flr, ptr @efx_ef10_sriov_set_vf_mac, ptr @efx_ef10_sriov_set_vf_vlan, ptr @efx_ef10_sriov_set_vf_spoofchk, ptr @efx_ef10_sriov_get_vf_config, ptr @efx_ef10_sriov_set_vf_link_state, ptr @efx_ef10_vswitching_probe_pf, ptr @efx_ef10_vswitching_restore_pf, ptr @efx_ef10_vswitching_remove_pf, ptr @efx_ef10_get_mac_address_pf, ptr @efx_ef10_set_mac_address, ptr @efx_ef10_tso_versions, ptr @efx_ef10_udp_tnl_push_ports, ptr @efx_ef10_udp_tnl_has_port, ptr @efx_ef10_print_additional_fwver, ptr @efx_mcdi_sensor_event, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i64 281474976710655, i32 14, i32 0, i32 10, i32 0, i8 1, i8 1, i8 1, i32 2, i32 256, i64 824633721362, i32 2, i32 8192, i32 3, i32 40 }, [144 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"The VF cannot link to its parent PF; please destroy and re-create the VF\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not get the PF id from VF\0A\00", [63 x i8] zeroinitializer }, align 32
@efx_ef10_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&nic_data->udp_tunnels_lock\00", [36 x i8] zeroinitializer }, align 32
@dev_attr_link_control_flag = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @link_control_flag_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_primary_flag = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @primary_flag_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error determining max VIs\0A\00", [37 x i8] zeroinitializer }, align 32
@efx_ef10_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&nic_data->vlan_lock\00", [43 x i8] zeroinitializer }, align 32
@efx_ef10_udp_tunnels = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr @efx_ef10_udp_tnl_set_port, ptr @efx_ef10_udp_tnl_unset_port, ptr null, ptr null, i32 1, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 16, i32 3 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"link_control_flag\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"primary_flag\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to read datapath firmware capabilities\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"current firmware does not support an RX prefix\0A\00", [48 x i8] zeroinitializer }, align 32
@efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efx_ef10_init_datapath_caps\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"firmware did not report VI window mode, assuming vi_stride = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str, ptr @.str.16, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware reports num_mac_stats = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str, ptr @.str.17, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"firmware did not report num_mac_stats, assuming %u\0A\00", [44 x i8] zeroinitializer }, align 32
@efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str, ptr @.str.19, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efx_ef10_get_timer_workarounds\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"workaround for bug 35388 is %sabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str, ptr @.str.22, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"workaround for bug 61265 is %sabled\0A\00", [59 x i8] zeroinitializer }, align 32
@efx_ef10_process_timer_config.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efx_ef10_process_timer_config\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"got timer properties from MC: quantum %u ns; max %u ns\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VLAN %u already added\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to set UDP tunnel ports; rc=%d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Rebooting MC due to UDP tunnel port list change\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to restore PIO buffers (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@efx_separate_tx_channels = external dso_local local_unnamed_addr global i8, align 1
@efx_ef10_dimension_resources.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.31, ptr @.str, ptr @.str.32, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efx_ef10_dimension_resources\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Reducing channel VIs from %u to %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Could not allocate enough VIs to satisfy RSS requirements. Performance may not be optimal.\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_ef10_dimension_resources.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.31, ptr @.str, ptr @.str.34, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%u VIs are not sufficient to map %u PIO buffers\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not shrink memory BAR to %x\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_ef10_dimension_resources.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.31, ptr @.str, ptr @.str.37, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"memory BAR at %pa (virtual %p+%x UC, %p+%x WC)\0A\00", [48 x i8] zeroinitializer }, align 32
@efx_ef10_stat_desc = internal constant { [95 x %struct.efx_hw_stat_desc], [168 x i8] } { [95 x %struct.efx_hw_stat_desc] [%struct.efx_hw_stat_desc { ptr @.str.38, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.39, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.40, i16 64, i16 56 }, %struct.efx_hw_stat_desc { ptr @.str.41, i16 64, i16 8 }, %struct.efx_hw_stat_desc { ptr @.str.42, i16 64, i16 16 }, %struct.efx_hw_stat_desc { ptr @.str.43, i16 64, i16 24 }, %struct.efx_hw_stat_desc { ptr @.str.44, i16 64, i16 32 }, %struct.efx_hw_stat_desc { ptr @.str.45, i16 64, i16 40 }, %struct.efx_hw_stat_desc { ptr @.str.46, i16 64, i16 48 }, %struct.efx_hw_stat_desc { ptr @.str.47, i16 64, i16 72 }, %struct.efx_hw_stat_desc { ptr @.str.48, i16 64, i16 80 }, %struct.efx_hw_stat_desc { ptr @.str.49, i16 64, i16 88 }, %struct.efx_hw_stat_desc { ptr @.str.50, i16 64, i16 96 }, %struct.efx_hw_stat_desc { ptr @.str.51, i16 64, i16 104 }, %struct.efx_hw_stat_desc { ptr @.str.52, i16 64, i16 112 }, %struct.efx_hw_stat_desc { ptr @.str.53, i16 64, i16 120 }, %struct.efx_hw_stat_desc { ptr @.str.54, i16 64, i16 128 }, %struct.efx_hw_stat_desc { ptr @.str.55, i16 64, i16 280 }, %struct.efx_hw_stat_desc { ptr null, i16 64, i16 288 }, %struct.efx_hw_stat_desc { ptr @.str.56, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.57, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.58, i16 64, i16 224 }, %struct.efx_hw_stat_desc { ptr @.str.59, i16 64, i16 240 }, %struct.efx_hw_stat_desc { ptr @.str.60, i16 64, i16 368 }, %struct.efx_hw_stat_desc { ptr @.str.61, i16 64, i16 232 }, %struct.efx_hw_stat_desc { ptr @.str.62, i16 64, i16 248 }, %struct.efx_hw_stat_desc { ptr @.str.63, i16 64, i16 256 }, %struct.efx_hw_stat_desc { ptr @.str.64, i16 64, i16 264 }, %struct.efx_hw_stat_desc { ptr @.str.65, i16 64, i16 272 }, %struct.efx_hw_stat_desc { ptr @.str.66, i16 64, i16 360 }, %struct.efx_hw_stat_desc { ptr @.str.67, i16 64, i16 296 }, %struct.efx_hw_stat_desc { ptr @.str.68, i16 64, i16 304 }, %struct.efx_hw_stat_desc { ptr @.str.69, i16 64, i16 312 }, %struct.efx_hw_stat_desc { ptr @.str.70, i16 64, i16 320 }, %struct.efx_hw_stat_desc { ptr @.str.71, i16 64, i16 328 }, %struct.efx_hw_stat_desc { ptr @.str.72, i16 64, i16 336 }, %struct.efx_hw_stat_desc { ptr @.str.73, i16 64, i16 344 }, %struct.efx_hw_stat_desc { ptr @.str.74, i16 64, i16 352 }, %struct.efx_hw_stat_desc { ptr @.str.75, i16 64, i16 424 }, %struct.efx_hw_stat_desc { ptr @.str.76, i16 64, i16 376 }, %struct.efx_hw_stat_desc { ptr @.str.77, i16 64, i16 400 }, %struct.efx_hw_stat_desc { ptr @.str.78, i16 64, i16 408 }, %struct.efx_hw_stat_desc { ptr @.str.79, i16 64, i16 432 }, %struct.efx_hw_stat_desc { ptr @.str.80, i16 64, i16 480 }, %struct.efx_hw_stat_desc { ptr @.str.81, i16 64, i16 488 }, %struct.efx_hw_stat_desc { ptr @.str.82, i16 64, i16 496 }, %struct.efx_hw_stat_desc { ptr @.str.83, i16 64, i16 504 }, %struct.efx_hw_stat_desc { ptr @.str.84, i16 64, i16 512 }, %struct.efx_hw_stat_desc { ptr @.str.85, i16 64, i16 520 }, %struct.efx_hw_stat_desc { ptr @.str.86, i16 64, i16 528 }, %struct.efx_hw_stat_desc { ptr @.str.87, i16 64, i16 536 }, %struct.efx_hw_stat_desc { ptr @.str.88, i16 64, i16 552 }, %struct.efx_hw_stat_desc { ptr @.str.89, i16 64, i16 560 }, %struct.efx_hw_stat_desc { ptr @.str.90, i16 64, i16 568 }, %struct.efx_hw_stat_desc { ptr @.str.91, i16 64, i16 576 }, %struct.efx_hw_stat_desc { ptr @.str.92, i16 64, i16 608 }, %struct.efx_hw_stat_desc { ptr @.str.93, i16 64, i16 616 }, %struct.efx_hw_stat_desc { ptr @.str.94, i16 64, i16 624 }, %struct.efx_hw_stat_desc { ptr @.str.95, i16 64, i16 632 }, %struct.efx_hw_stat_desc { ptr @.str.96, i16 64, i16 640 }, %struct.efx_hw_stat_desc { ptr @.str.97, i16 64, i16 648 }, %struct.efx_hw_stat_desc { ptr @.str.98, i16 64, i16 656 }, %struct.efx_hw_stat_desc { ptr @.str.99, i16 64, i16 664 }, %struct.efx_hw_stat_desc { ptr @.str.100, i16 64, i16 672 }, %struct.efx_hw_stat_desc { ptr @.str.101, i16 64, i16 696 }, %struct.efx_hw_stat_desc { ptr @.str.102, i16 64, i16 704 }, %struct.efx_hw_stat_desc { ptr @.str.103, i16 64, i16 712 }, %struct.efx_hw_stat_desc { ptr @.str.104, i16 64, i16 720 }, %struct.efx_hw_stat_desc { ptr @.str.105, i16 64, i16 728 }, %struct.efx_hw_stat_desc { ptr @.str.106, i16 64, i16 736 }, %struct.efx_hw_stat_desc { ptr @.str.107, i16 64, i16 744 }, %struct.efx_hw_stat_desc { ptr @.str.108, i16 64, i16 752 }, %struct.efx_hw_stat_desc { ptr @.str.109, i16 64, i16 760 }, %struct.efx_hw_stat_desc { ptr @.str.110, i16 64, i16 776 }, %struct.efx_hw_stat_desc { ptr @.str.111, i16 64, i16 784 }, %struct.efx_hw_stat_desc { ptr @.str.112, i16 64, i16 792 }, %struct.efx_hw_stat_desc { ptr @.str.113, i16 64, i16 800 }, %struct.efx_hw_stat_desc { ptr @.str.114, i16 64, i16 808 }, %struct.efx_hw_stat_desc { ptr @.str.115, i16 64, i16 816 }, %struct.efx_hw_stat_desc { ptr @.str.116, i16 64, i16 832 }, %struct.efx_hw_stat_desc { ptr @.str.117, i16 64, i16 840 }, %struct.efx_hw_stat_desc { ptr @.str.118, i16 64, i16 848 }, %struct.efx_hw_stat_desc { ptr @.str.119, i16 64, i16 856 }, %struct.efx_hw_stat_desc { ptr @.str.120, i16 64, i16 864 }, %struct.efx_hw_stat_desc { ptr @.str.121, i16 64, i16 872 }, %struct.efx_hw_stat_desc { ptr @.str.122, i16 64, i16 880 }, %struct.efx_hw_stat_desc { ptr @.str.123, i16 64, i16 888 }, %struct.efx_hw_stat_desc { ptr @.str.124, i16 64, i16 896 }, %struct.efx_hw_stat_desc { ptr @.str.125, i16 64, i16 904 }, %struct.efx_hw_stat_desc { ptr @.str.126, i16 64, i16 912 }, %struct.efx_hw_stat_desc { ptr @.str.127, i16 64, i16 920 }, %struct.efx_hw_stat_desc { ptr @.str.128, i16 64, i16 928 }, %struct.efx_hw_stat_desc { ptr @.str.129, i16 64, i16 936 }, %struct.efx_hw_stat_desc { ptr @.str.130, i16 64, i16 944 }, %struct.efx_hw_stat_desc { ptr @.str.131, i16 64, i16 952 }], [168 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_noskb_drops\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_nodesc_trunc\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_tx_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_tx_packets\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_tx_pause\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_tx_control\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_tx_unicast\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_tx_multicast\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_tx_broadcast\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port_tx_lt64\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_tx_64\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_tx_65_to_127\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_tx_128_to_255\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_tx_256_to_511\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_tx_512_to_1023\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_tx_1024_to_15xx\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port_tx_15xx_to_jumbo\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_rx_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_rx_good_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_bad_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_packets\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port_rx_good\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_rx_bad\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_rx_pause\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_control\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_unicast\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_multicast\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_broadcast\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port_rx_lt64\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_rx_64\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_rx_65_to_127\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_rx_128_to_255\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_rx_256_to_511\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_512_to_1023\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_1024_to_15xx\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port_rx_15xx_to_jumbo\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rx_gtjumbo\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_bad_gtjumbo\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port_rx_overflow\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_align_error\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_length_error\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_nodesc_drops\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"port_rx_pm_trunc_bb_overflow\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"port_rx_pm_discard_bb_overflow\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port_rx_pm_trunc_vfifo_full\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port_rx_pm_discard_vfifo_full\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_pm_trunc_qbb\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port_rx_pm_discard_qbb\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port_rx_pm_discard_mapping\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port_rx_dp_q_disabled_packets\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port_rx_dp_di_dropped_packets\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"port_rx_dp_streaming_packets\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_rx_dp_hlb_fetch\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port_rx_dp_hlb_wait\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_unicast\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_unicast_bytes\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_multicast\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_multicast_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_broadcast_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_bad\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_bad_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_overflow\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_unicast\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_unicast_bytes\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_multicast\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_multicast_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_broadcast_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_bad\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_bad_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_overflow\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fec_uncorrected_errors\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fec_corrected_errors\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fec_corrected_symbols_lane0\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fec_corrected_symbols_lane1\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fec_corrected_symbols_lane2\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fec_corrected_symbols_lane3\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctpio_vi_busy_fallback\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ctpio_long_write_success\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ctpio_missing_dbell_fail\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctpio_overflow_fail\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ctpio_underflow_fail\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctpio_timeout_fail\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ctpio_noncontig_wr_fail\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctpio_frm_clobber_fail\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ctpio_invalid_wr_fail\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ctpio_vi_clobber_fallback\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ctpio_unqualified_fallback\00", [37 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ctpio_runt_fallback\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctpio_success\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctpio_fallback\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctpio_poison\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctpio_erase\00", [20 x i8] zeroinitializer }, align 32
@efx_ef10_try_update_nic_stats_vf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_ef10_tx_init.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.132, ptr @.str, ptr @.str.133, i8 2, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_ef10_tx_init\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using TSOv2 for channel %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"netdevice: %s%s: failed to initialise TXQ %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.142 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d unknown event type %d (data %08x:%08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"netdevice: %s%s: saw RX_DROP_EVENT: event=%08x:%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"netdevice: %s%s: invalid RX abort: scatter_n=%u event=%08x:%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"netdevice: %s%s: unknown encapsulation type: event=%08x:%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rx event arrived on queue %d labeled as queue %u\0A\00", [46 x i8] zeroinitializer }, align 32
@efx_ef10_handle_rx_abort.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.150, ptr @.str, ptr @.str.151, i8 2, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efx_ef10_handle_rx_abort\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scattered RX aborted (dropping %u buffers)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dropped %d events (index=%d expected=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"netdevice: %s%s: invalid class for RX_IPCKSUM_ERR: event=%08x:%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"netdevice: %s%s: invalid class for RX_TCPUDP_CKSUM_ERR: event=%08x:%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"netdevice: %s%s: invalid encapsulation type for RX_IP_INNER_CHKSUM_ERR: event=%08x:%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"netdevice: %s%s: invalid class for RX_IP_INNER_CHKSUM_ERR: event=%08x:%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"netdevice: %s%s: invalid encapsulation type for RX_TCP_UDP_INNER_CHKSUM_ERR: event=%08x:%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"netdevice: %s%s: invalid class for RX_TCP_UDP_INNER_CHKSUM_ERR: event=%08x:%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"channel %d unknown tx event type %d (data %08x:%08x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"channel %d unknown driver event type %d (data %08x:%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"channel %d unknown driver event type %u (data %08x:%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: failed rc=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.efx_ef10_ev_test_generate = private unnamed_addr constant [26 x i8] c"efx_ef10_ev_test_generate\00", align 1
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"other functions on NIC have been reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"VLAN %u to be deleted not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Cannot change MAC address; use sfboot to enable mac-spoofing on this interface\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Failed to restore when changing MAC address - scheduling reset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rx%x tx%x\00", [21 x i8] zeroinitializer }, align 32
@efx_ef10_run_bist.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.168, ptr @.str, ptr @.str.169, i8 3, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_ef10_run_bist\00", [46 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"starting BIST type %u\0A\00", [41 x i8] zeroinitializer }, align 32
@efx_ef10_poll_bist.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.170, ptr @.str, ptr @.str.171, i8 3, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_ef10_poll_bist\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BIST passed.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BIST timed out\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BIST failed.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BIST returned unknown result %u\00", [32 x i8] zeroinitializer }, align 32
@efx_ef10_mtd_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.175 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_ef10_nvram_types = internal constant { [18 x %struct.efx_ef10_nvram_type_info], [40 x i8] } { [18 x %struct.efx_ef10_nvram_type_info] [%struct.efx_ef10_nvram_type_info { i16 256, i16 0, i8 0, ptr @.str.177 }, %struct.efx_ef10_nvram_type_info { i16 512, i16 0, i8 0, ptr @.str.178 }, %struct.efx_ef10_nvram_type_info { i16 768, i16 0, i8 0, ptr @.str.179 }, %struct.efx_ef10_nvram_type_info { i16 1024, i16 0, i8 0, ptr @.str.180 }, %struct.efx_ef10_nvram_type_info { i16 1280, i16 0, i8 0, ptr @.str.181 }, %struct.efx_ef10_nvram_type_info { i16 1536, i16 0, i8 0, ptr @.str.182 }, %struct.efx_ef10_nvram_type_info { i16 1537, i16 0, i8 1, ptr @.str.182 }, %struct.efx_ef10_nvram_type_info { i16 1538, i16 0, i8 2, ptr @.str.182 }, %struct.efx_ef10_nvram_type_info { i16 1539, i16 0, i8 3, ptr @.str.182 }, %struct.efx_ef10_nvram_type_info { i16 2304, i16 0, i8 0, ptr @.str.183 }, %struct.efx_ef10_nvram_type_info { i16 2560, i16 255, i8 0, ptr @.str.184 }, %struct.efx_ef10_nvram_type_info { i16 3072, i16 0, i8 0, ptr @.str.185 }, %struct.efx_ef10_nvram_type_info { i16 3328, i16 0, i8 0, ptr @.str.186 }, %struct.efx_ef10_nvram_type_info { i16 6912, i16 0, i8 0, ptr @.str.187 }, %struct.efx_ef10_nvram_type_info { i16 7168, i16 0, i8 0, ptr @.str.188 }, %struct.efx_ef10_nvram_type_info { i16 5632, i16 0, i8 0, ptr @.str.189 }, %struct.efx_ef10_nvram_type_info { i16 7680, i16 0, i8 0, ptr @.str.190 }, %struct.efx_ef10_nvram_type_info { i16 7681, i16 0, i8 0, ptr @.str.191 }], [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EF10 NVRAM manager\00", [45 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfc_mcfw\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfc_mcfw_backup\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sfc_exp_rom\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sfc_static_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfc_dynamic_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfc_exp_rom_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sfc_license\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_phy_fw\00", [21 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfc_mumfw\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfc_uefi\00", [23 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sfc_dynamic_cfg_dflt\00", [43 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sfc_exp_rom_cfg_dflt\00", [43 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_status\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_bundle\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sfc_bundle_metadata\00", [44 x i8] zeroinitializer }, align 32
@switch.table.efx_ef10_tx_init = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141], [40 x i8] zeroinitializer }, align 32
@switch.table.efx_ef10_ev_process = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141], [40 x i8] zeroinitializer }, align 32
@switch.table.efx_ef10_ev_process.192 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141], [40 x i8] zeroinitializer }, align 32
@switch.table.netdev_reg_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141], [40 x i8] zeroinitializer }, align 32
@switch.table.efx_ef10_handle_rx_event_errors = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 14]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 20]
@__sancov_gen_cov_switch_values.195 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 5, i64 7, i64 12]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 81, i64 82]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967258, i64 4294967295]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 6912, i64 7168]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967279]
@__sancov_gen_cov_switch_values.205 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.209 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967258, i64 4294967295]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967291, i64 4294967295]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.212 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.213 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2230, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"efx_hunt_a0_vf_nic_type\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 4000, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant [21 x i8] c"efx_hunt_a0_nic_type\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 4111, i32 27 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1081, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1107, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 568, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"dev_attr_link_control_flag\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"dev_attr_primary_flag\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 613, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 662, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"efx_ef10_udp_tunnels\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3951, i32 41 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 522, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 379, i32 22 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 523, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 121, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 148, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 162, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 170, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 175, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 251, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 254, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 285, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 427, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3824, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3828, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1347, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1151, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1227, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1249, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1258, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1288, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [19 x i8] c"efx_ef10_stat_desc\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1467, i32 38 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1510, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1509, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1468, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1469, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1470, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1471, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1472, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1473, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1474, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1475, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1476, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1477, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1478, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1479, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1480, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1481, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1482, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1483, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1485, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1486, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1487, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1488, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1489, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1490, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1491, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1492, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1493, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1494, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1495, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1496, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1497, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1498, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1499, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1500, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1501, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1502, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1503, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1504, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1505, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1506, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1507, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1508, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1511, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1512, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1513, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1514, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1515, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1516, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1517, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1518, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1519, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1520, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1521, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1522, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1523, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1524, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1525, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1526, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1527, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1528, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1529, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1530, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1531, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1532, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1533, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1534, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1535, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1536, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1537, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1538, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1539, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1540, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1541, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1542, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1543, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1544, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1545, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1546, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1547, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1548, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1549, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1550, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1551, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1552, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1553, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1554, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1555, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1556, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1557, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1558, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1559, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1560, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1561, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1562, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2353, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2393, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4963, i32 10 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4975, i32 36 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4976, i32 33 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4977, i32 36 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4978, i32 35 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4979, i32 31 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4980, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4983, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 4984, i32 9 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3116, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2807, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2825, i32 5 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2891, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2645, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2671, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2659, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2710, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2726, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2738, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2746, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2756, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2764, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2998, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3023, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3052, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3191, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 2506, i32 5 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 499, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3328, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3258, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3972, i32 29 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3407, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3388, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3391, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3394, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3397, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3550, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c"efx_ef10_nvram_types\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3448, i32 46 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3527, i32 31 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3449, i32 50 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3450, i32 54 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3451, i32 52 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3452, i32 52 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3453, i32 53 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3454, i32 54 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3458, i32 47 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3459, i32 47 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3460, i32 51 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3461, i32 53 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3462, i32 54 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3463, i32 54 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3464, i32 46 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3465, i32 46 }
@___asan_gen_.803 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.804 = private constant [35 x i8] c"../drivers/net/ethernet/sfc/ef10.c\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3466, i32 54 }
@___asan_gen_.806 = private unnamed_addr constant [30 x i8] c"switch.table.efx_ef10_tx_init\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [33 x i8] c"switch.table.efx_ef10_ev_process\00", align 1
@___asan_gen_.808 = private unnamed_addr constant [37 x i8] c"switch.table.efx_ef10_ev_process.192\00", align 1
@___asan_gen_.809 = private unnamed_addr constant [30 x i8] c"switch.table.netdev_reg_state\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [45 x i8] c"switch.table.efx_ef10_handle_rx_event_errors\00", align 1
@llvm.compiler.used = appending global [202 x ptr] [ptr @.str, ptr @.str.1, ptr @efx_hunt_a0_vf_nic_type, ptr @efx_hunt_a0_nic_type, ptr @.str.2, ptr @.str.3, ptr @efx_ef10_probe.__key, ptr @.str.4, ptr @dev_attr_link_control_flag, ptr @dev_attr_primary_flag, ptr @.str.5, ptr @efx_ef10_probe.__key.6, ptr @.str.7, ptr @efx_ef10_udp_tunnels, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @efx_ef10_stat_desc, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @efx_ef10_nvram_types, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @switch.table.efx_ef10_tx_init, ptr @switch.table.efx_ef10_ev_process, ptr @switch.table.efx_ef10_ev_process.192, ptr @switch.table.netdev_reg_state, ptr @switch.table.efx_ef10_handle_rx_event_errors], section "llvm.metadata"
@0 = internal global [202 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_hunt_a0_vf_nic_type to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_hunt_a0_nic_type to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ef10_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_link_control_flag to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_primary_flag to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ef10_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ef10_udp_tunnels to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ef10_stat_desc to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ef10_nvram_types to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_ef10_tx_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_ef10_ev_process to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_ef10_ev_process.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netdev_reg_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_ef10_handle_rx_event_errors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vadaptor_query(ptr noundef %efx, i32 noundef %port_id, ptr noundef writeonly %port_flags, ptr noundef writeonly %vadaptor_flags, ptr noundef writeonly %vlan_tags) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [3 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %outbuf) #19
  %2 = call ptr @memset(ptr %outbuf, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datapath_caps, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

do.body:                                          ; preds = %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %port_id)
  %7 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 97, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 12, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %do.body
  %8 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp = icmp ult i32 %9, 12
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %port_flags, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outbuf, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %port_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %port_flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %vadaptor_flags, null
  br i1 %tobool18.not, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr21 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %14 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr21, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %vadaptor_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %vadaptor_flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end17.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %vlan_tags, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr29 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %18 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr29, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %vlan_tags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vlan_tags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.body.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %outbuf) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vadaptor_alloc(ptr noundef %efx, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [8 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inbuf) #19
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = tail call i32 @llvm.bswap.i32(i32 %port_id)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 152, ptr noundef nonnull %inbuf, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inbuf) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vadaptor_free(ptr noundef %efx, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #19
  %0 = tail call i32 @llvm.bswap.i32(i32 %port_id)
  %1 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 153, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vport_add_mac(ptr noundef %efx, i32 noundef %port_id, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #19
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %port_id)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %add.ptr3 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr3, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %inbuf, i32 8
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 168, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_vport_del_mac(ptr noundef %efx, i32 noundef %port_id, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #19
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %port_id)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %add.ptr3 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac, align 4
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr3, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %inbuf, i32 8
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 169, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ef10_tx_tso_desc(ptr nocapture noundef %tx_queue, ptr nocapture noundef readonly %skb, ptr nocapture noundef readnone %data_mapped) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp ult i16 %3, 4
  br i1 %cmp, label %land.end, label %if.end46, !prof !413

land.end:                                         ; preds = %entry
  %.b148 = load i1, ptr @efx_ef10_tx_tso_desc.__already_done, align 1
  br i1 %.b148, label %land.end.cleanup_crit_edge, label %if.then14, !prof !414

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then14:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @efx_ef10_tx_tso_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2230, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv) #19
  br label %cleanup

if.end46:                                         ; preds = %entry
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %encapsulation, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool47.not = icmp eq i16 %5, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end46
  %tso_encap = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 5
  %6 = ptrtoint ptr %tso_encap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tso_encap, align 4, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool49.not = icmp eq i8 %7, 0
  br i1 %tobool49.not, label %if.then48.cleanup_crit_edge, label %if.end51

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end51:                                         ; preds = %if.then48
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load53 = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr54.mask = and i8 %bf.load53, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr54.mask)
  %cmp56 = icmp eq i8 %bf.lshr54.mask, 64
  br i1 %cmp56, label %if.then58, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  %id = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end51.if.end59_crit_edge
  %outer_ipv4_id.0 = phi i16 [ %14, %if.then58 ], [ 0, %if.end51.if.end59_crit_edge ]
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %15 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i150 = zext i16 %16 to i32
  %add.ptr.i.i151 = getelementptr i8, ptr %9, i32 %conv.i.i150
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  br label %if.end64

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  %head.i.i155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i155 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i155, align 8
  %network_header.i.i156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i156 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i156, align 4
  %conv.i.i157 = zext i16 %20 to i32
  %add.ptr.i.i158 = getelementptr i8, ptr %18, i32 %conv.i.i157
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.end59
  %transport_header.i.i.sink = phi ptr [ %transport_header.i.i, %if.else ], [ %inner_transport_header.i.i, %if.end59 ]
  %.sink = phi ptr [ %18, %if.else ], [ %9, %if.end59 ]
  %outer_ipv4_id.1 = phi i16 [ 0, %if.else ], [ %outer_ipv4_id.0, %if.end59 ]
  %ip.0 = phi ptr [ %add.ptr.i.i158, %if.else ], [ %add.ptr.i.i151, %if.end59 ]
  %21 = ptrtoint ptr %transport_header.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_header.i.i.sink, align 2
  %conv.i.i160 = zext i16 %22 to i32
  %add.ptr.i.i161 = getelementptr i8, ptr %.sink, i32 %conv.i.i160
  %23 = ptrtoint ptr %ip.0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load68 = load i8, ptr %ip.0, align 4
  %bf.lshr69.mask = and i8 %bf.load68, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr69.mask)
  %cmp71 = icmp eq i8 %bf.lshr69.mask, 64
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %ip.0, i32 0, i32 2
  %24 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -208, ptr %tot_len, align 2
  %check = getelementptr inbounds %struct.iphdr, ptr %ip.0, i32 0, i32 7
  %25 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %check, align 2
  %id74 = getelementptr inbounds %struct.iphdr, ptr %ip.0, i32 0, i32 3
  %26 = ptrtoint ptr %id74 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id74, align 4
  %phi.cast = zext i16 %27 to i32
  %phi.bo = or i32 %phi.cast, -234881024
  br label %if.end76

if.else75:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %ip.0, i32 0, i32 2
  %28 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -208, ptr %payload_len, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then73
  %inner_ipv4_id.0 = phi i32 [ %phi.bo, %if.then73 ], [ -234881024, %if.else75 ]
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i161, i32 0, i32 2
  %29 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq, align 4
  %buffer.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %31 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer.i.i, align 32
  %insert_count.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %33 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %insert_count.i.i.i, align 128
  %ptr_mask.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %35 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i.i.i, align 4
  %and.i.i.i = and i32 %36, %34
  %flags = getelementptr %struct.efx_tx_buffer, ptr %32, i32 %and.i.i.i, i32 2
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 16, ptr %flags, align 8
  %len = getelementptr %struct.efx_tx_buffer, ptr %32, i32 %and.i.i.i, i32 3
  %38 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %len, align 2
  %unmap_len = getelementptr %struct.efx_tx_buffer, ptr %32, i32 %and.i.i.i, i32 4
  %39 = ptrtoint ptr %unmap_len to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %unmap_len, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %30)
  %41 = getelementptr %struct.efx_tx_buffer, ptr %32, i32 %and.i.i.i, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %41, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %inner_ipv4_id.0)
  %arrayidx87 = getelementptr [2 x i32], ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx87, align 4
  %45 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %insert_count.i.i.i, align 128
  %inc = add i32 %46, 1
  store i32 %inc, ptr %insert_count.i.i.i, align 128
  %47 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer.i.i, align 32
  %49 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr_mask.i.i.i, align 4
  %and.i.i.i165 = and i32 %50, %inc
  %flags91 = getelementptr %struct.efx_tx_buffer, ptr %48, i32 %and.i.i.i165, i32 2
  %51 = ptrtoint ptr %flags91 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 16, ptr %flags91, align 8
  %len92 = getelementptr %struct.efx_tx_buffer, ptr %48, i32 %and.i.i.i165, i32 3
  %52 = ptrtoint ptr %len92 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %len92, align 2
  %unmap_len93 = getelementptr %struct.efx_tx_buffer, ptr %48, i32 %and.i.i.i165, i32 4
  %53 = ptrtoint ptr %unmap_len93 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %unmap_len93, align 4
  %conv95 = zext i16 %outer_ipv4_id.1 to i32
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv95)
  %55 = getelementptr %struct.efx_tx_buffer, ptr %48, i32 %and.i.i.i165, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %55, align 8
  %or104 = or i32 %conv, -218103808
  %57 = tail call i32 @llvm.bswap.i32(i32 %or104)
  %arrayidx106 = getelementptr [2 x i32], ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx106, align 4
  %59 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %insert_count.i.i.i, align 128
  %inc110 = add i32 %60, 1
  store i32 %inc110, ptr %insert_count.i.i.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then48.cleanup_crit_edge, %if.then14, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end76 ], [ -22, %if.then14 ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_vf_mem_bar(ptr nocapture noundef readnone %efx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_mem_map_size(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %mem_bar = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_bar, align 4
  %call = tail call i32 %3(ptr noundef %efx) #19
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %call
  %end.i = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %call, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_probe_vf(ptr noundef %efx) #0 align 64 {
entry:
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 66
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %nic_data = getelementptr inbounds %struct.efx_nic, ptr %6, i32 0, i32 76
  %7 = ptrtoint ptr %nic_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nic_data, align 8
  %vf = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf, align 8
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %do.body, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup46_crit_edge, label %if.then4

do.body.cleanup46_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup46

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.2) #22
  br label %cleanup46

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call fastcc i32 @efx_ef10_probe(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup46_crit_edge

if.end7.cleanup46_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup46

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #19
  %15 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %outbuf.i, align 8
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %16 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nic_data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #19
  %18 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %outlen.i, align 4, !annotation !412
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 236, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.fail_crit_edge

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail

if.end.i:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp.i = icmp ult i32 %20, 8
  br i1 %cmp.i, label %if.end.i.fail_crit_edge, label %if.end15

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail

if.end15:                                         ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #19
  %vf_index.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %17, i32 0, i32 24
  %24 = ptrtoint ptr %vf_index.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vf_index.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #19
  %25 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev, align 4
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 49
  %27 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %27, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %28 = and i40 %bf.load, 65536
  %tobool17.not = icmp eq i40 %28, 0
  br i1 %tobool17.not, label %if.end15.cleanup46_crit_edge, label %if.then18

if.end15.cleanup46_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup46

if.then18:                                        ; preds = %if.end15
  %29 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 66
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %tobool20.not = icmp eq ptr %31, null
  br i1 %tobool20.not, label %do.body35, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #21
  %driver_data.i.i69 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 8
  %32 = ptrtoint ptr %driver_data.i.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i69, align 4
  %nic_data25 = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 76
  %34 = ptrtoint ptr %nic_data25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nic_data25, align 8
  %36 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nic_data1.i, align 8
  %vf28 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %35, i32 0, i32 25
  %38 = ptrtoint ptr %vf28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vf28, align 8
  %vf_index = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %37, i32 0, i32 24
  %40 = ptrtoint ptr %vf_index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vf_index, align 4
  %arrayidx = getelementptr %struct.ef10_vf, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %efx, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %45 = load ptr, ptr %vf28, align 8
  %46 = load i32, ptr %vf_index, align 4
  %pci_dev34 = getelementptr %struct.ef10_vf, ptr %45, i32 %46, i32 1
  %47 = ptrtoint ptr %pci_dev34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %pci_dev34, align 4
  br label %cleanup46

do.body35:                                        ; preds = %if.then18
  %msg_enable36 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %48 = ptrtoint ptr %msg_enable36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable36, align 4
  %and37 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.cleanup46_crit_edge, label %if.then39

do.body35.cleanup46_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup46

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev40 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev40, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %51, ptr noundef nonnull @.str.3) #22
  br label %cleanup46

fail:                                             ; preds = %if.end.i.fail_crit_edge, %if.end11.fail_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.fail_crit_edge ], [ %call.i, %if.end11.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #19
  call void @efx_ef10_remove(ptr noundef %efx)
  br label %cleanup46

cleanup46:                                        ; preds = %fail, %if.then39, %do.body35.cleanup46_crit_edge, %if.then21, %if.end15.cleanup46_crit_edge, %if.end7.cleanup46_crit_edge, %if.then4, %do.body.cleanup46_crit_edge
  %retval.1 = phi i32 [ %retval.0.i.ph, %fail ], [ -16, %if.then4 ], [ %call8, %if.end7.cleanup46_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then39 ], [ 0, %do.body35.cleanup46_crit_edge ], [ 0, %if.end15.cleanup46_crit_edge ], [ -16, %do.body.cleanup46_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_remove(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %5 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %5, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 66
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %do.body, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %nic_data5 = getelementptr inbounds %struct.efx_nic, ptr %10, i32 0, i32 76
  %11 = ptrtoint ptr %nic_data5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nic_data5, align 8
  %vf6 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %vf6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vf6, align 8
  %vf_index = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %vf_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vf_index, align 4
  %add.ptr = getelementptr %struct.ef10_vf, ptr %14, i32 %16
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %add.ptr, align 4
  br label %if.end11

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.if.end11_crit_edge, label %if.then9

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %20 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.3) #22
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body.if.end11_crit_edge, %if.then4, %entry.if.end11_crit_edge
  %22 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nic_data1, align 8
  %vlan_lock.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %23, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vlan_lock.i, i32 noundef 0) #19
  %vlan_list.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vlan_list.i, align 4
  %cmp.not21.i = icmp eq ptr %25, %vlan_list.i
  br i1 %cmp.not21.i, label %if.end11.efx_ef10_cleanup_vlans.exit_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.efx_ef10_cleanup_vlans.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_cleanup_vlans.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %vlan.022.i = phi ptr [ %next_vlan.0.i, %for.body.i.for.body.i_crit_edge ], [ %25, %if.end11.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %vlan.022.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %next_vlan.0.i = load ptr, ptr %vlan.022.i, align 4
  tail call fastcc void @efx_ef10_del_vlan_internal(ptr noundef %efx, ptr noundef %vlan.022.i) #19
  %cmp.not.i = icmp eq ptr %next_vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.body.i.efx_ef10_cleanup_vlans.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.efx_ef10_cleanup_vlans.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_cleanup_vlans.exit

efx_ef10_cleanup_vlans.exit:                      ; preds = %for.body.i.efx_ef10_cleanup_vlans.exit_crit_edge, %if.end11.efx_ef10_cleanup_vlans.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vlan_lock.i) #19
  %vlan_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 28
  tail call void @mutex_destroy(ptr noundef %vlan_lock) #19
  tail call void @efx_ptp_remove(ptr noundef %efx) #19
  tail call void @efx_mcdi_mon_remove(ptr noundef %efx) #19
  tail call void @efx_mcdi_rx_free_indir_table(ptr noundef %efx) #19
  %wc_membase = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %wc_membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wc_membase, align 4
  %tobool12.not = icmp eq ptr %28, null
  br i1 %tobool12.not, label %efx_ef10_cleanup_vlans.exit.if.end15_crit_edge, label %if.then13

efx_ef10_cleanup_vlans.exit.if.end15_crit_edge:   ; preds = %efx_ef10_cleanup_vlans.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

if.then13:                                        ; preds = %efx_ef10_cleanup_vlans.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @iounmap(ptr noundef nonnull %28) #19
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %efx_ef10_cleanup_vlans.exit.if.end15_crit_edge
  %call16 = tail call i32 @efx_mcdi_free_vis(ptr noundef %efx) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp.not = icmp eq i32 %call16, 0
  br i1 %cmp.not, label %if.end15.if.end43_crit_edge, label %do.end28, !prof !414

if.end15.if.end43_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end43

do.end28:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 956, i32 noundef 9, ptr noundef null) #19
  br label %if.end43

if.end43:                                         ; preds = %do.end28, %if.end15.if.end43_crit_edge
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_primary_flag) #19
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev46, ptr noundef nonnull @dev_attr_link_control_flag) #19
  tail call void @efx_mcdi_detach(ptr noundef %efx) #19
  %udp_tunnels = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29
  %33 = call ptr @memset(ptr %udp_tunnels, i32 0, i32 64)
  %udp_tunnels_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %udp_tunnels_lock, i32 noundef 0) #19
  %call47 = tail call fastcc i32 @efx_ef10_set_udp_tnl_ports(ptr noundef %efx, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %udp_tunnels_lock) #19
  tail call void @mutex_destroy(ptr noundef %udp_tunnels_lock) #19
  tail call void @efx_mcdi_fini(ptr noundef %efx) #19
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %1) #19
  tail call void @kfree(ptr noundef %1) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_init_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %must_check_datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %must_check_datapath_caps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %must_check_datapath_caps, align 1, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @efx_ef10_init_datapath_caps(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %must_check_datapath_caps to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %must_check_datapath_caps, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %must_realloc_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 69
  %5 = ptrtoint ptr %must_realloc_vis to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %must_realloc_vis, align 4, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end5.if.end8.i_crit_edge, label %if.then7

if.end5.if.end8.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i

if.then7:                                         ; preds = %if.end5
  %n_allocated_vis = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %n_allocated_vis to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_allocated_vis, align 4
  %9 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nic_data1, align 8
  %vi_base.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 2
  %n_allocated_vis.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 3
  %call.i = tail call i32 @efx_mcdi_alloc_vis(ptr noundef %efx, i32 noundef %8, i32 noundef %8, ptr noundef %vi_base.i, ptr noundef %n_allocated_vis.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %must_realloc_vis to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %must_realloc_vis, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end12, %if.end5.if.end8.i_crit_edge
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %12 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_mac_stats, align 8
  %conv = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #23
  %mc_stats = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %mc_stats to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %mc_stats, align 4
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end8.i.cleanup_crit_edge, label %if.end19

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end19:                                         ; preds = %if.end8.i
  %must_restore_piobufs = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %must_restore_piobufs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %must_restore_piobufs, align 2, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %if.end19.if.end62_crit_edge, label %land.lhs.true

if.end19.if.end62_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end19
  %n_piobufs = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %n_piobufs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_piobufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end62_crit_edge, label %if.then23

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end62

if.then23:                                        ; preds = %land.lhs.true
  %msg_enable51 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable51, align 4
  %and52 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then23.if.end60_crit_edge, label %if.then54

if.then23.if.end60_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end60

if.then54:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev55 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev55, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef -105) #22
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.then23.if.end60_crit_edge
  %23 = ptrtoint ptr %must_restore_piobufs to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %must_restore_piobufs, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %land.lhs.true.if.end62_crit_edge, %if.end19.if.end62_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %25, i32 0, i32 35
  %26 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %check_caps, align 4
  %call63 = tail call i32 %27(ptr noundef %efx, i8 noundef zeroext 31, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.if.end68_crit_edge, label %land.lhs.true65

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

land.lhs.true65:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not = icmp eq i8 %31, 0
  %spec.select = select i1 %tobool.i.not, i64 18, i64 0
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true65, %if.end62.if.end68_crit_edge
  %hw_enc_features.0 = phi i64 [ 0, %if.end62.if.end68_crit_edge ], [ %spec.select, %land.lhs.true65 ]
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type, align 4
  %check_caps70 = getelementptr inbounds %struct.efx_nic_type, ptr %33, i32 0, i32 35
  %34 = ptrtoint ptr %check_caps70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %check_caps70, align 4
  %call71 = tail call i32 %35(ptr noundef %efx, i8 noundef zeroext 1, i32 noundef 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end68.if.end78_crit_edge, label %if.then73

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end78

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #21
  %or75 = or i64 %hw_enc_features.0, 213975040
  %net_dev76 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %36 = ptrtoint ptr %net_dev76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev76, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 23
  %38 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %features, align 16
  %or77 = or i64 %39, 213909504
  store i64 %or77, ptr %features, align 16
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end68.if.end78_crit_edge
  %hw_enc_features.1 = phi i64 [ %or75, %if.then73 ], [ %hw_enc_features.0, %if.end68.if.end78_crit_edge ]
  %net_dev79 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %40 = ptrtoint ptr %net_dev79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev79, align 4
  %hw_enc_features80 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %hw_enc_features80 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %hw_enc_features.1, ptr %hw_enc_features80, align 16
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %type, align 4
  %rx_push_rss_config = getelementptr inbounds %struct.efx_nic_type, ptr %44, i32 0, i32 54
  %45 = ptrtoint ptr %rx_push_rss_config to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_push_rss_config, align 8
  %rx_indir_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5
  %call82 = tail call i32 %46(ptr noundef %efx, i1 noundef zeroext false, ptr noundef %rx_indir_table, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end8.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %if.then7.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_dimension_resources(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_queues_per_channel = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 48
  %0 = ptrtoint ptr %tx_queues_per_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_queues_per_channel, align 128
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @efx_separate_tx_channels to i32))
  %2 = load i8, ptr @efx_separate_tx_channels, align 1, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 %cond)
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %4 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_data2, align 8
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 8
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %8 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_tx_channels, align 8
  %n_extra_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 47
  %10 = ptrtoint ptr %n_extra_tx_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_extra_tx_channels, align 4
  %add = add i32 %11, %9
  %mul = mul i32 %add, %1
  %n_xdp_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 49
  %12 = ptrtoint ptr %n_xdp_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_xdp_channels, align 4
  %xdp_tx_per_channel = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 51
  %14 = ptrtoint ptr %xdp_tx_per_channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xdp_tx_per_channel, align 4
  %mul4 = mul i32 %15, %13
  %add5 = add i32 %mul4, %mul
  %16 = tail call i32 @llvm.umax.i32(i32 %7, i32 %add5)
  %max_vis12 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 40
  %17 = ptrtoint ptr %max_vis12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_vis12, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp15 = icmp ult i32 %18, %16
  %or.cond = select i1 %tobool13.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %do.body, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.do.end27_crit_edge, label %do.body18

do.body.do.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end27

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_dimension_resources, %if.then23)) #19
          to label %do.end27 [label %if.then23], !srcloc !416

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev, align 4
  %23 = ptrtoint ptr %max_vis12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_vis12, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug613, ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef %16, i32 noundef %24) #19
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body18, %do.body.do.end27_crit_edge
  %25 = ptrtoint ptr %max_vis12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_vis12, align 32
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %entry.if.end29_crit_edge
  %channel_vis.0 = phi i32 [ %26, %do.end27 ], [ %16, %entry.if.end29_crit_edge ]
  %n_piobufs = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %n_piobufs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %n_piobufs, align 8
  %sub = add i32 %channel_vis.0, -1
  %vi_stride = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %28 = ptrtoint ptr %vi_stride to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vi_stride, align 128
  %mul30 = mul i32 %29, %sub
  %add32 = add i32 %mul30, 8191
  %and33 = and i32 %add32, -4096
  %call48 = tail call i32 @efx_mcdi_free_vis(ptr noundef %efx) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end51, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end51:                                         ; preds = %if.end29
  %30 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nic_data2, align 8
  %vi_base.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %31, i32 0, i32 2
  %n_allocated_vis.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %31, i32 0, i32 3
  %call.i = tail call i32 @efx_mcdi_alloc_vis(ptr noundef %efx, i32 noundef %3, i32 noundef %channel_vis.0, ptr noundef %vi_base.i, ptr noundef %n_allocated_vis.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp53.not = icmp eq i32 %call.i, 0
  br i1 %cmp53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %n_allocated_vis = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %n_allocated_vis to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_allocated_vis, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %channel_vis.0)
  %cmp56 = icmp ult i32 %33, %channel_vis.0
  br i1 %cmp56, label %do.body58, label %if.end72

do.body58:                                        ; preds = %if.end55
  %msg_enable59 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %34 = ptrtoint ptr %msg_enable59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable59, align 4
  %and60 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body58.do.end66_crit_edge, label %if.then62

do.body58.do.end66_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end66

if.then62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev63 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %36 = ptrtoint ptr %net_dev63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev63, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.33) #22
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body58.do.end66_crit_edge
  %38 = ptrtoint ptr %n_allocated_vis to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_allocated_vis, align 4
  %max_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 39
  %40 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %max_channels, align 4
  %41 = load i32, ptr %n_allocated_vis, align 4
  %42 = ptrtoint ptr %tx_queues_per_channel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_queues_per_channel, align 128
  %div70 = udiv i32 %41, %43
  %max_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  %44 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div70, ptr %max_tx_channels, align 4
  %call71 = tail call i32 @efx_mcdi_free_vis(ptr noundef %efx) #19
  br label %cleanup

if.end72:                                         ; preds = %if.end55
  %45 = ptrtoint ptr %n_piobufs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_piobufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool74.not = icmp ne i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %46)
  %cmp79 = icmp ult i32 %33, %46
  %or.cond278 = select i1 %tobool74.not, i1 %cmp79, i1 false
  br i1 %or.cond278, label %do.body81, label %if.end72.if.end108_crit_edge

if.end72.if.end108_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end108

do.body81:                                        ; preds = %if.end72
  %msg_enable82 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %47 = ptrtoint ptr %msg_enable82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable82, align 4
  %and83 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body81.if.end108_crit_edge, label %do.body86

do.body81.if.end108_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end108

do.body86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_dimension_resources, %if.then98)) #19
          to label %if.end108 [label %if.then98], !srcloc !416

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev99 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %49 = ptrtoint ptr %net_dev99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev99, align 4
  %51 = ptrtoint ptr %n_allocated_vis to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_allocated_vis, align 4
  %53 = ptrtoint ptr %n_piobufs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_piobufs, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug614, ptr noundef %50, ptr noundef nonnull @.str.34, i32 noundef %52, i32 noundef %54) #19
  br label %if.end108

if.end108:                                        ; preds = %if.then98, %do.body86, %do.body81.if.end108_crit_edge, %if.end72.if.end108_crit_edge
  %membase_phys = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 12
  %55 = ptrtoint ptr %membase_phys to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %membase_phys, align 8
  %call109 = tail call ptr @ioremap(i32 noundef %56, i32 noundef %and33) #19
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %do.body112, label %if.end121

do.body112:                                       ; preds = %if.end108
  %msg_enable113 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %57 = ptrtoint ptr %msg_enable113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable113, align 4
  %and114 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body112.cleanup_crit_edge, label %if.then116

do.body112.cleanup_crit_edge:                     ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then116:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev117 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %59 = ptrtoint ptr %net_dev117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net_dev117, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.35, i32 noundef %and33) #22
  br label %cleanup

if.end121:                                        ; preds = %if.end108
  %membase122 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %61 = ptrtoint ptr %membase122 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase122, align 4
  tail call void @iounmap(ptr noundef %62) #19
  %63 = ptrtoint ptr %membase122 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call109, ptr %membase122, align 4
  %msg_enable154 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %64 = ptrtoint ptr %msg_enable154 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable154, align 4
  %and155 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end121.cleanup_crit_edge, label %do.body158

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body158:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_dimension_resources, %if.then170)) #19
          to label %cleanup [label %if.then170], !srcloc !416

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev171 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %66 = ptrtoint ptr %net_dev171 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev171, align 4
  %68 = ptrtoint ptr %membase122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase122, align 4
  %wc_membase174 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 5
  %70 = ptrtoint ptr %wc_membase174 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wc_membase174, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug615, ptr noundef %67, ptr noundef nonnull @.str.37, ptr noundef %membase_phys, ptr noundef %69, i32 noundef %and33, ptr noundef %71, i32 noundef 0) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then170, %do.body158, %if.end121.cleanup_crit_edge, %if.then116, %do.body112.cleanup_crit_edge, %do.end66, %if.end51.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end66 ], [ %call48, %if.end29.cleanup_crit_edge ], [ %call.i, %if.end51.cleanup_crit_edge ], [ -12, %if.then116 ], [ -12, %do.body112.cleanup_crit_edge ], [ 0, %if.then170 ], [ 0, %if.end121.cleanup_crit_edge ], [ 0, %do.body158 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_fini_nic(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %mc_stats = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mc_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_stats, align 4
  tail call void @kfree(ptr noundef %3) #19
  %4 = ptrtoint ptr %mc_stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mc_stats, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_map_reset_reason(i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %reason)
  %cmp = icmp eq i32 %reason, 13
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 @efx_mcdi_map_reset_reason(i32 noundef %reason) #19
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_map_reset_flags(ptr nocapture noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8192000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192000, i32 %and)
  %cmp = icmp eq i32 %and, 8192000
  br i1 %cmp, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 6291456
  br i1 %cmp3, label %if.end.return.sink.split_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ -8192001, %entry.return.sink.split_crit_edge ], [ -6291457, %if.end.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 3, %entry.return.sink.split_crit_edge ], [ 2, %if.end.return.sink.split_crit_edge ]
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
define internal i32 @efx_ef10_reset(ptr noundef %efx, i32 noundef %reset_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef %reset_type) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reset_type)
  %cmp = icmp eq i32 %reset_type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp eq i32 %call, -1
  %0 = select i1 %cmp, i1 %cmp1, i1 false
  %rc.0 = select i1 %0, i32 0, i32 %call
  %1 = zext i32 %reset_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reset_type, label %entry.if.end6_crit_edge [
    i32 2, label %entry.land.lhs.true4_crit_edge
    i32 14, label %entry.land.lhs.true4_crit_edge13
  ]

entry.land.lhs.true4_crit_edge13:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true4

entry.land.lhs.true4_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true4

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

land.lhs.true4:                                   ; preds = %entry.land.lhs.true4_crit_edge, %entry.land.lhs.true4_crit_edge13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool.not = icmp eq i32 %rc.0, 0
  br i1 %tobool.not, label %if.then5, label %land.lhs.true4.if.end6_crit_edge

land.lhs.true4.if.end6_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true4
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1.i, align 8
  %must_realloc_vis.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 69
  %4 = ptrtoint ptr %must_realloc_vis.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %must_realloc_vis.i, align 4
  tail call void @efx_mcdi_filter_table_reset_mc_allocations(ptr noundef %efx) #19
  %must_restore_piobufs.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %must_restore_piobufs.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %must_restore_piobufs.i, align 2
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %6 = ptrtoint ptr %context_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %context_id.i, align 8
  %must_probe_vswitching.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 21
  %7 = ptrtoint ptr %must_probe_vswitching.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %must_probe_vswitching.i, align 4
  %vport_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %8 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %vport_id.i, align 8
  %vf.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then5.if.end6_crit_edge, label %for.cond.preheader.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

for.cond.preheader.i:                             ; preds = %if.then5
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %11 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.not.i = icmp eq i32 %12, 0
  br i1 %cmp15.not.i, label %for.cond.preheader.i.if.end6_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end6_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vf.i, align 8
  %vport_id3.i = getelementptr %struct.ef10_vf, ptr %14, i32 %i.016.i, i32 2
  %15 = ptrtoint ptr %vport_id3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %vport_id3.i, align 4
  %inc.i = add nuw i32 %i.016.i, 1
  %16 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vf_count.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end6_crit_edge

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

if.end6:                                          ; preds = %for.body.i.if.end6_crit_edge, %for.cond.preheader.i.if.end6_crit_edge, %if.then5.if.end6_crit_edge, %land.lhs.true4.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_probe(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_port_remove(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_fini_dmaq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_prepare_flr(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %active_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #19
  %0 = ptrtoint ptr %active_queues to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %active_queues, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_port_dummy_op_void(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_describe_stats(ptr noundef %efx, ptr noundef %names) #0 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #19
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  %call.i.i = tail call i32 @efx_mcdi_phy_get_caps(ptr noundef %efx) #19
  %2 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1.i, align 8
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %4 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcdi.i.i, align 4
  %fn_flags.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fn_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fn_flags.i.i, align 4
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge, label %if.end.i.i

entry.efx_ef10_raw_stat_mask.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_raw_stat_mask.exit.i

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %call.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %datapath_caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %datapath_caps2.i.i, align 8
  %and5.i.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %spec.select.i.i = select i1 %tobool6.not.i.i, i64 8796092891615, i64 8796093022207
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %raw_mask.0.i.i = phi i64 [ %spec.select.i.i, %if.then4.i.i ], [ 5497558138879, %if.end.i.i.if.end11.i.i_crit_edge ]
  %datapath_caps.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %datapath_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datapath_caps.i.i, align 4
  %and12.i.i = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %or15.i.i = or i64 %raw_mask.0.i.i, 36020000925941760
  %spec.select26.i.i = select i1 %tobool13.not.i.i, i64 %raw_mask.0.i.i, i64 %or15.i.i
  %extract.t51.i = trunc i64 %spec.select26.i.i to i32
  %extract.i = lshr i64 %spec.select26.i.i, 32
  %extract.t52.i = trunc i64 %extract.i to i32
  br label %efx_ef10_raw_stat_mask.exit.i

efx_ef10_raw_stat_mask.exit.i:                    ; preds = %if.end11.i.i, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge
  %retval.0.i.off0.i = phi i32 [ %extract.t51.i, %if.end11.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge ]
  %retval.0.i.off32.i = phi i32 [ %extract.t52.i, %if.end11.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge ]
  %datapath_caps.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %datapath_caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %datapath_caps.i, align 4
  %and.i = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %raw_mask.sroa.8.0.i = select i1 %tobool.not.i, i32 0, i32 511
  %num_mac_stats.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %14 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_mac_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 103, i16 %15)
  %cmp.i = icmp ugt i16 %15, 103
  %extract.t48.i = or i32 %raw_mask.sroa.8.0.i, 32256
  %spec.select.i = select i1 %cmp.i, i32 %extract.t48.i, i32 %raw_mask.sroa.8.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %15)
  %cmp12.i = icmp ugt i16 %15, 120
  br i1 %cmp12.i, label %land.lhs.true.i, label %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge

efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge: ; preds = %efx_ef10_raw_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_get_stat_mask.exit

land.lhs.true.i:                                  ; preds = %efx_ef10_raw_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %datapath_caps2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datapath_caps2.i, align 8
  %and14.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %extract.t45.i = or i32 %spec.select.i, 2147450880
  %spec.select50.i = select i1 %tobool15.not.i, i32 %spec.select.i, i32 %extract.t45.i
  br label %efx_ef10_get_stat_mask.exit

efx_ef10_get_stat_mask.exit:                      ; preds = %land.lhs.true.i, %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge
  %raw_mask.sroa.8.2.off0.i = phi i32 [ %spec.select.i, %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge ], [ %spec.select50.i, %land.lhs.true.i ]
  %18 = getelementptr inbounds [3 x i32], ptr %mask, i32 0, i32 2
  %19 = getelementptr inbounds [3 x i32], ptr %mask, i32 0, i32 1
  %extract.t42.i = or i32 %retval.0.i.off32.i, -8388608
  %raw_mask.sroa.0.0.off32.i = select i1 %tobool.not.i, i32 %retval.0.i.off32.i, i32 %extract.t42.i
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.off0.i, ptr %mask, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %raw_mask.sroa.0.0.off32.i, ptr %19, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %raw_mask.sroa.8.2.off0.i, ptr %18, align 4
  %call = call i32 @efx_nic_describe_stats(ptr noundef nonnull @efx_ef10_stat_desc, i32 noundef 95, ptr noundef nonnull %mask, ptr noundef %names) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_update_stats_vf(ptr noundef %efx, ptr noundef %full_stats, ptr noundef %core_stats) #0 align 64 {
entry:
  %inbuf.i = alloca [5 x %union.efx_dword], align 4
  %mask.i = alloca [3 x i32], align 4
  %stats_buf.i = alloca %struct.efx_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inbuf.i) #19
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask.i) #19
  %2 = getelementptr inbounds [3 x i32], ptr %mask.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i32], ptr %mask.i, i32 0, i32 2
  %stats2.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12
  %num_mac_stats.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %4 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_mac_stats.i, align 8
  %conv.i = zext i16 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stats_buf.i) #19
  %6 = ptrtoint ptr %stats_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %stats_buf.i, align 4, !annotation !412
  %7 = getelementptr inbounds %struct.efx_buffer, ptr %stats_buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !412
  %9 = getelementptr inbounds %struct.efx_buffer, ptr %stats_buf.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !412
  %stats_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 133
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock.i) #19
  %11 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nic_data1.i, align 8
  %call.i.i152.i = tail call i32 @efx_mcdi_phy_get_caps(ptr noundef %efx) #19
  %13 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nic_data1.i, align 8
  %mcdi.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %15 = ptrtoint ptr %mcdi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mcdi.i.i.i, align 4
  %fn_flags.i.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %fn_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fn_flags.i.i.i, align 4
  %and.i.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.efx_ef10_raw_stat_mask.exit.i.i_crit_edge, label %if.end.i.i.i

entry.efx_ef10_raw_stat_mask.exit.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_raw_stat_mask.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %call.i.i152.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end11.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end11.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %14, i32 0, i32 18
  %19 = ptrtoint ptr %datapath_caps2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %datapath_caps2.i.i.i, align 8
  %and5.i.i.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool6.not.i.i.i, i64 8796092891615, i64 8796093022207
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end11.i.i.i_crit_edge
  %raw_mask.0.i.i.i = phi i64 [ %spec.select.i.i.i, %if.then4.i.i.i ], [ 5497558138879, %if.end.i.i.i.if.end11.i.i.i_crit_edge ]
  %datapath_caps.i.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %14, i32 0, i32 17
  %21 = ptrtoint ptr %datapath_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %datapath_caps.i.i.i, align 4
  %and12.i.i.i = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %and12.i.i.i, 0
  %or15.i.i.i = or i64 %raw_mask.0.i.i.i, 36020000925941760
  %spec.select26.i.i.i = select i1 %tobool13.not.i.i.i, i64 %raw_mask.0.i.i.i, i64 %or15.i.i.i
  %extract.t51.i.i = trunc i64 %spec.select26.i.i.i to i32
  %extract.i.i = lshr i64 %spec.select26.i.i.i, 32
  %extract.t52.i.i = trunc i64 %extract.i.i to i32
  br label %efx_ef10_raw_stat_mask.exit.i.i

efx_ef10_raw_stat_mask.exit.i.i:                  ; preds = %if.end11.i.i.i, %entry.efx_ef10_raw_stat_mask.exit.i.i_crit_edge
  %retval.0.i.off0.i.i = phi i32 [ %extract.t51.i.i, %if.end11.i.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i.i_crit_edge ]
  %retval.0.i.off32.i.i = phi i32 [ %extract.t52.i.i, %if.end11.i.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i.i_crit_edge ]
  %datapath_caps.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %12, i32 0, i32 17
  %23 = ptrtoint ptr %datapath_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %datapath_caps.i.i, align 4
  %and.i.i = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %raw_mask.sroa.8.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 511
  %25 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_mac_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 103, i16 %26)
  %cmp.i.i = icmp ugt i16 %26, 103
  %extract.t48.i.i = or i32 %raw_mask.sroa.8.0.i.i, 32256
  %spec.select.i.i = select i1 %cmp.i.i, i32 %extract.t48.i.i, i32 %raw_mask.sroa.8.0.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %26)
  %cmp12.i.i = icmp ugt i16 %26, 120
  br i1 %cmp12.i.i, label %land.lhs.true.i.i, label %efx_ef10_raw_stat_mask.exit.i.i.efx_ef10_get_stat_mask.exit.i_crit_edge

efx_ef10_raw_stat_mask.exit.i.i.efx_ef10_get_stat_mask.exit.i_crit_edge: ; preds = %efx_ef10_raw_stat_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_get_stat_mask.exit.i

land.lhs.true.i.i:                                ; preds = %efx_ef10_raw_stat_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %12, i32 0, i32 18
  %27 = ptrtoint ptr %datapath_caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %datapath_caps2.i.i, align 8
  %and14.i.i = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %extract.t45.i.i = or i32 %spec.select.i.i, 2147450880
  %spec.select50.i.i = select i1 %tobool15.not.i.i, i32 %spec.select.i.i, i32 %extract.t45.i.i
  br label %efx_ef10_get_stat_mask.exit.i

efx_ef10_get_stat_mask.exit.i:                    ; preds = %land.lhs.true.i.i, %efx_ef10_raw_stat_mask.exit.i.i.efx_ef10_get_stat_mask.exit.i_crit_edge
  %raw_mask.sroa.8.2.off0.i.i = phi i32 [ %spec.select.i.i, %efx_ef10_raw_stat_mask.exit.i.i.efx_ef10_get_stat_mask.exit.i_crit_edge ], [ %spec.select50.i.i, %land.lhs.true.i.i ]
  %extract.t42.i.i = or i32 %retval.0.i.off32.i.i, -8388608
  %raw_mask.sroa.0.0.off32.i.i = select i1 %tobool.not.i.i, i32 %retval.0.i.off32.i.i, i32 %extract.t42.i.i
  %29 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.off0.i.i, ptr %mask.i, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %raw_mask.sroa.0.0.off32.i.i, ptr %2, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %raw_mask.sroa.8.2.off0.i.i, ptr %3, align 4
  %call.i = call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef nonnull %stats_buf.i, i32 noundef %mul.i, i32 noundef 3264) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %efx_ef10_try_update_nic_stats_vf.exit.thread

efx_ef10_try_update_nic_stats_vf.exit.thread:     ; preds = %efx_ef10_get_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask.i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i) #19
  br label %return

if.end.i:                                         ; preds = %efx_ef10_get_stat_mask.exit.i
  %32 = ptrtoint ptr %stats_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stats_buf.i, align 4
  %34 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_mac_stats.i, align 8
  %conv6.i = zext i16 %35 to i32
  %sub.i = add nsw i32 %conv6.i, -1
  %arrayidx.i = getelementptr i64, ptr %33, i32 %sub.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %arrayidx.i, align 8
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %7, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #19
  %40 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %inbuf.i, align 4
  %arrayidx24.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %41 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx24.i, align 4
  %add.ptr32.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %42 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16777216, ptr %add.ptr32.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %mul.i) #19
  %add.ptr42.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %44 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr42.i, align 4
  %add.ptr48.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 4
  %45 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %add.ptr48.i, align 4
  %call53.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 46, ptr noundef nonnull %inbuf.i, i32 noundef 20, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #19
  %46 = zext i32 %call53.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %call53.i, label %if.end.i.efx_ef10_try_update_nic_stats_vf.exit_crit_edge [
    i32 0, label %if.end62.i
    i32 -2, label %lor.lhs.false.i
  ]

if.end.i.efx_ef10_try_update_nic_stats_vf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_try_update_nic_stats_vf.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %active_queues.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #19
  %47 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool59.not.i = icmp eq i32 %48, 0
  br i1 %tobool59.not.i, label %lor.lhs.false.i.efx_ef10_try_update_nic_stats_vf.exit.thread9_crit_edge, label %lor.lhs.false.i.efx_ef10_try_update_nic_stats_vf.exit_crit_edge

lor.lhs.false.i.efx_ef10_try_update_nic_stats_vf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_try_update_nic_stats_vf.exit

lor.lhs.false.i.efx_ef10_try_update_nic_stats_vf.exit.thread9_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_try_update_nic_stats_vf.exit.thread9

if.end62.i:                                       ; preds = %if.end.i
  %49 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_mac_stats.i, align 8
  %conv64.i = zext i16 %50 to i32
  %sub65.i = add nsw i32 %conv64.i, -1
  %arrayidx66.i = getelementptr i64, ptr %33, i32 %sub65.i
  %51 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx66.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp67.i = icmp eq i64 %52, -1
  br i1 %cmp67.i, label %land.end.i, label %if.end109.i

land.end.i:                                       ; preds = %if.end62.i
  %.b151.i = load i1, ptr @efx_ef10_try_update_nic_stats_vf.__already_done, align 1
  br i1 %.b151.i, label %land.end.i.efx_ef10_try_update_nic_stats_vf.exit.thread5_crit_edge, label %if.then76.i, !prof !414

land.end.i.efx_ef10_try_update_nic_stats_vf.exit.thread5_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_try_update_nic_stats_vf.exit.thread5

if.then76.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @efx_ef10_try_update_nic_stats_vf.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1920, i32 noundef 9, ptr noundef null) #19
  br label %efx_ef10_try_update_nic_stats_vf.exit.thread5

if.end109.i:                                      ; preds = %if.end62.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !417
  %53 = ptrtoint ptr %stats_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stats_buf.i, align 4
  call void @efx_nic_update_stats(ptr noundef nonnull @efx_ef10_stat_desc, i32 noundef 95, ptr noundef nonnull %mask.i, ptr noundef %stats2.i, ptr noundef %54, i1 noundef zeroext false) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !418
  %55 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %56)
  %cmp113.not.i = icmp eq i64 %52, %56
  br i1 %cmp113.not.i, label %if.end116.i, label %if.end109.i.efx_ef10_try_update_nic_stats_vf.exit.thread9_crit_edge

if.end109.i.efx_ef10_try_update_nic_stats_vf.exit.thread9_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_try_update_nic_stats_vf.exit.thread9

if.end116.i:                                      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @efx_update_sw_stats(ptr noundef %efx, ptr noundef %stats2.i) #19
  br label %efx_ef10_try_update_nic_stats_vf.exit.thread5

efx_ef10_try_update_nic_stats_vf.exit.thread5:    ; preds = %if.end116.i, %if.then76.i, %land.end.i.efx_ef10_try_update_nic_stats_vf.exit.thread5_crit_edge
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask.i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i) #19
  br label %if.end

efx_ef10_try_update_nic_stats_vf.exit.thread9:    ; preds = %if.end109.i.efx_ef10_try_update_nic_stats_vf.exit.thread9_crit_edge, %lor.lhs.false.i.efx_ef10_try_update_nic_stats_vf.exit.thread9_crit_edge
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask.i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i) #19
  br label %return

efx_ef10_try_update_nic_stats_vf.exit:            ; preds = %lor.lhs.false.i.efx_ef10_try_update_nic_stats_vf.exit_crit_edge, %if.end.i.efx_ef10_try_update_nic_stats_vf.exit_crit_edge
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 46, i32 noundef 20, ptr noundef null, i32 noundef 0, i32 noundef %call53.i) #19
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stats_buf.i) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask.i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool.not = icmp eq i32 %call53.i, 0
  br i1 %tobool.not, label %efx_ef10_try_update_nic_stats_vf.exit.if.end_crit_edge, label %efx_ef10_try_update_nic_stats_vf.exit.return_crit_edge

efx_ef10_try_update_nic_stats_vf.exit.return_crit_edge: ; preds = %efx_ef10_try_update_nic_stats_vf.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

efx_ef10_try_update_nic_stats_vf.exit.if.end_crit_edge: ; preds = %efx_ef10_try_update_nic_stats_vf.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %efx_ef10_try_update_nic_stats_vf.exit.if.end_crit_edge, %efx_ef10_try_update_nic_stats_vf.exit.thread5
  %call1 = call fastcc i32 @efx_ef10_update_stats_common(ptr noundef %efx, ptr noundef %full_stats, ptr noundef %core_stats)
  br label %return

return:                                           ; preds = %if.end, %efx_ef10_try_update_nic_stats_vf.exit.return_crit_edge, %efx_ef10_try_update_nic_stats_vf.exit.thread9, %efx_ef10_try_update_nic_stats_vf.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %efx_ef10_try_update_nic_stats_vf.exit.return_crit_edge ], [ 0, %efx_ef10_try_update_nic_stats_vf.exit.thread ], [ 0, %efx_ef10_try_update_nic_stats_vf.exit.thread9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_update_stats_atomic_vf(ptr noundef %efx, ptr noundef %full_stats, ptr noundef %core_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %stats = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12
  tail call void @efx_update_sw_stats(ptr noundef %efx, ptr noundef %stats) #19
  %call = tail call fastcc i32 @efx_ef10_update_stats_common(ptr noundef %efx, ptr noundef %full_stats, ptr noundef %core_stats)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_push_irq_moderation(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  %inbuf = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %irq_moderation_us = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 6
  %2 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_moderation_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %.94 = select i1 %tobool.not, i32 0, i32 3
  %nic_data = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %nic_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_data, align 8
  %workaround_61265 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %workaround_61265 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %workaround_61265, align 2, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.else38, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf) #19
  %mul = mul i32 %3, 1000
  %channel5 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel5, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %inbuf, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %add.ptr13 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %13 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr13, align 4
  %add.ptr23 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %add.ptr23, align 4
  %15 = shl nuw nsw i32 %.94, 24
  %add.ptr33 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %16 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr33, align 4
  %call = call i32 @efx_mcdi_rpc_async(ptr noundef %1, i32 noundef 288, ptr noundef nonnull %inbuf, i32 noundef 16, i32 noundef 0, ptr noundef null, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf) #19
  br label %if.end73

if.else38:                                        ; preds = %entry
  %workaround_35388 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 13
  %17 = ptrtoint ptr %workaround_35388 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %workaround_35388, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool40.not = icmp eq i8 %18, 0
  %call56 = tail call i32 @efx_usecs_to_ticks(ptr noundef %1, i32 noundef %3) #19
  br i1 %tobool40.not, label %if.else54, label %if.then41

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #21
  %shl = shl nuw nsw i32 %.94, 8
  %19 = or i32 %shl, %call56
  %or4893 = or i32 %19, 3072
  %20 = tail call i32 @llvm.bswap.i32(i32 %or4893)
  %channel53 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %21 = ptrtoint ptr %channel53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel53, align 4
  %vi_stride.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %vi_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vi_stride.i.i, align 128
  %mul.i.i = mul i32 %24, %22
  %add.i.i = add i32 %mul.i.i, 2584
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %20) #19, !srcloc !419
  br label %if.end73

if.else54:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #21
  %shl58 = shl nuw nsw i32 %.94, 14
  %or6391 = or i32 %call56, %shl58
  %shl64 = shl i32 %call56, 16
  %or6692 = or i32 %or6391, %shl64
  %27 = tail call i32 @llvm.bswap.i32(i32 %or6692)
  %channel71 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %28 = ptrtoint ptr %channel71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel71, align 4
  %vi_stride.i.i95 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %vi_stride.i.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vi_stride.i.i95, align 128
  %mul.i.i96 = mul i32 %31, %29
  %add.i.i97 = add i32 %mul.i.i96, 1056
  %membase.i.i.i98 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %membase.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i98, align 4
  %add.ptr.i.i.i99 = getelementptr i8, ptr %33, i32 %add.i.i97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i99, i32 %27) #19, !srcloc !419
  br label %if.end73

if.end73:                                         ; preds = %if.else54, %if.then41, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_mac_reconfigure(ptr noundef %efx, i1 noundef zeroext %mtu_only) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #19
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !414

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3348, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @efx_mcdi_filter_sync_rx_mode(ptr noundef %efx) #19
  br i1 %mtu_only, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
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
  %call21 = tail call i32 %3(ptr noundef %efx, i8 noundef zeroext 9, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end25_crit_edge, label %if.then23

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %call24 = tail call i32 @efx_mcdi_set_mtu(ptr noundef %efx) #19
  br label %return

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %call26 = tail call i32 @efx_mcdi_set_mac(ptr noundef %efx) #19
  br label %return

return:                                           ; preds = %if.end25, %if.then23
  %retval.0 = phi i32 [ %call24, %if.then23 ], [ %call26, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_mcdi_mac_check_fault(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ef10_get_wol_vf(ptr nocapture noundef %efx, ptr nocapture noundef %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_set_wol_vf(ptr nocapture noundef readnone %efx, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ef10_check_caps(ptr nocapture noundef readonly %efx, i8 noundef zeroext %flag, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %2 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %offset, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 20, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %datapath_caps, align 4
  %sh_prom = zext i8 %flag to i64
  %shl = shl nuw i64 1, %sh_prom
  %5 = trunc i64 %shl to i32
  %conv3 = and i32 %4, %5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %datapath_caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datapath_caps2, align 8
  %sh_prom7 = zext i8 %flag to i64
  %shl8 = shl nuw i64 1, %sh_prom7
  %8 = trunc i64 %shl8 to i32
  %conv10 = and i32 %7, %8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10, %sw.bb4 ], [ %conv3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_mcdi_request(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %hdr, i32 noundef %hdr_len, ptr nocapture noundef readonly %sdu, i32 noundef %sdu_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = call ptr @memcpy(ptr %3, ptr %hdr, i32 %hdr_len)
  %add.ptr = getelementptr i8, ptr %3, i32 %hdr_len
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %sdu, i32 %sdu_len)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !420
  tail call void @arm_heavy_mb() #19
  %dma_addr = getelementptr inbounds %struct.efx_buffer, ptr %1, i32 0, i32 1
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #19, !srcloc !419
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %12, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %10) #19, !srcloc !419
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @efx_ef10_mcdi_poll_response(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %hdr.sroa.0.0.copyload = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !421
  %5 = and i32 %hdr.sroa.0.0.copyload, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ef10_mcdi_read_response(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %outbuf, i32 noundef %offset, i32 noundef %outlen) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %4 = call ptr @memcpy(ptr %outbuf, ptr %add.ptr, i32 %outlen)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_mcdi_poll_reboot(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !422
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #19
  %shr.mask.i = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, -1341718528
  %and2.i = and i32 %5, 65535
  %spec.select.i = select i1 %cmp.i, i32 %and2.i, i32 -5
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %warm_boot_count = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %warm_boot_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %warm_boot_count, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv)
  %cmp2 = icmp eq i32 %spec.select.i, %conv
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv6 = trunc i32 %spec.select.i to i16
  %8 = ptrtoint ptr %warm_boot_count to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %warm_boot_count, align 4
  %9 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nic_data1, align 8
  %must_realloc_vis.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 69
  %11 = ptrtoint ptr %must_realloc_vis.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %must_realloc_vis.i.i, align 4
  tail call void @efx_mcdi_filter_table_reset_mc_allocations(ptr noundef %efx) #19
  %must_restore_piobufs.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %must_restore_piobufs.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %must_restore_piobufs.i.i, align 2
  %context_id.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %13 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %context_id.i.i, align 8
  %must_probe_vswitching.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 21
  %14 = ptrtoint ptr %must_probe_vswitching.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %must_probe_vswitching.i.i, align 4
  %vport_id.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %15 = ptrtoint ptr %vport_id.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %vport_id.i.i, align 8
  %vf.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 25
  %16 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vf.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end5.efx_ef10_mcdi_reboot_detected.exit_crit_edge, label %for.cond.preheader.i.i

if.end5.efx_ef10_mcdi_reboot_detected.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mcdi_reboot_detected.exit

for.cond.preheader.i.i:                           ; preds = %if.end5
  %vf_count.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %18 = ptrtoint ptr %vf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vf_count.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp15.not.i.i, label %for.cond.preheader.i.i.efx_ef10_mcdi_reboot_detected.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.efx_ef10_mcdi_reboot_detected.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mcdi_reboot_detected.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf.i.i, align 8
  %vport_id3.i.i = getelementptr %struct.ef10_vf, ptr %21, i32 %i.016.i.i, i32 2
  %22 = ptrtoint ptr %vport_id3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %vport_id3.i.i, align 4
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %23 = ptrtoint ptr %vf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vf_count.i.i, align 16
  %cmp.i.i = icmp ult i32 %inc.i.i, %24
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.efx_ef10_mcdi_reboot_detected.exit_crit_edge

for.body.i.i.efx_ef10_mcdi_reboot_detected.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mcdi_reboot_detected.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

efx_ef10_mcdi_reboot_detected.exit:               ; preds = %for.body.i.i.efx_ef10_mcdi_reboot_detected.exit_crit_edge, %for.cond.preheader.i.i.efx_ef10_mcdi_reboot_detected.exit_crit_edge, %if.end5.efx_ef10_mcdi_reboot_detected.exit_crit_edge
  %must_check_datapath_caps.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 16
  %25 = ptrtoint ptr %must_check_datapath_caps.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %must_check_datapath_caps.i, align 1
  %arrayidx.i = getelementptr %struct.efx_ef10_nic_data, ptr %10, i32 0, i32 12, i32 20
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %arrayidx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %efx_ef10_mcdi_reboot_detected.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %efx_ef10_mcdi_reboot_detected.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_mcdi_reboot_detected(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %must_realloc_vis.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 69
  %2 = ptrtoint ptr %must_realloc_vis.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %must_realloc_vis.i, align 4
  tail call void @efx_mcdi_filter_table_reset_mc_allocations(ptr noundef %efx) #19
  %must_restore_piobufs.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %must_restore_piobufs.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %must_restore_piobufs.i, align 2
  %context_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %4 = ptrtoint ptr %context_id.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %context_id.i, align 8
  %must_probe_vswitching.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %must_probe_vswitching.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %must_probe_vswitching.i, align 4
  %vport_id.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %6 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %vport_id.i, align 8
  %vf.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.efx_ef10_table_reset_mc_allocations.exit_crit_edge, label %for.cond.preheader.i

entry.efx_ef10_table_reset_mc_allocations.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_table_reset_mc_allocations.exit

for.cond.preheader.i:                             ; preds = %entry
  %vf_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %9 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vf_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.not.i = icmp eq i32 %10, 0
  br i1 %cmp15.not.i, label %for.cond.preheader.i.efx_ef10_table_reset_mc_allocations.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.efx_ef10_table_reset_mc_allocations.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_table_reset_mc_allocations.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vf.i, align 8
  %vport_id3.i = getelementptr %struct.ef10_vf, ptr %12, i32 %i.016.i, i32 2
  %13 = ptrtoint ptr %vport_id3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %vport_id3.i, align 4
  %inc.i = add nuw i32 %i.016.i, 1
  %14 = ptrtoint ptr %vf_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vf_count.i, align 16
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.efx_ef10_table_reset_mc_allocations.exit_crit_edge

for.body.i.efx_ef10_table_reset_mc_allocations.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_table_reset_mc_allocations.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

efx_ef10_table_reset_mc_allocations.exit:         ; preds = %for.body.i.efx_ef10_table_reset_mc_allocations.exit_crit_edge, %for.cond.preheader.i.efx_ef10_table_reset_mc_allocations.exit_crit_edge, %entry.efx_ef10_table_reset_mc_allocations.exit_crit_edge
  %must_check_datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %must_check_datapath_caps to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %must_check_datapath_caps, align 1
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 20
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_irq_test_generate(ptr noundef %efx) #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #19
  %call = tail call i32 @efx_mcdi_set_workaround(ptr noundef %efx, i32 noundef 4, i1 noundef zeroext true, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %0 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_level, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %call6 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 227, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body1 ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_msi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %irq_soft_enabled, align 1, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then, !prof !413

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %8 = tail call i32 @llvm.read_register.i32(metadata !402) #19
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !402) #19
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
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #19
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #19
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i.i, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_legacy_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 70
  %0 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %irq_soft_enabled, align 1, !range !415
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 144
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #19, !srcloc !422
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6, !prof !413

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 73
  %6 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_level, align 8
  %shl7 = shl nuw i32 1, %7
  %and8 = and i32 %shl7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then6.if.end11_crit_edge, label %if.then10

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  %8 = tail call i32 @llvm.read_register.i32(metadata !402) #19
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 132
  %12 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_irq_cpu, align 16
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then6.if.end11_crit_edge
  %channel12 = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 25
  %13 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel12, align 8
  %tobool14.not43 = icmp eq ptr %14, null
  br i1 %tobool14.not43, label %if.end11.cleanup_crit_edge, label %for.body.lr.ph

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end11
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %queues.046 = phi i32 [ %5, %for.body.lr.ph ], [ %shr, %cond.end.for.body_crit_edge ]
  %channel.044 = phi ptr [ %14, %for.body.lr.ph ], [ %25, %cond.end.for.body_crit_edge ]
  %and15 = and i32 %queues.046, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.if.end18_crit_edge, label %if.then17

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then17:                                        ; preds = %for.body
  %15 = tail call i32 @llvm.read_register.i32(metadata !402) #19
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.efx_channel, ptr %channel.044, i32 0, i32 13
  %19 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.044, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #19
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.then17.if.end18_crit_edge

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then.i.i.i:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #19
  br label %if.end18

if.end18:                                         ; preds = %if.then.i.i.i, %if.then17.if.end18_crit_edge, %for.body.if.end18_crit_edge
  %channel19 = getelementptr inbounds %struct.efx_channel, ptr %channel.044, i32 0, i32 1
  %20 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel19, align 4
  %add = add i32 %21, 1
  %22 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp20 = icmp ult i32 %add, %23
  br i1 %cmp20, label %cond.end, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cond.end:                                         ; preds = %if.end18
  %shr = lshr i32 %queues.046, 1
  %arrayidx24 = getelementptr %struct.efx_nic, ptr %dev_id, i32 0, i32 25, i32 %add
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24, align 4
  %tobool14.not = icmp eq ptr %25, null
  br i1 %tobool14.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %cond.end.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_tx_probe(ptr noundef %tx_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %label = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 2
  %0 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %label, align 8
  %and = and i32 %1, 3
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %type, align 4
  %3 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_queue, align 128
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %5 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr_mask, align 4
  %add = shl i32 %6, 3
  %mul = add i32 %add, 8
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %4, ptr noundef %txd, i32 noundef %mul, i32 noundef 3264) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_tx_init(ptr noundef %tx_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %channel5 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %2 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel5, align 8
  %4 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_queue, align 128
  %nic_data7 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 76
  %6 = ptrtoint ptr %nic_data7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_data7, align 8
  %licensed_features = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %licensed_features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %licensed_features, align 8
  %and8 = and i64 %9, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

if.then:                                          ; preds = %entry
  %timestamping = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 15
  %10 = ptrtoint ptr %timestamping to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %timestamping, align 1
  %type10 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type10, align 4
  %ptp_set_ts_sync_events = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 92
  %13 = ptrtoint ptr %ptp_set_ts_sync_events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_set_ts_sync_events, align 8
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.then.if.end15_crit_edge, label %if.then12

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 %14(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false) #19
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %type16 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type16, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %16, i32 0, i32 35
  %17 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %check_caps, align 4
  %call17 = tail call i32 %18(ptr noundef %5, i8 noundef zeroext 0, i32 noundef 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  %19 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %if.then19.if.end50_crit_edge, label %land.lhs.true

if.then19.if.end50_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then19
  %timestamping22 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 15
  %20 = ptrtoint ptr %timestamping22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %timestamping22, align 1, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

land.lhs.true24:                                  ; preds = %land.lhs.true
  %xdp_tx = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 16
  %22 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %xdp_tx, align 2, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true24.if.end50_crit_edge

land.lhs.true24.if.end50_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then26:                                        ; preds = %land.lhs.true24
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %24 = ptrtoint ptr %tso_version to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %tso_version, align 16
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 22
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.if.end50_crit_edge, label %do.body30

if.then26.if.end50_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

do.body30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_tx_init.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_tx_init, %if.then36)) #19
          to label %if.end50 [label %if.then36], !srcloc !416

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %27 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev, align 4
  %channel37 = getelementptr inbounds %struct.efx_channel, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %channel37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_tx_init.__UNIQUE_ID_ddebug622, ptr noundef %28, ptr noundef nonnull @.str.133, i32 noundef %30) #19
  br label %if.end50

if.else:                                          ; preds = %if.end15
  %31 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type16, align 4
  %check_caps44 = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 35
  %33 = ptrtoint ptr %check_caps44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %check_caps44, align 4
  %call45 = tail call i32 %34(ptr noundef %5, i8 noundef zeroext 21, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else.if.end50_crit_edge, label %if.then47

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %tso_version48 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %35 = ptrtoint ptr %tso_version48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %tso_version48, align 16
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.else.if.end50_crit_edge, %if.then36, %do.body30, %if.then26.if.end50_crit_edge, %land.lhs.true24.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.then19.if.end50_crit_edge
  %call51 = tail call i32 @efx_mcdi_tx_init(ptr noundef %tx_queue) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %do.end116

if.end54:                                         ; preds = %if.end50
  %buffer = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 32
  %flags = getelementptr inbounds %struct.efx_tx_buffer, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 16, ptr %flags, align 8
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %39 = ptrtoint ptr %insert_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %insert_count, align 128
  %txd.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %40 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %txd.i, align 8
  %shl = shl nuw nsw i32 %and, 1
  br i1 %tobool.not, label %if.end54.land.end_crit_edge, label %land.rhs

if.end54.land.end_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.rhs:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  %tso_version61 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %42 = ptrtoint ptr %tso_version61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tso_version61, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp = icmp ne i32 %43, 2
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end54.land.end_crit_edge
  %44 = phi i32 [ 0, %if.end54.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %or64180 = or i32 %44, %shl
  %shl67 = shl nuw nsw i32 %and2, 6
  %or69181 = or i32 %or64180, %shl67
  br i1 %tobool3.not, label %land.end.land.end76_crit_edge, label %land.rhs72

land.end.land.end76_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end76

land.rhs72:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  %tso_version73 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %45 = ptrtoint ptr %tso_version73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tso_version73, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp74.not = icmp eq i32 %46, 2
  %phi.bo = select i1 %cmp74.not, i32 0, i32 64
  br label %land.end76

land.end76:                                       ; preds = %land.rhs72, %land.end.land.end76_crit_edge
  %47 = phi i32 [ 0, %land.end.land.end76_crit_edge ], [ %phi.bo, %land.rhs72 ]
  %or80183 = or i32 %47, %or69181
  %timestamping81 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 15
  %48 = ptrtoint ptr %timestamping81 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %timestamping81, align 1, !range !415
  %50 = shl nuw nsw i8 %49, 5
  %conv85 = zext i8 %50 to i32
  %or86 = or i32 %or80183, %conv85
  %51 = shl nuw i32 %or86, 24
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %41, align 8
  %arrayidx89 = getelementptr [2 x i32], ptr %41, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %arrayidx89, align 4
  %write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %54 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %write_count, align 4
  %tso_version92 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %55 = ptrtoint ptr %tso_version92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tso_version92, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp93 = icmp eq i32 %56, 2
  br i1 %cmp93, label %land.lhs.true95, label %land.end76.do.body102_crit_edge

land.end76.do.body102_crit_edge:                  ; preds = %land.end76
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body102

land.lhs.true95:                                  ; preds = %land.end76
  %57 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type16, align 4
  %check_caps97 = getelementptr inbounds %struct.efx_nic_type, ptr %58, i32 0, i32 35
  %59 = ptrtoint ptr %check_caps97 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %check_caps97, align 4
  %call98 = tail call i32 %60(ptr noundef %5, i8 noundef zeroext 1, i32 noundef 20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %land.lhs.true95.do.body102_crit_edge, label %if.then100

land.lhs.true95.do.body102_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body102

if.then100:                                       ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #21
  %tso_encap = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 5
  %61 = ptrtoint ptr %tso_encap to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %tso_encap, align 4
  br label %do.body102

do.body102:                                       ; preds = %if.then100, %land.lhs.true95.do.body102_crit_edge, %land.end76.do.body102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !423
  tail call void @arm_heavy_mb() #19
  %62 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %write_count, align 4
  %ptr_mask.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ptr_mask.i, align 4
  %and.i = and i32 %65, %63
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i) #19
  %67 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %41, align 8
  %reg.sroa.0.sroa.0.0.extract.shift.i = lshr i64 %68, 32
  %reg.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %reg.sroa.0.sroa.0.0.extract.shift.i to i32
  %reg.sroa.0.sroa.6.0.extract.trunc.i = trunc i64 %68 to i32
  %69 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_queue, align 128
  %queue.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %71 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %queue.i, align 4
  %vi_stride.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %70, i32 0, i32 14
  %73 = ptrtoint ptr %vi_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vi_stride.i.i.i, align 128
  %mul.i.i.i = mul i32 %74, %72
  %add.i.i.i = add i32 %mul.i.i.i, 2576
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %70, i32 0, i32 13
  %75 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %76, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %reg.sroa.0.sroa.0.0.extract.trunc.i) #19, !srcloc !419
  %add2.i.i = add i32 %mul.i.i.i, 2580
  %77 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %78, i32 %add2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %reg.sroa.0.sroa.6.0.extract.trunc.i) #19, !srcloc !419
  %add4.i.i = add i32 %mul.i.i.i, 2584
  %79 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %80, i32 %add4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %66) #19, !srcloc !419
  %add6.i.i = add i32 %mul.i.i.i, 2588
  %81 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %82, i32 %add6.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #19, !srcloc !419
  br label %cleanup

do.end116:                                        ; preds = %if.end50
  %net_dev117 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %83 = ptrtoint ptr %net_dev117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_dev117, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i, label %do.end116.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end116.netdev_name.exit_crit_edge:             ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %84, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %84, ptr @.str.135
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end116.netdev_name.exit_crit_edge
  %retval.0.i184 = phi ptr [ @.str.135, %do.end116.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 121
  %87 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %88 = icmp ult i8 %bf.load45.i, 6
  br i1 %88, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.netdev_reg_state.exit_crit_edge, label %if.then.i, !prof !414

land.end.i.netdev_reg_state.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_reg_state.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.142, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %84, i32 noundef %bf.cast21.i) #19
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #21
  %89 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.efx_ef10_tx_init, i32 0, i32 %89
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i, %land.end.i.netdev_reg_state.exit_crit_edge
  %retval.0.i185 = phi ptr [ @.str.144, %if.then.i ], [ @.str.144, %land.end.i.netdev_reg_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %91 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %queue, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2394, i32 noundef 9, ptr noundef nonnull @.str.134, ptr noundef %retval.0.i184, ptr noundef nonnull %retval.0.i185, i32 noundef %92) #19
  br label %cleanup

cleanup:                                          ; preds = %netdev_reg_state.exit, %do.body102
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_tx_remove(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_tx_write(ptr noundef %tx_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %0 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_count, align 4
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %2 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %xmit_pending, align 8
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %3 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %insert_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp = icmp eq i32 %1, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader, !prof !413

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %buffer4 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %txd.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %packet_write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 28
  br label %do.body

do.body:                                          ; preds = %do.cond42.do.body_crit_edge, %do.body.preheader
  %5 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_count, align 4
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %8, %6
  %9 = ptrtoint ptr %buffer4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer4, align 32
  %11 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txd.i, align 8
  %add.ptr.i = getelementptr %union.efx_qword, ptr %12, i32 %and
  %inc = add i32 %6, 1
  store i32 %inc, ptr %write_count, align 4
  %flags = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 8
  %15 = and i16 %14, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool7.not = icmp eq i16 %15, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.body
  %16 = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %add.ptr.i, align 8
  %20 = and i64 %18, 112
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %20)
  %cmp11 = icmp eq i64 %20, 16
  br i1 %cmp11, label %if.then13, label %if.then8.do.cond42_crit_edge

if.then8.do.cond42_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.cond42

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %write_count, align 4
  %23 = ptrtoint ptr %packet_write_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %packet_write_count, align 8
  br label %do.cond42

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %packet_write_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %packet_write_count, align 8
  %25 = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i, align 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 8
  %32 = and i16 %31, 1
  %and27 = zext i16 %32 to i32
  %shl = shl nuw nsw i32 %and27, 30
  %len = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 3
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len, align 2
  %conv30 = zext i16 %34 to i32
  %shl31 = shl nuw i32 %conv30, 16
  %or3393 = or i32 %shl, %shl31
  %35 = tail call i32 @llvm.bswap.i32(i32 %or3393)
  %arrayidx38 = getelementptr [2 x i32], ptr %add.ptr.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx38, align 4
  br label %do.cond42

do.cond42:                                        ; preds = %if.else, %if.then13, %if.then8.do.cond42_crit_edge
  %37 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %write_count, align 4
  %39 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %insert_count, align 128
  %cmp45.not = icmp eq i32 %38, %40
  br i1 %cmp45.not, label %do.body48, label %do.cond42.do.body_crit_edge

do.cond42.do.body_crit_edge:                      ; preds = %do.cond42
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body48:                                        ; preds = %do.cond42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !424
  tail call void @arm_heavy_mb() #19
  %empty_read_count1.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 41
  %41 = ptrtoint ptr %empty_read_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %empty_read_count1.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i = icmp ne i32 %42, 0
  %xor.i.i = xor i32 %42, %1
  %and.i.i = and i32 %xor.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  %retval.0.i.i = select i1 %cmp.i.i, i1 %cmp2.i.i, i1 false
  %43 = ptrtoint ptr %empty_read_count1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %empty_read_count1.i.i, align 128
  br i1 %retval.0.i.i, label %efx_nic_may_push_tx_desc.exit, label %do.body48.if.else57_crit_edge

do.body48.if.else57_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else57

efx_nic_may_push_tx_desc.exit:                    ; preds = %do.body48
  %44 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %write_count, align 4
  %sub.i = sub i32 %45, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 1
  br i1 %cmp.i, label %if.then52, label %efx_nic_may_push_tx_desc.exit.if.else57_crit_edge

efx_nic_may_push_tx_desc.exit.if.else57_crit_edge: ; preds = %efx_nic_may_push_tx_desc.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else57

if.then52:                                        ; preds = %efx_nic_may_push_tx_desc.exit
  call void @__sanitizer_cov_trace_pc() #21
  %46 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptr_mask, align 4
  %and54 = and i32 %47, %1
  %48 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txd.i, align 8
  %add.ptr.i95 = getelementptr %union.efx_qword, ptr %49, i32 %and54
  %50 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %write_count, align 4
  %and.i = and i32 %51, %47
  %52 = tail call i32 @llvm.bswap.i32(i32 %and.i) #19
  %53 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr.i95, align 8
  %reg.sroa.0.sroa.0.0.extract.shift.i = lshr i64 %54, 32
  %reg.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %reg.sroa.0.sroa.0.0.extract.shift.i to i32
  %reg.sroa.0.sroa.6.0.extract.trunc.i = trunc i64 %54 to i32
  %55 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_queue, align 128
  %queue.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %57 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %queue.i, align 4
  %vi_stride.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %56, i32 0, i32 14
  %59 = ptrtoint ptr %vi_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vi_stride.i.i.i, align 128
  %mul.i.i.i = mul i32 %60, %58
  %add.i.i.i = add i32 %mul.i.i.i, 2576
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %56, i32 0, i32 13
  %61 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %reg.sroa.0.sroa.0.0.extract.trunc.i) #19, !srcloc !419
  %add2.i.i = add i32 %mul.i.i.i, 2580
  %63 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %64, i32 %add2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %reg.sroa.0.sroa.6.0.extract.trunc.i) #19, !srcloc !419
  %add4.i.i = add i32 %mul.i.i.i, 2584
  %65 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %66, i32 %add4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %52) #19, !srcloc !419
  %add6.i.i = add i32 %mul.i.i.i, 2588
  %67 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %68, i32 %add6.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #19, !srcloc !419
  %pushes = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 34
  %69 = ptrtoint ptr %pushes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pushes, align 32
  %inc56 = add i32 %70, 1
  store i32 %inc56, ptr %pushes, align 32
  br label %cleanup

if.else57:                                        ; preds = %efx_nic_may_push_tx_desc.exit.if.else57_crit_edge, %do.body48.if.else57_crit_edge
  %71 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %write_count, align 4
  %73 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ptr_mask, align 4
  %and.i98 = and i32 %74, %72
  %75 = tail call i32 @llvm.bswap.i32(i32 %and.i98) #19
  %76 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_queue, align 128
  %queue.i99 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %78 = ptrtoint ptr %queue.i99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %queue.i99, align 4
  %vi_stride.i.i.i100 = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 14
  %80 = ptrtoint ptr %vi_stride.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vi_stride.i.i.i100, align 128
  %mul.i.i.i101 = mul i32 %81, %79
  %add.i.i.i102 = add i32 %mul.i.i.i101, 2584
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %77, i32 0, i32 13
  %82 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %83, i32 %add.i.i.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %75) #19, !srcloc !419
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.then52, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__efx_enqueue_skb(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_tx_limit_len(ptr nocapture noundef readnone %tx_queue, i32 noundef %dma_addr, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %len)
  %cmp = icmp ugt i32 %len, 16383
  %add = add i32 %dma_addr, 16383
  %and = and i32 %add, -4096
  %sub = sub i32 %and, %dma_addr
  %len.addr.0 = select i1 %cmp, i32 %sub, i32 %len
  ret i32 %len.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_vf_rx_push_rss_config(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_pull_rss_config(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_probe(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_remove(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_rx_write(ptr nocapture noundef %rx_queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %2 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %added_count, align 8
  %and = and i32 %3, -8
  %notified_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 8
  %4 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notified_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp = icmp eq i32 %5, %and
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %rxd.i.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  %buffer.i.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %6 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %notified_count, align 4
  %8 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr_mask, align 32
  %and3 = and i32 %9, %7
  %10 = ptrtoint ptr %rxd.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxd.i.i, align 4
  %add.ptr.i.i = getelementptr %union.efx_qword, ptr %11, i32 %and3
  %12 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.efx_rx_buffer, ptr %13, i32 %and3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #19
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %add.ptr.i.i, align 8
  %len.i = getelementptr %struct.efx_rx_buffer, ptr %13, i32 %and3, i32 3
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #19
  %21 = zext i16 %20 to i32
  %arrayidx11.i = getelementptr [2 x i32], ptr %add.ptr.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx11.i, align 4
  %23 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %notified_count, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %notified_count, align 4
  %cmp5.not = icmp eq i32 %inc, %and
  br i1 %cmp5.not, label %do.body6, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !425
  tail call void @arm_heavy_mb() #19
  %25 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ptr_mask, align 32
  %and11 = and i32 %26, %and
  %27 = tail call i32 @llvm.bswap.i32(i32 %and11)
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %28 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel.i, align 4
  %vi_stride.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %vi_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vi_stride.i.i, align 128
  %mul.i.i = mul i32 %31, %29
  %add.i.i = add i32 %mul.i.i, 2096
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %27) #19, !srcloc !419
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_rx_defer_refill(ptr nocapture noundef readonly %rx_queue) #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rx_queue, i32 -512
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #19
  %channel3 = getelementptr i8, ptr %rx_queue, i32 -508
  %0 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel3, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %add.ptr9 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %4 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33554432, ptr %add.ptr9, align 4
  %event.sroa.5.0.add.ptr9.sroa_idx = getelementptr inbounds i8, ptr %inbuf, i32 8
  %5 = ptrtoint ptr %event.sroa.5.0.add.ptr9.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 112, ptr %event.sroa.5.0.add.ptr9.sroa_idx, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %call12 = call i32 @efx_mcdi_rpc_async(ptr noundef %7, i32 noundef 134, ptr noundef nonnull %inbuf, i32 noundef 12, i32 noundef 0, ptr noundef nonnull @efx_ef10_rx_defer_refill_complete, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efx_rx_packet(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_ev_probe(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_ev_init(ptr noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data2, align 8
  %datapath_caps2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %datapath_caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datapath_caps2, align 8
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datapath_caps, align 4
  %and3 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %call = tail call i32 @efx_mcdi_ev_init(ptr noundef %channel, i1 noundef zeroext %tobool4.not, i1 noundef zeroext %tobool) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_ev_fini(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_ev_remove(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_ev_process(ptr noundef %channel, i32 noundef %quota) #0 align 64 {
entry:
  %event = alloca %union.efx_qword, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %quota)
  %cmp = icmp slt i32 %quota, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_read_ptr, align 4
  %eventq.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %eventq_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %arrayidx2.i = getelementptr inbounds [2 x %union.efx_dword], ptr %event, i32 0, i32 1
  %4 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eventq.i, align 4
  %6 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eventq_mask.i, align 8
  %and.i81 = and i32 %7, %3
  %add.ptr.i82 = getelementptr %union.efx_qword, ptr %5, i32 %and.i81
  %8 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i82, align 8
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %9)
  %cmp.i83 = icmp ugt i64 %9, -4294967297
  %11 = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4.i84 = icmp eq i32 %11, -1
  %tobool.not85 = or i1 %cmp.i83, %cmp4.i84
  br i1 %tobool.not85, label %if.end.out_crit_edge, label %do.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.body.lr.ph:                                    ; preds = %if.end
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %event_test_cpu.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 13
  %channel4.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 1
  %tx_queue17.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %removed_count.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 9
  %scatter_n.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 10
  %scatter_len.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 11
  %n_rx_merge_events.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 36
  %n_rx_merge_packets.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 37
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  %irq_mod_score.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 15
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %do.body.lr.ph
  %add.ptr.i88 = phi ptr [ %add.ptr.i82, %do.body.lr.ph ], [ %add.ptr.i, %sw.epilog.do.body_crit_edge ]
  %spent.087 = phi i32 [ 0, %do.body.lr.ph ], [ %spent.1, %sw.epilog.do.body_crit_edge ]
  %read_ptr.086 = phi i32 [ %3, %do.body.lr.ph ], [ %inc, %sw.epilog.do.body_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %add.ptr.i88, align 8
  %arrayidx5 = getelementptr [2 x i32], ptr %add.ptr.i88, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %arrayidx5, align 4
  %inc = add i32 %read_ptr.086, 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %shr = lshr i32 %16, 28
  %17 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %shr, label %do.body19 [
    i32 12, label %sw.bb
    i32 0, label %sw.bb7
    i32 2, label %sw.bb12
    i32 5, label %sw.bb13
    i32 7, label %sw.bb18
  ]

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  call void @efx_mcdi_process_event(ptr noundef %channel, ptr noundef nonnull %event) #19
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel, align 128
  %nic_data2.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 76
  %20 = ptrtoint ptr %nic_data2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nic_data2.i, align 8
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 24
  %22 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb7.efx_ef10_handle_rx_event.exit_crit_edge, !prof !414

sw.bb7.efx_ef10_handle_rx_event.exit_crit_edge:   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_handle_rx_event.exit

if.end.i:                                         ; preds = %sw.bb7
  %24 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %event, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25) #19
  %and.i57 = and i32 %26, 16383
  %shr.i = lshr i32 %16, 16
  %and7.i = and i32 %shr.i, 15
  %shr9.i = lshr i32 %26, 16
  %and11.i = and i32 %shr9.i, 31
  %shr13.i = lshr i32 %16, 10
  %and15.i = and i32 %shr13.i, 7
  %shr17.i = lshr i32 %16, 13
  %and19.i = and i32 %shr17.i, 3
  %27 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not.i = icmp eq i32 %27, 0
  %datapath_caps.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %21, i32 0, i32 17
  %28 = ptrtoint ptr %datapath_caps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %datapath_caps.i, align 4
  %and30.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not.inv.i = icmp slt i32 %29, 0
  %spec.select.i = select i1 %tobool26.not.inv.i, i32 %and30.i, i32 0
  %30 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not.i = icmp eq i32 %30, 0
  br i1 %tobool35.not.i, label %if.end.i.if.end66.i_crit_edge, label %do.end48.i

if.end.i.if.end66.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end66.i

do.end48.i:                                       ; preds = %if.end.i
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 83
  %31 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net_dev.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %do.end48.i.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

do.end48.i.netdev_name.exit.i_crit_edge:          ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = call ptr @strchr(ptr noundef %32, i32 noundef 37) #19
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %32, ptr @.str.135
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %do.end48.i.netdev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.135, %do.end48.i.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %reg_state.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 121
  %35 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load45.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i.i)
  %36 = icmp ult i8 %bf.load45.i.i, 6
  br i1 %36, label %switch.lookup, label %land.end.i.i

land.end.i.i:                                     ; preds = %netdev_name.exit.i
  %.b46.i.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i.i, label %land.end.i.i.netdev_reg_state.exit.i_crit_edge, label %if.then.i.i, !prof !414

land.end.i.i.netdev_reg_state.exit.i_crit_edge:   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_reg_state.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i.i = zext i8 %bf.load45.i.i to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.142, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %32, i32 noundef %bf.cast21.i.i) #19
  br label %netdev_reg_state.exit.i

switch.lookup:                                    ; preds = %netdev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %37 = sext i8 %bf.load45.i.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.efx_ef10_ev_process, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit.i

netdev_reg_state.exit.i:                          ; preds = %switch.lookup, %if.then.i.i, %land.end.i.i.netdev_reg_state.exit.i_crit_edge
  %retval.0.i363.i = phi ptr [ @.str.144, %if.then.i.i ], [ @.str.144, %land.end.i.i.netdev_reg_state.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #19
  %42 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43) #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2809, i32 noundef 9, ptr noundef nonnull @.str.146, ptr noundef %retval.0.i.i, ptr noundef nonnull %retval.0.i363.i, i32 noundef %41, i32 noundef %44) #19
  br label %if.end66.i

if.end66.i:                                       ; preds = %netdev_reg_state.exit.i, %if.end.i.if.end66.i_crit_edge
  %45 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %46)
  %cmp.not.i = icmp eq i32 %and11.i, %46
  br i1 %cmp.not.i, label %if.end66.i.if.end76.i_crit_edge, label %if.then75.i, !prof !414

if.end66.i.if.end76.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end76.i

if.then75.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @efx_ef10_handle_rx_wrong_queue(ptr noundef %rx_queue.i, i32 noundef %and11.i) #19
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then75.i, %if.end66.i.if.end76.i_crit_edge
  %47 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %removed_count.i, align 16
  %sub.i = sub i32 %shr.i, %48
  %and77.i = and i32 %sub.i, 15
  %49 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scatter_n.i, align 4
  %add.i = add i32 %50, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and77.i, i32 %add.i)
  %cmp78.not.i = icmp eq i32 %and77.i, %add.i
  br i1 %cmp78.not.i, label %if.else.i, label %if.then79.i

if.then79.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and77.i, i32 %50)
  %cmp83.i = icmp eq i32 %and77.i, %50
  br i1 %cmp83.i, label %if.then90.i, label %if.end129.i, !prof !413

if.then90.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %cmp92.i = icmp ne i32 %and77.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %cmp93.not.i = icmp eq i32 %and.i57, 0
  %or.cond.i = select i1 %cmp92.i, i1 %cmp93.not.i, i1 false
  br i1 %or.cond.i, label %if.then90.i.if.end128.i_crit_edge, label %do.end107.i

if.then90.i.if.end128.i_crit_edge:                ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end128.i

do.end107.i:                                      ; preds = %if.then90.i
  %net_dev108.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 83
  %51 = ptrtoint ptr %net_dev108.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net_dev108.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i364.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i364.i, label %do.end107.i.netdev_name.exit370.i_crit_edge, label %lor.lhs.false.i368.i

do.end107.i.netdev_name.exit370.i_crit_edge:      ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit370.i

lor.lhs.false.i368.i:                             ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i365.i = call ptr @strchr(ptr noundef %52, i32 noundef 37) #19
  %tobool2.not.i366.i = icmp eq ptr %call.i365.i, null
  %spec.select.i367.i = select i1 %tobool2.not.i366.i, ptr %52, ptr @.str.135
  br label %netdev_name.exit370.i

netdev_name.exit370.i:                            ; preds = %lor.lhs.false.i368.i, %do.end107.i.netdev_name.exit370.i_crit_edge
  %retval.0.i369.i = phi ptr [ @.str.135, %do.end107.i.netdev_name.exit370.i_crit_edge ], [ %spec.select.i367.i, %lor.lhs.false.i368.i ]
  %call111.i = call fastcc ptr @netdev_reg_state(ptr noundef %52) #19
  %55 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %scatter_n.i, align 4
  %57 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx2.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #19
  %60 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %event, align 8
  %62 = call i32 @llvm.bswap.i32(i32 %61) #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2829, i32 noundef 9, ptr noundef nonnull @.str.147, ptr noundef %retval.0.i369.i, ptr noundef nonnull %call111.i, i32 noundef %56, i32 noundef %59, i32 noundef %62) #19
  br label %if.end128.i

if.end128.i:                                      ; preds = %netdev_name.exit370.i, %if.then90.i.if.end128.i_crit_edge
  call fastcc void @efx_ef10_handle_rx_abort(ptr noundef %rx_queue.i) #19
  br label %efx_ef10_handle_rx_event.exit

if.end129.i:                                      ; preds = %if.then79.i
  %63 = ptrtoint ptr %nic_data2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nic_data2.i, align 8
  %datapath_caps130.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %64, i32 0, i32 17
  %65 = ptrtoint ptr %datapath_caps130.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %datapath_caps130.i, align 4
  %and131.i = and i32 %66, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp135.not.i = icmp ne i32 %50, 0
  %or.cond356.i = select i1 %tobool132.not.i, i1 true, i1 %cmp135.not.i
  %tobool24.not.not.i = xor i1 %tobool24.not.i, true
  %brmerge.i = select i1 %or.cond356.i, i1 true, i1 %tobool24.not.not.i
  br i1 %brmerge.i, label %if.then138.i, label %cleanup.i

if.then138.i:                                     ; preds = %if.end129.i
  %67 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_queue.i, align 128
  %msg_enable.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 22
  %69 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable.i.i, align 4
  %and2.i.i = and i32 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i371.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i371.i, label %if.then138.i.efx_ef10_handle_rx_bad_lbits.exit.i_crit_edge, label %if.then.i372.i

if.then138.i.efx_ef10_handle_rx_bad_lbits.exit.i_crit_edge: ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_handle_rx_bad_lbits.exit.i

if.then.i372.i:                                   ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #21
  %add142.i = add i32 %add.i, %48
  %and143.i = and i32 %add142.i, 15
  %sub.i.i = sub nsw i32 %and7.i, %and143.i
  %71 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ptr_mask.i.i, align 32
  %and.i.i = and i32 %72, %sub.i.i
  %net_dev.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 83
  %73 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net_dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %74, ptr noundef nonnull @.str.152, i32 noundef %and.i.i, i32 noundef %and7.i, i32 noundef %and143.i) #22
  br label %efx_ef10_handle_rx_bad_lbits.exit.i

efx_ef10_handle_rx_bad_lbits.exit.i:              ; preds = %if.then.i372.i, %if.then138.i.efx_ef10_handle_rx_bad_lbits.exit.i_crit_edge
  call void @efx_schedule_reset(ptr noundef %68, i32 noundef 7) #19
  br label %efx_ef10_handle_rx_event.exit

cleanup.i:                                        ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #21
  %75 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %scatter_n.i, align 4
  %76 = ptrtoint ptr %scatter_len.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %scatter_len.i, align 8
  %77 = ptrtoint ptr %n_rx_merge_events.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_rx_merge_events.i, align 4
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %n_rx_merge_events.i, align 4
  %79 = ptrtoint ptr %n_rx_merge_packets.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n_rx_merge_packets.i, align 32
  %add146.i = add i32 %80, %and77.i
  store i32 %add146.i, ptr %n_rx_merge_packets.i, align 32
  br label %do.body157.i

if.else.i:                                        ; preds = %if.end76.i
  %81 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and77.i, ptr %scatter_n.i, align 4
  %82 = ptrtoint ptr %scatter_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scatter_len.i, align 8
  %add152.i = add i32 %83, %and.i57
  store i32 %add152.i, ptr %scatter_len.i, align 8
  br i1 %tobool24.not.i, label %if.else.i.do.body157.i_crit_edge, label %if.else.i.efx_ef10_handle_rx_event.exit_crit_edge

if.else.i.efx_ef10_handle_rx_event.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_handle_rx_event.exit

if.else.i.do.body157.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body157.i

do.body157.i:                                     ; preds = %if.else.i.do.body157.i_crit_edge, %cleanup.i
  %n_packets.1.i = phi i32 [ %and77.i, %cleanup.i ], [ 1, %if.else.i.do.body157.i_crit_edge ]
  %flags.1.i = phi i16 [ 128, %cleanup.i ], [ 0, %if.else.i.do.body157.i_crit_edge ]
  %84 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %event, align 8
  %and164.i = and i64 %85, 30064771075
  %errors.sroa.0.0.extract.shift.i = lshr i64 %and164.i, 32
  %or168354.i = or i64 %errors.sroa.0.0.extract.shift.i, %and164.i
  %or168.i = trunc i64 %or168354.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or168.i)
  %cmp169.not.i = icmp eq i32 %or168.i, 0
  br i1 %cmp169.not.i, label %if.else185.i, label %if.then179.i, !prof !414

if.then179.i:                                     ; preds = %do.body157.i
  call void @__sanitizer_cov_trace_pc() #21
  %call180.i = call fastcc zeroext i16 @efx_ef10_handle_rx_event_errors(ptr noundef %channel, i32 noundef %n_packets.1.i, i32 noundef %spec.select.i, i32 noundef %and15.i, i32 noundef %and19.i, ptr noundef nonnull %event) #19
  %or183355.i = or i16 %call180.i, %flags.1.i
  br label %if.end239.i

if.else185.i:                                     ; preds = %do.body157.i
  %86 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %spec.select.i, label %do.end219.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.else185.i.sw.bb200.i_crit_edge
    i32 0, label %if.else185.i.sw.bb200.i_crit_edge97
  ]

if.else185.i.sw.bb200.i_crit_edge97:              ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb200.i

if.else185.i.sw.bb200.i_crit_edge:                ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb200.i

sw.bb.i:                                          ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #21
  %and19.off.i = add nsw i32 %and19.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and19.off.i)
  %switch.i = icmp ult i32 %and19.off.i, 2
  %spec.select359.v.i = select i1 %switch.i, i16 514, i16 2
  %spec.select359.i = or i16 %flags.1.i, %spec.select359.v.i
  br label %if.end239.i

sw.bb200.i:                                       ; preds = %if.else185.i.sw.bb200.i_crit_edge, %if.else185.i.sw.bb200.i_crit_edge97
  %and19.off360.i = add nsw i32 %and19.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and19.off360.i)
  %switch361.i = icmp ult i32 %and19.off360.i, 2
  %87 = or i16 %flags.1.i, 2
  %spec.select362.i = select i1 %switch361.i, i16 %87, i16 %flags.1.i
  br label %if.end239.i

do.end219.i:                                      ; preds = %if.else185.i
  %net_dev220.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 83
  %88 = ptrtoint ptr %net_dev220.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net_dev220.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i373.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i373.i, label %do.end219.i.netdev_name.exit379.i_crit_edge, label %lor.lhs.false.i377.i

do.end219.i.netdev_name.exit379.i_crit_edge:      ; preds = %do.end219.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit379.i

lor.lhs.false.i377.i:                             ; preds = %do.end219.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i374.i = call ptr @strchr(ptr noundef %89, i32 noundef 37) #19
  %tobool2.not.i375.i = icmp eq ptr %call.i374.i, null
  %spec.select.i376.i = select i1 %tobool2.not.i375.i, ptr %89, ptr @.str.135
  br label %netdev_name.exit379.i

netdev_name.exit379.i:                            ; preds = %lor.lhs.false.i377.i, %do.end219.i.netdev_name.exit379.i_crit_edge
  %retval.0.i378.i = phi ptr [ @.str.135, %do.end219.i.netdev_name.exit379.i_crit_edge ], [ %spec.select.i376.i, %lor.lhs.false.i377.i ]
  %reg_state.i380.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 121
  %92 = ptrtoint ptr %reg_state.i380.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load45.i381.i = load i8, ptr %reg_state.i380.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i381.i)
  %93 = icmp ult i8 %bf.load45.i381.i, 6
  br i1 %93, label %switch.lookup94, label %land.end.i388.i

land.end.i388.i:                                  ; preds = %netdev_name.exit379.i
  %.b46.i387.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i387.i, label %land.end.i388.i.netdev_reg_state.exit392.i_crit_edge, label %if.then.i390.i, !prof !414

land.end.i388.i.netdev_reg_state.exit392.i_crit_edge: ; preds = %land.end.i388.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_reg_state.exit392.i

if.then.i390.i:                                   ; preds = %land.end.i388.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i389.i = zext i8 %bf.load45.i381.i to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.142, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %89, i32 noundef %bf.cast21.i389.i) #19
  br label %netdev_reg_state.exit392.i

switch.lookup94:                                  ; preds = %netdev_name.exit379.i
  call void @__sanitizer_cov_trace_pc() #21
  %94 = sext i8 %bf.load45.i381.i to i32
  %switch.gep95 = getelementptr inbounds [6 x ptr], ptr @switch.table.efx_ef10_ev_process.192, i32 0, i32 %94
  %95 = ptrtoint ptr %switch.gep95 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load96 = load ptr, ptr %switch.gep95, align 4
  br label %netdev_reg_state.exit392.i

netdev_reg_state.exit392.i:                       ; preds = %switch.lookup94, %if.then.i390.i, %land.end.i388.i.netdev_reg_state.exit392.i_crit_edge
  %retval.0.i391.i = phi ptr [ @.str.144, %if.then.i390.i ], [ @.str.144, %land.end.i388.i.netdev_reg_state.exit392.i_crit_edge ], [ %switch.load96, %switch.lookup94 ]
  %96 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx2.i, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #19
  %99 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %event, align 8
  %101 = call i32 @llvm.bswap.i32(i32 %100) #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2894, i32 noundef 9, ptr noundef nonnull @.str.148, ptr noundef %retval.0.i378.i, ptr noundef nonnull %retval.0.i391.i, i32 noundef %98, i32 noundef %101) #19
  br label %if.end239.i

if.end239.i:                                      ; preds = %netdev_reg_state.exit392.i, %sw.bb200.i, %sw.bb.i, %if.then179.i
  %flags.3.i = phi i16 [ %or183355.i, %if.then179.i ], [ %flags.1.i, %netdev_reg_state.exit392.i ], [ %spec.select359.i, %sw.bb.i ], [ %spec.select362.i, %sw.bb200.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and19.i)
  %cmp240.i = icmp eq i32 %and19.i, 1
  %102 = or i16 %flags.3.i, 64
  %spec.select358.i = select i1 %cmp240.i, i16 %102, i16 %flags.3.i
  %mul.i = shl nuw nsw i32 %n_packets.1.i, 1
  %103 = ptrtoint ptr %irq_mod_score.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq_mod_score.i, align 8
  %add247.i = add i32 %104, %mul.i
  store i32 %add247.i, ptr %irq_mod_score.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_packets.1.i)
  %cmp248396.not.i = icmp eq i32 %n_packets.1.i, 0
  br i1 %cmp248396.not.i, label %if.end239.i.for.end.i_crit_edge, label %if.end239.i.for.body.i_crit_edge

if.end239.i.for.body.i_crit_edge:                 ; preds = %if.end239.i
  br label %for.body.i

if.end239.i.for.end.i_crit_edge:                  ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end239.i.for.body.i_crit_edge
  %i.0397.i = phi i32 [ %inc257.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end239.i.for.body.i_crit_edge ]
  %105 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %removed_count.i, align 16
  %107 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ptr_mask.i.i, align 32
  %and251.i = and i32 %108, %106
  %109 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %scatter_n.i, align 4
  %111 = ptrtoint ptr %scatter_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %scatter_len.i, align 8
  call void @efx_rx_packet(ptr noundef %rx_queue.i, i32 noundef %and251.i, i32 noundef %110, i32 noundef %112, i16 noundef zeroext %spec.select358.i) #19
  %113 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %scatter_n.i, align 4
  %115 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %removed_count.i, align 16
  %add256.i = add i32 %116, %114
  store i32 %add256.i, ptr %removed_count.i, align 16
  %inc257.i = add nuw nsw i32 %i.0397.i, 1
  %exitcond.not.i = icmp eq i32 %inc257.i, %n_packets.1.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end239.i.for.end.i_crit_edge
  %117 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %scatter_n.i, align 4
  %118 = ptrtoint ptr %scatter_len.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %scatter_len.i, align 8
  br label %efx_ef10_handle_rx_event.exit

efx_ef10_handle_rx_event.exit:                    ; preds = %for.end.i, %if.else.i.efx_ef10_handle_rx_event.exit_crit_edge, %efx_ef10_handle_rx_bad_lbits.exit.i, %if.end128.i, %sw.bb7.efx_ef10_handle_rx_event.exit_crit_edge
  %retval.1.i = phi i32 [ %n_packets.1.i, %for.end.i ], [ 0, %sw.bb7.efx_ef10_handle_rx_event.exit_crit_edge ], [ 0, %if.else.i.efx_ef10_handle_rx_event.exit_crit_edge ], [ 0, %if.end128.i ], [ 0, %efx_ef10_handle_rx_bad_lbits.exit.i ]
  %add = add i32 %retval.1.i, %spent.087
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %quota)
  %cmp9.not = icmp slt i32 %add, %quota
  br i1 %cmp9.not, label %efx_ef10_handle_rx_event.exit.sw.epilog_crit_edge, label %efx_ef10_handle_rx_event.exit.out_crit_edge

efx_ef10_handle_rx_event.exit.out_crit_edge:      ; preds = %efx_ef10_handle_rx_event.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

efx_ef10_handle_rx_event.exit.sw.epilog_crit_edge: ; preds = %efx_ef10_handle_rx_event.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.body
  %119 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %channel, align 128
  %reset_pending.i58 = getelementptr inbounds %struct.efx_nic, ptr %120, i32 0, i32 24
  %121 = ptrtoint ptr %reset_pending.i58 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %reset_pending.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i59 = icmp eq i32 %122, 0
  %123 = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool4.not.i = icmp eq i32 %123, 0
  %or.cond = select i1 %tobool.not.i59, i1 %tobool4.not.i, i1 false
  br i1 %or.cond, label %if.end12.i, label %sw.bb12.sw.epilog_crit_edge, !prof !426

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end12.i:                                       ; preds = %sw.bb12
  %124 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %event, align 8
  %126 = call i32 @llvm.bswap.i32(i32 %125) #19
  %shr14.i = lshr i32 %126, 16
  %rem.i = and i32 %shr14.i, 3
  %add.ptr.i61 = getelementptr %struct.efx_tx_queue, ptr %tx_queue17.i, i32 %rem.i
  %timestamping.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue17.i, i32 %rem.i, i32 15
  %127 = ptrtoint ptr %timestamping.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %timestamping.i, align 1, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool18.not.i = icmp eq i8 %128, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end24.i

if.then19.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  %and22.i = and i32 %126, 65535
  %ptr_mask.i62 = getelementptr %struct.efx_tx_queue, ptr %tx_queue17.i, i32 %rem.i, i32 11
  %129 = ptrtoint ptr %ptr_mask.i62 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ptr_mask.i62, align 4
  %and23.i = and i32 %and22.i, %130
  call void @efx_xmit_done(ptr noundef %add.ptr.i61, i32 noundef %and23.i) #19
  br label %sw.epilog

if.end24.i:                                       ; preds = %if.end12.i
  %shr26.i = lshr i32 %126, 24
  %and28.i = and i32 %shr26.i, 127
  %131 = zext i32 %and28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %and28.i, label %do.body34.i [
    i32 0, label %if.end24.i.sw.epilog_crit_edge
    i32 81, label %sw.bb.i63
    i32 82, label %sw.bb30.i
  ]

if.end24.i.sw.epilog_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i63:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %132 = and i32 %15, -65536
  %133 = call i32 @llvm.bswap.i32(i32 %132) #19
  %shl1.i.i = shl nuw i32 %133, 16
  %134 = and i32 %125, -65536
  %135 = call i32 @llvm.bswap.i32(i32 %134) #19
  %or6.i.i = or i32 %135, %shl1.i.i
  %completed_timestamp_minor.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue17.i, i32 %rem.i, i32 24
  %136 = ptrtoint ptr %completed_timestamp_minor.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or6.i.i, ptr %completed_timestamp_minor.i, align 8
  br label %sw.epilog

sw.bb30.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %137 = and i32 %15, -65536
  %138 = call i32 @llvm.bswap.i32(i32 %137) #19
  %shl1.i68.i = shl nuw i32 %138, 16
  %139 = and i32 %125, -65536
  %140 = call i32 @llvm.bswap.i32(i32 %139) #19
  %or6.i69.i = or i32 %140, %shl1.i68.i
  %completed_timestamp_major.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue17.i, i32 %rem.i, i32 23
  %141 = ptrtoint ptr %completed_timestamp_major.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or6.i69.i, ptr %completed_timestamp_major.i, align 4
  call void @efx_xmit_done_single(ptr noundef %add.ptr.i61) #19
  br label %sw.epilog

do.body34.i:                                      ; preds = %if.end24.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %120, i32 0, i32 22
  %142 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %msg_enable.i, align 4
  %and35.i = and i32 %143, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.sw.epilog_crit_edge, label %if.then37.i

do.body34.i.sw.epilog_crit_edge:                  ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then37.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i64 = getelementptr inbounds %struct.efx_nic, ptr %120, i32 0, i32 83
  %144 = ptrtoint ptr %net_dev.i64 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %net_dev.i64, align 4
  %146 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %channel4.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %145, ptr noundef nonnull @.str.159, i32 noundef %147, i32 noundef %and28.i, i32 noundef %16, i32 noundef %126) #22
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.body
  %148 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %channel, align 128
  %shr.i67 = lshr i32 %16, 24
  %and.i68 = and i32 %shr.i67, 15
  %and.off.i = add nsw i32 %and.i68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.off.i)
  %switch.i69 = icmp ult i32 %and.off.i, 3
  br i1 %switch.i69, label %sw.bb13.efx_ef10_handle_driver_event.exit_crit_edge, label %do.body.i

sw.bb13.efx_ef10_handle_driver_event.exit_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_handle_driver_event.exit

do.body.i:                                        ; preds = %sw.bb13
  %msg_enable.i70 = getelementptr inbounds %struct.efx_nic, ptr %149, i32 0, i32 22
  %150 = ptrtoint ptr %msg_enable.i70 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %msg_enable.i70, align 4
  %and2.i = and i32 %151, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i71 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i71, label %do.body.i.efx_ef10_handle_driver_event.exit_crit_edge, label %if.then.i

do.body.i.efx_ef10_handle_driver_event.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_handle_driver_event.exit

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i72 = getelementptr inbounds %struct.efx_nic, ptr %149, i32 0, i32 83
  %152 = ptrtoint ptr %net_dev.i72 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %net_dev.i72, align 4
  %154 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %channel4.i, align 4
  %156 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %event, align 8
  %158 = call i32 @llvm.bswap.i32(i32 %157) #19
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %153, ptr noundef nonnull @.str.160, i32 noundef %155, i32 noundef %and.i68, i32 noundef %16, i32 noundef %158) #22
  br label %efx_ef10_handle_driver_event.exit

efx_ef10_handle_driver_event.exit:                ; preds = %if.then.i, %do.body.i.efx_ef10_handle_driver_event.exit_crit_edge, %sw.bb13.efx_ef10_handle_driver_event.exit_crit_edge
  %inc14 = add i32 %spent.087, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14, i32 %quota)
  %cmp15 = icmp eq i32 %inc14, %quota
  br i1 %cmp15, label %efx_ef10_handle_driver_event.exit.out_crit_edge, label %efx_ef10_handle_driver_event.exit.sw.epilog_crit_edge

efx_ef10_handle_driver_event.exit.sw.epilog_crit_edge: ; preds = %efx_ef10_handle_driver_event.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

efx_ef10_handle_driver_event.exit.out_crit_edge:  ; preds = %efx_ef10_handle_driver_event.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

sw.bb18:                                          ; preds = %do.body
  %159 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %channel, align 128
  %161 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %event, align 8
  %163 = call i32 @llvm.bswap.i32(i32 %162) #19
  %164 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %163, label %do.body.i77 [
    i32 1, label %sw.bb.i74
    i32 2, label %sw.bb2.i
  ]

sw.bb.i74:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #21
  %165 = call i32 @llvm.read_register.i32(metadata !402) #19
  %and.i.i73 = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i73 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cpu.i, align 4
  %169 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %event_test_cpu.i, align 32
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #21
  call void @efx_fast_push_rx_descriptors(ptr noundef %rx_queue.i, i1 noundef zeroext true) #19
  br label %sw.epilog

do.body.i77:                                      ; preds = %sw.bb18
  %msg_enable.i75 = getelementptr inbounds %struct.efx_nic, ptr %160, i32 0, i32 22
  %170 = ptrtoint ptr %msg_enable.i75 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %msg_enable.i75, align 4
  %and3.i = and i32 %171, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i76 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i76, label %do.body.i77.sw.epilog_crit_edge, label %if.then.i80

do.body.i77.sw.epilog_crit_edge:                  ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then.i80:                                      ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i78 = getelementptr inbounds %struct.efx_nic, ptr %160, i32 0, i32 83
  %172 = ptrtoint ptr %net_dev.i78 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %net_dev.i78, align 4
  %174 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %channel4.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %173, ptr noundef nonnull @.str.161, i32 noundef %175, i32 noundef %163, i32 noundef %16, i32 noundef %163) #22
  br label %sw.epilog

do.body19:                                        ; preds = %do.body
  %176 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %177, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.sw.epilog_crit_edge, label %if.then22

do.body19.sw.epilog_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #21
  %178 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %net_dev, align 4
  %180 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %channel4.i, align 4
  %182 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %event, align 8
  %184 = call i32 @llvm.bswap.i32(i32 %183)
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %179, ptr noundef nonnull @.str.145, i32 noundef %181, i32 noundef %shr, i32 noundef %16, i32 noundef %184) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %do.body19.sw.epilog_crit_edge, %if.then.i80, %do.body.i77.sw.epilog_crit_edge, %sw.bb2.i, %sw.bb.i74, %efx_ef10_handle_driver_event.exit.sw.epilog_crit_edge, %if.then37.i, %do.body34.i.sw.epilog_crit_edge, %sw.bb30.i, %sw.bb.i63, %if.end24.i.sw.epilog_crit_edge, %if.then19.i, %sw.bb12.sw.epilog_crit_edge, %efx_ef10_handle_rx_event.exit.sw.epilog_crit_edge, %sw.bb
  %spent.1 = phi i32 [ %spent.087, %if.then22 ], [ %spent.087, %do.body19.sw.epilog_crit_edge ], [ %inc14, %efx_ef10_handle_driver_event.exit.sw.epilog_crit_edge ], [ %add, %efx_ef10_handle_rx_event.exit.sw.epilog_crit_edge ], [ %spent.087, %sw.bb ], [ %spent.087, %sw.bb12.sw.epilog_crit_edge ], [ %spent.087, %if.then19.i ], [ %spent.087, %if.end24.i.sw.epilog_crit_edge ], [ %spent.087, %sw.bb.i63 ], [ %spent.087, %sw.bb30.i ], [ %spent.087, %do.body34.i.sw.epilog_crit_edge ], [ %spent.087, %if.then37.i ], [ %spent.087, %sw.bb.i74 ], [ %spent.087, %sw.bb2.i ], [ %spent.087, %do.body.i77.sw.epilog_crit_edge ], [ %spent.087, %if.then.i80 ]
  %185 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %eventq.i, align 4
  %187 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %eventq_mask.i, align 8
  %and.i = and i32 %188, %inc
  %add.ptr.i = getelementptr %union.efx_qword, ptr %186, i32 %and.i
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %add.ptr.i, align 8
  %191 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %190)
  %cmp.i = icmp ugt i64 %190, -4294967297
  %192 = trunc i64 %190 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %192)
  %cmp4.i = icmp eq i32 %192, -1
  %tobool.not = or i1 %cmp.i, %cmp4.i
  br i1 %tobool.not, label %sw.epilog.out_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

out:                                              ; preds = %sw.epilog.out_crit_edge, %efx_ef10_handle_driver_event.exit.out_crit_edge, %efx_ef10_handle_rx_event.exit.out_crit_edge, %if.end.out_crit_edge
  %read_ptr.1 = phi i32 [ %3, %if.end.out_crit_edge ], [ %inc, %efx_ef10_handle_rx_event.exit.out_crit_edge ], [ %inc, %sw.epilog.out_crit_edge ], [ %inc, %efx_ef10_handle_driver_event.exit.out_crit_edge ]
  %spent.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %quota, %efx_ef10_handle_driver_event.exit.out_crit_edge ], [ %spent.1, %sw.epilog.out_crit_edge ], [ %quota, %efx_ef10_handle_rx_event.exit.out_crit_edge ]
  %193 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %read_ptr.1, ptr %eventq_read_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spent.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_ev_read_ack(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %nic_data = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data, align 8
  %workaround_35388 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %workaround_35388 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %workaround_35388, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %eventq_read_ptr23 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %6 = ptrtoint ptr %eventq_read_ptr23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eventq_read_ptr23, align 4
  %eventq_mask24 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %8 = ptrtoint ptr %eventq_mask24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eventq_mask24, align 8
  %and25 = and i32 %9, %7
  br i1 %tobool.not, label %do.body22, label %do.body5

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %shr = lshr i32 %and25, 8
  %10 = or i32 %shr, 2048
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %channel10 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %12 = ptrtoint ptr %channel10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel10, align 4
  %vi_stride.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %vi_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vi_stride.i.i, align 128
  %mul.i.i = mul i32 %15, %13
  %add.i.i = add i32 %mul.i.i, 2584
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #19, !srcloc !419
  %18 = ptrtoint ptr %eventq_read_ptr23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eventq_read_ptr23, align 4
  %and13 = and i32 %19, 255
  %20 = or i32 %and13, 2304
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %channel10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel10, align 4
  %24 = ptrtoint ptr %vi_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vi_stride.i.i, align 128
  %mul.i.i46 = mul i32 %25, %23
  %add.i.i47 = add i32 %mul.i.i46, 2584
  %26 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %27, i32 %add.i.i47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i49, i32 %21) #19, !srcloc !419
  br label %if.end

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %28 = tail call i32 @llvm.bswap.i32(i32 %and25)
  %channel33 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %29 = ptrtoint ptr %channel33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel33, align 4
  %vi_stride.i.i50 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 14
  %31 = ptrtoint ptr %vi_stride.i.i50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vi_stride.i.i50, align 128
  %mul.i.i51 = mul i32 %32, %30
  %add.i.i52 = add i32 %mul.i.i51, 1024
  %membase.i.i.i53 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %33 = ptrtoint ptr %membase.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i.i53, align 4
  %add.ptr.i.i.i54 = getelementptr i8, ptr %34, i32 %add.i.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i54, i32 %28) #19, !srcloc !419
  br label %if.end

if.end:                                           ; preds = %do.body22, %do.body5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_ev_test_generate(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #19
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
  store i32 112, ptr %event.sroa.5.0.add.ptr10.sroa_idx, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %1, i32 noundef 134, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end20:                                         ; preds = %entry
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3190, i32 noundef 9, ptr noundef null) #19
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.end20.cleanup_crit_edge, label %if.then35

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then35:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.162, ptr noundef nonnull @__func__.efx_ef10_ev_test_generate, i32 noundef %call) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_filter_table_probe(ptr noundef %efx) #0 align 64 {
entry:
  %enabled.i = alloca i32, align 4
  %implemented.i = alloca i32, align 4
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled.i) #19
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enabled.i, align 4, !annotation !412
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %implemented.i) #19
  %3 = ptrtoint ptr %implemented.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %implemented.i, align 4, !annotation !412
  %call.i = call i32 @efx_mcdi_get_workarounds(ptr noundef %efx, ptr noundef nonnull %implemented.i, ptr noundef nonnull %enabled.i) #19
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %call.i, label %efx_ef10_probe_multicast_chaining.exit.thread34 [
    i32 -38, label %if.then.i
    i32 0, label %if.end3.i
  ]

efx_ef10_probe_multicast_chaining.exit.thread34:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #19
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %workaround_26807.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %workaround_26807.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %workaround_26807.i, align 1
  br label %efx_ef10_probe_multicast_chaining.exit.thread

if.end3.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %implemented.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %implemented.i, align 4
  %and.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp ne i32 %and.i, 0
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled.i, align 4
  %and5.i = and i32 %9, 64
  %workaround_268078.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 14
  %and5.lobit.i = lshr exact i32 %and5.i, 6
  %10 = trunc i32 %and5.lobit.i to i8
  %11 = ptrtoint ptr %workaround_268078.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %workaround_268078.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 %tobool6.not.i, i1 false
  br i1 %or.cond.i, label %if.then13.i, label %if.end3.i.efx_ef10_probe_multicast_chaining.exit.thread_crit_edge

if.end3.i.efx_ef10_probe_multicast_chaining.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_probe_multicast_chaining.exit.thread

if.then13.i:                                      ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #19
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %flags.i, align 4, !annotation !412
  %call14.i = call i32 @efx_mcdi_set_workaround(ptr noundef %efx, i32 noundef 6, i1 noundef zeroext true, ptr noundef nonnull %flags.i) #19
  %13 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %call14.i, label %efx_ef10_probe_multicast_chaining.exit.thread40 [
    i32 0, label %if.then16.i
    i32 -1, label %efx_ef10_probe_multicast_chaining.exit.thread37
  ]

if.then16.i:                                      ; preds = %if.then13.i
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and17.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.efx_ef10_probe_multicast_chaining.exit.thread44_crit_edge, label %do.body.i

if.then16.i.efx_ef10_probe_multicast_chaining.exit.thread44_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_probe_multicast_chaining.exit.thread44

do.body.i:                                        ; preds = %if.then16.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and20.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then22.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.163) #22
  br label %do.end.i

do.end.i:                                         ; preds = %if.then22.i, %do.body.i.do.end.i_crit_edge
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %20 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 16
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #19, !srcloc !422
  %23 = call i32 @llvm.bswap.i32(i32 %22) #19
  %shr.mask.i.i = and i32 %23, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.mask.i.i, -1341718528
  br i1 %cmp.i.i, label %if.then26.i, label %efx_ef10_probe_multicast_chaining.exit

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %conv.i = trunc i32 %23 to i16
  %warm_boot_count.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %warm_boot_count.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %warm_boot_count.i, align 4
  br label %efx_ef10_probe_multicast_chaining.exit.thread44

efx_ef10_probe_multicast_chaining.exit.thread40:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #19
  br label %cleanup

efx_ef10_probe_multicast_chaining.exit.thread:    ; preds = %if.end3.i.efx_ef10_probe_multicast_chaining.exit.thread_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #19
  br label %if.end

efx_ef10_probe_multicast_chaining.exit.thread37:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #19
  br label %if.end

efx_ef10_probe_multicast_chaining.exit.thread44:  ; preds = %if.then26.i, %if.then16.i.efx_ef10_probe_multicast_chaining.exit.thread44_crit_edge
  %25 = ptrtoint ptr %workaround_268078.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %workaround_268078.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #19
  br label %if.end

efx_ef10_probe_multicast_chaining.exit:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %workaround_268078.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %workaround_268078.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled.i) #19
  br label %cleanup

if.end:                                           ; preds = %efx_ef10_probe_multicast_chaining.exit.thread44, %efx_ef10_probe_multicast_chaining.exit.thread37, %efx_ef10_probe_multicast_chaining.exit.thread
  %workaround_26807 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %workaround_26807 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %workaround_26807, align 1, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2 = icmp ne i8 %28, 0
  %call3 = call i32 @efx_mcdi_filter_table_probe(ptr noundef %efx, i1 noundef zeroext %tobool2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %vlan_list = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 27
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end6
  %vlan.0.in = phi ptr [ %vlan_list, %if.end6 ], [ %vlan.0, %for.body.for.cond_crit_edge ]
  %29 = ptrtoint ptr %vlan.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %vlan.0 = load ptr, ptr %vlan.0.in, align 4
  %cmp.not = icmp eq ptr %vlan.0, %vlan_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %vid = getelementptr inbounds %struct.efx_mcdi_filter_vlan, ptr %vlan.0, i32 0, i32 1
  %30 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid, align 4
  %call8 = call i32 @efx_mcdi_filter_add_vlan(ptr noundef %efx, i16 noundef zeroext %31) #19
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.body.for.cond_crit_edge, label %fail_add_vlan

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

fail_add_vlan:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void @efx_mcdi_filter_table_remove(ptr noundef %efx) #19
  br label %cleanup

cleanup:                                          ; preds = %fail_add_vlan, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %efx_ef10_probe_multicast_chaining.exit, %efx_ef10_probe_multicast_chaining.exit.thread40, %efx_ef10_probe_multicast_chaining.exit.thread34
  %retval.0 = phi i32 [ %call8, %fail_add_vlan ], [ -5, %efx_ef10_probe_multicast_chaining.exit ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i, %efx_ef10_probe_multicast_chaining.exit.thread34 ], [ %call14.i, %efx_ef10_probe_multicast_chaining.exit.thread40 ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_table_restore(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_table_remove(ptr noundef) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_mcdi_update_rx_scatter(ptr nocapture noundef %efx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_port_dummy_op_int(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ef10_ptp_write_host_time_vf(ptr nocapture noundef %efx, i32 noundef %host_time) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_ptp_set_ts_config_vf(ptr nocapture noundef readnone %efx, ptr nocapture noundef readnone %init) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_vlan_rx_add_vid(ptr noundef %efx, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %proto)
  %cmp.not = icmp eq i16 %proto, -32512
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call fastcc i32 @efx_ef10_add_vlan(ptr noundef %efx, i16 noundef zeroext %vid)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_vlan_rx_kill_vid(ptr noundef %efx, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %proto)
  %cmp.not = icmp eq i16 %proto, -32512
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp.i = icmp eq i16 %vid, 0
  br i1 %cmp.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end.i:                                         ; preds = %if.end
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1.i, align 8
  %vlan_lock.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vlan_lock.i, i32 noundef 0) #19
  %2 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1.i, align 8
  %vlan_lock.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %vlan_lock.i.i) #19
  br i1 %call.i.i, label %if.end.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !414

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 402, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.i.if.end.i.i_crit_edge
  %vlan_list.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 27
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %vlan.0.in.i.i = phi ptr [ %vlan_list.i.i, %if.end.i.i ], [ %vlan.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %vlan.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %vlan.0.i.i = load ptr, ptr %vlan.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vlan.0.i.i, %vlan_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.do.body.i_crit_edge, label %for.body.i.i

for.cond.i.i.do.body.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %vid25.i.i = getelementptr inbounds %struct.efx_ef10_vlan, ptr %vlan.0.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %vid25.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid25.i.i, align 4
  %cmp27.i.i = icmp eq i16 %6, %vid
  br i1 %cmp27.i.i, label %efx_ef10_find_vlan.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i.i

efx_ef10_find_vlan.exit.i:                        ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %vlan.0.i.i, null
  br i1 %tobool.not.i, label %efx_ef10_find_vlan.exit.i.do.body.i_crit_edge, label %if.else.i

efx_ef10_find_vlan.exit.i.do.body.i_crit_edge:    ; preds = %efx_ef10_find_vlan.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

do.body.i:                                        ; preds = %efx_ef10_find_vlan.exit.i.do.body.i_crit_edge, %for.cond.i.i.do.body.i_crit_edge
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.if.end8.i_crit_edge, label %if.then5.i

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.164, i32 noundef %conv.i) #22
  br label %if.end8.i

if.else.i:                                        ; preds = %efx_ef10_find_vlan.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @efx_ef10_del_vlan_internal(ptr noundef %efx, ptr noundef nonnull %vlan.0.i.i) #19
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i, %do.body.i.if.end8.i_crit_edge
  %rc.0.i = phi i32 [ 0, %if.else.i ], [ -2, %if.then5.i ], [ -2, %do.body.i.if.end8.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vlan_lock.i) #19
  br label %return

return:                                           ; preds = %if.end8.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %rc.0.i, %if.end8.i ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_get_phys_port_id(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %ppid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %port_id = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_id, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 23, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vswitching_probe_vf(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vswitching_restore_vf(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ef10_vswitching_remove_vf(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_get_mac_address_vf(ptr noundef %efx, ptr nocapture noundef writeonly %mac_address) #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [63 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #19
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf) #19
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %2 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 170, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 252, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ult i32 %4, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp8.not = icmp eq i32 %6, 16777216
  br i1 %cmp8.not, label %if.end4.if.end26_crit_edge, label %do.end20, !prof !414

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

do.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 365, i32 noundef 9, ptr noundef null) #19
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.end4.if.end26_crit_edge
  %add.ptr34 = getelementptr inbounds i8, ptr %outbuf, i32 4
  %7 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr34, align 4
  %9 = ptrtoint ptr %mac_address to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mac_address, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %outbuf, i32 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac_address, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_set_mac_address(ptr noundef %efx) #0 align 64 {
entry:
  %inbuf.i112.i = alloca [8 x %union.efx_dword], align 4
  %inbuf.i107.i = alloca [3 x %union.efx_dword], align 4
  %inbuf.i100.i = alloca [3 x %union.efx_dword], align 4
  %inbuf.i98.i = alloca [3 x %union.efx_dword], align 4
  %inbuf.i.i = alloca [1 x %union.efx_dword], align 4
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #19
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %port_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 80
  %2 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_enabled, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #19
  tail call void @netif_tx_lock(ptr noundef %5) #19
  tail call void @netif_device_detach(ptr noundef %5) #19
  tail call void @netif_tx_unlock(ptr noundef %5) #19
  tail call fastcc void @local_bh_enable() #19
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %call = tail call i32 @efx_net_stop(ptr noundef %7) #19
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #19
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #19
  tail call void @efx_mcdi_filter_table_remove(ptr noundef %efx) #19
  %add.ptr = getelementptr inbounds i8, ptr %inbuf, i32 4
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %inbuf, i32 8
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i, align 4
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %18 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vport_id, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %inbuf, align 4
  %call6 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 93, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  %call7 = call i32 @efx_ef10_filter_table_probe(ptr noundef %efx)
  call void @up_write(ptr noundef %filter_sem) #19
  call void @mutex_unlock(ptr noundef %mac_lock) #19
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %22 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev.i, align 4
  %call12 = call i32 @efx_net_open(ptr noundef %23) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 2
  br i1 %cmp.not.i, label %if.end.efx_device_attach_if_not_resetting.exit_crit_edge, label %land.lhs.true.i

if.end.efx_device_attach_if_not_resetting.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_device_attach_if_not_resetting.exit

land.lhs.true.i:                                  ; preds = %if.end
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %26 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.efx_device_attach_if_not_resetting.exit_crit_edge

land.lhs.true.i.efx_device_attach_if_not_resetting.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_device_attach_if_not_resetting.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev.i, align 4
  call void @netif_device_attach(ptr noundef %29) #19
  br label %efx_device_attach_if_not_resetting.exit

efx_device_attach_if_not_resetting.exit:          ; preds = %if.then.i, %land.lhs.true.i.efx_device_attach_if_not_resetting.exit_crit_edge, %if.end.efx_device_attach_if_not_resetting.exit_crit_edge
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %30 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev, align 4
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 49
  %32 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %32, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %33 = and i40 %bf.load, 65536
  %tobool13.not = icmp eq i40 %33, 0
  br i1 %tobool13.not, label %efx_device_attach_if_not_resetting.exit.if.else54_crit_edge, label %land.lhs.true

efx_device_attach_if_not_resetting.exit.if.else54_crit_edge: ; preds = %efx_device_attach_if_not_resetting.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else54

land.lhs.true:                                    ; preds = %efx_device_attach_if_not_resetting.exit
  %34 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 66
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tobool15.not = icmp eq ptr %36, null
  br i1 %tobool15.not, label %land.lhs.true.if.else54_crit_edge, label %if.then16

land.lhs.true.if.else54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else54

if.then16:                                        ; preds = %land.lhs.true
  %37 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %call6, label %if.then16.cleanup79_crit_edge [
    i32 -1, label %if.then20
    i32 0, label %if.then26
  ]

if.then16.cleanup79_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #21
  %nic_data17 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %38 = ptrtoint ptr %nic_data17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nic_data17, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %vf_index = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %39, i32 0, i32 24
  %42 = ptrtoint ptr %vf_index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vf_index, align 4
  %44 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev.i, align 4
  %dev_addr23 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr23, align 64
  %call24 = call i32 @efx_ef10_sriov_set_vf_mac(ptr noundef %41, i32 noundef %43, ptr noundef %47) #19
  br label %cleanup79

if.then26:                                        ; preds = %if.then16
  %driver_data.i.i123 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 8
  %48 = ptrtoint ptr %driver_data.i.i123 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i123, align 4
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %49, i32 0, i32 120
  %50 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp31130.not = icmp eq i32 %51, 0
  br i1 %cmp31130.not, label %if.then26.cleanup79_crit_edge, label %for.body.lr.ph

if.then26.cleanup79_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

for.body.lr.ph:                                   ; preds = %if.then26
  %nic_data30 = getelementptr inbounds %struct.efx_nic, ptr %49, i32 0, i32 76
  %52 = ptrtoint ptr %nic_data30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nic_data30, align 8
  %vf33 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %vf33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vf33, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %add.ptr34 = getelementptr %struct.ef10_vf, ptr %55, i32 %i.0131
  %56 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr34, align 4
  %cmp36 = icmp eq ptr %57, %efx
  br i1 %cmp36, label %cleanup50, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, %51
  br i1 %exitcond.not, label %for.inc.critedge.cleanup79_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.critedge.cleanup79_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

cleanup50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %mac = getelementptr %struct.ef10_vf, ptr %55, i32 %i.0131, i32 4
  %58 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev.i, align 4
  %dev_addr41 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr41, align 64
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %64 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %mac, align 4
  %add.ptr.i124 = getelementptr i8, ptr %61, i32 4
  %65 = ptrtoint ptr %add.ptr.i124 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i124, align 2
  %add.ptr1.i125 = getelementptr i8, ptr %mac, i32 4
  %67 = ptrtoint ptr %add.ptr1.i125 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %add.ptr1.i125, align 2
  br label %cleanup79

if.else54:                                        ; preds = %land.lhs.true.if.else54_crit_edge, %efx_device_attach_if_not_resetting.exit.if.else54_crit_edge
  %68 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %call6, label %if.else54.if.then74_crit_edge [
    i32 -1, label %do.body58
    i32 -38, label %land.lhs.true68
    i32 0, label %if.else54.cleanup79_crit_edge
  ]

if.else54.cleanup79_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

if.else54.if.then74_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then74

do.body58:                                        ; preds = %if.else54
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %69 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable, align 4
  %and = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %do.body58.cleanup79_crit_edge, label %if.then60

do.body58.cleanup79_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

if.then60:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #21
  %71 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.165) #22
  br label %cleanup79

land.lhs.true68:                                  ; preds = %if.else54
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %73 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %type.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i.not = icmp eq i8 %76, 0
  br i1 %tobool.i.not, label %if.then70, label %land.lhs.true68.if.then74_crit_edge

land.lhs.true68.if.then74_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then74

if.then70:                                        ; preds = %land.lhs.true68
  %nic_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %77 = ptrtoint ptr %nic_data1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nic_data1.i, align 8
  %vport_mac.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %78, i32 0, i32 26
  %79 = ptrtoint ptr %vport_mac.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vport_mac.i, align 4
  %add.ptr.i.i = getelementptr %struct.efx_ef10_nic_data, ptr %78, i32 0, i32 26, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %82 to i32
  %or.i.i = or i32 %80, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then70.cleanup79_crit_edge, label %if.end.i

if.then70.cleanup79_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

if.end.i:                                         ; preds = %if.then70
  %83 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_dev.i, align 4
  call fastcc void @local_bh_disable() #19
  call void @netif_tx_lock(ptr noundef %84) #19
  call void @netif_device_detach(ptr noundef %84) #19
  call void @netif_tx_unlock(ptr noundef %84) #19
  call fastcc void @local_bh_enable() #19
  %85 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %net_dev.i, align 4
  %call2.i = call i32 @efx_net_stop(ptr noundef %86) #19
  call void @down_write(ptr noundef %filter_sem) #19
  call void @efx_mcdi_filter_table_remove(ptr noundef %efx) #19
  call void @up_write(ptr noundef %filter_sem) #19
  %87 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i) #19
  %89 = call i32 @llvm.bswap.i32(i32 %88) #19
  %90 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %inbuf.i.i, align 4
  %call.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 153, ptr noundef nonnull %inbuf.i.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i126 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i126, label %if.end6.i, label %if.end.i.restore_filters.i_crit_edge

if.end.i.restore_filters.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %restore_filters.i

if.end6.i:                                        ; preds = %if.end.i
  %91 = ptrtoint ptr %vport_mac.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vport_mac.i, align 4
  %93 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %add.ptr.i.i, align 2
  %95 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i98.i) #19
  %97 = getelementptr inbounds i8, ptr %inbuf.i98.i, i32 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %97, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %96) #19
  %100 = ptrtoint ptr %inbuf.i98.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %inbuf.i98.i, align 4
  %add.ptr3.i.i = getelementptr inbounds i8, ptr %inbuf.i98.i, i32 4
  %101 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %92, ptr %add.ptr3.i.i, align 4
  %102 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i, align 2
  %104 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %97, align 4
  %call.i99.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 169, ptr noundef nonnull %inbuf.i98.i, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i98.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool14.not.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end6.i.restore_vadaptor.i_crit_edge

if.end6.i.restore_vadaptor.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %restore_vadaptor.i

if.end16.i:                                       ; preds = %if.end6.i
  %105 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vport_id, align 8
  %107 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 86
  %109 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_addr.i, align 64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i100.i) #19
  %111 = getelementptr inbounds i8, ptr %inbuf.i100.i, i32 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %111, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %106) #19
  %114 = ptrtoint ptr %inbuf.i100.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %inbuf.i100.i, align 4
  %add.ptr3.i101.i = getelementptr inbounds i8, ptr %inbuf.i100.i, i32 4
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %110, align 4
  %117 = ptrtoint ptr %add.ptr3.i101.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %add.ptr3.i101.i, align 4
  %add.ptr.i.i102.i = getelementptr i8, ptr %110, i32 4
  %118 = ptrtoint ptr %add.ptr.i.i102.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i.i102.i, align 2
  %120 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %111, align 4
  %call.i104.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 168, ptr noundef nonnull %inbuf.i100.i, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i100.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %tobool20.not.i = icmp eq i32 %call.i104.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  %121 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %net_dev.i, align 4
  %dev_addr25.i = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 86
  %123 = ptrtoint ptr %dev_addr25.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_addr25.i, align 64
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %127 = ptrtoint ptr %vport_mac.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %vport_mac.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %124, i32 4
  %128 = ptrtoint ptr %add.ptr.i105.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i105.i, align 2
  %130 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %add.ptr.i.i, align 2
  br label %restore_vadaptor.i

if.else.i:                                        ; preds = %if.end16.i
  %131 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i107.i) #19
  %133 = getelementptr inbounds i8, ptr %inbuf.i107.i, i32 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %133, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %132) #19
  %136 = ptrtoint ptr %inbuf.i107.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %inbuf.i107.i, align 4
  %add.ptr3.i108.i = getelementptr inbounds i8, ptr %inbuf.i107.i, i32 4
  %137 = ptrtoint ptr %add.ptr3.i108.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %92, ptr %add.ptr3.i108.i, align 4
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %94, ptr %133, align 4
  %call.i111.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 168, ptr noundef nonnull %inbuf.i107.i, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i107.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %tobool29.not.i = icmp eq i32 %call.i111.i, 0
  br i1 %tobool29.not.i, label %if.else.i.restore_vadaptor.i_crit_edge, label %if.then30.i

if.else.i.restore_vadaptor.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %restore_vadaptor.i

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %139 = call ptr @memset(ptr %vport_mac.i, i32 0, i32 6)
  br label %do.body.i

restore_vadaptor.i:                               ; preds = %if.else.i.restore_vadaptor.i_crit_edge, %if.then21.i, %if.end6.i.restore_vadaptor.i_crit_edge
  %rc.0.i = phi i32 [ %call.i99.i, %if.end6.i.restore_vadaptor.i_crit_edge ], [ %call.i104.i, %if.else.i.restore_vadaptor.i_crit_edge ], [ 0, %if.then21.i ]
  %140 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %vport_id, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inbuf.i112.i) #19
  %142 = getelementptr inbounds i8, ptr %inbuf.i112.i, i32 4
  %143 = call ptr @memset(ptr %142, i32 0, i32 28)
  %144 = call i32 @llvm.bswap.i32(i32 %141) #19
  %145 = ptrtoint ptr %inbuf.i112.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %inbuf.i112.i, align 4
  %call.i113.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 152, ptr noundef nonnull %inbuf.i112.i, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inbuf.i112.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %tobool37.not.i = icmp eq i32 %call.i113.i, 0
  br i1 %tobool37.not.i, label %restore_vadaptor.i.restore_filters.i_crit_edge, label %restore_vadaptor.i.do.body.i_crit_edge

restore_vadaptor.i.do.body.i_crit_edge:           ; preds = %restore_vadaptor.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

restore_vadaptor.i.restore_filters.i_crit_edge:   ; preds = %restore_vadaptor.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %restore_filters.i

restore_filters.i:                                ; preds = %restore_vadaptor.i.restore_filters.i_crit_edge, %if.end.i.restore_filters.i_crit_edge
  %rc.1.i = phi i32 [ %call.i.i, %if.end.i.restore_filters.i_crit_edge ], [ %rc.0.i, %restore_vadaptor.i.restore_filters.i_crit_edge ]
  call void @down_write(ptr noundef %filter_sem) #19
  %call41.i = call i32 @efx_ef10_filter_table_probe(ptr noundef %efx) #19
  call void @up_write(ptr noundef %filter_sem) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool43.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %restore_filters.i.do.body.i_crit_edge

restore_filters.i.do.body.i_crit_edge:            ; preds = %restore_filters.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.end45.i:                                       ; preds = %restore_filters.i
  %146 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %net_dev.i, align 4
  %call47.i = call i32 @efx_net_open(ptr noundef %147) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end45.i.do.body.i_crit_edge

if.end45.i.do.body.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.end50.i:                                       ; preds = %if.end45.i
  %148 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.not.i.i = icmp eq i32 %149, 2
  br i1 %cmp.not.i.i, label %if.end50.i.cleanup79_crit_edge, label %land.lhs.true.i.i

if.end50.i.cleanup79_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

land.lhs.true.i.i:                                ; preds = %if.end50.i
  %reset_pending.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %150 = ptrtoint ptr %reset_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %reset_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i.i = icmp eq i32 %151, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.cleanup79_crit_edge

land.lhs.true.i.i.cleanup79_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup79

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %152 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %net_dev.i, align 4
  call void @netif_device_attach(ptr noundef %153) #19
  br label %cleanup79

do.body.i:                                        ; preds = %if.end45.i.do.body.i_crit_edge, %restore_filters.i.do.body.i_crit_edge, %restore_vadaptor.i.do.body.i_crit_edge, %if.then30.i
  %rc.2.i = phi i32 [ %rc.1.i, %restore_filters.i.do.body.i_crit_edge ], [ %rc.1.i, %if.end45.i.do.body.i_crit_edge ], [ %rc.0.i, %restore_vadaptor.i.do.body.i_crit_edge ], [ %call.i104.i, %if.then30.i ]
  %rc2.0.i = phi i32 [ %call41.i, %restore_filters.i.do.body.i_crit_edge ], [ %call47.i, %if.end45.i.do.body.i_crit_edge ], [ %call.i113.i, %restore_vadaptor.i.do.body.i_crit_edge ], [ %call.i111.i, %if.then30.i ]
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %154 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool51.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool51.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then52.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i

if.then52.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %156 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %157, ptr noundef nonnull @.str.166) #22
  br label %do.end.i

do.end.i:                                         ; preds = %if.then52.i, %do.body.i.do.end.i_crit_edge
  call void @efx_schedule_reset(ptr noundef %efx, i32 noundef 5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool55.not.i = icmp eq i32 %rc.2.i, 0
  %rc2.0.rc.2.i = select i1 %tobool55.not.i, i32 %rc2.0.i, i32 %rc.2.i
  br label %cleanup79

if.then74:                                        ; preds = %land.lhs.true68.if.then74_crit_edge, %if.else54.if.then74_crit_edge
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 93, i32 noundef 12, ptr noundef null, i32 noundef 0, i32 noundef %call6) #19
  br label %cleanup79

cleanup79:                                        ; preds = %if.then74, %do.end.i, %if.then.i.i, %land.lhs.true.i.i.cleanup79_crit_edge, %if.end50.i.cleanup79_crit_edge, %if.then70.cleanup79_crit_edge, %if.then60, %do.body58.cleanup79_crit_edge, %if.else54.cleanup79_crit_edge, %cleanup50, %for.inc.critedge.cleanup79_crit_edge, %if.then26.cleanup79_crit_edge, %if.then20, %if.then16.cleanup79_crit_edge
  %retval.5 = phi i32 [ 0, %cleanup50 ], [ -1, %if.then60 ], [ -1, %do.body58.cleanup79_crit_edge ], [ %call6, %if.then74 ], [ %call6, %if.else54.cleanup79_crit_edge ], [ %rc2.0.rc.2.i, %do.end.i ], [ 0, %if.then70.cleanup79_crit_edge ], [ %rc.1.i, %if.end50.i.cleanup79_crit_edge ], [ %rc.1.i, %land.lhs.true.i.i.cleanup79_crit_edge ], [ %rc.1.i, %if.then.i.i ], [ %call6, %if.then16.cleanup79_crit_edge ], [ %call24, %if.then20 ], [ 0, %if.then26.cleanup79_crit_edge ], [ 0, %for.inc.critedge.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #19
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_print_additional_fwver(ptr nocapture noundef readonly %efx, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %rx_dpcpu_fw_id = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %rx_dpcpu_fw_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_dpcpu_fw_id, align 4
  %tx_dpcpu_fw_id = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %tx_dpcpu_fw_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_dpcpu_fw_id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.167, i32 noundef %3, i32 noundef %5) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_sensor_event(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_pf_mem_bar(ptr nocapture noundef readonly %efx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2819, i16 %3)
  %cond = icmp eq i16 %3, 2819
  %. = select i1 %cond, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_probe_pf(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efx_ef10_probe(ptr noundef %efx)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_update_stats_pf(ptr noundef %efx, ptr noundef %full_stats, ptr noundef %core_stats) #0 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #19
  %2 = getelementptr inbounds [3 x i32], ptr %mask, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i32], ptr %mask, i32 0, i32 2
  %stats2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12
  %call.i.i = tail call i32 @efx_mcdi_phy_get_caps(ptr noundef %efx) #19
  %4 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_data1, align 8
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %6 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcdi.i.i, align 4
  %fn_flags.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fn_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fn_flags.i.i, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge, label %if.end.i.i

entry.efx_ef10_raw_stat_mask.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_raw_stat_mask.exit.i

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %call.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %datapath_caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datapath_caps2.i.i, align 8
  %and5.i.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %spec.select.i.i = select i1 %tobool6.not.i.i, i64 8796092891615, i64 8796093022207
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %raw_mask.0.i.i = phi i64 [ %spec.select.i.i, %if.then4.i.i ], [ 5497558138879, %if.end.i.i.if.end11.i.i_crit_edge ]
  %datapath_caps.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 17
  %12 = ptrtoint ptr %datapath_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %datapath_caps.i.i, align 4
  %and12.i.i = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %or15.i.i = or i64 %raw_mask.0.i.i, 36020000925941760
  %spec.select26.i.i = select i1 %tobool13.not.i.i, i64 %raw_mask.0.i.i, i64 %or15.i.i
  %extract.t51.i = trunc i64 %spec.select26.i.i to i32
  %extract.i = lshr i64 %spec.select26.i.i, 32
  %extract.t52.i = trunc i64 %extract.i to i32
  br label %efx_ef10_raw_stat_mask.exit.i

efx_ef10_raw_stat_mask.exit.i:                    ; preds = %if.end11.i.i, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge
  %retval.0.i.off0.i = phi i32 [ %extract.t51.i, %if.end11.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge ]
  %retval.0.i.off32.i = phi i32 [ %extract.t52.i, %if.end11.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge ]
  %datapath_caps.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %datapath_caps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %datapath_caps.i, align 4
  %and.i = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %raw_mask.sroa.8.0.i = select i1 %tobool.not.i, i32 0, i32 511
  %num_mac_stats.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %16 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_mac_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 103, i16 %17)
  %cmp.i = icmp ugt i16 %17, 103
  %extract.t48.i = or i32 %raw_mask.sroa.8.0.i, 32256
  %spec.select.i = select i1 %cmp.i, i32 %extract.t48.i, i32 %raw_mask.sroa.8.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %17)
  %cmp12.i = icmp ugt i16 %17, 120
  br i1 %cmp12.i, label %land.lhs.true.i, label %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge

efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge: ; preds = %efx_ef10_raw_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_get_stat_mask.exit

land.lhs.true.i:                                  ; preds = %efx_ef10_raw_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %datapath_caps2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datapath_caps2.i, align 8
  %and14.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %extract.t45.i = or i32 %spec.select.i, 2147450880
  %spec.select50.i = select i1 %tobool15.not.i, i32 %spec.select.i, i32 %extract.t45.i
  br label %efx_ef10_get_stat_mask.exit

efx_ef10_get_stat_mask.exit:                      ; preds = %land.lhs.true.i, %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge
  %raw_mask.sroa.8.2.off0.i = phi i32 [ %spec.select.i, %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge ], [ %spec.select50.i, %land.lhs.true.i ]
  %extract.t42.i = or i32 %retval.0.i.off32.i, -8388608
  %raw_mask.sroa.0.0.off32.i = select i1 %tobool.not.i, i32 %retval.0.i.off32.i, i32 %extract.t42.i
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.off0.i, ptr %mask, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %raw_mask.sroa.0.0.off32.i, ptr %2, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %raw_mask.sroa.8.2.off0.i, ptr %3, align 4
  %mc_stats = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %mc_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc_stats, align 4
  %call = tail call i32 @efx_nic_copy_stats(ptr noundef %efx, ptr noundef %24) #19
  %25 = ptrtoint ptr %mc_stats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_stats, align 4
  call void @efx_nic_update_stats(ptr noundef nonnull @efx_ef10_stat_desc, i32 noundef 95, ptr noundef nonnull %mask, ptr noundef %stats2, ptr noundef %26, i1 noundef zeroext false) #19
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 42
  call void @efx_nic_fix_nodesc_drop_stat(ptr noundef %efx, ptr noundef %arrayidx) #19
  %arrayidx6 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 17
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 18
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx7, align 8
  %sub = sub i64 %28, %30
  %arrayidx8 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 19
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub, ptr %arrayidx8, align 8
  %arrayidx9 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 20
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx9, align 8
  %sub.i = sub i64 %30, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i26 = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i26, label %if.then.i, label %efx_ef10_get_stat_mask.exit.efx_update_diff_stat.exit_crit_edge

efx_ef10_get_stat_mask.exit.efx_update_diff_stat.exit_crit_edge: ; preds = %efx_ef10_get_stat_mask.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_update_diff_stat.exit

if.then.i:                                        ; preds = %efx_ef10_get_stat_mask.exit
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %30, ptr %arrayidx9, align 8
  br label %efx_update_diff_stat.exit

efx_update_diff_stat.exit:                        ; preds = %if.then.i, %efx_ef10_get_stat_mask.exit.efx_update_diff_stat.exit_crit_edge
  call void @efx_update_sw_stats(ptr noundef %efx, ptr noundef %stats2) #19
  %call11 = call fastcc i32 @efx_ef10_update_stats_common(ptr noundef %efx, ptr noundef %full_stats, ptr noundef %core_stats)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #19
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_start_stats(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_pull_stats(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_stop_stats(ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @efx_ef10_get_wol(ptr nocapture noundef readnone %efx, ptr nocapture noundef writeonly %wol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = call ptr @memset(ptr %supported, i32 0, i32 14)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_set_wol(ptr nocapture noundef readnone %efx, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_get_fec_stats(ptr noundef %efx, ptr nocapture noundef writeonly %fec_stats) #0 align 64 {
entry:
  %mask.sroa.6 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.sroa.6)
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %call.i.i = tail call i32 @efx_mcdi_phy_get_caps(ptr noundef %efx) #19
  %datapath_caps.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %datapath_caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datapath_caps.i, align 4
  %and.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %raw_mask.sroa.8.0.i = select i1 %tobool.not.i, i32 0, i32 511
  %num_mac_stats.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %4 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_mac_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 103, i16 %5)
  %cmp.i = icmp ugt i16 %5, 103
  %extract.t48.i = or i32 %raw_mask.sroa.8.0.i, 32256
  %spec.select.i = select i1 %cmp.i, i32 %extract.t48.i, i32 %raw_mask.sroa.8.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %5)
  %cmp12.i = icmp ugt i16 %5, 120
  br i1 %cmp12.i, label %land.lhs.true.i, label %entry.efx_ef10_get_stat_mask.exit_crit_edge

entry.efx_ef10_get_stat_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_get_stat_mask.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %datapath_caps2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datapath_caps2.i, align 8
  %and14.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %extract.t45.i = or i32 %spec.select.i, 2147450880
  %spec.select50.i = select i1 %tobool15.not.i, i32 %spec.select.i, i32 %extract.t45.i
  br label %efx_ef10_get_stat_mask.exit

efx_ef10_get_stat_mask.exit:                      ; preds = %land.lhs.true.i, %entry.efx_ef10_get_stat_mask.exit_crit_edge
  %raw_mask.sroa.8.2.off0.i = phi i32 [ %spec.select.i, %entry.efx_ef10_get_stat_mask.exit_crit_edge ], [ %spec.select50.i, %land.lhs.true.i ]
  %8 = ptrtoint ptr %mask.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %raw_mask.sroa.8.2.off0.i, ptr %mask.sroa.6, align 4
  %mask.sroa.6.0.mask.sroa.6.0.mask.sroa.6.8. = load volatile i32, ptr %mask.sroa.6, align 4
  %9 = and i32 %mask.sroa.6.0.mask.sroa.6.0.mask.sroa.6.8., 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %efx_ef10_get_stat_mask.exit.if.end_crit_edge, label %if.then

efx_ef10_get_stat_mask.exit.if.end_crit_edge:     ; preds = %efx_ef10_get_stat_mask.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %efx_ef10_get_stat_mask.exit
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 74
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %fec_stats to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %fec_stats, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %efx_ef10_get_stat_mask.exit.if.end_crit_edge
  %13 = ptrtoint ptr %mask.sroa.6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %mask.sroa.6.0.mask.sroa.6.0.mask.sroa.6.8.18 = load volatile i32, ptr %mask.sroa.6, align 4
  %14 = and i32 %mask.sroa.6.0.mask.sroa.6.0.mask.sroa.6.8.18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx9 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 12, i32 73
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx9, align 8
  %uncorrectable_blocks = getelementptr inbounds %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 1
  %17 = ptrtoint ptr %uncorrectable_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %uncorrectable_blocks, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.sroa.6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_test_chip(ptr noundef %efx, ptr nocapture noundef writeonly %tests) #0 align 64 {
entry:
  %inbuf.i.i23 = alloca [1 x %union.efx_dword], align 4
  %inbuf.i.i = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_reset_down(ptr noundef %efx, i32 noundef 3) #19
  %call = tail call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 237, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end:                                           ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.do.end8.i_crit_edge, label %do.body1.i

if.end.do.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_run_bist.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_test_chip, %if.then5.i)) #19
          to label %do.end8.i [label %if.then5.i], !srcloc !416

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_run_bist.__UNIQUE_ID_ddebug631, ptr noundef %3, ptr noundef nonnull @.str.169, i32 noundef 6) #19
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.end.do.end8.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i) #19
  %4 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100663296, ptr %inbuf.i.i, align 4
  %call.i.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 37, ptr noundef nonnull %inbuf.i.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end11.i, label %do.end8.i.efx_ef10_run_bist.exit_crit_edge

do.end8.i.efx_ef10_run_bist.exit_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_run_bist.exit

if.end11.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = call fastcc i32 @efx_ef10_poll_bist(ptr noundef %efx) #19
  br label %efx_ef10_run_bist.exit

efx_ef10_run_bist.exit:                           ; preds = %if.end11.i, %do.end8.i.efx_ef10_run_bist.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end11.i ], [ %call.i.i, %do.end8.i.efx_ef10_run_bist.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %cond = select i1 %tobool.not, i32 1, i32 -1
  %memory = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 5
  %5 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %memory, align 4
  %6 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable.i, align 4
  %and.i25 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %efx_ef10_run_bist.exit.do.end8.i32_crit_edge, label %do.body1.i27

efx_ef10_run_bist.exit.do.end8.i32_crit_edge:     ; preds = %efx_ef10_run_bist.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end8.i32

do.body1.i27:                                     ; preds = %efx_ef10_run_bist.exit
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_run_bist.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_test_chip, %if.then5.i29)) #19
          to label %do.end8.i32 [label %if.then5.i29], !srcloc !416

if.then5.i29:                                     ; preds = %do.body1.i27
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i28 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev.i28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_run_bist.__UNIQUE_ID_ddebug631, ptr noundef %9, ptr noundef nonnull @.str.169, i32 noundef 8) #19
  br label %do.end8.i32

do.end8.i32:                                      ; preds = %if.then5.i29, %do.body1.i27, %efx_ef10_run_bist.exit.do.end8.i32_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i23) #19
  %10 = ptrtoint ptr %inbuf.i.i23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134217728, ptr %inbuf.i.i23, align 4
  %call.i.i30 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 37, ptr noundef nonnull %inbuf.i.i23, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i23) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.not.i31 = icmp eq i32 %call.i.i30, 0
  br i1 %cmp.not.i31, label %if.end11.i34, label %do.end8.i32.efx_ef10_run_bist.exit36_crit_edge

do.end8.i32.efx_ef10_run_bist.exit36_crit_edge:   ; preds = %do.end8.i32
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_run_bist.exit36

if.end11.i34:                                     ; preds = %do.end8.i32
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i33 = call fastcc i32 @efx_ef10_poll_bist(ptr noundef %efx) #19
  br label %efx_ef10_run_bist.exit36

efx_ef10_run_bist.exit36:                         ; preds = %if.end11.i34, %do.end8.i32.efx_ef10_run_bist.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %call12.i33, %if.end11.i34 ], [ %call.i.i30, %do.end8.i32.efx_ef10_run_bist.exit36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i35)
  %tobool3.not = icmp eq i32 %retval.0.i35, 0
  %cond4 = select i1 %tobool3.not, i32 1, i32 -1
  %registers = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 6
  %11 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond4, ptr %registers, align 4
  %call5 = call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 3) #19
  br label %out

out:                                              ; preds = %efx_ef10_run_bist.exit36, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %efx_ef10_run_bist.exit36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0)
  %cmp6 = icmp eq i32 %rc.0, -1
  %spec.store.select = select i1 %cmp6, i32 0, i32 %rc.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp9 = icmp eq i32 %spec.store.select, 0
  %call10 = call i32 @efx_reset_up(ptr noundef %efx, i32 noundef 3, i1 noundef zeroext %cmp9) #19
  %call10.spec.store.select = select i1 %cmp9, i32 %call10, i32 %spec.store.select
  ret i32 %call10.spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_nvram_test_all(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_pf_rx_push_rss_config(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_push_rss_context_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rx_pull_rss_context_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_restore_rss_contexts(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_mtd_probe(ptr noundef %efx) #0 align 64 {
entry:
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  %outbuf.i = alloca [63 x %union.efx_dword], align 4
  %size.i = alloca i32, align 4
  %erase_size.i = alloca i32, align 4
  %outlen.i = alloca i32, align 4
  %protected.i = alloca i8, align 1
  %outbuf = alloca [63 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf) #19
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %call = tail call i32 @rtnl_is_locked() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b111 = load i1, ptr @efx_ef10_mtd_probe.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !414

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @efx_ef10_mtd_probe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3550, i32 noundef 9, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str, i32 noundef 3550) #19
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call40 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 81, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 252, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %if.end43.cleanup_crit_edge, label %if.end45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end45:                                         ; preds = %if.end43
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %sub = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %sub)
  %cmp48 = icmp ugt i32 %sub, 251
  %div110 = lshr i32 %sub, 2
  %cond = select i1 %cmp48, i32 62, i32 %div110
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cond)
  %cmp49 = icmp ugt i32 %6, %cond
  br i1 %cmp49, label %if.end45.cleanup_crit_edge, label %if.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 1472) #19
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end51.cleanup_crit_edge, label %if.end7.i.i, !prof !413

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end51
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #23
  %tobool53.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool53.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56133.not = icmp eq i32 %5, 0
  br i1 %cmp56133.not, label %for.cond.preheader.fail_crit_edge, label %for.body.lr.ph

for.cond.preheader.fail_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr58 = getelementptr inbounds i8, ptr %outbuf, i32 4
  %port_num.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %add.ptr46.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %add.ptr53.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n_parts.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %n_parts.1, %for.inc.for.body_crit_edge ]
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc74, %for.inc.for.body_crit_edge ]
  %or.i.i132134 = phi i32 [ 0, %for.body.lr.ph ], [ %or.i.i129, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0135, 2
  %add.ptr59 = getelementptr i8, ptr %add.ptr58, i32 %mul
  %10 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr59, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx64 = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %n_parts.0136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #19
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i) #19
  %13 = call ptr @memset(ptr %outbuf.i, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #19
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %size.i, align 4, !annotation !412
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %erase_size.i) #19
  %15 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %erase_size.i, align 4, !annotation !412
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #19
  %16 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %outlen.i, align 4, !annotation !412
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %protected.i) #19
  %17 = ptrtoint ptr %protected.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %protected.i, align 1, !annotation !412
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %for.body
  %type_idx.0111.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.inc.i.if.end.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.efx_ef10_nvram_type_info, ptr @efx_ef10_nvram_types, i32 %type_idx.0111.i
  %type_mask.i = getelementptr %struct.efx_ef10_nvram_type_info, ptr @efx_ef10_nvram_types, i32 %type_idx.0111.i, i32 1
  %18 = ptrtoint ptr %type_mask.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type_mask.i, align 2
  %conv.i = zext i16 %19 to i32
  %neg.i = xor i32 %conv.i, -1
  %and.i = and i32 %12, %neg.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i, align 4
  %conv2.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv2.i)
  %cmp3.i = icmp eq i32 %and.i, %conv2.i
  br i1 %cmp3.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %type_idx.0111.i, 1
  %cmp.i = icmp eq i32 %inc.i, 18
  br i1 %cmp.i, label %for.inc.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge, label %for.inc.i.if.end.i_crit_edge

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

for.inc.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit.thread

for.end.i:                                        ; preds = %if.end.i
  %port.i = getelementptr %struct.efx_ef10_nvram_type_info, ptr @efx_ef10_nvram_types, i32 %type_idx.0111.i, i32 2
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port.i, align 4
  %conv7.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_num.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %25, %conv7.i
  br i1 %cmp8.not.i, label %if.end11.i, label %for.end.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge

for.end.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit.thread

if.end11.i:                                       ; preds = %for.end.i
  %call12.i = call i32 @efx_mcdi_nvram_info(ptr noundef %efx, i32 noundef %12, ptr noundef nonnull %size.i, ptr noundef nonnull %erase_size.i, ptr noundef nonnull %protected.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end11.i.efx_ef10_mtd_probe_partition.exit_crit_edge

if.end11.i.efx_ef10_mtd_probe_partition.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit

if.end14.i:                                       ; preds = %if.end11.i
  %26 = ptrtoint ptr %protected.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protected.i, align 1, !range !415
  %.fr.i = freeze i8 %27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr.i)
  %tobool15.not.i = icmp eq i8 %.fr.i, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end26.i_crit_edge, label %switch.early.test.i

if.end14.i.if.end26.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26.i

switch.early.test.i:                              ; preds = %if.end14.i
  %28 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %12, label %switch.early.test.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge [
    i32 7168, label %switch.early.test.i.if.then25.i_crit_edge
    i32 6912, label %switch.early.test.i.if.then25.i_crit_edge150
  ]

switch.early.test.i.if.then25.i_crit_edge150:     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then25.i

switch.early.test.i.if.then25.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then25.i

switch.early.test.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit.thread

if.then25.i:                                      ; preds = %switch.early.test.i.if.then25.i_crit_edge, %switch.early.test.i.if.then25.i_crit_edge150
  %29 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %erase_size.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end14.i.if.end26.i_crit_edge
  %rem.i.i = and i32 %type_idx.0111.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %or.i.i132134, %shl.i.i
  %30 = and i32 %or.i.i132134, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool28.not.i = icmp eq i32 %30, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge

if.end26.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit.thread

if.end30.i:                                       ; preds = %if.end26.i
  %conv31.i = trunc i32 %12 to i16
  %nvram_type.i = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %n_parts.0136, i32 2
  %31 = ptrtoint ptr %nvram_type.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv31.i, ptr %nvram_type.i, align 2
  %32 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %11, ptr %inbuf.i, align 4
  %call37.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 82, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 252, ptr noundef nonnull %outlen.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end30.i.efx_ef10_mtd_probe_partition.exit_crit_edge

if.end30.i.efx_ef10_mtd_probe_partition.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit

if.end40.i:                                       ; preds = %if.end30.i
  %33 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %34)
  %cmp41.i = icmp ult i32 %34, 20
  br i1 %cmp41.i, label %efx_ef10_mtd_probe_partition.exit.thread119, label %if.end44.i

efx_ef10_mtd_probe_partition.exit.thread119:      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #19
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #19
  br label %if.then78

if.end44.i:                                       ; preds = %if.end40.i
  %35 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr46.i, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool50.not.i = icmp eq i32 %37, 0
  br i1 %tobool50.not.i, label %if.end44.i.if.end58.i_crit_edge, label %if.then51.i

if.end44.i.if.end58.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58.i

if.then51.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #21
  %38 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr53.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #19
  %conv57.i = trunc i32 %40 to i16
  %fw_subtype.i = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %n_parts.0136, i32 3
  %41 = ptrtoint ptr %fw_subtype.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv57.i, ptr %fw_subtype.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then51.i, %if.end44.i.if.end58.i_crit_edge
  %dev_type_name.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx64, i32 0, i32 2
  %42 = ptrtoint ptr %dev_type_name.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.176, ptr %dev_type_name.i, align 8
  %name.i = getelementptr %struct.efx_ef10_nvram_type_info, ptr @efx_ef10_nvram_types, i32 %type_idx.0111.i, i32 3
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i, align 4
  %type_name.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx64, i32 0, i32 3
  %45 = ptrtoint ptr %type_name.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %type_name.i, align 4
  %mtd.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx64, i32 0, i32 1
  %46 = ptrtoint ptr %mtd.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %mtd.i, align 8
  %flags.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx64, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3072, ptr %flags.i, align 4
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i, align 4
  %conv64.i = zext i32 %49 to i64
  %size67.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx64, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %size67.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv64.i, ptr %size67.i, align 16
  %51 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %erase_size.i, align 4
  %erasesize.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx64, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool70.not.i = icmp eq i32 %52, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end58.i.efx_ef10_mtd_probe_partition.exit.thread117_crit_edge

if.end58.i.efx_ef10_mtd_probe_partition.exit.thread117_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_mtd_probe_partition.exit.thread117

if.then71.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #21
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7168, ptr %flags.i, align 4
  br label %efx_ef10_mtd_probe_partition.exit.thread117

efx_ef10_mtd_probe_partition.exit.thread:         ; preds = %if.end26.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge, %switch.early.test.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge, %for.end.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge, %for.inc.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge
  %or.i.i130 = phi i32 [ %or.i.i132134, %for.end.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge ], [ %or.i.i132134, %switch.early.test.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge ], [ %or.i.i, %if.end26.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge ], [ %or.i.i132134, %for.inc.i.efx_ef10_mtd_probe_partition.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #19
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #19
  br label %for.inc

efx_ef10_mtd_probe_partition.exit.thread117:      ; preds = %if.then71.i, %if.end58.i.efx_ef10_mtd_probe_partition.exit.thread117_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #19
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #19
  %inc = add i32 %n_parts.0136, 1
  br label %for.inc

efx_ef10_mtd_probe_partition.exit:                ; preds = %if.end30.i.efx_ef10_mtd_probe_partition.exit_crit_edge, %if.end11.i.efx_ef10_mtd_probe_partition.exit_crit_edge
  %or.i.i131 = phi i32 [ %or.i.i132134, %if.end11.i.efx_ef10_mtd_probe_partition.exit_crit_edge ], [ %or.i.i, %if.end30.i.efx_ef10_mtd_probe_partition.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call12.i, %if.end11.i.efx_ef10_mtd_probe_partition.exit_crit_edge ], [ %call37.i, %if.end30.i.efx_ef10_mtd_probe_partition.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #19
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #19
  %55 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %retval.0.i, label %efx_ef10_mtd_probe_partition.exit.if.then78_crit_edge [
    i32 -17, label %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge
    i32 -19, label %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge151
  ]

efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge151: ; preds = %efx_ef10_mtd_probe_partition.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge: ; preds = %efx_ef10_mtd_probe_partition.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

efx_ef10_mtd_probe_partition.exit.if.then78_crit_edge: ; preds = %efx_ef10_mtd_probe_partition.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then78

for.inc:                                          ; preds = %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge, %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge151, %efx_ef10_mtd_probe_partition.exit.thread117, %efx_ef10_mtd_probe_partition.exit.thread
  %or.i.i129 = phi i32 [ %or.i.i131, %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge ], [ %or.i.i, %efx_ef10_mtd_probe_partition.exit.thread117 ], [ %or.i.i131, %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge151 ], [ %or.i.i130, %efx_ef10_mtd_probe_partition.exit.thread ]
  %n_parts.1 = phi i32 [ %n_parts.0136, %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge ], [ %inc, %efx_ef10_mtd_probe_partition.exit.thread117 ], [ %n_parts.0136, %efx_ef10_mtd_probe_partition.exit.for.inc_crit_edge151 ], [ %n_parts.0136, %efx_ef10_mtd_probe_partition.exit.thread ]
  %inc74 = add nuw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc74, %umax
  br i1 %exitcond.not, label %for.inc.fail_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.fail_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail

fail:                                             ; preds = %for.inc.fail_crit_edge, %for.cond.preheader.fail_crit_edge
  %n_parts.0.lcssa = phi i32 [ 0, %for.cond.preheader.fail_crit_edge ], [ %n_parts.1, %for.inc.fail_crit_edge ]
  %call76 = call i32 @efx_mtd_add(ptr noundef %efx, ptr noundef nonnull %call8.i.i, i32 noundef %n_parts.0.lcssa, i32 noundef 1472) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %fail.cleanup_crit_edge, label %fail.if.then78_crit_edge

fail.if.then78_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then78

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then78:                                        ; preds = %fail.if.then78_crit_edge, %efx_ef10_mtd_probe_partition.exit.if.then78_crit_edge, %efx_ef10_mtd_probe_partition.exit.thread119
  %rc.0125 = phi i32 [ %call76, %fail.if.then78_crit_edge ], [ -5, %efx_ef10_mtd_probe_partition.exit.thread119 ], [ %retval.0.i, %efx_ef10_mtd_probe_partition.exit.if.then78_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %fail.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end29.cleanup_crit_edge ], [ -5, %if.end43.cleanup_crit_edge ], [ -5, %if.end45.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %rc.0125, %if.then78 ], [ 0, %fail.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mtd_rename(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_erase(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_sync(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ef10_ptp_write_host_time(ptr nocapture noundef readonly %efx, i32 noundef %host_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %host_time)
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #19, !srcloc !419
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_ptp_set_ts_sync_events(ptr noundef %efx, i1 noundef zeroext %en, i1 noundef zeroext %temp) #0 align 64 {
entry:
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @efx_ptp_channel(ptr noundef %efx) #19
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.cleanup10_crit_edge, label %if.then

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup10

if.then:                                          ; preds = %entry
  %cond = select i1 %en, ptr @efx_ef10_rx_enable_timestamping, ptr @efx_ef10_rx_disable_timestamping
  %call4 = tail call i32 %cond(ptr noundef nonnull %call, i1 noundef zeroext %temp) #19, !callees !427
  %en.not = xor i1 %en, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  %or.cond = select i1 %en.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.then.cleanup10_crit_edge, label %if.then6

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup10

if.then6:                                         ; preds = %if.then
  %call.i = tail call ptr @efx_ptp_channel(ptr noundef %efx) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.then6.cleanup10_crit_edge, label %if.then.i

if.then6.cleanup10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup10

if.then.i:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #19
  %sync_events_state.i = getelementptr inbounds %struct.efx_channel, ptr %call.i, i32 0, i32 48
  %0 = ptrtoint ptr %sync_events_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_events_state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2.i = icmp eq i32 %1, 1
  %or.cond.i = select i1 %temp, i1 %cmp2.i, i1 false
  %or.cond39.i = or i1 %cmp.i, %or.cond.i
  br i1 %or.cond39.i, label %if.then.i.efx_ef10_rx_disable_timestamping.exit_crit_edge, label %if.end.i

if.then.i.efx_ef10_rx_disable_timestamping.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_rx_disable_timestamping.exit

if.end.i:                                         ; preds = %if.then.i
  br i1 %cmp2.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %sync_events_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sync_events_state.i, align 32
  br label %efx_ef10_rx_disable_timestamping.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %cond.i = zext i1 %temp to i32
  %3 = ptrtoint ptr %sync_events_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond.i, ptr %sync_events_state.i, align 32
  %4 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 419430400, ptr %inbuf.i, align 4
  %add.ptr12.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %5 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %add.ptr12.i, align 4
  %add.ptr18.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %6 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr18.i, align 4
  %channel23.i = getelementptr inbounds %struct.efx_channel, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %channel23.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel23.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  %add.ptr26.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %10 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr26.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 128
  %call.i18 = call i32 @efx_mcdi_rpc(ptr noundef %12, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  br label %efx_ef10_rx_disable_timestamping.exit

efx_ef10_rx_disable_timestamping.exit:            ; preds = %if.end7.i, %if.then5.i, %if.then.i.efx_ef10_rx_disable_timestamping.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #19
  br label %cleanup10

cleanup10:                                        ; preds = %efx_ef10_rx_disable_timestamping.exit, %if.then6.cleanup10_crit_edge, %if.then.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup10_crit_edge ], [ 0, %entry.cleanup10_crit_edge ], [ %call4, %if.then6.cleanup10_crit_edge ], [ %call4, %efx_ef10_rx_disable_timestamping.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_ptp_set_ts_config(ptr noundef %efx, ptr nocapture noundef %init) #0 align 64 {
entry:
  %inbuf.i25 = alloca [3 x %union.efx_dword], align 4
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  %inbuf.i.i = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %init, i32 0, i32 2
  %0 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_filter, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge35
    i32 4, label %entry.sw.bb2_crit_edge36
    i32 5, label %entry.sw.bb2_crit_edge37
    i32 6, label %entry.sw.bb2_crit_edge38
    i32 7, label %entry.sw.bb2_crit_edge39
    i32 8, label %entry.sw.bb2_crit_edge40
    i32 9, label %entry.sw.bb2_crit_edge41
    i32 10, label %entry.sw.bb2_crit_edge42
    i32 11, label %entry.sw.bb2_crit_edge43
    i32 12, label %entry.sw.bb2_crit_edge44
    i32 13, label %entry.sw.bb2_crit_edge45
    i32 14, label %entry.sw.bb2_crit_edge46
    i32 15, label %entry.sw.bb2_crit_edge47
  ]

entry.sw.bb2_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @efx_ptp_channel(ptr noundef %efx) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %sw.bb.efx_ef10_ptp_set_ts_sync_events.exit_crit_edge, label %if.then.i

sw.bb.efx_ef10_ptp_set_ts_sync_events.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_ptp_set_ts_sync_events.exit

if.then.i:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #19
  %sync_events_state.i = getelementptr inbounds %struct.efx_channel, ptr %call.i, i32 0, i32 48
  %3 = ptrtoint ptr %sync_events_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sync_events_state.i, align 32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %4, label %if.end7.i [
    i32 0, label %if.then.i.efx_ef10_rx_disable_timestamping.exit_crit_edge
    i32 1, label %if.then5.i
  ]

if.then.i.efx_ef10_rx_disable_timestamping.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_rx_disable_timestamping.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %sync_events_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sync_events_state.i, align 32
  br label %efx_ef10_rx_disable_timestamping.exit

if.end7.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %sync_events_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sync_events_state.i, align 32
  %8 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 419430400, ptr %inbuf.i, align 4
  %add.ptr12.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %9 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %add.ptr12.i, align 4
  %add.ptr18.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %10 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr18.i, align 4
  %channel23.i = getelementptr inbounds %struct.efx_channel, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %channel23.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel23.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #19
  %add.ptr26.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %14 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr26.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 128
  %call.i24 = call i32 @efx_mcdi_rpc(ptr noundef %16, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  br label %efx_ef10_rx_disable_timestamping.exit

efx_ef10_rx_disable_timestamping.exit:            ; preds = %if.end7.i, %if.then5.i, %if.then.i.efx_ef10_rx_disable_timestamping.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #19
  br label %efx_ef10_ptp_set_ts_sync_events.exit

efx_ef10_ptp_set_ts_sync_events.exit:             ; preds = %efx_ef10_rx_disable_timestamping.exit, %sw.bb.efx_ef10_ptp_set_ts_sync_events.exit_crit_edge
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %init, i32 0, i32 1
  %17 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp ne i32 %18, 0
  %call1 = call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext %cmp, i32 noundef 0) #19
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge35, %entry.sw.bb2_crit_edge36, %entry.sw.bb2_crit_edge37, %entry.sw.bb2_crit_edge38, %entry.sw.bb2_crit_edge39, %entry.sw.bb2_crit_edge40, %entry.sw.bb2_crit_edge41, %entry.sw.bb2_crit_edge42, %entry.sw.bb2_crit_edge43, %entry.sw.bb2_crit_edge44, %entry.sw.bb2_crit_edge45, %entry.sw.bb2_crit_edge46, %entry.sw.bb2_crit_edge47
  %19 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %rx_filter, align 4
  %call4 = tail call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext true, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %sw.bb2.if.then7_crit_edge

sw.bb2.if.then7_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7

if.then:                                          ; preds = %sw.bb2
  %call.i18 = tail call ptr @efx_ptp_channel(ptr noundef %efx) #19
  %tobool2.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool2.not.i19, label %if.then.cleanup_crit_edge, label %if.then.i22

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i22:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i25) #19
  %sync_events_state.i26 = getelementptr inbounds %struct.efx_channel, ptr %call.i18, i32 0, i32 48
  %20 = ptrtoint ptr %sync_events_state.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sync_events_state.i26, align 32
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch.i = icmp eq i32 %22, 2
  br i1 %switch.i, label %if.then.i22.efx_ef10_rx_enable_timestamping.exit.thread_crit_edge, label %if.end.i28

if.then.i22.efx_ef10_rx_enable_timestamping.exit.thread_crit_edge: ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_rx_enable_timestamping.exit.thread

if.end.i28:                                       ; preds = %if.then.i22
  %23 = ptrtoint ptr %sync_events_state.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %sync_events_state.i26, align 32
  %24 = ptrtoint ptr %inbuf.i25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 402653184, ptr %inbuf.i25, align 4
  %add.ptr9.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i25, i32 1
  %25 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add.ptr9.i, align 4
  %channel14.i = getelementptr inbounds %struct.efx_channel, ptr %call.i18, i32 0, i32 1
  %26 = ptrtoint ptr %channel14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel14.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #19
  %add.ptr17.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i25, i32 2
  %29 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr17.i, align 4
  %30 = ptrtoint ptr %call.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i18, align 128
  %call.i27 = call i32 @efx_mcdi_rpc(ptr noundef %31, i32 noundef 11, ptr noundef nonnull %inbuf.i25, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp22.not.i = icmp eq i32 %call.i27, 0
  br i1 %cmp22.not.i, label %if.end.i28.efx_ef10_rx_enable_timestamping.exit.thread_crit_edge, label %if.then6.i

if.end.i28.efx_ef10_rx_enable_timestamping.exit.thread_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_rx_enable_timestamping.exit.thread

efx_ef10_rx_enable_timestamping.exit.thread:      ; preds = %if.end.i28.efx_ef10_rx_enable_timestamping.exit.thread_crit_edge, %if.then.i22.efx_ef10_rx_enable_timestamping.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i25) #19
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i28
  %32 = ptrtoint ptr %sync_events_state.i26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sync_events_state.i26, align 32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i25) #19
  %call.i.i = call ptr @efx_ptp_channel(ptr noundef %efx) #19
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %if.then6.i.if.then7_crit_edge, label %if.then.i.i

if.then6.i.if.then7_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7

if.then.i.i:                                      ; preds = %if.then6.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i.i) #19
  %sync_events_state.i.i = getelementptr inbounds %struct.efx_channel, ptr %call.i.i, i32 0, i32 48
  %33 = ptrtoint ptr %sync_events_state.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sync_events_state.i.i, align 32
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %34, label %if.end7.i.i [
    i32 0, label %if.then.i.i.efx_ef10_rx_disable_timestamping.exit.i_crit_edge
    i32 1, label %if.then5.i.i
  ]

if.then.i.i.efx_ef10_rx_disable_timestamping.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_rx_disable_timestamping.exit.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %sync_events_state.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sync_events_state.i.i, align 32
  br label %efx_ef10_rx_disable_timestamping.exit.i

if.end7.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %37 = ptrtoint ptr %sync_events_state.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sync_events_state.i.i, align 32
  %38 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 419430400, ptr %inbuf.i.i, align 4
  %add.ptr12.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 1
  %39 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %add.ptr12.i.i, align 4
  %add.ptr18.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 2
  %40 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %add.ptr18.i.i, align 4
  %channel23.i.i = getelementptr inbounds %struct.efx_channel, ptr %call.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %channel23.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel23.i.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #19
  %add.ptr26.i.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i.i, i32 3
  %44 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr26.i.i, align 4
  %45 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i.i, align 128
  %call.i18.i = call i32 @efx_mcdi_rpc(ptr noundef %46, i32 noundef 11, ptr noundef nonnull %inbuf.i.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  br label %efx_ef10_rx_disable_timestamping.exit.i

efx_ef10_rx_disable_timestamping.exit.i:          ; preds = %if.end7.i.i, %if.then5.i.i, %if.then.i.i.efx_ef10_rx_disable_timestamping.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i.i) #19
  br label %if.then7

if.then7:                                         ; preds = %efx_ef10_rx_disable_timestamping.exit.i, %if.then6.i.if.then7_crit_edge, %sw.bb2.if.then7_crit_edge
  %rc.0.ph = phi i32 [ %call.i27, %efx_ef10_rx_disable_timestamping.exit.i ], [ %call.i27, %if.then6.i.if.then7_crit_edge ], [ %call4, %sw.bb2.if.then7_crit_edge ]
  %call8 = call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext false, i32 noundef 0) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %efx_ef10_rx_enable_timestamping.exit.thread, %if.then.cleanup_crit_edge, %efx_ef10_ptp_set_ts_sync_events.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %efx_ef10_ptp_set_ts_sync_events.exit ], [ %rc.0.ph, %if.then7 ], [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %efx_ef10_rx_enable_timestamping.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_configure(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ef10_sriov_fini(ptr noundef) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @efx_ef10_sriov_wanted(ptr nocapture noundef readnone %efx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ef10_sriov_reset(ptr nocapture noundef %efx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ef10_sriov_flr(ptr nocapture noundef %efx, i32 noundef %vf_i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_set_vf_mac(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_set_vf_vlan(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_set_vf_spoofchk(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_get_vf_config(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_sriov_set_vf_link_state(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vswitching_probe_pf(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ef10_vswitching_restore_pf(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ef10_vswitching_remove_pf(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_get_mac_address_pf(ptr noundef %efx, ptr nocapture noundef writeonly %mac_address) #0 align 64 {
entry:
  %outbuf = alloca [4 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outbuf) #19
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 85, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 16, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  %6 = ptrtoint ptr %mac_address to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mac_address, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %outbuf, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac_address, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outbuf) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_ef10_tso_versions(ptr nocapture noundef readonly %efx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datapath_caps, align 4
  %and = lshr i32 %3, 20
  %4 = and i32 %and, 2
  %datapath_caps2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %datapath_caps2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datapath_caps2, align 8
  %and2 = shl i32 %6, 2
  %7 = and i32 %and2, 4
  %8 = or i32 %7, %4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_udp_tnl_push_ports(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %udp_tunnels_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %udp_tunnels_lock, i32 noundef 0) #19
  %udp_tunnels_dirty = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %udp_tunnels_dirty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %udp_tunnels_dirty, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #19
  tail call void @netif_tx_lock(ptr noundef %5) #19
  tail call void @netif_device_detach(ptr noundef %5) #19
  tail call void @netif_tx_unlock(ptr noundef %5) #19
  tail call fastcc void @local_bh_enable() #19
  %call = tail call fastcc i32 @efx_ef10_set_udp_tnl_ports(ptr noundef %efx, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %udp_tunnels_lock) #19
  ret i32 %rc.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @efx_ef10_udp_tnl_has_port(ptr nocapture noundef readonly %efx, i16 noundef zeroext %port) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datapath_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %udp_tunnels_dirty = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %udp_tunnels_dirty to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %udp_tunnels_dirty, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp5.not = icmp eq i16 %7, -1
  br i1 %cmp5.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %port9 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 0, i32 1
  %8 = ptrtoint ptr %port9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %port)
  %cmp12 = icmp eq i16 %9, %port
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp5.not.1 = icmp eq i16 %11, -1
  br i1 %cmp5.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %port9.1 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 1, i32 1
  %12 = ptrtoint ptr %port9.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %port9.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %port)
  %cmp12.1 = icmp eq i16 %13, %port
  br i1 %cmp12.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp5.not.2 = icmp eq i16 %15, -1
  br i1 %cmp5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %port9.2 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 2, i32 1
  %16 = ptrtoint ptr %port9.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %port9.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %port)
  %cmp12.2 = icmp eq i16 %17, %port
  br i1 %cmp12.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp5.not.3 = icmp eq i16 %19, -1
  br i1 %cmp5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %port9.3 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 3, i32 1
  %20 = ptrtoint ptr %port9.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port9.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %port)
  %cmp12.3 = icmp eq i16 %21, %port
  br i1 %cmp12.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp5.not.4 = icmp eq i16 %23, -1
  br i1 %cmp5.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %port9.4 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 4, i32 1
  %24 = ptrtoint ptr %port9.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %port9.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %port)
  %cmp12.4 = icmp eq i16 %25, %port
  br i1 %cmp12.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp5.not.5 = icmp eq i16 %27, -1
  br i1 %cmp5.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %port9.5 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 5, i32 1
  %28 = ptrtoint ptr %port9.5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %port9.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %port)
  %cmp12.5 = icmp eq i16 %29, %port
  br i1 %cmp12.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp5.not.6 = icmp eq i16 %31, -1
  br i1 %cmp5.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %port9.6 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 6, i32 1
  %32 = ptrtoint ptr %port9.6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %port9.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %port)
  %cmp12.6 = icmp eq i16 %33, %port
  br i1 %cmp12.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 7
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %cmp5.not.7 = icmp eq i16 %35, -1
  br i1 %cmp5.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %port9.7 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 7, i32 1
  %36 = ptrtoint ptr %port9.7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %port9.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %port)
  %cmp12.7 = icmp eq i16 %37, %port
  br i1 %cmp12.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 8
  %38 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %39)
  %cmp5.not.8 = icmp eq i16 %39, -1
  br i1 %cmp5.not.8, label %for.inc.7.for.inc.8_crit_edge, label %land.lhs.true.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %port9.8 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 8, i32 1
  %40 = ptrtoint ptr %port9.8 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %port9.8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %port)
  %cmp12.8 = icmp eq i16 %41, %port
  br i1 %cmp12.8, label %land.lhs.true.8.cleanup_crit_edge, label %land.lhs.true.8.for.inc.8_crit_edge

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.8

land.lhs.true.8.cleanup_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 9
  %42 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp5.not.9 = icmp eq i16 %43, -1
  br i1 %cmp5.not.9, label %for.inc.8.for.inc.9_crit_edge, label %land.lhs.true.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %port9.9 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 9, i32 1
  %44 = ptrtoint ptr %port9.9 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %port9.9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %port)
  %cmp12.9 = icmp eq i16 %45, %port
  br i1 %cmp12.9, label %land.lhs.true.9.cleanup_crit_edge, label %land.lhs.true.9.for.inc.9_crit_edge

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.9

land.lhs.true.9.cleanup_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 10
  %46 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %cmp5.not.10 = icmp eq i16 %47, -1
  br i1 %cmp5.not.10, label %for.inc.9.for.inc.10_crit_edge, label %land.lhs.true.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %port9.10 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 10, i32 1
  %48 = ptrtoint ptr %port9.10 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %port9.10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %port)
  %cmp12.10 = icmp eq i16 %49, %port
  br i1 %cmp12.10, label %land.lhs.true.10.cleanup_crit_edge, label %land.lhs.true.10.for.inc.10_crit_edge

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.10

land.lhs.true.10.cleanup_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 11
  %50 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp5.not.11 = icmp eq i16 %51, -1
  br i1 %cmp5.not.11, label %for.inc.10.for.inc.11_crit_edge, label %land.lhs.true.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  %port9.11 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 11, i32 1
  %52 = ptrtoint ptr %port9.11 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port9.11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %port)
  %cmp12.11 = icmp eq i16 %53, %port
  br i1 %cmp12.11, label %land.lhs.true.11.cleanup_crit_edge, label %land.lhs.true.11.for.inc.11_crit_edge

land.lhs.true.11.for.inc.11_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.11

land.lhs.true.11.cleanup_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.11:                                       ; preds = %land.lhs.true.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 12
  %54 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %cmp5.not.12 = icmp eq i16 %55, -1
  br i1 %cmp5.not.12, label %for.inc.11.for.inc.12_crit_edge, label %land.lhs.true.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  %port9.12 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 12, i32 1
  %56 = ptrtoint ptr %port9.12 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %port9.12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %port)
  %cmp12.12 = icmp eq i16 %57, %port
  br i1 %cmp12.12, label %land.lhs.true.12.cleanup_crit_edge, label %land.lhs.true.12.for.inc.12_crit_edge

land.lhs.true.12.for.inc.12_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.12

land.lhs.true.12.cleanup_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.12:                                       ; preds = %land.lhs.true.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 13
  %58 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp5.not.13 = icmp eq i16 %59, -1
  br i1 %cmp5.not.13, label %for.inc.12.for.inc.13_crit_edge, label %land.lhs.true.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  %port9.13 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 13, i32 1
  %60 = ptrtoint ptr %port9.13 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %port9.13, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %port)
  %cmp12.13 = icmp eq i16 %61, %port
  br i1 %cmp12.13, label %land.lhs.true.13.cleanup_crit_edge, label %land.lhs.true.13.for.inc.13_crit_edge

land.lhs.true.13.for.inc.13_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.13

land.lhs.true.13.cleanup_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.13:                                       ; preds = %land.lhs.true.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 14
  %62 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp5.not.14 = icmp eq i16 %63, -1
  br i1 %cmp5.not.14, label %for.inc.13.for.inc.14_crit_edge, label %land.lhs.true.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  %port9.14 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 14, i32 1
  %64 = ptrtoint ptr %port9.14 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %port9.14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %port)
  %cmp12.14 = icmp eq i16 %65, %port
  br i1 %cmp12.14, label %land.lhs.true.14.cleanup_crit_edge, label %land.lhs.true.14.for.inc.14_crit_edge

land.lhs.true.14.for.inc.14_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.14

land.lhs.true.14.cleanup_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.14:                                       ; preds = %land.lhs.true.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 15
  %66 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %67)
  %cmp5.not.15 = icmp eq i16 %67, -1
  br i1 %cmp5.not.15, label %for.inc.14.for.inc.15_crit_edge, label %land.lhs.true.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.inc.14
  %port9.15 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 15, i32 1
  %68 = ptrtoint ptr %port9.15 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %port9.15, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %port)
  %cmp12.15 = icmp eq i16 %69, %port
  br i1 %cmp12.15, label %land.lhs.true.15.cleanup_crit_edge, label %land.lhs.true.15.for.inc.15_crit_edge

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.15

land.lhs.true.15.cleanup_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.15, %land.lhs.true.15.cleanup_crit_edge, %land.lhs.true.14.cleanup_crit_edge, %land.lhs.true.13.cleanup_crit_edge, %land.lhs.true.12.cleanup_crit_edge, %land.lhs.true.11.cleanup_crit_edge, %land.lhs.true.10.cleanup_crit_edge, %land.lhs.true.9.cleanup_crit_edge, %land.lhs.true.8.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true.1.cleanup_crit_edge ], [ true, %land.lhs.true.2.cleanup_crit_edge ], [ true, %land.lhs.true.3.cleanup_crit_edge ], [ true, %land.lhs.true.4.cleanup_crit_edge ], [ true, %land.lhs.true.5.cleanup_crit_edge ], [ true, %land.lhs.true.6.cleanup_crit_edge ], [ true, %land.lhs.true.7.cleanup_crit_edge ], [ true, %land.lhs.true.8.cleanup_crit_edge ], [ true, %land.lhs.true.9.cleanup_crit_edge ], [ true, %land.lhs.true.10.cleanup_crit_edge ], [ true, %land.lhs.true.11.cleanup_crit_edge ], [ true, %land.lhs.true.12.cleanup_crit_edge ], [ true, %land.lhs.true.13.cleanup_crit_edge ], [ true, %land.lhs.true.14.cleanup_crit_edge ], [ true, %land.lhs.true.15.cleanup_crit_edge ], [ false, %for.inc.15 ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_probe(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1192) #24
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %1 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %nic_data1, align 8
  %call2 = tail call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef nonnull %call7.i.i, i32 noundef 1032, i32 noundef 3264) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail1

for.cond.preheader:                               ; preds = %if.end
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i287 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i287) #19, !srcloc !422
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #19
  %shr.mask.i288 = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i288)
  %cmp.i289 = icmp eq i32 %shr.mask.i288, -1341718528
  br i1 %cmp.i289, label %for.cond.preheader.for.end_crit_edge, label %if.end8.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end8.preheader:                                ; preds = %for.cond.preheader
  tail call void @msleep(i32 noundef 1000) #19
  %6 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #19, !srcloc !422
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  %shr.mask.i = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, -1341718528
  br i1 %cmp.i, label %if.end8.preheader.for.end_crit_edge, label %if.end8.1

if.end8.preheader.for.end_crit_edge:              ; preds = %if.end8.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end8.1:                                        ; preds = %if.end8.preheader
  tail call void @msleep(i32 noundef 1000) #19
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.1) #19, !srcloc !422
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #19
  %shr.mask.i.1 = and i32 %13, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.1)
  %cmp.i.1 = icmp eq i32 %shr.mask.i.1, -1341718528
  br i1 %cmp.i.1, label %if.end8.1.for.end_crit_edge, label %if.end8.2

if.end8.1.for.end_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end8.2:                                        ; preds = %if.end8.1
  tail call void @msleep(i32 noundef 1000) #19
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.2) #19, !srcloc !422
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #19
  %shr.mask.i.2 = and i32 %17, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.2)
  %cmp.i.2 = icmp eq i32 %shr.mask.i.2, -1341718528
  br i1 %cmp.i.2, label %if.end8.2.for.end_crit_edge, label %if.end8.3

if.end8.2.for.end_crit_edge:                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.end8.3:                                        ; preds = %if.end8.2
  tail call void @msleep(i32 noundef 1000) #19
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.3) #19, !srcloc !422
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #19
  %shr.mask.i.3 = and i32 %21, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1341718528, i32 %shr.mask.i.3)
  %cmp.i.3 = icmp eq i32 %shr.mask.i.3, -1341718528
  br i1 %cmp.i.3, label %if.end8.3.for.end_crit_edge, label %if.end8.3.fail2_crit_edge

if.end8.3.fail2_crit_edge:                        ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail2

if.end8.3.for.end_crit_edge:                      ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %if.end8.3.for.end_crit_edge, %if.end8.2.for.end_crit_edge, %if.end8.1.for.end_crit_edge, %if.end8.preheader.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %5, %for.cond.preheader.for.end_crit_edge ], [ %9, %if.end8.preheader.for.end_crit_edge ], [ %13, %if.end8.1.for.end_crit_edge ], [ %17, %if.end8.2.for.end_crit_edge ], [ %21, %if.end8.3.for.end_crit_edge ]
  %conv = trunc i32 %.lcssa to i16
  %warm_boot_count = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %warm_boot_count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %warm_boot_count, align 4
  %23 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #19, !srcloc !419
  %call12 = tail call i32 @efx_mcdi_init(ptr noundef %efx) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body16, label %for.end.fail2_crit_edge

for.end.fail2_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail2

do.body16:                                        ; preds = %for.end
  %udp_tunnels_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 31
  tail call void @__mutex_init(ptr noundef %udp_tunnels_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @efx_ef10_probe.__key) #19
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %arrayidx.6, align 8
  %arrayidx.7 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 8
  %33 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %arrayidx.8, align 8
  %arrayidx.9 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 9
  %34 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 10
  %35 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %arrayidx.10, align 8
  %arrayidx.11 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 11
  %36 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 12
  %37 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %arrayidx.12, align 8
  %arrayidx.13 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 13
  %38 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 14
  %39 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %arrayidx.14, align 8
  %arrayidx.15 = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 29, i32 15
  %40 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %arrayidx.15, align 4
  %call24 = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %do.body16.fail3_crit_edge

do.body16.fail3_crit_edge:                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail3

if.end27:                                         ; preds = %do.body16
  %call28 = tail call i32 @efx_mcdi_log_ctrl(ptr noundef %efx, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.fail3_crit_edge

if.end27.fail3_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail3

if.end31:                                         ; preds = %if.end27
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %41 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %call32 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_link_control_flag) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.fail3_crit_edge

if.end31.fail3_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail3

if.end35:                                         ; preds = %if.end31
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %call38 = tail call i32 @device_create_file(ptr noundef %dev37, ptr noundef nonnull @dev_attr_primary_flag) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.fail4_crit_edge

if.end35.fail4_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail4

if.end41:                                         ; preds = %if.end35
  %pf_index = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 22
  %call42 = tail call i32 @efx_get_pf_index(ptr noundef %efx, ptr noundef %pf_index) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.fail5_crit_edge

if.end41.fail5_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc i32 @efx_ef10_init_datapath_caps(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.fail5_crit_edge, label %if.end50

if.end45.fail5_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.end50:                                         ; preds = %if.end45
  tail call fastcc void @efx_ef10_read_licensed_features(ptr noundef %efx)
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 17
  %45 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %datapath_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool51.not = icmp sgt i32 %46, -1
  %spec.select = select i1 %tobool51.not, i32 2, i32 4
  %47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 48
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select, ptr %47, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %type.i, align 4
  %mem_bar.i = getelementptr inbounds %struct.efx_nic_type, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %mem_bar.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem_bar.i, align 4
  %call.i = tail call i32 %52(ptr noundef %efx) #19
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %54, i32 0, i32 47, i32 %call.i
  %end.i.i = getelementptr %struct.pci_dev, ptr %54, i32 0, i32 47, i32 %call.i, i32 1
  %55 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end.i.i, align 4
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  %sub.i.i = add i32 %56, 1
  %add.i.i = sub i32 %sub.i.i, %58
  %vi_stride = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %59 = ptrtoint ptr %vi_stride to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vi_stride, align 128
  %div = udiv i32 %add.i.i, %60
  %max_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 40
  %61 = ptrtoint ptr %max_vis to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div, ptr %max_vis, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add.i.i)
  %tobool57.not = icmp ugt i32 %60, %add.i.i
  br i1 %tobool57.not, label %do.body59, label %if.end66

do.body59:                                        ; preds = %if.end50
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %62 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msg_enable, align 4
  %and60 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.fail5_crit_edge, label %if.then62

do.body59.fail5_crit_edge:                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.then62:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %64 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.5) #22
  br label %fail5

if.end66:                                         ; preds = %if.end50
  %66 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %47, align 128
  %div69 = udiv i32 %div, %67
  %68 = tail call i32 @llvm.umin.i32(i32 %div69, i32 32)
  %max_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 39
  %69 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %max_channels, align 4
  %max_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  %70 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %max_tx_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp74 = icmp eq i32 %68, 0
  br i1 %cmp74, label %do.end87, label %if.end103, !prof !413

do.end87:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 620, i32 noundef 9, ptr noundef null) #19
  br label %fail5

if.end103:                                        ; preds = %if.end66
  %rx_packet_len_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 61
  %71 = ptrtoint ptr %rx_packet_len_offset to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -6, ptr %rx_packet_len_offset, align 4
  %72 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %datapath_caps, align 4
  %and105 = and i32 %73, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end109_crit_edge, label %if.then107

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end109

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev108 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %74 = ptrtoint ptr %net_dev108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net_dev108, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 24
  %76 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %hw_features, align 8
  %or = or i64 %77, 8796093022208
  store i64 %or, ptr %hw_features, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end103.if.end109_crit_edge
  %call110 = tail call i32 @efx_mcdi_port_get_number(ptr noundef %efx) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end109.fail5_crit_edge, label %if.end114

if.end109.fail5_crit_edge:                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.end114:                                        ; preds = %if.end109
  %port_num = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %78 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call110, ptr %port_num, align 8
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %type.i, align 4
  %get_mac_address = getelementptr inbounds %struct.efx_nic_type, ptr %80, i32 0, i32 111
  %81 = ptrtoint ptr %get_mac_address to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get_mac_address, align 4
  %net_dev116 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %83 = ptrtoint ptr %net_dev116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_dev116, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 54
  %call117 = tail call i32 %82(ptr noundef %efx, ptr noundef %perm_addr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end114.fail5_crit_edge

if.end114.fail5_crit_edge:                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.end120:                                        ; preds = %if.end114
  %call121 = tail call fastcc i32 @efx_ef10_get_timer_config(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.end120.fail5_crit_edge, label %if.end125

if.end120.fail5_crit_edge:                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.end125:                                        ; preds = %if.end120
  %call126 = tail call i32 @efx_mcdi_mon_probe(ptr noundef %efx) #19
  %85 = zext i32 %call126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %call126, label %if.end125.fail5_crit_edge [
    i32 0, label %if.end125.if.end131_crit_edge
    i32 -1, label %if.end125.if.end131_crit_edge293
  ]

if.end125.if.end131_crit_edge293:                 ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

if.end125.fail5_crit_edge:                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail5

if.end131:                                        ; preds = %if.end125.if.end131_crit_edge, %if.end125.if.end131_crit_edge293
  tail call void @efx_ptp_defer_probe_with_channel(ptr noundef %efx) #19
  %86 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci_dev, align 4
  %88 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 66
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %tobool133.not = icmp eq ptr %90, null
  br i1 %tobool133.not, label %if.end131.if.else144_crit_edge, label %land.lhs.true134

if.end131.if.else144_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else144

land.lhs.true134:                                 ; preds = %if.end131
  %is_physfn = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 49
  %91 = ptrtoint ptr %is_physfn to i32
  call void @__asan_loadN_noabort(i32 %91, i32 5)
  %bf.load = load i40, ptr %is_physfn, align 1
  %92 = and i40 %bf.load, 131072
  %tobool136.not = icmp eq i40 %92, 0
  br i1 %tobool136.not, label %if.then137, label %land.lhs.true134.if.else144_crit_edge

land.lhs.true134.if.else144_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else144

if.then137:                                       ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #21
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i, align 4
  %type140 = getelementptr inbounds %struct.efx_nic, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %type140 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %type140, align 4
  %get_mac_address141 = getelementptr inbounds %struct.efx_nic_type, ptr %96, i32 0, i32 111
  %97 = ptrtoint ptr %get_mac_address141 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %get_mac_address141, align 4
  %port_id = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 23
  %call143 = tail call i32 %98(ptr noundef %94, ptr noundef %port_id) #19
  br label %if.end150

if.else144:                                       ; preds = %land.lhs.true134.if.else144_crit_edge, %if.end131.if.else144_crit_edge
  %port_id145 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 23
  %99 = ptrtoint ptr %net_dev116 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net_dev116, align 4
  %perm_addr148 = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 54
  %101 = ptrtoint ptr %perm_addr148 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %perm_addr148, align 4
  %103 = ptrtoint ptr %port_id145 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %port_id145, align 4
  %add.ptr.i284 = getelementptr %struct.net_device, ptr %100, i32 0, i32 54, i32 4
  %104 = ptrtoint ptr %add.ptr.i284 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i284, align 2
  %add.ptr1.i = getelementptr %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 23, i32 4
  %106 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %add.ptr1.i, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.else144, %if.then137
  %vlan_list = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 27
  %107 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %vlan_list, ptr %vlan_list, align 4
  %prev.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 27, i32 1
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %vlan_list, ptr %prev.i, align 8
  %vlan_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %call7.i.i, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %vlan_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @efx_ef10_probe.__key.6) #19
  %call154 = tail call fastcc i32 @efx_ef10_add_vlan(ptr noundef %efx, i16 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.end150.fail_add_vid_unspec_crit_edge

if.end150.fail_add_vid_unspec_crit_edge:          ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #21
  br label %fail_add_vid_unspec

if.end157:                                        ; preds = %if.end150
  %call158 = tail call fastcc i32 @efx_ef10_add_vlan(ptr noundef %efx, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %fail_add_vid_0

if.end161:                                        ; preds = %if.end157
  %109 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %datapath_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %tobool164.not = icmp sgt i32 %110, -1
  br i1 %tobool164.not, label %if.end161.cleanup_crit_edge, label %land.lhs.true165

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true165:                                 ; preds = %if.end161
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %111 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mcdi, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fn_flags, align 4
  %and166 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %land.lhs.true165.cleanup_crit_edge, label %if.then168

land.lhs.true165.cleanup_crit_edge:               ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then168:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #21
  %115 = ptrtoint ptr %net_dev116 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %net_dev116, align 4
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 152
  %117 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @efx_ef10_udp_tunnels, ptr %udp_tunnel_nic_info, align 4
  br label %cleanup

fail_add_vid_0:                                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @efx_ef10_cleanup_vlans(ptr noundef %efx)
  br label %fail_add_vid_unspec

fail_add_vid_unspec:                              ; preds = %fail_add_vid_0, %if.end150.fail_add_vid_unspec_crit_edge
  %rc.0 = phi i32 [ %call154, %if.end150.fail_add_vid_unspec_crit_edge ], [ %call158, %fail_add_vid_0 ]
  tail call void @mutex_destroy(ptr noundef %vlan_lock) #19
  tail call void @efx_ptp_remove(ptr noundef %efx) #19
  tail call void @efx_mcdi_mon_remove(ptr noundef %efx) #19
  br label %fail5

fail5:                                            ; preds = %fail_add_vid_unspec, %if.end125.fail5_crit_edge, %if.end120.fail5_crit_edge, %if.end114.fail5_crit_edge, %if.end109.fail5_crit_edge, %do.end87, %if.then62, %do.body59.fail5_crit_edge, %if.end45.fail5_crit_edge, %if.end41.fail5_crit_edge
  %rc.1 = phi i32 [ %call42, %if.end41.fail5_crit_edge ], [ %call46, %if.end45.fail5_crit_edge ], [ -5, %do.end87 ], [ %call110, %if.end109.fail5_crit_edge ], [ %call117, %if.end114.fail5_crit_edge ], [ %call121, %if.end120.fail5_crit_edge ], [ %rc.0, %fail_add_vid_unspec ], [ -5, %if.then62 ], [ -5, %do.body59.fail5_crit_edge ], [ %call126, %if.end125.fail5_crit_edge ]
  %118 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pci_dev, align 4
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev173, ptr noundef nonnull @dev_attr_primary_flag) #19
  br label %fail4

fail4:                                            ; preds = %fail5, %if.end35.fail4_crit_edge
  %rc.2 = phi i32 [ %call38, %if.end35.fail4_crit_edge ], [ %rc.1, %fail5 ]
  %120 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci_dev, align 4
  %dev175 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev175, ptr noundef nonnull @dev_attr_link_control_flag) #19
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end31.fail3_crit_edge, %if.end27.fail3_crit_edge, %do.body16.fail3_crit_edge
  %rc.3 = phi i32 [ %call24, %do.body16.fail3_crit_edge ], [ %call28, %if.end27.fail3_crit_edge ], [ %call32, %if.end31.fail3_crit_edge ], [ %rc.2, %fail4 ]
  tail call void @efx_mcdi_detach(ptr noundef %efx) #19
  tail call void @mutex_lock_nested(ptr noundef %udp_tunnels_lock, i32 noundef 0) #19
  %122 = call ptr @memset(ptr %arrayidx, i32 0, i32 64)
  %call179 = tail call fastcc i32 @efx_ef10_set_udp_tnl_ports(ptr noundef %efx, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %udp_tunnels_lock) #19
  tail call void @mutex_destroy(ptr noundef %udp_tunnels_lock) #19
  tail call void @efx_mcdi_fini(ptr noundef %efx) #19
  br label %fail2

fail2:                                            ; preds = %fail3, %for.end.fail2_crit_edge, %if.end8.3.fail2_crit_edge
  %rc.4 = phi i32 [ %call12, %for.end.fail2_crit_edge ], [ %rc.3, %fail3 ], [ -5, %if.end8.3.fail2_crit_edge ]
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef nonnull %call7.i.i) #19
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %rc.5 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ %rc.4, %fail2 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  %123 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %nic_data1, align 8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.then168, %land.lhs.true165.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.5, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then168 ], [ 0, %land.lhs.true165.cleanup_crit_edge ], [ 0, %if.end161.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_log_ctrl(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_get_pf_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_init_datapath_caps(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [20 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %outbuf) #19
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 80)
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %1 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 190, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 80, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup140_crit_edge

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup140

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp = icmp ult i32 %5, 20
  br i1 %cmp, label %do.body3, label %if.end9

do.body3:                                         ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body3.cleanup140_crit_edge, label %if.then5

do.body3.cleanup140_crit_edge:                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup140

if.then5:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #22
  br label %cleanup140

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outbuf, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 17
  %13 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %datapath_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %5)
  %cmp12 = icmp ugt i32 %5, 71
  br i1 %cmp12, label %if.then13, label %if.end9.if.end24_crit_edge

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr15 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 5
  %14 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr15, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %add.ptr20 = getelementptr inbounds i8, ptr %outbuf, i32 70
  %17 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr20, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %if.end9.if.end24_crit_edge
  %.sink179 = phi i32 [ %16, %if.then13 ], [ 0, %if.end9.if.end24_crit_edge ]
  %.sink = phi i16 [ %19, %if.then13 ], [ 2048, %if.end9.if.end24_crit_edge ]
  %20 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 18
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink179, ptr %20, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 9
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %22, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %outbuf, i32 4
  %24 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr26, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv27 = zext i16 %26 to i32
  %rx_dpcpu_fw_id = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 19
  %27 = ptrtoint ptr %rx_dpcpu_fw_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv27, ptr %rx_dpcpu_fw_id, align 4
  %add.ptr30 = getelementptr inbounds i8, ptr %outbuf, i32 6
  %28 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr30, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv31 = zext i16 %30 to i32
  %tx_dpcpu_fw_id = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 20
  %31 = ptrtoint ptr %tx_dpcpu_fw_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv31, ptr %tx_dpcpu_fw_id, align 8
  %32 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %datapath_caps, align 4
  %and34 = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body37, label %if.end46

do.body37:                                        ; preds = %if.end24
  %msg_enable38 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %34 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable38, align 4
  %and39 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.cleanup140_crit_edge, label %if.then41

do.body37.cleanup140_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup140

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev42 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %36 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev42, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.12) #22
  br label %cleanup140

if.end46:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %5)
  %cmp47 = icmp ugt i32 %5, 75
  br i1 %cmp47, label %if.then49, label %do.body57

if.then49:                                        ; preds = %if.end46
  %add.ptr51 = getelementptr inbounds i8, ptr %outbuf, i32 72
  %38 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr51, align 4
  %call52 = call i32 @efx_mcdi_window_mode_to_stride(ptr noundef %efx, i8 noundef zeroext %39) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then49.if.end75_crit_edge, label %if.then49.cleanup140_crit_edge

if.then49.cleanup140_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup140

if.then49.if.end75_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75

do.body57:                                        ; preds = %if.end46
  %msg_enable58 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %40 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable58, align 4
  %and59 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body57.if.end75_crit_edge, label %do.body62

do.body57.if.end75_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75

do.body62:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_init_datapath_caps, %if.then67)) #19
          to label %if.end75 [label %if.then67], !srcloc !416

if.then67:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev68 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %42 = ptrtoint ptr %net_dev68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev68, align 4
  %vi_stride = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %44 = ptrtoint ptr %vi_stride to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vi_stride, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug599, ptr noundef %43, ptr noundef nonnull @.str.15, i32 noundef %45) #19
  br label %if.end75

if.end75:                                         ; preds = %if.then67, %do.body62, %do.body57.if.end75_crit_edge, %if.then49.if.end75_crit_edge
  %46 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %47)
  %cmp76 = icmp ugt i32 %47, 77
  br i1 %cmp76, label %if.then78, label %do.body112

if.then78:                                        ; preds = %if.end75
  %add.ptr80 = getelementptr inbounds i8, ptr %outbuf, i32 76
  %48 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr80, align 4
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %51 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %num_mac_stats, align 8
  %msg_enable85 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %52 = ptrtoint ptr %msg_enable85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable85, align 4
  %and86 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.then78.cleanup140_crit_edge, label %do.body89

if.then78.cleanup140_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup140

do.body89:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_init_datapath_caps, %if.then101)) #19
          to label %cleanup140 [label %if.then101], !srcloc !416

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev102 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %54 = ptrtoint ptr %net_dev102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net_dev102, align 4
  %56 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_mac_stats, align 8
  %conv104 = zext i16 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug600, ptr noundef %55, ptr noundef nonnull @.str.16, i32 noundef %conv104) #19
  br label %cleanup140

do.body112:                                       ; preds = %if.end75
  %msg_enable113 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %58 = ptrtoint ptr %msg_enable113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable113, align 4
  %and114 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body112.cleanup140_crit_edge, label %do.body117

do.body112.cleanup140_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup140

do.body117:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_init_datapath_caps, %if.then129)) #19
          to label %cleanup140 [label %if.then129], !srcloc !416

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev130 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %60 = ptrtoint ptr %net_dev130 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev130, align 4
  %num_mac_stats131 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %62 = ptrtoint ptr %num_mac_stats131 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_mac_stats131, align 8
  %conv132 = zext i16 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug601, ptr noundef %61, ptr noundef nonnull @.str.17, i32 noundef %conv132) #19
  br label %cleanup140

cleanup140:                                       ; preds = %if.then129, %do.body117, %do.body112.cleanup140_crit_edge, %if.then101, %do.body89, %if.then78.cleanup140_crit_edge, %if.then49.cleanup140_crit_edge, %if.then41, %do.body37.cleanup140_crit_edge, %if.then5, %do.body3.cleanup140_crit_edge, %entry.cleanup140_crit_edge
  %retval.1 = phi i32 [ %call52, %if.then49.cleanup140_crit_edge ], [ %call, %entry.cleanup140_crit_edge ], [ -5, %if.then5 ], [ -5, %do.body3.cleanup140_crit_edge ], [ -19, %if.then41 ], [ -19, %do.body37.cleanup140_crit_edge ], [ 0, %do.body112.cleanup140_crit_edge ], [ 0, %if.then129 ], [ 0, %if.then78.cleanup140_crit_edge ], [ 0, %if.then101 ], [ 0, %do.body89 ], [ 0, %do.body117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %outbuf) #19
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_ef10_read_licensed_features(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [22 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #19
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %outbuf) #19
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 88)
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %1 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %4 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 208, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 88, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %6)
  %cmp = icmp ult i32 %6, 88
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr5 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 14
  %7 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5, align 4
  %arrayidx10 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 15
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %11 = zext i32 %10 to i64
  %12 = zext i32 %8 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %licensed_features = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %2, i32 0, i32 32
  %16 = ptrtoint ptr %licensed_features to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %licensed_features, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %outbuf) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_get_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_get_timer_config(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf = alloca [9 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %outbuf) #19
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 36)
  %call = tail call fastcc i32 @efx_ef10_get_timer_workarounds(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

if.end:                                           ; preds = %entry
  %call1 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 290, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 36, ptr noundef null) #19
  %1 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %call1, label %if.else11 [
    i32 0, label %if.then2
    i32 -38, label %if.end.if.then6_crit_edge
    i32 -1, label %if.end.if.then6_crit_edge57
  ]

if.end.if.then6_crit_edge57:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then6

if.then2:                                         ; preds = %if.end
  %nic_data.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data.i, align 8
  %workaround_61265.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %workaround_61265.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %workaround_61265.i, align 2, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7) #19
  %timer_quantum_ns.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %9 = ptrtoint ptr %timer_quantum_ns.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %timer_quantum_ns.i, align 8
  %add.ptr1.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #19
  br label %do.body.i

if.else.i:                                        ; preds = %if.then2
  %workaround_35388.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %workaround_35388.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %workaround_35388.i, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not.i = icmp eq i8 %14, 0
  br i1 %tobool6.not.i, label %if.else19.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr8.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 6
  %15 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr8.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #19
  %timer_quantum_ns12.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %18 = ptrtoint ptr %timer_quantum_ns12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %timer_quantum_ns12.i, align 8
  %add.ptr13.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 7
  %19 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr13.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #19
  %mul.i = mul i32 %21, %17
  br label %do.body.i

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr20.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %22 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr20.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #19
  %timer_quantum_ns24.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %25 = ptrtoint ptr %timer_quantum_ns24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %timer_quantum_ns24.i, align 8
  %add.ptr25.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %26 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr25.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #19
  %mul30.i = mul i32 %28, %24
  br label %do.body.i

do.body.i:                                        ; preds = %if.else19.i, %if.then7.i, %if.then.i
  %.sink.i = phi i32 [ %12, %if.then.i ], [ %mul30.i, %if.else19.i ], [ %mul.i, %if.then7.i ]
  %timer_max_ns.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 17
  %29 = ptrtoint ptr %timer_max_ns.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %timer_max_ns.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 4
  %and33.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body.i.cleanup14_crit_edge, label %do.body36.i

do.body.i.cleanup14_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

do.body36.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_process_timer_config.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_get_timer_config, %if.then40.i)) #19
          to label %cleanup14 [label %if.then40.i], !srcloc !416

if.then40.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %32 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev.i, align 4
  %timer_quantum_ns41.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %34 = ptrtoint ptr %timer_quantum_ns41.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timer_quantum_ns41.i, align 8
  %36 = ptrtoint ptr %timer_max_ns.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timer_max_ns.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_process_timer_config.__UNIQUE_ID_ddebug604, ptr noundef %33, ptr noundef nonnull @.str.24, i32 noundef %35, i32 noundef %37) #19
  br label %cleanup14

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #19
  %38 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %outbuf.i, align 8
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 172, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i33 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i33, label %if.end.i, label %efx_ef10_get_sysclk_freq.exit

if.end.i:                                         ; preds = %if.then6
  %39 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %outbuf.i, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp sgt i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #19
  br i1 %cmp.i, label %cleanup, label %if.end.i.cleanup14_crit_edge

if.end.i.cleanup14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

efx_ef10_get_sysclk_freq.exit:                    ; preds = %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %efx_ef10_get_sysclk_freq.exit.cleanup14_crit_edge, label %cleanup.thread46

efx_ef10_get_sysclk_freq.exit.cleanup14_crit_edge: ; preds = %efx_ef10_get_sysclk_freq.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

cleanup.thread46:                                 ; preds = %efx_ef10_get_sysclk_freq.exit
  call void @__sanitizer_cov_trace_pc() #21
  %div4956 = udiv i32 1536000, %call.i
  %timer_quantum_ns50 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %42 = ptrtoint ptr %timer_quantum_ns50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div4956, ptr %timer_quantum_ns50, align 8
  %type51 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %43 = ptrtoint ptr %type51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %type51, align 4
  %timer_period_max52 = getelementptr inbounds %struct.efx_nic_type, ptr %44, i32 0, i32 133
  %45 = ptrtoint ptr %timer_period_max52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timer_period_max52, align 8
  %mul53 = mul i32 %46, %div4956
  %timer_max_ns54 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 17
  %47 = ptrtoint ptr %timer_max_ns54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul53, ptr %timer_max_ns54, align 4
  br label %cleanup14

cleanup:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %div55 = udiv i32 1536000, %41
  %timer_quantum_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %48 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div55, ptr %timer_quantum_ns, align 8
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %type, align 4
  %timer_period_max = getelementptr inbounds %struct.efx_nic_type, ptr %50, i32 0, i32 133
  %51 = ptrtoint ptr %timer_period_max to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %timer_period_max, align 8
  %mul = mul i32 %52, %div55
  %timer_max_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 17
  %53 = ptrtoint ptr %timer_max_ns to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %timer_max_ns, align 4
  br label %cleanup14

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 290, i32 noundef 36, ptr noundef null, i32 noundef 0, i32 noundef %call1) #19
  br label %cleanup14

cleanup14:                                        ; preds = %if.else11, %cleanup, %cleanup.thread46, %efx_ef10_get_sysclk_freq.exit.cleanup14_crit_edge, %if.end.i.cleanup14_crit_edge, %if.then40.i, %do.body36.i, %do.body.i.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup14_crit_edge ], [ 0, %cleanup ], [ %call1, %if.else11 ], [ 0, %do.body.i.cleanup14_crit_edge ], [ 0, %do.body36.i ], [ 0, %if.then40.i ], [ 0, %cleanup.thread46 ], [ %call.i, %efx_ef10_get_sysclk_freq.exit.cleanup14_crit_edge ], [ -34, %if.end.i.cleanup14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %outbuf) #19
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mon_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_defer_probe_with_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_add_vlan(ptr noundef %efx, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vlan_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vlan_lock, i32 noundef 0) #19
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %vlan_lock.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 28
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %vlan_lock.i) #19
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !414

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 402, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %vlan_list.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 27
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %vlan.0.in.i = phi ptr [ %vlan_list.i, %if.end.i ], [ %vlan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %vlan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %vlan.0.i = load ptr, ptr %vlan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vlan.0.i, %vlan_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end8_crit_edge, label %for.body.i

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

for.body.i:                                       ; preds = %for.cond.i
  %vid25.i = getelementptr inbounds %struct.efx_ef10_vlan, ptr %vlan.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %vid25.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid25.i, align 4
  %cmp27.i = icmp eq i16 %6, %vid
  br i1 %cmp27.i, label %efx_ef10_find_vlan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i

efx_ef10_find_vlan.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vlan.0.i, null
  br i1 %tobool.not, label %efx_ef10_find_vlan.exit.if.end8_crit_edge, label %if.then

efx_ef10_find_vlan.exit.if.end8_crit_edge:        ; preds = %efx_ef10_find_vlan.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then:                                          ; preds = %efx_ef10_find_vlan.exit
  %conv = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp = icmp eq i16 %vid, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.25, i32 noundef %conv) #22
  br label %cleanup

if.end8:                                          ; preds = %efx_ef10_find_vlan.exit.if.end8_crit_edge, %for.cond.i.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 12) #24
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %vid13 = getelementptr inbounds %struct.efx_ef10_vlan, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %vid13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %vid, ptr %vid13, align 8
  %vlan_list = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 27
  %prev.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 27, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %14, ptr noundef %vlan_list) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vlan_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %19 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filter_state, align 8
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.then15

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then15:                                        ; preds = %list_add_tail.exit
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #19
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #19
  %21 = ptrtoint ptr %vid13 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid13, align 8
  %call17 = tail call i32 @efx_mcdi_filter_add_vlan(ptr noundef %efx, i16 noundef zeroext %22) #19
  tail call void @up_write(ptr noundef %filter_sem) #19
  tail call void @mutex_unlock(ptr noundef %mac_lock) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool20.not = icmp eq i32 %call17, 0
  br i1 %tobool20.not, label %if.then15.cleanup_crit_edge, label %fail_filter_add_vlan

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

fail_filter_add_vlan:                             ; preds = %if.then15
  %call.i.i51 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #19
  br i1 %call.i.i51, label %if.end.i.i52, label %fail_filter_add_vlan.list_del.exit_crit_edge

fail_filter_add_vlan.list_del.exit_crit_edge:     ; preds = %fail_filter_add_vlan
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i52:                                     ; preds = %fail_filter_add_vlan
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i52, %fail_filter_add_vlan.list_del.exit_crit_edge
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i53 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then15.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %call17, %list_del.exit ], [ -12, %if.end8.cleanup_crit_edge ], [ -114, %if.then5 ], [ -114, %do.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vlan_lock) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_ef10_cleanup_vlans(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vlan_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %vlan_lock, i32 noundef 0) #19
  %vlan_list = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan_list, align 4
  %cmp.not21 = icmp eq ptr %3, %vlan_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %vlan.022 = phi ptr [ %next_vlan.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %vlan.022 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next_vlan.0 = load ptr, ptr %vlan.022, align 4
  tail call fastcc void @efx_ef10_del_vlan_internal(ptr noundef %efx, ptr noundef %vlan.022)
  %cmp.not = icmp eq ptr %next_vlan.0, %vlan_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %vlan_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mon_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_set_udp_tnl_ports(ptr noundef %efx, i1 noundef zeroext %unloading) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [17 x %union.efx_dword], align 4
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %inbuf) #19
  %2 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #19
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %5 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %udp_tunnels_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 31
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %udp_tunnels_lock) #19
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !414

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3767, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %udp_tunnels_dirty = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %udp_tunnels_dirty to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %udp_tunnels_dirty, align 8
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datapath_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool21.not = icmp sgt i32 %8, -1
  br i1 %tobool21.not, label %if.then22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %inbuf, i32 4
  br label %for.body

if.then22:                                        ; preds = %if.end
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 2
  br i1 %cmp.not.i, label %if.then22.cleanup_crit_edge, label %land.lhs.true.i

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then22
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %11 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev.i, align 4
  tail call void @netif_device_attach(ptr noundef %14) #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0168 = phi i32 [ 0, %for.cond.preheader ], [ %inc49, %for.inc.for.body_crit_edge ]
  %num_entries.0167 = phi i32 [ 0, %for.cond.preheader ], [ %num_entries.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 %i.0168
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp27.not = icmp eq i16 %16, -1
  br i1 %cmp27.not, label %for.body.for.inc_crit_edge, label %if.then29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %conv = zext i16 %16 to i32
  %port = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 %i.0168, i32 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %port, align 2
  %conv35 = zext i16 %18 to i32
  %shl = shl nuw i32 %conv, 16
  %or41 = or i32 %shl, %conv35
  %19 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %inc = add i32 %num_entries.0167, 1
  %mul = shl i32 %num_entries.0167, 2
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 %mul
  %20 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr46, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body.for.inc_crit_edge
  %num_entries.1 = phi i32 [ %inc, %if.then29 ], [ %num_entries.0167, %for.body.for.inc_crit_edge ]
  %inc49 = add nuw nsw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc49, 16
  br i1 %exitcond.not, label %do.body56, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.body56:                                        ; preds = %for.inc
  %conv63 = zext i1 %unloading to i32
  %shl65 = shl i32 %num_entries.1, 16
  %or67 = or i32 %shl65, %conv63
  %21 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %22 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %inbuf, align 4
  %mul74 = shl i32 %num_entries.1, 2
  %add = add i32 %mul74, 4
  %call77 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 279, ptr noundef nonnull %inbuf, i32 noundef %add, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen) #19
  %23 = zext i32 %call77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %call77, label %do.body88 [
    i32 -5, label %if.then80
    i32 0, label %if.else
    i32 -1, label %do.body56.land.lhs.true_crit_edge
  ]

do.body56.land.lhs.true_crit_edge:                ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true

if.then80:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #21
  %24 = ptrtoint ptr %udp_tunnels_dirty to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %udp_tunnels_dirty, align 8
  br label %cleanup

do.body88:                                        ; preds = %do.body56
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and89 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.land.lhs.true_crit_edge, label %if.then91

do.body88.land.lhs.true_crit_edge:                ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true

if.then91:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %27 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.26, i32 noundef %call77) #22
  br label %land.lhs.true

if.else:                                          ; preds = %do.body56
  %29 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %outbuf, align 4
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool102.not = icmp eq i32 %31, 0
  br i1 %tobool102.not, label %if.else.land.lhs.true_crit_edge, label %do.body104

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true

do.body104:                                       ; preds = %if.else
  %msg_enable105 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %32 = ptrtoint ptr %msg_enable105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable105, align 4
  %and106 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body104.do.end112_crit_edge, label %if.then108

do.body104.do.end112_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end112

if.then108:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev109 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %34 = ptrtoint ptr %net_dev109 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev109, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %35, ptr noundef nonnull @.str.27) #22
  br label %do.end112

do.end112:                                        ; preds = %if.then108, %do.body104.do.end112_crit_edge
  br i1 %unloading, label %if.then114, label %do.end112.cleanup_crit_edge

do.end112.cleanup_crit_edge:                      ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then114:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #21
  call void @msleep(i32 noundef 100) #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %if.then91, %do.body88.land.lhs.true_crit_edge, %do.body56.land.lhs.true_crit_edge
  br i1 %unloading, label %land.lhs.true.cleanup_crit_edge, label %if.then120

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then120:                                       ; preds = %land.lhs.true
  %state.i159 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %36 = ptrtoint ptr %state.i159 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state.i159, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.not.i160 = icmp eq i32 %37, 2
  br i1 %cmp.not.i160, label %if.then120.cleanup_crit_edge, label %land.lhs.true.i163

if.then120.cleanup_crit_edge:                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i163:                               ; preds = %if.then120
  %reset_pending.i161 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %38 = ptrtoint ptr %reset_pending.i161 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reset_pending.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i162 = icmp eq i32 %39, 0
  br i1 %tobool.not.i162, label %if.then.i165, label %land.lhs.true.i163.cleanup_crit_edge

land.lhs.true.i163.cleanup_crit_edge:             ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i165:                                     ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev.i164 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %40 = ptrtoint ptr %net_dev.i164 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev.i164, align 4
  call void @netif_device_attach(ptr noundef %41) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i165, %land.lhs.true.i163.cleanup_crit_edge, %if.then120.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then114, %do.end112.cleanup_crit_edge, %if.then80, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then80 ], [ 0, %do.end112.cleanup_crit_edge ], [ 0, %if.then114 ], [ %call77, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call77, %if.then120.cleanup_crit_edge ], [ %call77, %land.lhs.true.i163.cleanup_crit_edge ], [ %call77, %if.then.i165 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #19
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %inbuf) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_control_flag_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fn_flags, align 4
  %and = lshr i32 %5, 1
  %and.lobit = and i32 %and, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and.lobit)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @primary_flag_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fn_flags, align 4
  %and = and i32 %5, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_window_mode_to_stride(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_get_timer_workarounds(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %implemented = alloca i32, align 4
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %implemented) #19
  %2 = ptrtoint ptr %implemented to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %implemented, align 4, !annotation !412
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #19
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %enabled, align 4, !annotation !412
  %workaround_35388 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %workaround_35388 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %workaround_35388, align 8
  %workaround_61265 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %workaround_61265 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %workaround_61265, align 2
  %call = call i32 @efx_mcdi_get_workarounds(ptr noundef %efx, ptr noundef nonnull %implemented, ptr noundef nonnull %enabled) #19
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call, label %do.body.fold.split [
    i32 -38, label %entry.do.body_crit_edge
    i32 0, label %if.then3
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.then3:                                         ; preds = %entry
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3.if.end_crit_edge, label %if.then4

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %workaround_61265 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %workaround_61265, align 2
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then3.if.end_crit_edge
  %and6 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %workaround_35388 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %workaround_35388, align 8
  br label %do.body

if.else10:                                        ; preds = %if.end
  %11 = ptrtoint ptr %implemented to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %implemented, align 4
  %and11 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else10.do.body_crit_edge, label %if.then13

if.else10.do.body_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.then13:                                        ; preds = %if.else10
  %call14 = call i32 @efx_mcdi_set_workaround(ptr noundef %efx, i32 noundef 2, i1 noundef zeroext true, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.then13.do.body_crit_edge

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %workaround_35388 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %workaround_35388, align 8
  br label %do.body

do.body.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %do.body.fold.split, %if.then16, %if.then13.do.body_crit_edge, %if.else10.do.body_crit_edge, %if.then8, %entry.do.body_crit_edge
  %rc.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.else10.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ %call, %do.body.fold.split ], [ 0, %if.then16 ], [ 0, %if.then13.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and23 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body.do.body38_crit_edge, label %do.body26

do.body.do.body38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body38

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_get_timer_workarounds, %if.then31)) #19
          to label %do.body38 [label %if.then31], !srcloc !416

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  %18 = ptrtoint ptr %workaround_35388 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %workaround_35388, align 8, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool33.not, ptr @.str.21, ptr @.str.20
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug602, ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #19
  br label %do.body38

do.body38:                                        ; preds = %if.then31, %do.body26, %do.body.do.body38_crit_edge
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and40 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.end65_crit_edge, label %do.body43

do.body38.do.end65_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end65

do.body43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_get_timer_workarounds, %if.then55)) #19
          to label %do.end65 [label %if.then55], !srcloc !416

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev56 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev56, align 4
  %24 = ptrtoint ptr %workaround_61265 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %workaround_61265, align 2, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool58.not = icmp eq i8 %25, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.21, ptr @.str.20
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug603, ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond59) #19
  br label %do.end65

do.end65:                                         ; preds = %if.then55, %do.body43, %do.body38.do.end65_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %implemented) #19
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_display_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_get_workarounds(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_workaround(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_add_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_udp_tnl_set_port(ptr noundef %dev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readonly %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data3 = getelementptr i8, ptr %dev, i32 4584
  %0 = ptrtoint ptr %nic_data3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data3, align 8
  %datapath_caps = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %datapath_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datapath_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ti, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp = icmp ne i16 %5, 1
  %. = zext i1 %cmp to i16
  %udp_tunnels_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %udp_tunnels_lock, i32 noundef 0) #19
  %net_dev.i = getelementptr i8, ptr %dev, i32 4732
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #19
  tail call void @netif_tx_lock(ptr noundef %7) #19
  tail call void @netif_device_detach(ptr noundef %7) #19
  tail call void @netif_tx_unlock(ptr noundef %7) #19
  tail call fastcc void @local_bh_enable() #19
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 %entry1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %., ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %port, align 2
  %port10 = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 %entry1, i32 1
  %11 = ptrtoint ptr %port10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %port10, align 2
  %call11 = tail call fastcc i32 @efx_ef10_set_udp_tnl_ports(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %udp_tunnels_lock) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end5 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_udp_tnl_unset_port(ptr noundef %dev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readnone %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %nic_data2 = getelementptr i8, ptr %dev, i32 4584
  %0 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data2, align 8
  %udp_tunnels_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %udp_tunnels_lock, i32 noundef 0) #19
  %net_dev.i = getelementptr i8, ptr %dev, i32 4732
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #19
  tail call void @netif_tx_lock(ptr noundef %3) #19
  tail call void @netif_device_detach(ptr noundef %3) #19
  tail call void @netif_tx_unlock(ptr noundef %3) #19
  tail call fastcc void @local_bh_enable() #19
  %arrayidx = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 %entry1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %arrayidx, align 4
  %port = getelementptr %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 29, i32 %entry1, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %port, align 2
  %call5 = tail call fastcc i32 @efx_ef10_set_udp_tnl_ports(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %udp_tunnels_lock) #19
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_ef10_del_vlan_internal(ptr noundef %efx, ptr noundef %vlan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %vlan_lock = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %1, i32 0, i32 28
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %vlan_lock) #19
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !414

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %2 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter_state, align 8
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %if.end.if.end24_crit_edge, label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #19
  %vid = getelementptr inbounds %struct.efx_ef10_vlan, ptr %vlan, i32 0, i32 1
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 4
  tail call void @efx_mcdi_filter_del_vlan(ptr noundef %efx, i16 noundef zeroext %5) #19
  tail call void @up_write(ptr noundef %filter_sem) #19
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.list_del.exit_crit_edge

if.end24.list_del.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vlan, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vlan, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end24.list_del.exit_crit_edge
  %12 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %vlan, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vlan, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vlan) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_del_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_rx_free_indir_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_free_vis(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_alloc_vis(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_map_reset_reason(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_table_reset_mc_allocations(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_describe_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_phy_get_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_update_stats_common(ptr noundef %efx, ptr noundef writeonly %full_stats, ptr noundef %core_stats) unnamed_addr #0 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #19
  %0 = getelementptr inbounds [3 x i32], ptr %mask, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %mask, i32 0, i32 2
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_data1, align 8
  %stats2 = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12
  %call.i.i = tail call i32 @efx_mcdi_phy_get_caps(ptr noundef %efx) #19
  %4 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_data1, align 8
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %6 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcdi.i.i, align 4
  %fn_flags.i.i = getelementptr inbounds %struct.efx_mcdi_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fn_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fn_flags.i.i, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge, label %if.end.i.i

entry.efx_ef10_raw_stat_mask.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_raw_stat_mask.exit.i

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %call.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %datapath_caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datapath_caps2.i.i, align 8
  %and5.i.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  %spec.select.i.i = select i1 %tobool6.not.i.i, i64 8796092891615, i64 8796093022207
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %raw_mask.0.i.i = phi i64 [ %spec.select.i.i, %if.then4.i.i ], [ 5497558138879, %if.end.i.i.if.end11.i.i_crit_edge ]
  %datapath_caps.i.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %5, i32 0, i32 17
  %12 = ptrtoint ptr %datapath_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %datapath_caps.i.i, align 4
  %and12.i.i = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %or15.i.i = or i64 %raw_mask.0.i.i, 36020000925941760
  %spec.select26.i.i = select i1 %tobool13.not.i.i, i64 %raw_mask.0.i.i, i64 %or15.i.i
  %extract.t51.i = trunc i64 %spec.select26.i.i to i32
  %extract.i = lshr i64 %spec.select26.i.i, 32
  %extract.t52.i = trunc i64 %extract.i to i32
  br label %efx_ef10_raw_stat_mask.exit.i

efx_ef10_raw_stat_mask.exit.i:                    ; preds = %if.end11.i.i, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge
  %retval.0.i.off0.i = phi i32 [ %extract.t51.i, %if.end11.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge ]
  %retval.0.i.off32.i = phi i32 [ %extract.t52.i, %if.end11.i.i ], [ 0, %entry.efx_ef10_raw_stat_mask.exit.i_crit_edge ]
  %datapath_caps.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %datapath_caps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %datapath_caps.i, align 4
  %and.i = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %raw_mask.sroa.8.0.i = select i1 %tobool.not.i, i32 0, i32 511
  %num_mac_stats.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %16 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_mac_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 103, i16 %17)
  %cmp.i = icmp ugt i16 %17, 103
  %extract.t48.i = or i32 %raw_mask.sroa.8.0.i, 32256
  %spec.select.i = select i1 %cmp.i, i32 %extract.t48.i, i32 %raw_mask.sroa.8.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %17)
  %cmp12.i = icmp ugt i16 %17, 120
  br i1 %cmp12.i, label %land.lhs.true.i, label %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge

efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge: ; preds = %efx_ef10_raw_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %efx_ef10_get_stat_mask.exit

land.lhs.true.i:                                  ; preds = %efx_ef10_raw_stat_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %datapath_caps2.i = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %datapath_caps2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datapath_caps2.i, align 8
  %and14.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %extract.t45.i = or i32 %spec.select.i, 2147450880
  %spec.select50.i = select i1 %tobool15.not.i, i32 %spec.select.i, i32 %extract.t45.i
  br label %efx_ef10_get_stat_mask.exit

efx_ef10_get_stat_mask.exit:                      ; preds = %land.lhs.true.i, %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge
  %raw_mask.sroa.8.2.off0.i = phi i32 [ %spec.select.i, %efx_ef10_raw_stat_mask.exit.i.efx_ef10_get_stat_mask.exit_crit_edge ], [ %spec.select50.i, %land.lhs.true.i ]
  %extract.t42.i = or i32 %retval.0.i.off32.i, -8388608
  %raw_mask.sroa.0.0.off32.i = select i1 %tobool.not.i, i32 %retval.0.i.off32.i, i32 %extract.t42.i
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.off0.i, ptr %mask, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %raw_mask.sroa.0.0.off32.i, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %raw_mask.sroa.8.2.off0.i, ptr %1, align 4
  %tobool.not = icmp eq ptr %full_stats, null
  br i1 %tobool.not, label %efx_ef10_get_stat_mask.exit.if.end10_crit_edge, label %if.then

efx_ef10_get_stat_mask.exit.if.end10_crit_edge:   ; preds = %efx_ef10_get_stat_mask.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then:                                          ; preds = %efx_ef10_get_stat_mask.exit
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 95, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %call)
  %cmp143 = icmp ult i32 %call, 95
  br i1 %cmp143, label %if.then.for.body_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %index.0146 = phi i32 [ %call9, %for.inc.for.body_crit_edge ], [ %call, %if.then.for.body_crit_edge ]
  %stats_count.0145 = phi i32 [ %stats_count.1, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %full_stats.addr.0144 = phi ptr [ %full_stats.addr.1, %for.inc.for.body_crit_edge ], [ %full_stats, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr [95 x %struct.efx_hw_stat_desc], ptr @efx_ef10_stat_desc, i32 0, i32 %index.0146
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx7 = getelementptr i64, ptr %stats2, i32 %index.0146
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx7, align 8
  %incdec.ptr = getelementptr i64, ptr %full_stats.addr.0144, i32 1
  %27 = ptrtoint ptr %full_stats.addr.0144 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %full_stats.addr.0144, align 8
  %inc = add i32 %stats_count.0145, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %full_stats.addr.1 = phi ptr [ %incdec.ptr, %if.then6 ], [ %full_stats.addr.0144, %for.body.for.inc_crit_edge ]
  %stats_count.1 = phi i32 [ %inc, %if.then6 ], [ %stats_count.0145, %for.body.for.inc_crit_edge ]
  %add = add nuw nsw i32 %index.0146, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 95, i32 noundef %add) #19
  %cmp = icmp ult i32 %call9, 95
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %if.then.if.end10_crit_edge, %efx_ef10_get_stat_mask.exit.if.end10_crit_edge
  %stats_count.2 = phi i32 [ 0, %efx_ef10_get_stat_mask.exit.if.end10_crit_edge ], [ 0, %if.then.if.end10_crit_edge ], [ %stats_count.1, %for.inc.if.end10_crit_edge ]
  %tobool11.not = icmp eq ptr %core_stats, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %28 = ptrtoint ptr %datapath_caps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %datapath_caps.i, align 4
  %and = and i32 %29, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx16 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 55
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 57
  %32 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %33, %31
  %arrayidx19 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 59
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx19, align 8
  %add20 = add i64 %add18, %35
  %36 = ptrtoint ptr %core_stats to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add20, ptr %core_stats, align 8
  %arrayidx21 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 64
  %37 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 66
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx22, align 8
  %add23 = add i64 %40, %38
  %arrayidx24 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 68
  %41 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx24, align 8
  %add25 = add i64 %add23, %42
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 1
  %43 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %add25, ptr %tx_packets, align 8
  %arrayidx26 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 56
  %44 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx26, align 8
  %arrayidx27 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 58
  %46 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx27, align 8
  %add28 = add i64 %47, %45
  %arrayidx29 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 60
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx29, align 8
  %add30 = add i64 %add28, %49
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 2
  %50 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add30, ptr %rx_bytes, align 8
  %arrayidx31 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 65
  %51 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx31, align 8
  %arrayidx32 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 67
  %53 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %54, %52
  %arrayidx34 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 69
  %55 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx34, align 8
  %add35 = add i64 %add33, %56
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 3
  %57 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add35, ptr %tx_bytes, align 8
  %arrayidx36 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 1
  %58 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx36, align 8
  %60 = ptrtoint ptr %stats2 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %stats2, align 8
  %add38 = add i64 %61, %59
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 6
  %62 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add38, ptr %rx_dropped, align 8
  %63 = load i64, ptr %arrayidx17, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 8
  %64 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %multicast, align 8
  %arrayidx40 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 61
  %65 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx40, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 12
  %67 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %rx_crc_errors, align 8
  %arrayidx41 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 63
  %68 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx41, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 14
  %70 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %rx_fifo_errors, align 8
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 4
  %71 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %66, ptr %rx_errors, align 8
  %arrayidx43 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 70
  %72 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx43, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 5
  %74 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %tx_errors, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx44 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 21
  %75 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx44, align 8
  %77 = ptrtoint ptr %core_stats to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %core_stats, align 8
  %arrayidx46 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 3
  %78 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx46, align 8
  %tx_packets47 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 1
  %80 = ptrtoint ptr %tx_packets47 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %tx_packets47, align 8
  %arrayidx48 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 17
  %81 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx48, align 8
  %rx_bytes49 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 2
  %83 = ptrtoint ptr %rx_bytes49 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %rx_bytes49, align 8
  %arrayidx50 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 2
  %84 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx50, align 8
  %tx_bytes51 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 3
  %86 = ptrtoint ptr %tx_bytes51 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %tx_bytes51, align 8
  %arrayidx52 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 42
  %87 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx52, align 8
  %arrayidx53 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 1
  %89 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx53, align 8
  %add54 = add i64 %90, %88
  %91 = ptrtoint ptr %stats2 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %stats2, align 8
  %add56 = add i64 %add54, %92
  %rx_dropped57 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 6
  %93 = ptrtoint ptr %rx_dropped57 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %add56, ptr %rx_dropped57, align 8
  %arrayidx58 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 27
  %94 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx58, align 8
  %multicast59 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 8
  %96 = ptrtoint ptr %multicast59 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %multicast59, align 8
  %arrayidx60 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 37
  %97 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx60, align 8
  %arrayidx61 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 41
  %99 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx61, align 8
  %add62 = add i64 %100, %98
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 10
  %101 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %add62, ptr %rx_length_errors, align 8
  %arrayidx63 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 23
  %102 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx63, align 8
  %rx_crc_errors64 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 12
  %104 = ptrtoint ptr %rx_crc_errors64 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %rx_crc_errors64, align 8
  %arrayidx65 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 40
  %105 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx65, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 13
  %107 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %rx_frame_errors, align 8
  %arrayidx66 = getelementptr %struct.efx_ef10_nic_data, ptr %3, i32 0, i32 12, i32 39
  %108 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx66, align 8
  %rx_fifo_errors67 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 14
  %110 = ptrtoint ptr %rx_fifo_errors67 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %rx_fifo_errors67, align 8
  %add70 = add i64 %103, %add62
  %add72 = add i64 %add70, %106
  %rx_errors73 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 4
  %111 = ptrtoint ptr %rx_errors73 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %add72, ptr %rx_errors73, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %if.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #19
  ret i32 %stats_count.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_update_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_update_sw_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_async(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_usecs_to_ticks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_filter_sync_rx_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_mtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_mac(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_tx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @netdev_reg_state(ptr noundef %dev) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load45 = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45)
  %1 = icmp ult i8 %bf.load45, 6
  br i1 %1, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b46 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46, label %land.end.return_crit_edge, label %if.then, !prof !414

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21 = zext i8 %bf.load45 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.142, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %dev, i32 noundef %bf.cast21) #19
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = sext i8 %bf.load45 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netdev_reg_state, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi ptr [ @.str.144, %if.then ], [ @.str.144, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efx_ef10_rx_defer_refill_complete(ptr nocapture noundef %efx, i32 noundef %cookie, i32 noundef %rc, ptr nocapture noundef %outbuf, i32 noundef %outlen_actual) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_ev_init(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_process_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_ef10_handle_rx_wrong_queue(ptr nocapture noundef readonly %rx_queue, i32 noundef %rx_queue_label) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.149, i32 noundef %7, i32 noundef %rx_queue_label) #22
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @efx_schedule_reset(ptr noundef %1, i32 noundef 7) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_ef10_handle_rx_abort(ptr noundef %rx_queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_handle_rx_abort.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_handle_rx_abort, %if.then5)) #19
          to label %do.end9 [label %if.then5], !srcloc !416

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %scatter_n = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 10
  %8 = ptrtoint ptr %scatter_n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scatter_n, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_handle_rx_abort.__UNIQUE_ID_ddebug625, ptr noundef %7, ptr noundef nonnull @.str.151, i32 noundef %9) #19
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %removed_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 9
  %10 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %removed_count, align 16
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %12 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr_mask, align 32
  %and10 = and i32 %13, %11
  %scatter_n11 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 10
  %14 = ptrtoint ptr %scatter_n11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scatter_n11, align 4
  tail call void @efx_rx_packet(ptr noundef %rx_queue, i32 noundef %and10, i32 noundef %15, i32 noundef 0, i16 noundef zeroext 4) #19
  %16 = ptrtoint ptr %scatter_n11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scatter_n11, align 4
  %18 = ptrtoint ptr %removed_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %removed_count, align 16
  %add = add i32 %19, %17
  store i32 %add, ptr %removed_count, align 16
  store i32 0, ptr %scatter_n11, align 4
  %scatter_len = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 11
  %20 = ptrtoint ptr %scatter_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scatter_len, align 8
  %n_rx_nodesc_trunc = getelementptr i8, ptr %rx_queue, i32 -40
  %21 = ptrtoint ptr %n_rx_nodesc_trunc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_rx_nodesc_trunc, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %n_rx_nodesc_trunc, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @efx_ef10_handle_rx_event_errors(ptr nocapture noundef %channel, i32 noundef %n_packets, i32 noundef %rx_encap_hdr, i32 noundef %rx_l3_class, i32 noundef %rx_l4_class, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then:                                          ; preds = %entry
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 16
  %and2 = and i64 %7, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then4:                                         ; preds = %if.then
  %loopback_selftest = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %8 = ptrtoint ptr %loopback_selftest to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %loopback_selftest, align 16
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.then6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  %n_rx_eth_crc_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 30
  %10 = ptrtoint ptr %n_rx_eth_crc_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_rx_eth_crc_err, align 4
  %add = add i32 %11, %n_packets
  store i32 %add, ptr %n_rx_eth_crc_err, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %3)
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end57, label %if.then14

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_encap_hdr)
  %cmp.not = icmp eq i32 %rx_encap_hdr, 1
  br i1 %cmp.not, label %if.then14.if.end50_crit_edge, label %switch.early.test

if.then14.if.end50_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

switch.early.test:                                ; preds = %if.then14
  %14 = zext i32 %rx_l3_class to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %rx_l3_class, label %do.end [
    i32 6, label %switch.early.test.if.end50_crit_edge
    i32 4, label %switch.early.test.if.end50_crit_edge482
    i32 2, label %switch.early.test.if.end50_crit_edge483
    i32 1, label %switch.early.test.if.end50_crit_edge484
  ]

switch.early.test.if.end50_crit_edge484:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

switch.early.test.if.end50_crit_edge483:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

switch.early.test.if.end50_crit_edge482:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

switch.early.test.if.end50_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

do.end:                                           ; preds = %switch.early.test
  %net_dev33 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %15 = ptrtoint ptr %net_dev33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev33, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %16, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %16, ptr @.str.135
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.135, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call35 = tail call fastcc ptr @netdev_reg_state(ptr noundef %16)
  %arrayidx36 = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx36, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2713, i32 noundef 9, ptr noundef nonnull @.str.153, ptr noundef %retval.0.i, ptr noundef nonnull %call35, i32 noundef %21, i32 noundef %24) #19
  br label %if.end50

if.end50:                                         ; preds = %netdev_name.exit, %switch.early.test.if.end50_crit_edge, %switch.early.test.if.end50_crit_edge482, %switch.early.test.if.end50_crit_edge483, %switch.early.test.if.end50_crit_edge484, %if.then14.if.end50_crit_edge
  %loopback_selftest51 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %25 = ptrtoint ptr %loopback_selftest51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %loopback_selftest51, align 16
  %tobool52.not = icmp eq ptr %26, null
  br i1 %tobool52.not, label %if.then53, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_encap_hdr)
  %tobool54.not = icmp eq i32 %rx_encap_hdr, 0
  %n_rx_outer_ip_hdr_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 26
  %n_rx_ip_hdr_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 24
  %cond = select i1 %tobool54.not, ptr %n_rx_ip_hdr_chksum_err, ptr %n_rx_outer_ip_hdr_chksum_err
  %27 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cond, align 4
  %add55 = add i32 %28, %n_packets
  store i32 %add55, ptr %cond, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end8
  %29 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool62.not = icmp eq i32 %29, 0
  br i1 %tobool62.not, label %if.end124, label %if.then63

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_encap_hdr)
  %cmp64.not = icmp eq i32 %rx_encap_hdr, 1
  br i1 %cmp64.not, label %if.then63.if.end113_crit_edge, label %land.rhs65

if.then63.if.end113_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113

land.rhs65:                                       ; preds = %if.then63
  %30 = add i32 %rx_l3_class, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %30)
  %switch = icmp ult i32 %30, -2
  %31 = add i32 %rx_l4_class, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %31)
  %32 = icmp ult i32 %31, -2
  %or.cond = or i1 %switch, %32
  br i1 %or.cond, label %do.end93, label %land.rhs65.if.end113_crit_edge, !prof !428

land.rhs65.if.end113_crit_edge:                   ; preds = %land.rhs65
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113

do.end93:                                         ; preds = %land.rhs65
  %net_dev94 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %33 = ptrtoint ptr %net_dev94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev94, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i443 = icmp eq i8 %36, 0
  br i1 %tobool.not.i443, label %do.end93.netdev_name.exit449_crit_edge, label %lor.lhs.false.i447

do.end93.netdev_name.exit449_crit_edge:           ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit449

lor.lhs.false.i447:                               ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #21
  %call.i444 = tail call ptr @strchr(ptr noundef %34, i32 noundef 37) #19
  %tobool2.not.i445 = icmp eq ptr %call.i444, null
  %spec.select.i446 = select i1 %tobool2.not.i445, ptr %34, ptr @.str.135
  br label %netdev_name.exit449

netdev_name.exit449:                              ; preds = %lor.lhs.false.i447, %do.end93.netdev_name.exit449_crit_edge
  %retval.0.i448 = phi ptr [ @.str.135, %do.end93.netdev_name.exit449_crit_edge ], [ %spec.select.i446, %lor.lhs.false.i447 ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 121
  %37 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %38 = icmp ult i8 %bf.load45.i, 6
  br i1 %38, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit449
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.netdev_reg_state.exit_crit_edge, label %if.then.i, !prof !414

land.end.i.netdev_reg_state.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_reg_state.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.142, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %34, i32 noundef %bf.cast21.i) #19
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit449
  call void @__sanitizer_cov_trace_pc() #21
  %39 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.efx_ef10_handle_rx_event_errors, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i, %land.end.i.netdev_reg_state.exit_crit_edge
  %retval.0.i450 = phi ptr [ @.str.144, %if.then.i ], [ @.str.144, %land.end.i.netdev_reg_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx98 = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx98, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %event, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2729, i32 noundef 9, ptr noundef nonnull @.str.154, ptr noundef %retval.0.i448, ptr noundef nonnull %retval.0.i450, i32 noundef %43, i32 noundef %46) #19
  br label %if.end113

if.end113:                                        ; preds = %netdev_reg_state.exit, %land.rhs65.if.end113_crit_edge, %if.then63.if.end113_crit_edge
  %loopback_selftest114 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %47 = ptrtoint ptr %loopback_selftest114 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %loopback_selftest114, align 16
  %tobool115.not = icmp eq ptr %48, null
  br i1 %tobool115.not, label %if.then116, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_encap_hdr)
  %tobool117.not = icmp eq i32 %rx_encap_hdr, 0
  %n_rx_outer_tcp_udp_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 27
  %n_rx_tcp_udp_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 25
  %cond121 = select i1 %tobool117.not, ptr %n_rx_tcp_udp_chksum_err, ptr %n_rx_outer_tcp_udp_chksum_err
  %49 = ptrtoint ptr %cond121 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cond121, align 4
  %add122 = add i32 %50, %n_packets
  store i32 %add122, ptr %cond121, align 4
  br label %cleanup

if.end124:                                        ; preds = %if.end57
  %arrayidx125 = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx125, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool129.not = icmp eq i32 %54, 0
  br i1 %tobool129.not, label %if.end227, label %if.then130

if.then130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_encap_hdr)
  %tobool131.not = icmp eq i32 %rx_encap_hdr, 0
  br i1 %tobool131.not, label %do.end153, label %if.else, !prof !413

do.end153:                                        ; preds = %if.then130
  %net_dev154 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %55 = ptrtoint ptr %net_dev154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev154, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i451 = icmp eq i8 %58, 0
  br i1 %tobool.not.i451, label %do.end153.netdev_name.exit457_crit_edge, label %lor.lhs.false.i455

do.end153.netdev_name.exit457_crit_edge:          ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit457

lor.lhs.false.i455:                               ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #21
  %call.i452 = tail call ptr @strchr(ptr noundef %56, i32 noundef 37) #19
  %tobool2.not.i453 = icmp eq ptr %call.i452, null
  %spec.select.i454 = select i1 %tobool2.not.i453, ptr %56, ptr @.str.135
  br label %netdev_name.exit457

netdev_name.exit457:                              ; preds = %lor.lhs.false.i455, %do.end153.netdev_name.exit457_crit_edge
  %retval.0.i456 = phi ptr [ @.str.135, %do.end153.netdev_name.exit457_crit_edge ], [ %spec.select.i454, %lor.lhs.false.i455 ]
  %call157 = tail call fastcc ptr @netdev_reg_state(ptr noundef %56)
  %59 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx125, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %event, align 8
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2741, i32 noundef 9, ptr noundef nonnull @.str.155, ptr noundef %retval.0.i456, ptr noundef nonnull %call157, i32 noundef %61, i32 noundef %64) #19
  br label %if.end221

if.else:                                          ; preds = %if.then130
  %65 = zext i32 %rx_l3_class to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %rx_l3_class, label %if.then187.critedge [
    i32 1, label %if.else.if.end221_crit_edge
    i32 4, label %if.else.if.end221_crit_edge485
    i32 2, label %if.else.if.end221_crit_edge486
    i32 6, label %if.else.if.end221_crit_edge487
  ]

if.else.if.end221_crit_edge487:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end221

if.else.if.end221_crit_edge486:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end221

if.else.if.end221_crit_edge485:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end221

if.else.if.end221_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end221

if.then187.critedge:                              ; preds = %if.else
  %net_dev201 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %66 = ptrtoint ptr %net_dev201 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev201, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i458 = icmp eq i8 %69, 0
  br i1 %tobool.not.i458, label %if.then187.critedge.netdev_name.exit464_crit_edge, label %lor.lhs.false.i462

if.then187.critedge.netdev_name.exit464_crit_edge: ; preds = %if.then187.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit464

lor.lhs.false.i462:                               ; preds = %if.then187.critedge
  call void @__sanitizer_cov_trace_pc() #21
  %call.i459 = tail call ptr @strchr(ptr noundef %67, i32 noundef 37) #19
  %tobool2.not.i460 = icmp eq ptr %call.i459, null
  %spec.select.i461 = select i1 %tobool2.not.i460, ptr %67, ptr @.str.135
  br label %netdev_name.exit464

netdev_name.exit464:                              ; preds = %lor.lhs.false.i462, %if.then187.critedge.netdev_name.exit464_crit_edge
  %retval.0.i463 = phi ptr [ @.str.135, %if.then187.critedge.netdev_name.exit464_crit_edge ], [ %spec.select.i461, %lor.lhs.false.i462 ]
  %call204 = tail call fastcc ptr @netdev_reg_state(ptr noundef %67)
  %70 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx125, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %event, align 8
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2749, i32 noundef 9, ptr noundef nonnull @.str.156, ptr noundef %retval.0.i463, ptr noundef nonnull %call204, i32 noundef %72, i32 noundef %75) #19
  br label %if.end221

if.end221:                                        ; preds = %netdev_name.exit464, %if.else.if.end221_crit_edge, %if.else.if.end221_crit_edge485, %if.else.if.end221_crit_edge486, %if.else.if.end221_crit_edge487, %netdev_name.exit457
  %loopback_selftest222 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %76 = ptrtoint ptr %loopback_selftest222 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %loopback_selftest222, align 16
  %tobool223.not = icmp eq ptr %77, null
  br i1 %tobool223.not, label %if.then224, label %if.end221.cleanup_crit_edge

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then224:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #21
  %n_rx_inner_ip_hdr_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 28
  %78 = ptrtoint ptr %n_rx_inner_ip_hdr_chksum_err to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_rx_inner_ip_hdr_chksum_err, align 4
  %add225 = add i32 %79, %n_packets
  store i32 %add225, ptr %n_rx_inner_ip_hdr_chksum_err, align 4
  br label %cleanup

if.end227:                                        ; preds = %if.end124
  %80 = and i32 %53, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool232.not = icmp eq i32 %80, 0
  br i1 %tobool232.not, label %if.end332, label %if.then233

if.then233:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_encap_hdr)
  %tobool234.not = icmp eq i32 %rx_encap_hdr, 0
  br i1 %tobool234.not, label %do.end256, label %if.else276, !prof !413

do.end256:                                        ; preds = %if.then233
  %net_dev257 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %81 = ptrtoint ptr %net_dev257 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net_dev257, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i465 = icmp eq i8 %84, 0
  br i1 %tobool.not.i465, label %do.end256.netdev_name.exit471_crit_edge, label %lor.lhs.false.i469

do.end256.netdev_name.exit471_crit_edge:          ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit471

lor.lhs.false.i469:                               ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #21
  %call.i466 = tail call ptr @strchr(ptr noundef %82, i32 noundef 37) #19
  %tobool2.not.i467 = icmp eq ptr %call.i466, null
  %spec.select.i468 = select i1 %tobool2.not.i467, ptr %82, ptr @.str.135
  br label %netdev_name.exit471

netdev_name.exit471:                              ; preds = %lor.lhs.false.i469, %do.end256.netdev_name.exit471_crit_edge
  %retval.0.i470 = phi ptr [ @.str.135, %do.end256.netdev_name.exit471_crit_edge ], [ %spec.select.i468, %lor.lhs.false.i469 ]
  %call260 = tail call fastcc ptr @netdev_reg_state(ptr noundef %82)
  %85 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx125, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %event, align 8
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2759, i32 noundef 9, ptr noundef nonnull @.str.157, ptr noundef %retval.0.i470, ptr noundef nonnull %call260, i32 noundef %87, i32 noundef %90) #19
  br label %if.end326

if.else276:                                       ; preds = %if.then233
  %91 = add i32 %rx_l3_class, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %91)
  %switch442 = icmp ult i32 %91, -2
  %92 = add i32 %rx_l4_class, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %92)
  %93 = icmp ult i32 %92, -2
  %or.cond481 = or i1 %switch442, %93
  br i1 %or.cond481, label %do.end305, label %if.else276.if.end326_crit_edge, !prof !429

if.else276.if.end326_crit_edge:                   ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end326

do.end305:                                        ; preds = %if.else276
  %net_dev306 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %94 = ptrtoint ptr %net_dev306 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net_dev306, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i472 = icmp eq i8 %97, 0
  br i1 %tobool.not.i472, label %do.end305.netdev_name.exit478_crit_edge, label %lor.lhs.false.i476

do.end305.netdev_name.exit478_crit_edge:          ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_name.exit478

lor.lhs.false.i476:                               ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #21
  %call.i473 = tail call ptr @strchr(ptr noundef %95, i32 noundef 37) #19
  %tobool2.not.i474 = icmp eq ptr %call.i473, null
  %spec.select.i475 = select i1 %tobool2.not.i474, ptr %95, ptr @.str.135
  br label %netdev_name.exit478

netdev_name.exit478:                              ; preds = %lor.lhs.false.i476, %do.end305.netdev_name.exit478_crit_edge
  %retval.0.i477 = phi ptr [ @.str.135, %do.end305.netdev_name.exit478_crit_edge ], [ %spec.select.i475, %lor.lhs.false.i476 ]
  %call309 = tail call fastcc ptr @netdev_reg_state(ptr noundef %95)
  %98 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx125, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %101 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %event, align 8
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2767, i32 noundef 9, ptr noundef nonnull @.str.158, ptr noundef %retval.0.i477, ptr noundef nonnull %call309, i32 noundef %100, i32 noundef %103) #19
  br label %if.end326

if.end326:                                        ; preds = %netdev_name.exit478, %if.else276.if.end326_crit_edge, %netdev_name.exit471
  %loopback_selftest327 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 106
  %104 = ptrtoint ptr %loopback_selftest327 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %loopback_selftest327, align 16
  %tobool328.not = icmp eq ptr %105, null
  br i1 %tobool328.not, label %if.then329, label %if.end326.cleanup_crit_edge

if.end326.cleanup_crit_edge:                      ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then329:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #21
  %n_rx_inner_tcp_udp_chksum_err = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 29
  %106 = ptrtoint ptr %n_rx_inner_tcp_udp_chksum_err to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %n_rx_inner_tcp_udp_chksum_err, align 64
  %add330 = add i32 %107, %n_packets
  store i32 %add330, ptr %n_rx_inner_tcp_udp_chksum_err, align 64
  br label %cleanup

if.end332:                                        ; preds = %if.end227
  br i1 %tobool.not, label %do.end352, label %if.end332.cleanup_crit_edge, !prof !413

if.end332.cleanup_crit_edge:                      ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end352:                                        ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2773, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end352, %if.end332.cleanup_crit_edge, %if.then329, %if.end326.cleanup_crit_edge, %if.then224, %if.end221.cleanup_crit_edge, %if.then116, %if.end113.cleanup_crit_edge, %if.then53, %if.end50.cleanup_crit_edge, %if.then6, %if.then4.cleanup_crit_edge
  %retval.0 = phi i16 [ 4, %if.then6 ], [ 4, %if.then4.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.then116 ], [ 0, %if.end113.cleanup_crit_edge ], [ 0, %if.then224 ], [ 0, %if.end221.cleanup_crit_edge ], [ 0, %if.then329 ], [ 0, %if.end326.cleanup_crit_edge ], [ 0, %do.end352 ], [ 0, %if.end332.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rx_packet(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_xmit_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_xmit_done_single(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fast_push_rx_descriptors(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_filter_table_probe(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_net_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_net_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_copy_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_fix_nodesc_drop_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_reset_down(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_reset_up(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ef10_poll_bist(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #19
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #19
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !412
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 38, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1 = icmp ult i32 %3, 8
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 8
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %6, label %do.body37 [
    i32 2, label %do.body
    i32 4, label %do.body18
    i32 3, label %do.body28
  ]

do.body:                                          ; preds = %if.end3
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_ef10_poll_bist.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_ef10_poll_bist, %if.then12)) #19
          to label %cleanup [label %if.then12], !srcloc !416

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_ef10_poll_bist.__UNIQUE_ID_ddebug630, ptr noundef %11, ptr noundef nonnull @.str.171) #19
  br label %cleanup

do.body18:                                        ; preds = %if.end3
  %msg_enable19 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %12 = ptrtoint ptr %msg_enable19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable19, align 4
  %and20 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.cleanup_crit_edge, label %if.then22

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev23 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev23, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.172) #22
  br label %cleanup

do.body28:                                        ; preds = %if.end3
  %msg_enable29 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable29, align 4
  %and30 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body28.cleanup_crit_edge, label %if.then32

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev33 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev33, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.173) #22
  br label %cleanup

do.body37:                                        ; preds = %if.end3
  %msg_enable38 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable38, align 4
  %and39 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.cleanup_crit_edge, label %if.then41

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #21
  %net_dev42 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev42, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.174, i32 noundef %6) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body37.cleanup_crit_edge, %if.then32, %do.body28.cleanup_crit_edge, %if.then22, %do.body18.cleanup_crit_edge, %if.then12, %do.body7, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %do.body.cleanup_crit_edge ], [ -5, %if.then22 ], [ -5, %do.body18.cleanup_crit_edge ], [ -5, %if.then32 ], [ -5, %do.body28.cleanup_crit_edge ], [ -5, %if.then41 ], [ -5, %do.body37.cleanup_crit_edge ], [ 0, %do.body7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mtd_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_nvram_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_rx_enable_timestamping(ptr nocapture noundef %channel, i1 noundef zeroext %temp) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #19
  %sync_events_state = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 48
  %0 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_events_state, align 32
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp eq i32 %1, 0
  %or.cond = select i1 %temp, i1 %cmp5, i1 false
  %or.cond38 = or i1 %switch, %or.cond
  br i1 %or.cond38, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %sync_events_state, align 32
  %4 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 402653184, ptr %inbuf, align 4
  %add.ptr9 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %5 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %add.ptr9, align 4
  %channel14 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel14, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr17 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %9 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr17, align 4
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel, align 128
  %call = call i32 @efx_mcdi_rpc(ptr noundef %11, i32 noundef 11, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22.not = icmp eq i32 %call, 0
  br i1 %cmp22.not, label %if.end.cleanup_crit_edge, label %if.then24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %cond = zext i1 %temp to i32
  %12 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %sync_events_state, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then24 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ef10_rx_disable_timestamping(ptr nocapture noundef %channel, i1 noundef zeroext %temp) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf) #19
  %sync_events_state = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 48
  %0 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_events_state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  %or.cond = select i1 %temp, i1 %cmp2, i1 false
  %or.cond39 = or i1 %cmp, %or.cond
  br i1 %or.cond39, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp2, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sync_events_state, align 32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %cond = zext i1 %temp to i32
  %3 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %sync_events_state, align 32
  %4 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 419430400, ptr %inbuf, align 4
  %add.ptr12 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %5 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %add.ptr12, align 4
  %add.ptr18 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %6 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr18, align 4
  %channel23 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %7 = ptrtoint ptr %channel23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel23, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add.ptr26 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %10 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr26, align 4
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 128
  %call = call i32 @efx_mcdi_rpc(ptr noundef %12, i32 noundef 11, ptr noundef nonnull %inbuf, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %call, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_ptp_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_change_mode(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 202)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 202)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !23, !25, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !302, !304, !306, !308, !310, !312, !314, !316, !317, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !343, !345, !347, !349, !351, !353, !354, !355, !357, !358, !359, !361, !363, !365, !367, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400}
!llvm.named.register.sp = !{!402}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2230, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @efx_hunt_a0_vf_nic_type, !5, !"efx_hunt_a0_vf_nic_type", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 4000, i32 27}
!6 = !{ptr @efx_hunt_a0_nic_type, !7, !"efx_hunt_a0_nic_type", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 4111, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1081, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1107, i32 4}
!12 = !{ptr @efx_ef10_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 568, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 613, i32 3}
!17 = !{ptr @efx_ef10_probe.__key.6, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 662, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 522, i32 8}
!22 = !{ptr @dev_attr_link_control_flag, !21, !"dev_attr_link_control_flag", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 379, i32 22}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 523, i32 8}
!27 = !{ptr @dev_attr_primary_flag, !26, !"dev_attr_primary_flag", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 121, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 148, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 162, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug599, !33, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 170, i32 3}
!39 = !{ptr @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug600, !38, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 175, i32 3}
!42 = !{ptr @efx_ef10_init_datapath_caps.__UNIQUE_ID_ddebug601, !41, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 251, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug602, !44, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!47 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 254, i32 2}
!51 = !{ptr @efx_ef10_get_timer_workarounds.__UNIQUE_ID_ddebug603, !50, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 285, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @efx_ef10_process_timer_config.__UNIQUE_ID_ddebug604, !53, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 427, i32 3}
!58 = !{ptr @efx_ef10_udp_tunnels, !59, !"efx_ef10_udp_tunnels", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3951, i32 41}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3824, i32 4}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3828, i32 3}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1344, i32 4}
!66 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !65, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1347, i32 4}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1151, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug613, !71, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1227, i32 3}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1249, i32 3}
!78 = !{ptr @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug614, !77, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1258, i32 3}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1272, i32 4}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1288, i32 2}
!85 = !{ptr @efx_ef10_dimension_resources.__UNIQUE_ID_ddebug615, !84, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1510, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1509, i32 2}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1468, i32 2}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1469, i32 2}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1470, i32 2}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1471, i32 2}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1472, i32 2}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1473, i32 2}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1474, i32 2}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1475, i32 2}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1476, i32 2}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1477, i32 2}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1478, i32 2}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1479, i32 2}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1480, i32 2}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1481, i32 2}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1482, i32 2}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1483, i32 2}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1485, i32 2}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1486, i32 2}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1487, i32 2}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1488, i32 2}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1489, i32 2}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1490, i32 2}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1491, i32 2}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1492, i32 2}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1493, i32 2}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1494, i32 2}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1495, i32 2}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1496, i32 2}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1497, i32 2}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1498, i32 2}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1499, i32 2}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1500, i32 2}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1501, i32 2}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1502, i32 2}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1503, i32 2}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1504, i32 2}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1505, i32 2}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1506, i32 2}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1507, i32 2}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1508, i32 2}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1511, i32 2}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1512, i32 2}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1513, i32 2}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1514, i32 2}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1515, i32 2}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1516, i32 2}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1517, i32 2}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1518, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1519, i32 2}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1520, i32 2}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1521, i32 2}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1522, i32 2}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1523, i32 2}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1524, i32 2}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1525, i32 2}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1526, i32 2}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1527, i32 2}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1528, i32 2}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1529, i32 2}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1530, i32 2}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1531, i32 2}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1532, i32 2}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1533, i32 2}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1534, i32 2}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1535, i32 2}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1536, i32 2}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1537, i32 2}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1538, i32 2}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1539, i32 2}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1540, i32 2}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1541, i32 2}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1542, i32 2}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1543, i32 2}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1544, i32 2}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1545, i32 2}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1546, i32 2}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1547, i32 2}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1548, i32 2}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1549, i32 2}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1550, i32 2}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1551, i32 2}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1552, i32 2}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1553, i32 2}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1554, i32 2}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1555, i32 2}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1556, i32 2}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1557, i32 2}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1558, i32 2}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1559, i32 2}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1560, i32 2}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1561, i32 2}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1562, i32 2}
!274 = !{ptr @efx_ef10_stat_desc, !275, !"efx_ef10_stat_desc", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1467, i32 38}
!276 = distinct !{null, !277, !"__already_done", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 1920, i32 3}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2353, i32 4}
!280 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @efx_ef10_tx_init.__UNIQUE_ID_ddebug622, !279, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2393, i32 2}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!294 = !{ptr @.str.140, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!298 = distinct !{null, !299, !"__already_done", i1 false, i1 false}
!299 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!300 = !{ptr @.str.142, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!304 = !{ptr @.str.145, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3116, i32 4}
!306 = !{ptr @.str.146, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2807, i32 3}
!308 = !{ptr @.str.147, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2825, i32 5}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2891, i32 4}
!312 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2645, i32 2}
!314 = !{ptr @.str.150, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2671, i32 2}
!316 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @efx_ef10_handle_rx_abort.__UNIQUE_ID_ddebug625, !315, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!318 = !{ptr @.str.152, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2659, i32 2}
!320 = !{ptr @.str.153, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2710, i32 4}
!322 = !{ptr @.str.154, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2726, i32 4}
!324 = !{ptr @.str.155, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2738, i32 4}
!326 = !{ptr @.str.156, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2746, i32 4}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2756, i32 4}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2764, i32 4}
!332 = !{ptr @.str.159, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2998, i32 3}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3023, i32 3}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3052, i32 3}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3191, i32 2}
!340 = !{ptr @__func__.efx_ef10_ev_test_generate, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.163, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 2506, i32 5}
!343 = !{ptr @.str.164, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 499, i32 3}
!345 = !{ptr @.str.165, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3328, i32 3}
!347 = !{ptr @.str.166, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3258, i32 2}
!349 = !{ptr @.str.167, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3972, i32 29}
!351 = !{ptr @.str.168, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3407, i32 2}
!353 = !{ptr @.str.169, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @efx_ef10_run_bist.__UNIQUE_ID_ddebug631, !352, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!355 = !{ptr @.str.170, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3388, i32 3}
!357 = !{ptr @.str.171, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @efx_ef10_poll_bist.__UNIQUE_ID_ddebug630, !356, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!359 = !{ptr @.str.172, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3391, i32 3}
!361 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3394, i32 3}
!363 = !{ptr @.str.174, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3397, i32 3}
!365 = distinct !{null, !366, !"__already_done", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3550, i32 2}
!367 = !{ptr @.str.175, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.176, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3527, i32 31}
!370 = !{ptr @.str.177, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3449, i32 50}
!372 = !{ptr @.str.178, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3450, i32 54}
!374 = !{ptr @.str.179, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3451, i32 52}
!376 = !{ptr @.str.180, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3452, i32 52}
!378 = !{ptr @.str.181, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3453, i32 53}
!380 = !{ptr @.str.182, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3454, i32 54}
!382 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3458, i32 47}
!384 = !{ptr @.str.184, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3459, i32 47}
!386 = !{ptr @.str.185, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3460, i32 51}
!388 = !{ptr @.str.186, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3461, i32 53}
!390 = !{ptr @.str.187, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3462, i32 54}
!392 = !{ptr @.str.188, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3463, i32 54}
!394 = !{ptr @.str.189, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3464, i32 46}
!396 = !{ptr @.str.190, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3465, i32 46}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3466, i32 54}
!400 = !{ptr @efx_ef10_nvram_types, !401, !"efx_ef10_nvram_types", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/sfc/ef10.c", i32 3448, i32 46}
!402 = !{!"sp"}
!403 = !{i32 1, !"wchar_size", i32 2}
!404 = !{i32 1, !"min_enum_size", i32 4}
!405 = !{i32 8, !"branch-target-enforcement", i32 0}
!406 = !{i32 8, !"sign-return-address", i32 0}
!407 = !{i32 8, !"sign-return-address-all", i32 0}
!408 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!409 = !{i32 7, !"uwtable", i32 1}
!410 = !{i32 7, !"frame-pointer", i32 2}
!411 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!412 = !{!"auto-init"}
!413 = !{!"branch_weights", i32 1, i32 2000}
!414 = !{!"branch_weights", i32 2000, i32 1}
!415 = !{i8 0, i8 2}
!416 = !{i64 2149232036, i64 2149232041, i64 2149232054, i64 2149232098, i64 2149232132, i64 2149232153}
!417 = !{i64 2161072129}
!418 = !{i64 2161072220}
!419 = !{i64 6720090}
!420 = !{i64 2161370131}
!421 = !{i64 2161370562}
!422 = !{i64 6720508}
!423 = !{i64 2161913494}
!424 = !{i64 2162065032}
!425 = !{i64 2162162208}
!426 = !{!"branch_weights", i32 4000000, i32 4001}
!427 = !{ptr @efx_ef10_rx_disable_timestamping, ptr @efx_ef10_rx_enable_timestamping}
!428 = !{!"branch_weights", i32 2002, i32 2000}
!429 = !{!"branch_weights", i32 6002, i32 8002000}
