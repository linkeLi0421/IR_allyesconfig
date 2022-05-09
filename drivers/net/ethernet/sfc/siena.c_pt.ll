; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/siena.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/siena.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.efx_hw_stat_desc = type { ptr, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.siena_nvram_type_info = type { i32, ptr }
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
%struct.siena_nic_data = type { ptr, i32, [59 x i64], ptr, ptr, i32, %struct.efx_buffer, %struct.list_head, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%union.efx_dword = type { [1 x i32] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_self_tests = type { i32, i32, i32, [32 x i32], [32 x i32], i32, i32, [20 x i32], [18 x %struct.efx_loopback_self_tests] }
%struct.efx_loopback_self_tests = type { [4 x i32], [4 x i32], i32, i32 }
%struct.efx_mcdi_mtd_partition = type { %struct.efx_mtd_partition, i8, i16, i16 }
%struct.efx_mtd_partition = type { %struct.list_head, %struct.mtd_info, ptr, ptr, [36 x i8] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.148 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.148 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }

@siena_a0_nic_type = dso_local constant { %struct.efx_nic_type, [144 x i8] } { %struct.efx_nic_type { i8 0, ptr @siena_mem_bar, ptr @siena_mem_map_size, ptr @siena_probe_nic, ptr @siena_remove_nic, ptr @siena_init_nic, ptr @siena_dimension_resources, ptr @efx_port_dummy_op_void, ptr null, ptr @efx_mcdi_map_reset_reason, ptr @siena_map_reset_flags, ptr @efx_mcdi_reset, ptr @efx_mcdi_port_probe, ptr @efx_mcdi_port_remove, ptr null, ptr @efx_farch_fini_dmaq, ptr @siena_prepare_flush, ptr @siena_finish_flush, ptr @efx_port_dummy_op_void, ptr @efx_farch_finish_flr, ptr @siena_describe_nic_stats, ptr @siena_update_nic_stats, ptr null, ptr @efx_mcdi_mac_start_stats, ptr @efx_mcdi_mac_pull_stats, ptr @efx_mcdi_mac_stop_stats, ptr @siena_push_irq_moderation, ptr @efx_mcdi_port_reconfigure, ptr null, ptr @siena_mac_reconfigure, ptr @efx_mcdi_mac_check_fault, ptr @siena_get_wol, ptr @siena_set_wol, ptr @siena_init_wol, ptr null, ptr @siena_check_caps, ptr @siena_test_chip, ptr @efx_mcdi_nvram_test_all, ptr @siena_mcdi_request, ptr @siena_mcdi_poll_response, ptr @siena_mcdi_read_response, ptr @siena_mcdi_poll_reboot, ptr null, ptr @efx_farch_irq_enable_master, ptr @efx_farch_irq_test_generate, ptr @efx_farch_irq_disable_master, ptr @efx_farch_msi_interrupt, ptr @efx_farch_legacy_interrupt, ptr @efx_farch_tx_probe, ptr @efx_farch_tx_init, ptr @efx_farch_tx_remove, ptr @efx_farch_tx_write, ptr @__efx_enqueue_skb, ptr @efx_farch_tx_limit_len, ptr @siena_rx_push_rss_config, ptr @siena_rx_pull_rss_config, ptr null, ptr null, ptr null, ptr @efx_farch_rx_probe, ptr @efx_farch_rx_init, ptr @efx_farch_rx_remove, ptr @efx_farch_rx_write, ptr @efx_farch_rx_defer_refill, ptr @__efx_rx_packet, ptr null, ptr @efx_farch_ev_probe, ptr @efx_farch_ev_init, ptr @efx_farch_ev_fini, ptr @efx_farch_ev_remove, ptr @efx_farch_ev_process, ptr @efx_farch_ev_read_ack, ptr @efx_farch_ev_test_generate, ptr @efx_farch_filter_table_probe, ptr @efx_farch_filter_table_restore, ptr @efx_farch_filter_table_remove, ptr @efx_farch_filter_update_rx_scatter, ptr @efx_farch_filter_insert, ptr @efx_farch_filter_remove_safe, ptr @efx_farch_filter_get_safe, ptr @efx_farch_filter_clear_rx, ptr @efx_farch_filter_count_rx_used, ptr @efx_farch_filter_get_rx_id_limit, ptr @efx_farch_filter_get_rx_ids, ptr @efx_farch_filter_rfs_expire_one, ptr @siena_mtd_probe, ptr @efx_mcdi_mtd_rename, ptr @efx_mcdi_mtd_read, ptr @efx_mcdi_mtd_erase, ptr @efx_mcdi_mtd_write, ptr @efx_mcdi_mtd_sync, ptr @siena_ptp_write_host_time, ptr null, ptr @siena_ptp_set_ts_config, ptr @efx_siena_sriov_configure, ptr null, ptr null, ptr null, ptr @efx_siena_sriov_init, ptr @efx_siena_sriov_fini, ptr @efx_siena_sriov_wanted, ptr @efx_siena_sriov_reset, ptr @efx_siena_sriov_flr, ptr @efx_siena_sriov_set_vf_mac, ptr @efx_siena_sriov_set_vf_vlan, ptr @efx_siena_sriov_set_vf_spoofchk, ptr @efx_siena_sriov_get_vf_config, ptr null, ptr @efx_port_dummy_op_int, ptr @efx_port_dummy_op_int, ptr @efx_port_dummy_op_void, ptr null, ptr @efx_siena_sriov_mac_address_changed, ptr null, ptr null, ptr null, ptr null, ptr @efx_mcdi_sensor_event, i32 3, i32 16056320, i32 15990784, i32 8388608, i32 16121856, i32 16384000, i64 70368744177663, i32 16, i32 12, i32 0, i32 0, i8 1, i8 0, i8 0, i32 2, i32 16384, i64 824633720850, i32 1, i32 8192, i32 73, i32 16 }, [144 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Siena FPGA not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to reset NIC\0A\00", [43 x i8] zeroinitializer }, align 32
@siena_probe_nic.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"siena_probe_nic\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ethernet/sfc/siena.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"INT_KER at %llx (virt %p phys %llx)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NVRAM is invalid therefore using defaults\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@siena_stat_desc = internal constant { [59 x %struct.efx_hw_stat_desc], [104 x i8] } { [59 x %struct.efx_hw_stat_desc] [%struct.efx_hw_stat_desc { ptr @.str.7, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.8, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.9, i16 64, i16 56 }, %struct.efx_hw_stat_desc { ptr @.str.10, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.11, i16 64, i16 64 }, %struct.efx_hw_stat_desc { ptr @.str.12, i16 64, i16 8 }, %struct.efx_hw_stat_desc { ptr @.str.13, i16 64, i16 144 }, %struct.efx_hw_stat_desc { ptr @.str.14, i16 64, i16 16 }, %struct.efx_hw_stat_desc { ptr @.str.15, i16 64, i16 24 }, %struct.efx_hw_stat_desc { ptr @.str.16, i16 64, i16 32 }, %struct.efx_hw_stat_desc { ptr @.str.17, i16 64, i16 40 }, %struct.efx_hw_stat_desc { ptr @.str.18, i16 64, i16 48 }, %struct.efx_hw_stat_desc { ptr @.str.19, i16 64, i16 72 }, %struct.efx_hw_stat_desc { ptr @.str.20, i16 64, i16 80 }, %struct.efx_hw_stat_desc { ptr @.str.21, i16 64, i16 88 }, %struct.efx_hw_stat_desc { ptr @.str.22, i16 64, i16 96 }, %struct.efx_hw_stat_desc { ptr @.str.23, i16 64, i16 104 }, %struct.efx_hw_stat_desc { ptr @.str.24, i16 64, i16 112 }, %struct.efx_hw_stat_desc { ptr @.str.25, i16 64, i16 120 }, %struct.efx_hw_stat_desc { ptr @.str.26, i16 64, i16 128 }, %struct.efx_hw_stat_desc { ptr @.str.27, i16 64, i16 136 }, %struct.efx_hw_stat_desc { ptr @.str.28, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.29, i16 64, i16 152 }, %struct.efx_hw_stat_desc { ptr @.str.30, i16 64, i16 160 }, %struct.efx_hw_stat_desc { ptr @.str.31, i16 64, i16 168 }, %struct.efx_hw_stat_desc { ptr @.str.32, i16 64, i16 184 }, %struct.efx_hw_stat_desc { ptr @.str.33, i16 64, i16 176 }, %struct.efx_hw_stat_desc { ptr @.str.34, i16 64, i16 192 }, %struct.efx_hw_stat_desc { ptr @.str.35, i16 64, i16 200 }, %struct.efx_hw_stat_desc { ptr @.str.36, i16 64, i16 208 }, %struct.efx_hw_stat_desc { ptr @.str.37, i16 64, i16 216 }, %struct.efx_hw_stat_desc { ptr @.str.38, i16 64, i16 280 }, %struct.efx_hw_stat_desc { ptr @.str.39, i16 0, i16 0 }, %struct.efx_hw_stat_desc { ptr @.str.40, i16 64, i16 288 }, %struct.efx_hw_stat_desc { ptr @.str.41, i16 64, i16 224 }, %struct.efx_hw_stat_desc { ptr @.str.42, i16 64, i16 240 }, %struct.efx_hw_stat_desc { ptr @.str.43, i16 64, i16 368 }, %struct.efx_hw_stat_desc { ptr @.str.44, i16 64, i16 232 }, %struct.efx_hw_stat_desc { ptr @.str.45, i16 64, i16 248 }, %struct.efx_hw_stat_desc { ptr @.str.46, i16 64, i16 256 }, %struct.efx_hw_stat_desc { ptr @.str.47, i16 64, i16 264 }, %struct.efx_hw_stat_desc { ptr @.str.48, i16 64, i16 272 }, %struct.efx_hw_stat_desc { ptr @.str.49, i16 64, i16 360 }, %struct.efx_hw_stat_desc { ptr @.str.50, i16 64, i16 296 }, %struct.efx_hw_stat_desc { ptr @.str.51, i16 64, i16 304 }, %struct.efx_hw_stat_desc { ptr @.str.52, i16 64, i16 312 }, %struct.efx_hw_stat_desc { ptr @.str.53, i16 64, i16 320 }, %struct.efx_hw_stat_desc { ptr @.str.54, i16 64, i16 328 }, %struct.efx_hw_stat_desc { ptr @.str.55, i16 64, i16 336 }, %struct.efx_hw_stat_desc { ptr @.str.56, i16 64, i16 344 }, %struct.efx_hw_stat_desc { ptr @.str.57, i16 64, i16 352 }, %struct.efx_hw_stat_desc { ptr @.str.58, i16 64, i16 424 }, %struct.efx_hw_stat_desc { ptr @.str.59, i16 64, i16 376 }, %struct.efx_hw_stat_desc { ptr @.str.60, i16 64, i16 384 }, %struct.efx_hw_stat_desc { ptr @.str.61, i16 64, i16 392 }, %struct.efx_hw_stat_desc { ptr @.str.62, i16 64, i16 400 }, %struct.efx_hw_stat_desc { ptr @.str.63, i16 64, i16 408 }, %struct.efx_hw_stat_desc { ptr @.str.64, i16 64, i16 416 }, %struct.efx_hw_stat_desc { ptr @.str.65, i16 64, i16 432 }], [104 x i8] zeroinitializer }, align 32
@siena_stat_mask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_noskb_drops\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_nodesc_trunc\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_good_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_bad_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_bad\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_pause\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_control\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_unicast\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_multicast\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_lt64\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tx_64\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_65_to_127\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_128_to_255\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_256_to_511\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_512_to_1023\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_1024_to_15xx\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_15xx_to_jumbo\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_gtjumbo\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_collision\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_single_collision\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_multiple_collision\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_excessive_collision\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_deferred\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_late_collision\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_excessive_deferred\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_non_tcpudp\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_mac_src_error\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_ip_src_error\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_good_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_bad_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_good\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_bad\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_pause\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_control\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_unicast\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_multicast\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_broadcast\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_lt64\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx_64\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_65_to_127\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_128_to_255\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_256_to_511\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_512_to_1023\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_1024_to_15xx\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_15xx_to_jumbo\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_gtjumbo\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_bad_gtjumbo\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_overflow\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_false_carrier\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_symbol_error\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_align_error\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_length_error\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_internal_error\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_nodesc_drop_cnt\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s failed: type=%d rc=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.siena_set_wol = private unnamed_addr constant [14 x i8] c"siena_set_wol\00", align 1
@siena_register_tests = internal constant { [13 x { i32, [4 x i8], { [4 x i32] } }], [72 x i8] } { [13 x { i32, [4 x i8], { [4 x i32] } }] [{ i32, [4 x i8], { [4 x i32] } } { i32 0, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -64768, i32 -64768, i32 -64768, i32 -64768] } }, { i32, [4 x i8], { [4 x i32] } } { i32 256, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -16580352, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2048, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -16777217, i32 -1, i32 -64768, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2640, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 922812287, i32 8454143, i32 -1, i32 -253] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2688, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -2130772225, i32 -225, i32 -33554430, i32 -33024] } }, { i32, [4 x i8], { [4 x i32] } } { i32 1568, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -57600, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2112, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 50331648, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2128, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -16580608, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 592, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -15794176, i32 0, i32 0, i32 0] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2144, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2256, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2272, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] } }, { i32, [4 x i8], { [4 x i32] } } { i32 2288, [4 x i8] undef, { [4 x i32] } { [4 x i32] [i32 -1, i32 -1, i32 117440512, i32 0] } }], [72 x i8] zeroinitializer }, align 32
@siena_mtd_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@siena_nvram_types = internal constant { [14 x %struct.siena_nvram_type_info], [48 x i8] } { [14 x %struct.siena_nvram_type_info] [%struct.siena_nvram_type_info { i32 0, ptr @.str.70 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.71 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.72 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.73 }, %struct.siena_nvram_type_info { i32 1, ptr @.str.73 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.74 }, %struct.siena_nvram_type_info { i32 1, ptr @.str.74 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.75 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.76 }, %struct.siena_nvram_type_info { i32 1, ptr @.str.76 }, %struct.siena_nvram_type_info { i32 0, ptr @.str.77 }, %struct.siena_nvram_type_info { i32 1, ptr @.str.77 }, %struct.siena_nvram_type_info zeroinitializer, %struct.siena_nvram_type_info { i32 0, ptr @.str.78 }], [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Siena NVRAM manager\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sfc_dummy_phy\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfc_mcfw\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfc_mcfw_backup\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sfc_static_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfc_dynamic_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sfc_exp_rom\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfc_exp_rom_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_phy_fw\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfc_fpga\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.79 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"siena_a0_nic_type\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 968, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 273, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 294, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 307, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 316, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"siena_stat_desc\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 480, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"siena_stat_mask\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 541, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 539, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 538, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 481, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 482, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 483, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 484, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 485, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 486, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 487, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 488, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 489, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 490, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 491, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 492, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 493, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 494, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 495, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 496, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 497, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 498, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 499, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 500, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 501, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 502, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 503, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 504, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 505, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 506, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 507, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 508, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 509, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 510, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 511, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 512, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 513, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 514, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 515, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 516, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 517, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 518, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 519, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 520, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 521, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 522, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 523, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 524, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 525, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 526, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 527, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 528, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 529, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 530, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 531, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 532, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 533, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 534, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 535, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 536, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 537, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 708, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [21 x i8] c"siena_register_tests\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 70, i32 45 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 915, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [18 x i8] c"siena_nvram_types\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 836, i32 43 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 877, i32 31 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 837, i32 47 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 838, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 839, i32 42 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 840, i32 46 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 842, i32 47 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 844, i32 38 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 845, i32 47 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 847, i32 40 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [36 x i8] c"../drivers/net/ethernet/sfc/siena.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 849, i32 35 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @siena_a0_nic_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @siena_stat_desc, ptr @siena_stat_mask, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @siena_register_tests, ptr @.str.68, ptr @siena_nvram_types, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siena_a0_nic_type to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siena_stat_desc to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siena_stat_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siena_register_tests to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siena_nvram_types to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @siena_prepare_flush(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_disable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 102
  %0 = ptrtoint ptr %fc_disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_disable, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %fc_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @efx_mcdi_set_mac(ptr noundef %efx) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_set_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @siena_finish_flush(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_disable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 102
  %0 = ptrtoint ptr %fc_disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_disable, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %fc_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @efx_mcdi_set_mac(ptr noundef %efx) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @siena_mem_bar(ptr nocapture noundef readnone %efx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @siena_mem_map_size(ptr nocapture noundef readnone %efx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16713728
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_probe_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 656) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %efx, ptr %call7.i.i, align 8
  %nic_data2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %2 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %nic_data2, align 8
  %call3 = tail call i32 @efx_farch_fpga_ver(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.fail1_crit_edge, label %if.then6

do.body.fail1_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail1

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str) #14
  br label %fail1

if.end8:                                          ; preds = %if.end
  %max_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 39
  %7 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %max_channels, align 4
  %max_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 40
  %8 = ptrtoint ptr %max_vis to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %max_vis, align 32
  %max_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  %9 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %max_tx_channels, align 4
  %tx_queues_per_channel = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 48
  %10 = ptrtoint ptr %tx_queues_per_channel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %tx_queues_per_channel, align 128
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 624
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !175
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %15, i32 628
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #10, !srcloc !175
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %18, i32 632
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #10, !srcloc !175
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %21, i32 636
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #10, !srcloc !175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #10
  %23 = lshr i32 %16, 16
  %and11 = and i32 %23, 3
  %sub = add nsw i32 %and11, -1
  %port_num = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %24 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %port_num, align 8
  %call12 = tail call i32 @efx_mcdi_init(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.fail1_crit_edge

if.end8.fail1_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail1

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end28, label %do.body19

do.body19:                                        ; preds = %if.end15
  %msg_enable20 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %25 = ptrtoint ptr %msg_enable20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable20, align 4
  %and21 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body19.fail3_crit_edge, label %if.then23

do.body19.fail3_crit_edge:                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail3

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev24 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %27 = ptrtoint ptr %net_dev24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev24, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.1) #14
  br label %fail3

if.end28:                                         ; preds = %if.end15
  %29 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nic_data2, align 8
  %wol_filter_id.i = getelementptr inbounds %struct.siena_nic_data, ptr %30, i32 0, i32 1
  %call.i = tail call i32 @efx_mcdi_wol_filter_get_magic(ptr noundef %efx, ptr noundef %wol_filter_id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i147 = tail call i32 @efx_mcdi_wol_filter_reset(ptr noundef %efx) #10
  %31 = ptrtoint ptr %wol_filter_id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %wol_filter_id.i, align 4
  br label %siena_init_wol.exit

if.else.i:                                        ; preds = %if.end28
  %32 = ptrtoint ptr %wol_filter_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wol_filter_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp5.not.i = icmp eq i32 %33, -1
  br i1 %cmp5.not.i, label %if.else.i.siena_init_wol.exit_crit_edge, label %if.then6.i

if.else.i.siena_init_wol.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %siena_init_wol.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %34 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev.i, align 4
  %call7.i = tail call i32 @pci_wake_from_d3(ptr noundef %35, i1 noundef zeroext true) #10
  br label %siena_init_wol.exit

siena_init_wol.exit:                              ; preds = %if.then6.i, %if.else.i.siena_init_wol.exit_crit_edge, %if.then.i
  %irq_status = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 71
  %call29 = tail call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %irq_status, i32 noundef 16, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body33, label %siena_init_wol.exit.fail3_crit_edge

siena_init_wol.exit.fail3_crit_edge:              ; preds = %siena_init_wol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail3

do.body33:                                        ; preds = %siena_init_wol.exit
  %dma_addr = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 71, i32 1
  %36 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr, align 4
  %and35 = and i32 %37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body49, label %do.body40, !prof !176

do.body40:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/siena.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.body49:                                        ; preds = %do.body33
  %msg_enable50 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %38 = ptrtoint ptr %msg_enable50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable50, align 4
  %and51 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body49.do.end77_crit_edge, label %do.body54

do.body49.do.end77_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.body54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @siena_probe_nic.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@siena_probe_nic, %if.then63)) #10
          to label %do.end77 [label %if.then63], !srcloc !178

if.then63:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev64 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %40 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev64, align 4
  %42 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %43 to i64
  %44 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_status, align 8
  %46 = ptrtoint ptr %45 to i32
  %call.i148 = tail call i32 @__virt_to_phys(i32 noundef %46) #10
  %conv71 = zext i32 %call.i148 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @siena_probe_nic.__UNIQUE_ID_ddebug524, ptr noundef %41, ptr noundef nonnull @.str.5, i64 noundef %conv, ptr noundef %45, i64 noundef %conv71) #10
  br label %do.end77

do.end77:                                         ; preds = %if.then63, %do.body54, %do.body49.do.end77_crit_edge
  %call78 = tail call fastcc i32 @siena_probe_nvconfig(ptr noundef %efx)
  %47 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call78, label %do.end77.fail5_crit_edge [
    i32 -22, label %do.body82
    i32 0, label %do.end77.if.end94_crit_edge
  ]

do.end77.if.end94_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.end77.fail5_crit_edge:                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail5

do.body82:                                        ; preds = %do.end77
  %48 = ptrtoint ptr %msg_enable50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable50, align 4
  %and84 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body82.do.end90_crit_edge, label %if.then86

do.body82.do.end90_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

if.then86:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev87 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev87, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.6) #14
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %do.body82.do.end90_crit_edge
  %phy_type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 90
  %52 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %phy_type, align 4
  %mdio = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92
  %53 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %mdio, align 4
  br label %if.end94

if.end94:                                         ; preds = %do.end90, %do.end77.if.end94_crit_edge
  %call95 = tail call i32 @efx_mcdi_mon_probe(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.fail5_crit_edge

if.end94.fail5_crit_edge:                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail5

if.end98:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @efx_siena_sriov_probe(ptr noundef %efx) #10
  tail call void @efx_ptp_defer_probe_with_channel(ptr noundef %efx) #10
  br label %cleanup

fail5:                                            ; preds = %if.end94.fail5_crit_edge, %do.end77.fail5_crit_edge
  %rc.0 = phi i32 [ %call95, %if.end94.fail5_crit_edge ], [ %call78, %do.end77.fail5_crit_edge ]
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %irq_status) #10
  br label %fail3

fail3:                                            ; preds = %fail5, %siena_init_wol.exit.fail3_crit_edge, %if.then23, %do.body19.fail3_crit_edge
  %rc.1 = phi i32 [ %call16, %if.then23 ], [ %call16, %do.body19.fail3_crit_edge ], [ %call29, %siena_init_wol.exit.fail3_crit_edge ], [ %rc.0, %fail5 ]
  tail call void @efx_mcdi_detach(ptr noundef %efx) #10
  tail call void @efx_mcdi_fini(ptr noundef %efx) #10
  br label %fail1

fail1:                                            ; preds = %fail3, %if.end8.fail1_crit_edge, %if.then6, %do.body.fail1_crit_edge
  %rc.2 = phi i32 [ %call12, %if.end8.fail1_crit_edge ], [ %rc.1, %fail3 ], [ -19, %if.then6 ], [ -19, %do.body.fail1_crit_edge ]
  %54 = ptrtoint ptr %nic_data2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nic_data2, align 8
  tail call void @kfree(ptr noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end98, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %fail1 ], [ 0, %if.end98 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siena_remove_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_mcdi_mon_remove(ptr noundef %efx) #10
  %irq_status = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 71
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %irq_status) #10
  %call = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #10
  tail call void @efx_mcdi_detach(ptr noundef %efx) #10
  tail call void @efx_mcdi_fini(ptr noundef %efx) #10
  %nic_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %nic_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nic_data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_init_nic(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @efx_mcdi_handle_assertion(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2688
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !175
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 2692
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #10, !srcloc !175
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 2696
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #10, !srcloc !175
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 2700
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #10, !srcloc !175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #10
  %or = or i32 %2, -2147483648
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %12 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %13, i32 2688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i205, i32 %or) #10, !srcloc !179
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 2692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %5) #10, !srcloc !179
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 2696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %8) #10, !srcloc !179
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i207 = getelementptr i8, ptr %19, i32 2700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i207, i32 %11) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #10
  %call2.i209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i211 = getelementptr i8, ptr %21, i32 2640
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i211) #10, !srcloc !175
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i212 = getelementptr i8, ptr %24, i32 2644
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i212) #10, !srcloc !175
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i214 = getelementptr i8, ptr %27, i32 2648
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i214) #10, !srcloc !175
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i216 = getelementptr i8, ptr %30, i32 2652
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i216) #10, !srcloc !175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i209) #10
  %and16 = and i32 %22, -536870913
  %or40 = or i32 %25, 8388608
  %call3.i219 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i221 = getelementptr i8, ptr %33, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i221, i32 %and16) #10, !srcloc !179
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i223 = getelementptr i8, ptr %35, i32 2644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i223, i32 %or40) #10, !srcloc !179
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i225 = getelementptr i8, ptr %37, i32 2648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i225, i32 %28) #10, !srcloc !179
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i227 = getelementptr i8, ptr %39, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i227, i32 %31) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i219) #10
  %call2.i229 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %41, i32 2048
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i231) #10, !srcloc !175
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i232 = getelementptr i8, ptr %44, i32 2052
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i232) #10, !srcloc !175
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i234 = getelementptr i8, ptr %47, i32 2056
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i234) #10, !srcloc !175
  %49 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i236 = getelementptr i8, ptr %50, i32 2060
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i236) #10, !srcloc !175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i229) #10
  %and77 = and i32 %45, -16252929
  %or135 = or i32 %and77, 15728640
  %and149 = and i32 %42, -63504
  %or150 = or i32 %and149, 49153
  %call3.i239 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %53, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i241, i32 %or150) #10, !srcloc !179
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i243 = getelementptr i8, ptr %55, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i243, i32 %or135) #10, !srcloc !179
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i245 = getelementptr i8, ptr %57, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i245, i32 %48) #10, !srcloc !179
  %58 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i247 = getelementptr i8, ptr %59, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i247, i32 %51) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i239) #10
  %rx_indir_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5
  %call166 = tail call i32 @siena_rx_push_rss_config(ptr noundef %efx, i1 noundef zeroext false, ptr noundef %rx_indir_table, ptr noundef null)
  %context_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 1
  %60 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %context_id, align 8
  %call168 = tail call i32 @efx_mcdi_log_ctrl(ptr noundef %efx, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %do.body172, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body172:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i249 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %62, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i251, i32 0) #10, !srcloc !179
  %63 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i253 = getelementptr i8, ptr %64, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i253, i32 0) #10, !srcloc !179
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i255 = getelementptr i8, ptr %66, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i255, i32 0) #10, !srcloc !179
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i257 = getelementptr i8, ptr %68, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i257, i32 0) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i249) #10
  %call3.i259 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i261 = getelementptr i8, ptr %70, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i261, i32 256) #10, !srcloc !179
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i263 = getelementptr i8, ptr %72, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i263, i32 0) #10, !srcloc !179
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i265 = getelementptr i8, ptr %74, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i265, i32 0) #10, !srcloc !179
  %75 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i267 = getelementptr i8, ptr %76, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i267, i32 0) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i259) #10
  tail call void @efx_farch_init_common(ptr noundef %efx) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body172, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body172 ], [ %call, %entry.cleanup_crit_edge ], [ %call168, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_dimension_resources(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_farch_dimension_resources(ptr noundef %efx, i32 noundef 73728) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_port_dummy_op_void(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_map_reset_reason(i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @siena_map_reset_flags(ptr nocapture noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65660
  call void @__sanitizer_cov_trace_const_cmp4(i32 65660, i32 %and)
  %cmp = icmp eq i32 %and, 65660
  br i1 %cmp, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 124
  br i1 %cmp3, label %if.end.return.sink.split_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ -65661, %entry.return.sink.split_crit_edge ], [ -125, %if.end.return.sink.split_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_reset(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_port_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_fini_dmaq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_finish_flr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_describe_nic_stats(ptr nocapture noundef readnone %efx, ptr noundef %names) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @efx_nic_describe_stats(ptr noundef nonnull @siena_stat_desc, i32 noundef 59, ptr noundef nonnull @siena_stat_mask, ptr noundef %names) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_update_nic_stats(ptr noundef %efx, ptr noundef writeonly %full_stats, ptr noundef %core_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %stats2 = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 2
  %stats_buffer.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86
  %num_mac_stats.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %retry.075 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %stats_buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_buffer.i, align 4
  %4 = ptrtoint ptr %num_mac_stats.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_mac_stats.i, align 8
  %conv.i = zext i16 %5 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr i64, ptr %3, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp.i = icmp eq i64 %7, -1
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %if.end.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %8 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nic_data1, align 8
  %stats2.i = getelementptr inbounds %struct.siena_nic_data, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %10 = ptrtoint ptr %stats_buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats_buffer.i, align 4
  tail call void @efx_nic_update_stats(ptr noundef nonnull @siena_stat_desc, i32 noundef 59, ptr noundef nonnull @siena_stat_mask, ptr noundef %stats2.i, ptr noundef %11, i1 noundef zeroext false) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %13)
  %cmp7.not.i = icmp eq i64 %7, %13
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end

if.end10.i:                                       ; preds = %if.end.i
  %arrayidx11.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 58
  tail call void @efx_nic_fix_nodesc_drop_stat(ptr noundef %efx, ptr noundef %arrayidx11.i) #10
  %arrayidx12.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 3
  %arrayidx13.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx13.i, align 8
  %arrayidx14.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx14.i, align 8
  %sub15.i = sub i64 %15, %17
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx12.i, align 8
  %sub.i.i = sub i64 %sub15.i, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp.i.i = icmp sgt i64 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end10.i.efx_update_diff_stat.exit.i_crit_edge

if.end10.i.efx_update_diff_stat.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_update_diff_stat.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub15.i, ptr %arrayidx12.i, align 8
  br label %efx_update_diff_stat.exit.i

efx_update_diff_stat.exit.i:                      ; preds = %if.then.i.i, %if.end10.i.efx_update_diff_stat.exit.i_crit_edge
  %arrayidx16.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 22
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx16.i, align 8
  %arrayidx17.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 23
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx17.i, align 8
  %add.i = add i64 %24, %22
  %arrayidx18.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 24
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx18.i, align 8
  %add19.i = add i64 %add.i, %26
  %arrayidx20.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 26
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx20.i, align 8
  %add21.i = add i64 %add19.i, %28
  %arrayidx22.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 21
  %29 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add21.i, ptr %arrayidx22.i, align 8
  %arrayidx23.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 32
  %arrayidx24.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 31
  %30 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx24.i, align 8
  %arrayidx25.i = getelementptr %struct.siena_nic_data, ptr %9, i32 0, i32 2, i32 33
  %32 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx25.i, align 8
  %sub26.i = sub i64 %31, %33
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx23.i, align 8
  %sub.i51.i = sub i64 %sub26.i, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i51.i)
  %cmp.i52.i = icmp sgt i64 %sub.i51.i, 0
  br i1 %cmp.i52.i, label %if.then.i53.i, label %efx_update_diff_stat.exit.i.efx_update_diff_stat.exit54.i_crit_edge

efx_update_diff_stat.exit.i.efx_update_diff_stat.exit54.i_crit_edge: ; preds = %efx_update_diff_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_update_diff_stat.exit54.i

if.then.i53.i:                                    ; preds = %efx_update_diff_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sub26.i, ptr %arrayidx23.i, align 8
  br label %efx_update_diff_stat.exit54.i

efx_update_diff_stat.exit54.i:                    ; preds = %if.then.i53.i, %efx_update_diff_stat.exit.i.efx_update_diff_stat.exit54.i_crit_edge
  tail call void @efx_update_sw_stats(ptr noundef %efx, ptr noundef %stats2.i) #10
  br label %for.end

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 21474800) #10
  %inc = add nuw nsw i32 %retry.075, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %efx_update_diff_stat.exit54.i, %for.body.for.end_crit_edge
  %tobool.not = icmp eq ptr %full_stats, null
  br i1 %tobool.not, label %for.end.if.end5_crit_edge, label %if.then4

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %38 = call ptr @memcpy(ptr %full_stats, ptr %stats2, i32 472)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %core_stats, null
  br i1 %tobool6.not, label %if.end5.if.end34_crit_edge, label %if.then7

if.end5.if.end34_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 34
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx, align 8
  %41 = ptrtoint ptr %core_stats to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %core_stats, align 8
  %arrayidx8 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx8, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 1
  %44 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %tx_packets, align 8
  %arrayidx9 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 31
  %45 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx9, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 2
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %rx_bytes, align 8
  %arrayidx10 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx10, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 3
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %tx_bytes, align 8
  %arrayidx11 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 58
  %51 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx11, align 8
  %arrayidx12 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx12, align 8
  %add = add i64 %54, %52
  %55 = ptrtoint ptr %stats2 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %stats2, align 8
  %add14 = add i64 %add, %56
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 6
  %57 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add14, ptr %rx_dropped, align 8
  %arrayidx15 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 40
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx15, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 8
  %60 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %multicast, align 8
  %arrayidx16 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 21
  %61 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx16, align 8
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 9
  %63 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %collisions, align 8
  %arrayidx17 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 50
  %64 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx17, align 8
  %arrayidx18 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 56
  %66 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %67, %65
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 10
  %68 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add19, ptr %rx_length_errors, align 8
  %arrayidx20 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 36
  %69 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx20, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 12
  %71 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %rx_crc_errors, align 8
  %arrayidx21 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 55
  %72 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx21, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 13
  %74 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %rx_frame_errors, align 8
  %arrayidx22 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 52
  %75 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx22, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 14
  %77 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %rx_fifo_errors, align 8
  %arrayidx23 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 26
  %78 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx23, align 8
  %tx_window_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 20
  %80 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %tx_window_errors, align 8
  %add26 = add i64 %70, %add19
  %add28 = add i64 %add26, %73
  %arrayidx29 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 54
  %81 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx29, align 8
  %add30 = add i64 %add28, %82
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 4
  %83 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %add30, ptr %rx_errors, align 8
  %arrayidx32 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 6
  %84 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %85, %79
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %core_stats, i32 0, i32 5
  %86 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %add33, ptr %tx_errors, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then7, %if.end5.if.end34_crit_edge
  ret i32 59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_start_stats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_pull_stats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mac_stop_stats(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siena_push_irq_moderation(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_moderation_us = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 6
  %0 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_moderation_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 128
  %call = tail call i32 @efx_usecs_to_ticks(ptr noundef %3, i32 noundef %1) #10
  %sub = add i32 %call, -1
  %4 = or i32 %sub, 49152
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 128
  %channel9 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.body1.i, label %if.else.i

do.body1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %storemerge) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #10
  br label %_efx_writed_page_locked.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vi_stride.i1.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %vi_stride.i1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vi_stride.i1.i, align 128
  %mul.i.i = mul i32 %13, %9
  %add.i.i = add i32 %mul.i.i, 1056
  %membase.i.i2.i = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 13
  %14 = ptrtoint ptr %membase.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i2.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %15, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3.i, i32 %storemerge) #10, !srcloc !179
  br label %_efx_writed_page_locked.exit

_efx_writed_page_locked.exit:                     ; preds = %if.else.i, %do.body1.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_mac_reconfigure(ptr noundef %efx, i1 noundef zeroext %mtu_only) #0 align 64 {
entry:
  %inbuf = alloca [8 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inbuf) #10
  tail call void @efx_farch_filter_sync_rx_mode(ptr noundef %efx) #10
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end11, !prof !176

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 648, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end11, %entry.if.end_crit_edge
  %call23 = tail call i32 @efx_mcdi_set_mac(ptr noundef %efx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp.not = icmp eq i32 %call23, 0
  br i1 %cmp.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_hash = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 100
  %0 = call ptr @memcpy(ptr %inbuf, ptr %multicast_hash, i32 32)
  %call28 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 53, ptr noundef nonnull %inbuf, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end25 ], [ %call23, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inbuf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_mcdi_mac_check_fault(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @siena_get_wol(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %wol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %supported, align 4
  %wol_filter_id = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %wol_filter_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wol_filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not = icmp eq i32 %4, -1
  %spec.select = select i1 %cmp.not, i32 0, i32 32
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %7 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_set_wol(ptr noundef %efx, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %and = and i32 %type, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %type, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %wol_filter_id = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wol_filter_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol_filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %if.then4.if.end7_crit_edge, label %if.then5

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @efx_mcdi_wol_filter_remove(ptr noundef %efx, i32 noundef %3) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then4.if.end7_crit_edge
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %call9 = tail call i32 @efx_mcdi_wol_filter_set_magic(ptr noundef %efx, ptr noundef %7, ptr noundef %wol_filter_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %call13 = tail call i32 @pci_wake_from_d3(ptr noundef %9, i1 noundef zeroext true) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call14 = tail call i32 @efx_mcdi_wol_filter_reset(ptr noundef %efx) #10
  %wol_filter_id15 = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %wol_filter_id15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %wol_filter_id15, align 4
  %pci_dev16 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %11 = ptrtoint ptr %pci_dev16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev16, align 4
  %call17 = tail call i32 @pci_wake_from_d3(ptr noundef %12, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool18.not = icmp eq i32 %call14, 0
  br i1 %tobool18.not, label %if.else.cleanup_crit_edge, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.end7.do.body_crit_edge
  %rc.0 = phi i32 [ %call9, %if.end7.do.body_crit_edge ], [ %call14, %if.else.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and22 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body.cleanup_crit_edge, label %if.then24

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev25 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %15 = ptrtoint ptr %net_dev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev25, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.siena_set_wol, i32 noundef %type, i32 noundef %rc.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end12 ], [ %rc.0, %if.then24 ], [ %rc.0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siena_init_wol(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %wol_filter_id = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 1
  %call = tail call i32 @efx_mcdi_wol_filter_get_magic(ptr noundef %efx, ptr noundef %wol_filter_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @efx_mcdi_wol_filter_reset(ptr noundef %efx) #10
  %2 = ptrtoint ptr %wol_filter_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wol_filter_id, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %wol_filter_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wol_filter_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp5.not = icmp eq i32 %4, -1
  br i1 %cmp5.not, label %if.else.if.end8_crit_edge, label %if.then6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %call7 = tail call i32 @pci_wake_from_d3(ptr noundef %6, i1 noundef zeroext true) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @siena_check_caps(ptr nocapture noundef readnone %efx, i8 noundef zeroext %flag, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_test_chip(ptr noundef %efx, ptr nocapture noundef writeonly %tests) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_reset_down(ptr noundef %efx, i32 noundef 2) #10
  %call = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @efx_farch_test_registers(ptr noundef %efx, ptr noundef nonnull @siena_register_tests, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %cond = select i1 %tobool2.not, i32 1, i32 -1
  %registers = getelementptr inbounds %struct.efx_self_tests, ptr %tests, i32 0, i32 6
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %registers, align 4
  %call3 = tail call i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef 2) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call3, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp eq i32 %rc.0, 0
  %call4 = tail call i32 @efx_reset_up(ptr noundef %efx, i32 noundef 2, i1 noundef zeroext %cmp) #10
  %call4.rc.0 = select i1 %cmp, i32 %call4, i32 %rc.0
  ret i32 %call4.rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_nvram_test_all(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siena_mcdi_request(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %hdr, i32 noundef %hdr_len, ptr nocapture noundef readonly %sdu, i32 noundef %sdu_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %0 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %add = select i1 %tobool.not, i32 16711688, i32 16711944
  %sub = add i32 %sdu_len, 3
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hdr, align 4
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #10, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp23.not = icmp ult i32 %sub, 4
  br i1 %cmp23.not, label %entry.do.body8_crit_edge, label %for.body.lr.ph

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

for.body.lr.ph:                                   ; preds = %entry
  %div19 = lshr i32 %sub, 2
  %add6 = add i32 %add, %hdr_len
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %union.efx_dword, ptr %sdu, i32 %i.024
  %mul = shl i32 %i.024, 2
  %add7 = add i32 %add6, %mul
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %9, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 %7) #10, !srcloc !179
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %div19
  br i1 %exitcond.not, label %for.body.do.body8_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.do.body8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.body8:                                         ; preds = %for.body.do.body8_crit_edge, %entry.do.body8_crit_edge
  %add4 = select i1 %tobool.not, i32 16711680, i32 16711684
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1165531836) #10, !srcloc !179
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @siena_mcdi_poll_response(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %0 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %add = select i1 %tobool.not, i32 16711688, i32 16711944
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not = icmp ne i32 %4, -1
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3 = icmp ne i32 %5, 0
  %6 = and i1 %cmp.not, %tobool3
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siena_mcdi_read_response(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %outbuf, i32 noundef %offset, i32 noundef %outlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %outlen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp9.not = icmp ult i32 %sub, 4
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div8 = lshr i32 %sub, 2
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %0 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %add = select i1 %tobool.not, i32 16711688, i32 16711944
  %add2 = add i32 %add, %offset
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %union.efx_dword, ptr %outbuf, i32 %i.010
  %mul = shl i32 %i.010, 2
  %add3 = add i32 %add2, %mul
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !175
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %div8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_mcdi_poll_reboot(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %2 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %add = select i1 %tobool.not, i32 16713720, i32 16713724
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 0) #10, !srcloc !179
  %arrayidx3 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.siena_nic_data, ptr %1, i32 0, i32 2, i32 32
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1377915426, i32 %6)
  %cmp6 = icmp eq i32 %6, -1377915426
  %. = select i1 %cmp6, i32 -4, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_irq_enable_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_irq_test_generate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_irq_disable_master(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_msi_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_legacy_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_tx_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_tx_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_tx_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_tx_write(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__efx_enqueue_skb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_tx_limit_len(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_rx_push_rss_config(ptr noundef %efx, i1 noundef zeroext %user, ptr nocapture noundef readonly %rx_indir_table, ptr noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_hash_key = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4
  %0 = call ptr @memcpy(ptr %rx_hash_key, ptr %key, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_hash_key2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4
  %1 = ptrtoint ptr %rx_hash_key2 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %temp.sroa.0.0.copyload = load i64, ptr %rx_hash_key2, align 1
  %temp.sroa.0.sroa.0.0.extract.shift90 = lshr i64 %temp.sroa.0.0.copyload, 32
  %temp.sroa.0.sroa.0.0.extract.trunc91 = trunc i64 %temp.sroa.0.sroa.0.0.extract.shift90 to i32
  %temp.sroa.0.sroa.12.0.extract.trunc96 = trunc i64 %temp.sroa.0.0.copyload to i32
  %temp.sroa.17.0.rx_hash_key2.sroa_idx = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 8
  %2 = ptrtoint ptr %temp.sroa.17.0.rx_hash_key2.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %temp.sroa.17.0.copyload = load i64, ptr %temp.sroa.17.0.rx_hash_key2.sroa_idx, align 1
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %temp.sroa.0.sroa.0.0.extract.trunc91) #10, !srcloc !179
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %6, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %temp.sroa.0.sroa.12.0.extract.trunc96) #10, !srcloc !179
  %temp.sroa.17.8.extract.shift = lshr i64 %temp.sroa.17.0.copyload, 32
  %temp.sroa.17.8.extract.trunc = trunc i64 %temp.sroa.17.8.extract.shift to i32
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %8, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %temp.sroa.17.8.extract.trunc) #10, !srcloc !179
  %temp.sroa.17.12.extract.trunc = trunc i64 %temp.sroa.17.0.copyload to i32
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %temp.sroa.17.12.extract.trunc) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #10
  %11 = ptrtoint ptr %rx_hash_key2 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %temp.sroa.0.0.copyload67 = load i64, ptr %rx_hash_key2, align 1
  %temp.sroa.0.sroa.0.0.extract.shift92 = lshr i64 %temp.sroa.0.0.copyload67, 32
  %temp.sroa.0.sroa.0.0.extract.trunc93 = trunc i64 %temp.sroa.0.sroa.0.0.extract.shift92 to i32
  %temp.sroa.0.sroa.12.0.extract.trunc97 = trunc i64 %temp.sroa.0.0.copyload67 to i32
  %12 = ptrtoint ptr %temp.sroa.17.0.rx_hash_key2.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %temp.sroa.17.0.copyload73 = load i64, ptr %temp.sroa.17.0.rx_hash_key2.sroa_idx, align 1
  %call3.i35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %14, i32 2256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %temp.sroa.0.sroa.0.0.extract.trunc93) #10, !srcloc !179
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i39 = getelementptr i8, ptr %16, i32 2260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i39, i32 %temp.sroa.0.sroa.12.0.extract.trunc97) #10, !srcloc !179
  %temp.sroa.17.8.extract.shift76 = lshr i64 %temp.sroa.17.0.copyload73, 32
  %temp.sroa.17.8.extract.trunc77 = trunc i64 %temp.sroa.17.8.extract.shift76 to i32
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i41 = getelementptr i8, ptr %18, i32 2264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i41, i32 %temp.sroa.17.8.extract.trunc77) #10, !srcloc !179
  %temp.sroa.17.12.extract.trunc85 = trunc i64 %temp.sroa.17.0.copyload73 to i32
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i43 = getelementptr i8, ptr %20, i32 2268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i43, i32 %temp.sroa.17.12.extract.trunc85) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i35) #10
  %add.ptr = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 16
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %temp.sroa.0.0.copyload68 = load i64, ptr %add.ptr, align 1
  %temp.sroa.0.sroa.0.0.extract.shift94 = lshr i64 %temp.sroa.0.0.copyload68, 32
  %temp.sroa.0.sroa.0.0.extract.trunc95 = trunc i64 %temp.sroa.0.sroa.0.0.extract.shift94 to i32
  %temp.sroa.0.sroa.12.0.extract.trunc98 = trunc i64 %temp.sroa.0.0.copyload68 to i32
  %temp.sroa.17.0.add.ptr.sroa_idx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 24
  %22 = ptrtoint ptr %temp.sroa.17.0.add.ptr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %temp.sroa.17.0.copyload74 = load i64, ptr %temp.sroa.17.0.add.ptr.sroa_idx, align 1
  %call3.i45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %24, i32 2272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 %temp.sroa.0.sroa.0.0.extract.trunc95) #10, !srcloc !179
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i49 = getelementptr i8, ptr %26, i32 2276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i49, i32 %temp.sroa.0.sroa.12.0.extract.trunc98) #10, !srcloc !179
  %temp.sroa.17.8.extract.shift79 = lshr i64 %temp.sroa.17.0.copyload74, 32
  %temp.sroa.17.8.extract.trunc80 = trunc i64 %temp.sroa.17.8.extract.shift79 to i32
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i51 = getelementptr i8, ptr %28, i32 2280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i51, i32 %temp.sroa.17.8.extract.trunc80) #10, !srcloc !179
  %temp.sroa.17.12.extract.trunc87 = trunc i64 %temp.sroa.17.0.copyload74 to i32
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i53 = getelementptr i8, ptr %30, i32 2284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i53, i32 %temp.sroa.17.12.extract.trunc87) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i45) #10
  %add.ptr19 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 32
  %31 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %add.ptr19, align 1
  %temp.sroa.0.sroa.0.0.extract.shift = lshr i64 %32, 32
  %temp.sroa.0.sroa.0.0.extract.trunc = trunc i64 %temp.sroa.0.sroa.0.0.extract.shift to i32
  %temp.sroa.0.sroa.12.0.extract.trunc = trunc i64 %32 to i32
  %call3.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %34, i32 2288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %temp.sroa.0.sroa.0.0.extract.trunc) #10, !srcloc !179
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i59 = getelementptr i8, ptr %36, i32 2292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i59, i32 %temp.sroa.0.sroa.12.0.extract.trunc) #10, !srcloc !179
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i61 = getelementptr i8, ptr %38, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i61, i32 100663296) #10, !srcloc !179
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i63 = getelementptr i8, ptr %40, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i63, i32 0) #10, !srcloc !179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i55) #10
  %rx_indir_table21 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5
  %41 = call ptr @memcpy(ptr %rx_indir_table21, ptr %rx_indir_table, i32 512)
  tail call void @efx_farch_rx_push_indir_table(ptr noundef %efx) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_rx_pull_rss_config(ptr noundef %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !175
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 2260
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #10, !srcloc !175
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 2264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #10, !srcloc !175
  %temp.sroa.12.8.insert.ext = zext i32 %8 to i64
  %temp.sroa.12.8.insert.shift = shl nuw i64 %temp.sroa.12.8.insert.ext, 32
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 2268
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #10, !srcloc !175
  %temp.sroa.12.12.insert.ext = zext i32 %11 to i64
  %temp.sroa.12.12.insert.insert = or i64 %temp.sroa.12.8.insert.shift, %temp.sroa.12.12.insert.ext
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #10
  %rx_hash_key = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4
  %temp.sroa.0.sroa.9.0.insert.ext62 = zext i32 %5 to i64
  %temp.sroa.0.sroa.0.0.insert.ext54 = zext i32 %2 to i64
  %temp.sroa.0.sroa.0.0.insert.shift55 = shl nuw i64 %temp.sroa.0.sroa.0.0.insert.ext54, 32
  %temp.sroa.0.sroa.0.0.insert.insert57 = or i64 %temp.sroa.0.sroa.0.0.insert.shift55, %temp.sroa.0.sroa.9.0.insert.ext62
  %12 = ptrtoint ptr %rx_hash_key to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %temp.sroa.0.sroa.0.0.insert.insert57, ptr %rx_hash_key, align 1
  %temp.sroa.12.0.rx_hash_key.sroa_idx = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 8
  %13 = ptrtoint ptr %temp.sroa.12.0.rx_hash_key.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %temp.sroa.12.12.insert.insert, ptr %temp.sroa.12.0.rx_hash_key.sroa_idx, align 1
  %call2.i15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %15, i32 2272
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #10, !srcloc !175
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i18 = getelementptr i8, ptr %18, i32 2276
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i18) #10, !srcloc !175
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i20 = getelementptr i8, ptr %21, i32 2280
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i20) #10, !srcloc !175
  %temp.sroa.12.8.insert.ext37 = zext i32 %22 to i64
  %temp.sroa.12.8.insert.shift38 = shl nuw i64 %temp.sroa.12.8.insert.ext37, 32
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i22 = getelementptr i8, ptr %24, i32 2284
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i22) #10, !srcloc !175
  %temp.sroa.12.12.insert.ext47 = zext i32 %25 to i64
  %temp.sroa.12.12.insert.insert49 = or i64 %temp.sroa.12.8.insert.shift38, %temp.sroa.12.12.insert.ext47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i15) #10
  %add.ptr = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 16
  %temp.sroa.0.sroa.9.0.insert.ext65 = zext i32 %19 to i64
  %temp.sroa.0.sroa.0.0.insert.ext58 = zext i32 %16 to i64
  %temp.sroa.0.sroa.0.0.insert.shift59 = shl nuw i64 %temp.sroa.0.sroa.0.0.insert.ext58, 32
  %temp.sroa.0.sroa.0.0.insert.insert61 = or i64 %temp.sroa.0.sroa.0.0.insert.shift59, %temp.sroa.0.sroa.9.0.insert.ext65
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %temp.sroa.0.sroa.0.0.insert.insert61, ptr %add.ptr, align 1
  %temp.sroa.12.0.add.ptr.sroa_idx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 24
  %27 = ptrtoint ptr %temp.sroa.12.0.add.ptr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %temp.sroa.12.12.insert.insert49, ptr %temp.sroa.12.0.add.ptr.sroa_idx, align 1
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #10
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %29, i32 2288
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #10, !srcloc !175
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i28 = getelementptr i8, ptr %32, i32 2292
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i28) #10, !srcloc !175
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i30 = getelementptr i8, ptr %35, i32 2296
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i30) #10, !srcloc !175
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i32 = getelementptr i8, ptr %38, i32 2300
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i32) #10, !srcloc !175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i25) #10
  %add.ptr7 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4, i32 32
  %temp.sroa.0.sroa.9.0.insert.ext = zext i32 %33 to i64
  %temp.sroa.0.sroa.0.0.insert.ext = zext i32 %30 to i64
  %temp.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %temp.sroa.0.sroa.0.0.insert.ext, 32
  %temp.sroa.0.sroa.0.0.insert.insert = or i64 %temp.sroa.0.sroa.0.0.insert.shift, %temp.sroa.0.sroa.9.0.insert.ext
  %40 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %temp.sroa.0.sroa.0.0.insert.insert, ptr %add.ptr7, align 1
  tail call void @efx_farch_rx_pull_indir_table(ptr noundef %efx) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_rx_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_rx_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_rx_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_rx_write(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_rx_defer_refill(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efx_rx_packet(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_ev_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_ev_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_ev_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_ev_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_ev_process(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_ev_read_ack(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_ev_test_generate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_table_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_filter_table_restore(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_filter_table_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_filter_update_rx_scatter(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_insert(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_remove_safe(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_get_safe(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_clear_rx(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_count_rx_used(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_get_rx_id_limit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_filter_get_rx_ids(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_farch_filter_rfs_expire_one(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_mtd_probe(ptr noundef %efx) #0 align 64 {
entry:
  %fw_subtype_list.i = alloca [32 x i16], align 2
  %size.i = alloca i32, align 4
  %erase_size.i = alloca i32, align 4
  %protected.i = alloca i8, align 1
  %nvram_types = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvram_types) #10
  %0 = ptrtoint ptr %nvram_types to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nvram_types, align 4, !annotation !183
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b380 = load i1, ptr @siena_mtd_probe.__already_done, align 1
  br i1 %.b380, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !176

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @siena_mtd_probe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 915, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.4, i32 noundef 915) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = call i32 @efx_mcdi_nvram_types(ptr noundef %efx, ptr noundef nonnull %nvram_types) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cond.false, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.end29
  %1 = ptrtoint ptr %nvram_types to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nvram_types, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %2) #10
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 1472) #10
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %cond.false.cleanup_crit_edge, label %if.end7.i.i, !prof !184

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %cond.false
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #15
  %tobool326.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool326.not, label %if.end7.i.i.cleanup_crit_edge, label %while.condthread-pre-split

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.condthread-pre-split:                       ; preds = %if.end7.i.i
  %6 = ptrtoint ptr %nvram_types to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %nvram_types, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not406 = icmp eq i32 %.pr, 0
  br i1 %cmp.not406, label %while.condthread-pre-split.while.end_crit_edge, label %while.body.lr.ph

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.condthread-pre-split
  %port_num.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end342.while.body_crit_edge, %while.body.lr.ph
  %n_parts.0410 = phi i32 [ 0, %while.body.lr.ph ], [ %n_parts.1, %if.end342.while.body_crit_edge ]
  %type.0407 = phi i32 [ 0, %while.body.lr.ph ], [ %inc343, %if.end342.while.body_crit_edge ]
  %7 = phi i32 [ %.pr, %while.body.lr.ph ], [ %shr344, %if.end342.while.body_crit_edge ]
  %and330 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %while.body.if.end342_crit_edge, label %if.then332

while.body.if.end342_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end342

if.then332:                                       ; preds = %while.body
  %arrayidx = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %n_parts.0410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #10
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %size.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %erase_size.i) #10
  %9 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %erase_size.i, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %protected.i) #10
  %10 = ptrtoint ptr %protected.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %protected.i, align 1, !annotation !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type.0407)
  %cmp.i = icmp ugt i32 %type.0407, 13
  br i1 %cmp.i, label %if.then332.siena_mtd_probe_partition.exit.thread_crit_edge, label %lor.lhs.false.i

if.then332.siena_mtd_probe_partition.exit.thread_crit_edge: ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #12
  br label %siena_mtd_probe_partition.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then332
  %name.i = getelementptr [14 x %struct.siena_nvram_type_info], ptr @siena_nvram_types, i32 0, i32 %type.0407, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %type.0407)
  %cmp1.i = icmp eq i32 %type.0407, 12
  br i1 %cmp1.i, label %lor.lhs.false.i.siena_mtd_probe_partition.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.siena_mtd_probe_partition.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %siena_mtd_probe_partition.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [14 x %struct.siena_nvram_type_info], ptr @siena_nvram_types, i32 0, i32 %type.0407
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_num.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not.i = icmp eq i32 %12, %14
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.siena_mtd_probe_partition.exit.thread_crit_edge

if.end.i.siena_mtd_probe_partition.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %siena_mtd_probe_partition.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @efx_mcdi_nvram_info(ptr noundef %efx, i32 noundef %type.0407, ptr noundef nonnull %size.i, ptr noundef nonnull %erase_size.i, ptr noundef nonnull %protected.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %siena_mtd_probe_partition.exit

if.end8.i:                                        ; preds = %if.end5.i
  %15 = ptrtoint ptr %protected.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protected.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not.i = icmp eq i8 %16, 0
  br i1 %tobool9.not.i, label %siena_mtd_probe_partition.exit.thread389, label %if.end8.i.siena_mtd_probe_partition.exit.thread_crit_edge

if.end8.i.siena_mtd_probe_partition.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %siena_mtd_probe_partition.exit.thread

siena_mtd_probe_partition.exit.thread389:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %type.0407 to i16
  %nvram_type.i = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %n_parts.0410, i32 2
  %17 = ptrtoint ptr %nvram_type.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %nvram_type.i, align 2
  %dev_type_name.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %dev_type_name.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.69, ptr %dev_type_name.i, align 8
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  %type_name.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %type_name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %type_name.i, align 4
  %mtd.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx, i32 0, i32 1
  %22 = ptrtoint ptr %mtd.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %mtd.i, align 8
  %flags.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3072, ptr %flags.i, align 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %conv18.i = zext i32 %25 to i64
  %size21.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %size21.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv18.i, ptr %size21.i, align 16
  %27 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erase_size.i, align 4
  %erasesize.i = getelementptr inbounds %struct.efx_mtd_partition, ptr %arrayidx, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %erasesize.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #10
  %inc = add i32 %n_parts.0410, 1
  br label %if.end342

siena_mtd_probe_partition.exit.thread:            ; preds = %if.end8.i.siena_mtd_probe_partition.exit.thread_crit_edge, %if.end.i.siena_mtd_probe_partition.exit.thread_crit_edge, %lor.lhs.false.i.siena_mtd_probe_partition.exit.thread_crit_edge, %if.then332.siena_mtd_probe_partition.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #10
  br label %if.end342

siena_mtd_probe_partition.exit:                   ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %protected.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase_size.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call6.i)
  %cond403 = icmp eq i32 %call6.i, -19
  br i1 %cond403, label %siena_mtd_probe_partition.exit.if.end342_crit_edge, label %siena_mtd_probe_partition.exit.if.then352_crit_edge

siena_mtd_probe_partition.exit.if.then352_crit_edge: ; preds = %siena_mtd_probe_partition.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then352

siena_mtd_probe_partition.exit.if.end342_crit_edge: ; preds = %siena_mtd_probe_partition.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end342

if.end342:                                        ; preds = %siena_mtd_probe_partition.exit.if.end342_crit_edge, %siena_mtd_probe_partition.exit.thread, %siena_mtd_probe_partition.exit.thread389, %while.body.if.end342_crit_edge
  %n_parts.1 = phi i32 [ %inc, %siena_mtd_probe_partition.exit.thread389 ], [ %n_parts.0410, %while.body.if.end342_crit_edge ], [ %n_parts.0410, %siena_mtd_probe_partition.exit.if.end342_crit_edge ], [ %n_parts.0410, %siena_mtd_probe_partition.exit.thread ]
  %inc343 = add i32 %type.0407, 1
  %30 = ptrtoint ptr %nvram_types to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nvram_types, align 4
  %shr344 = lshr i32 %31, 1
  store i32 %shr344, ptr %nvram_types, align 4
  %cmp.not = icmp ult i32 %31, 2
  br i1 %cmp.not, label %if.end342.while.end_crit_edge, label %if.end342.while.body_crit_edge

if.end342.while.body_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end342.while.end_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end342.while.end_crit_edge, %while.condthread-pre-split.while.end_crit_edge
  %n_parts.0.lcssa = phi i32 [ 0, %while.condthread-pre-split.while.end_crit_edge ], [ %n_parts.1, %if.end342.while.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fw_subtype_list.i) #10
  %32 = call ptr @memset(ptr %fw_subtype_list.i, i32 255, i32 64)
  %call.i381 = call i32 @efx_mcdi_get_board_cfg(ptr noundef %efx, ptr noundef null, ptr noundef nonnull %fw_subtype_list.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %tobool.not.i382 = icmp eq i32 %call.i381, 0
  br i1 %tobool.not.i382, label %for.cond.preheader.i, label %siena_mtd_get_fw_subtypes.exit

for.cond.preheader.i:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_parts.0.lcssa)
  %cmp10.not.i = icmp eq i32 %n_parts.0.lcssa, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.fail_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.fail_crit_edge:              ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %nvram_type.i383 = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %i.011.i, i32 2
  %33 = ptrtoint ptr %nvram_type.i383 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nvram_type.i383, align 2
  %idxprom.i = zext i16 %34 to i32
  %arrayidx1.i = getelementptr [32 x i16], ptr %fw_subtype_list.i, i32 0, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx1.i, align 2
  %fw_subtype.i = getelementptr %struct.efx_mcdi_mtd_partition, ptr %call8.i.i, i32 %i.011.i, i32 3
  %37 = ptrtoint ptr %fw_subtype.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %fw_subtype.i, align 4
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n_parts.0.lcssa
  br i1 %exitcond.not.i, label %for.body.i.fail_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.fail_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

siena_mtd_get_fw_subtypes.exit:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_subtype_list.i) #10
  br label %if.then352

fail:                                             ; preds = %for.body.i.fail_crit_edge, %for.cond.preheader.i.fail_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_subtype_list.i) #10
  %call350 = call i32 @efx_mtd_add(ptr noundef %efx, ptr noundef nonnull %call8.i.i, i32 noundef %n_parts.0.lcssa, i32 noundef 1472) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %fail.cleanup_crit_edge, label %fail.if.then352_crit_edge

fail.if.then352_crit_edge:                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then352

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then352:                                       ; preds = %fail.if.then352_crit_edge, %siena_mtd_get_fw_subtypes.exit, %siena_mtd_probe_partition.exit.if.then352_crit_edge
  %rc.0397 = phi i32 [ %call350, %fail.if.then352_crit_edge ], [ %call.i381, %siena_mtd_get_fw_subtypes.exit ], [ %call6.i, %siena_mtd_probe_partition.exit.if.then352_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then352, %fail.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end29.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %rc.0397, %if.then352 ], [ 0, %fail.cleanup_crit_edge ], [ -12, %cond.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvram_types) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mtd_rename(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_erase(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mtd_sync(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siena_ptp_write_host_time(ptr nocapture noundef readonly %efx, i32 noundef %host_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %host_time)
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 16713712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #10, !srcloc !179
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siena_ptp_set_ts_config(ptr noundef %efx, ptr nocapture noundef %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %init, i32 0, i32 2
  %0 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_filter, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge18
    i32 5, label %entry.sw.bb2_crit_edge19
    i32 6, label %entry.sw.bb5_crit_edge
    i32 7, label %entry.sw.bb5_crit_edge20
    i32 8, label %entry.sw.bb5_crit_edge21
  ]

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb5_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %init, i32 0, i32 1
  %3 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp ne i32 %4, 0
  %call = tail call i32 @efx_ptp_get_mode(ptr noundef %efx) #10
  %call1 = tail call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext %cmp, i32 noundef %call) #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge18, %entry.sw.bb2_crit_edge19
  %5 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %rx_filter, align 4
  %call4 = tail call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext true, i32 noundef 0) #10
  br label %cleanup

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge20, %entry.sw.bb5_crit_edge21
  %6 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %rx_filter, align 4
  %call7 = tail call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext true, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %sw.bb5.cleanup_crit_edge, label %if.then

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext true, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb5.cleanup_crit_edge, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb2 ], [ %call1, %sw.bb ], [ %call9, %if.then ], [ 0, %sw.bb5.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_configure(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_siena_sriov_wanted(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_flr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_set_vf_mac(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_set_vf_vlan(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_set_vf_spoofchk(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_get_vf_config(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_port_dummy_op_int(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_siena_sriov_mac_address_changed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_sensor_event(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_fpga_ver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @siena_probe_nvconfig(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %caps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caps) #10
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %caps, align 4
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %1 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net_dev, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 54
  %call = call i32 @efx_mcdi_get_board_cfg(ptr noundef %efx, ptr noundef %perm_addr, ptr noundef null, ptr noundef nonnull %caps) #10
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6144, i32 3072
  %timer_quantum_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %5 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %timer_quantum_ns, align 8
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %timer_period_max = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 133
  %8 = ptrtoint ptr %timer_period_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timer_period_max, align 8
  %mul = mul i32 %9, %cond
  %timer_max_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 17
  %10 = ptrtoint ptr %timer_max_ns to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %timer_max_ns, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_mon_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_defer_probe_with_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_get_board_cfg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mon_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_handle_assertion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_log_ctrl(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_init_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_dimension_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_describe_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_update_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_fix_nodesc_drop_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_update_sw_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_usecs_to_ticks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_filter_sync_rx_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_wol_filter_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_wol_filter_set_magic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_wol_filter_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_wol_filter_get_magic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_reset_down(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_farch_test_registers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_reset_up(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_rx_push_indir_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_farch_rx_pull_indir_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_nvram_types(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mtd_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_nvram_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_change_mode(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !141, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @siena_a0_nic_type, !1, !"siena_a0_nic_type", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 968, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 273, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 294, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 307, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @siena_probe_nic.__UNIQUE_ID_ddebug524, !7, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 316, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 539, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 538, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 481, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 482, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 483, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 484, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 485, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 486, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 487, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 488, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 489, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 490, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 491, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 492, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 493, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 494, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 495, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 496, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 497, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 498, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 499, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 500, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 501, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 502, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 503, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 504, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 505, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 506, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 507, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 508, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 509, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 510, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 511, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 512, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 513, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 514, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 515, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 516, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 517, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 518, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 519, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 520, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 521, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 522, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 523, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 524, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 525, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 526, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 527, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 528, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 529, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 530, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 531, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 532, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 533, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 534, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 535, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 536, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 537, i32 2}
!132 = !{ptr @siena_stat_desc, !133, !"siena_stat_desc", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 480, i32 38}
!134 = !{ptr @siena_stat_mask, !135, !"siena_stat_mask", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 541, i32 28}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 708, i32 2}
!138 = !{ptr @__func__.siena_set_wol, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @siena_register_tests, !140, !"siena_register_tests", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 70, i32 45}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 915, i32 2}
!143 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 877, i32 31}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 837, i32 47}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 838, i32 36}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 839, i32 42}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 840, i32 46}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 842, i32 47}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 844, i32 38}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 845, i32 47}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 847, i32 40}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 849, i32 35}
!164 = !{ptr @siena_nvram_types, !165, !"siena_nvram_types", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/sfc/siena.c", i32 836, i32 43}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 5019767}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2159780481, i64 2159780978, i64 2159780518, i64 2159780574, i64 2159780608, i64 2159780632, i64 2159780673, i64 2159780694, i64 2159780722, i64 2159780756}
!178 = !{i64 2148788382, i64 2148788387, i64 2148788400, i64 2148788444, i64 2148788478, i64 2148788499}
!179 = !{i64 5019349}
!180 = !{i64 2160536622}
!181 = !{i64 2160536713}
!182 = !{i64 2160540813}
!183 = !{!"auto-init"}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i8 0, i8 2}
