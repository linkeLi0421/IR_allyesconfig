; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/emulex/benet/be_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/emulex/benet/be_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.be_ethtool_stat = type { [32 x i8], i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.be_adapter = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_mcc_obj, %struct.mutex, %struct.spinlock, i16, i16, i16, i16, [20 x i8], [32 x %struct.be_eq_obj], [32 x %struct.msix_entry], i8, i16, [124 x i8], [32 x %struct.be_tx_obj], i16, i16, i16, [122 x i8], [32 x %struct.be_rx_obj], i32, %struct.be_drv_stats, [32 x %struct.be_aic_obj], i8, i8, i16, %struct.be_dma_mem, %struct.be_dma_mem, %struct.delayed_work, i16, i8, i8, i8, i32, i32, [32 x i8], [32 x i8], i32, i32, ptr, ptr, i32, ptr, i32, [128 x i32], i16, i8, i8, %struct.mutex, i32, i32, i8, i8, i32, i32, i32, i32, i8, %struct.anon.189, i32, ptr, %struct.list_head, i32, %struct.completion, %struct.be_resources, %struct.be_resources, i16, i8, i8, i8, ptr, i8, i32, i8, i16, i16, %struct.phy_info, i8, i8, i16, i16, i32, i32, %struct.be_hwmon, %struct.rss_info, i32, i32, [8 x i16], i8, [6 x i8], i32, %struct.be_error_recovery }
%struct.be_mcc_obj = type { %struct.be_queue_info, %struct.be_queue_info, i8 }
%struct.be_queue_info = type { i32, i32, i32, i32, %struct.atomic_t, i32, %struct.be_dma_mem, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.be_eq_obj = type { %struct.be_queue_info, [32 x i8], ptr, %struct.napi_struct, i8, i8, i16, ptr, [72 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.be_tx_obj = type { i32, %struct.be_tx_compl_info, %struct.be_queue_info, %struct.be_queue_info, [2048 x ptr], %struct.be_tx_stats, i16, i16, i16, [18 x i8] }
%struct.be_tx_compl_info = type { i8, i16 }
%struct.be_tx_stats = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.be_rx_obj = type { ptr, %struct.be_queue_info, %struct.be_queue_info, %struct.be_rx_compl_info, [1024 x %struct.be_rx_page_info], %struct.be_rx_stats, i8, i8, [62 x i8] }
%struct.be_rx_compl_info = type { i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.be_rx_page_info = type { ptr, i32, i16, i8 }
%struct.be_rx_stats = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.u64_stats_sync }
%struct.be_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_aic_obj = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.be_dma_mem = type { ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.189 = type { i32, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.be_resources = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16 }
%struct.phy_info = type { i8, i8, i8, i8, i16, i16, i32, i16, i16, i32, i32, i32, i8, [17 x i8], [17 x i8] }
%struct.be_hwmon = type { ptr, i8 }
%struct.rss_info = type { [128 x i8], [128 x i8], [40 x i8], i64 }
%struct.be_error_recovery = type { %union.anon.190, i8, i16, i16, i16, i32, i32, i32, %struct.delayed_work }
%union.anon.190 = type { i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.188, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.188 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.be_cmd_resp_seeprom_read = type { %struct.be_cmd_req_hdr, [1024 x i8] }
%struct.be_cmd_req_hdr = type { i8, i8, i8, i8, i32, i32, i8, [3 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.182, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.182 = type { i32 }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.183, i32 }
%struct.anon.183 = type { [3 x i32], [3 x i32], [3 x i32] }

@be_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 677393, i32 0, ptr @be_get_drvinfo, ptr null, ptr null, ptr @be_get_wol, ptr @be_set_wol, ptr @be_get_msg_level, ptr @be_set_msg_level, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @be_get_eeprom_len, ptr @be_read_eeprom, ptr null, ptr @be_get_coalesce, ptr @be_set_coalesce, ptr @be_get_ringparam, ptr null, ptr null, ptr @be_get_pauseparam, ptr @be_set_pauseparam, ptr @be_self_test, ptr @be_get_stat_strings, ptr @be_set_phys_id, ptr @be_get_ethtool_stats, ptr null, ptr null, ptr @be_get_priv_flags, ptr @be_set_priv_flags, ptr @be_get_sset_count, ptr @be_get_rxnfc, ptr @be_set_rxnfc, ptr @be_do_flash, ptr null, ptr @be_get_rxfh_key_size, ptr @be_get_rxfh_indir_size, ptr @be_get_rxfh, ptr @be_set_rxfh, ptr null, ptr null, ptr @be_get_channels, ptr @be_set_channels, ptr @be_get_dump_flag, ptr @be_get_dump_data, ptr @be_set_dump, ptr null, ptr @be_get_module_info, ptr @be_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @be_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"be2net\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s [%s]\00", [24 x i8] zeroinitializer }, align 32
@be_set_wol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 815, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WOL not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"be_set_wol\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/emulex/benet/be_ethtool.c\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@be_set_wol._entry_ptr = internal global ptr @be_set_wol._entry, section ".printk_index", align 4
@be_set_wol._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 832, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not set Wake-on-lan mac address\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@be_set_wol._entry_ptr.10 = internal global ptr @be_set_wol._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"/vpd/ntr_pf.vpd\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"/vpd/ntr_vf.vpd\00", [16 x i8] zeroinitializer }, align 32
@lancer_cmd_read_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 277, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Memory allocation failure while reading dump\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lancer_cmd_read_file\00", [43 x i8] zeroinitializer }, align 32
@lancer_cmd_read_file._entry_ptr = internal global ptr @lancer_cmd_read_file._entry, section ".printk_index", align 4
@be_set_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Pause param set failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"be_set_pauseparam\00", [46 x i8] zeroinitializer }, align 32
@be_set_pauseparam._entry_ptr = internal global ptr @be_set_pauseparam._entry, section ".printk_index", align 4
@be_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 904, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Self test not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"be_self_test\00", [19 x i8] zeroinitializer }, align 32
@be_self_test._entry_ptr = internal global ptr @be_self_test._entry, section ".printk_index", align 4
@et_stats = internal constant { [37 x %struct.be_ethtool_stat], [388 x i8] } { [37 x %struct.be_ethtool_stat] [%struct.be_ethtool_stat { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 36 }, %struct.be_ethtool_stat { [32 x i8] c"rx_alignment_symbol_errors\00\00\00\00\00\00", i32 2, i32 4, i32 40 }, %struct.be_ethtool_stat { [32 x i8] c"rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 44 }, %struct.be_ethtool_stat { [32 x i8] c"rx_control_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 52 }, %struct.be_ethtool_stat { [32 x i8] c"rx_in_range_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 56 }, %struct.be_ethtool_stat { [32 x i8] c"rx_out_range_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 60 }, %struct.be_ethtool_stat { [32 x i8] c"rx_frame_too_long\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 64 }, %struct.be_ethtool_stat { [32 x i8] c"rx_address_filtered\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 68 }, %struct.be_ethtool_stat { [32 x i8] c"rx_dropped_too_small\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 72 }, %struct.be_ethtool_stat { [32 x i8] c"rx_dropped_too_short\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 76 }, %struct.be_ethtool_stat { [32 x i8] c"rx_dropped_header_too_small\00\00\00\00\00", i32 2, i32 4, i32 80 }, %struct.be_ethtool_stat { [32 x i8] c"rx_dropped_tcp_length\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 84 }, %struct.be_ethtool_stat { [32 x i8] c"rx_dropped_runt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 88 }, %struct.be_ethtool_stat { [32 x i8] c"rxpp_fifo_overflow_drop\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 116 }, %struct.be_ethtool_stat { [32 x i8] c"rx_input_fifo_overflow_drop\00\00\00\00\00", i32 2, i32 4, i32 120 }, %struct.be_ethtool_stat { [32 x i8] c"rx_ip_checksum_errs\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 92 }, %struct.be_ethtool_stat { [32 x i8] c"rx_tcp_checksum_errs\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 96 }, %struct.be_ethtool_stat { [32 x i8] c"rx_udp_checksum_errs\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 100 }, %struct.be_ethtool_stat { [32 x i8] c"tx_pauseframes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 104 }, %struct.be_ethtool_stat { [32 x i8] c"tx_controlframes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 112 }, %struct.be_ethtool_stat { [32 x i8] c"rx_priority_pause_frames\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 48 }, %struct.be_ethtool_stat { [32 x i8] c"tx_priority_pauseframes\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 108 }, %struct.be_ethtool_stat { [32 x i8] c"pmem_fifo_overflow_drop\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 124 }, %struct.be_ethtool_stat { [32 x i8] c"jabber_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 128 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_no_pbuf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 8 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_no_erx_descr\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 16 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_no_tpre_descr\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 20 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_too_many_frags\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 24 }, %struct.be_ethtool_stat { [32 x i8] c"forwarded_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 28 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_mtu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 32 }, %struct.be_ethtool_stat { [32 x i8] c"dma_map_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 4 }, %struct.be_ethtool_stat { [32 x i8] c"eth_red_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0 }, %struct.be_ethtool_stat { [32 x i8] c"rx_roce_bytes_lsd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 132 }, %struct.be_ethtool_stat { [32 x i8] c"rx_roce_bytes_msd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 136 }, %struct.be_ethtool_stat { [32 x i8] c"rx_roce_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 140 }, %struct.be_ethtool_stat { [32 x i8] c"roce_drops_payload_len\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 144 }, %struct.be_ethtool_stat { [32 x i8] c"roce_drops_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 148 }], [388 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rxq%d: %s\00", [22 x i8] zeroinitializer }, align 32
@et_rx_stats = internal constant { [9 x %struct.be_ethtool_stat], [116 x i8] } { [9 x %struct.be_ethtool_stat] [%struct.be_ethtool_stat { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 0 }, %struct.be_ethtool_stat { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 8 }, %struct.be_ethtool_stat { [32 x i8] c"rx_vxlan_offload_pkts\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 16 }, %struct.be_ethtool_stat { [32 x i8] c"rx_compl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 36 }, %struct.be_ethtool_stat { [32 x i8] c"rx_compl_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 44 }, %struct.be_ethtool_stat { [32 x i8] c"rx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 40 }, %struct.be_ethtool_stat { [32 x i8] c"rx_post_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 32 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_no_skbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 24 }, %struct.be_ethtool_stat { [32 x i8] c"rx_drops_no_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 28 }], [116 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txq%d: %s\00", [22 x i8] zeroinitializer }, align 32
@et_tx_stats = internal constant { [14 x %struct.be_ethtool_stat], [152 x i8] } { [14 x %struct.be_ethtool_stat] [%struct.be_ethtool_stat { [32 x i8] c"tx_compl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 32 }, %struct.be_ethtool_stat { [32 x i8] c"tx_hdr_parse_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 48 }, %struct.be_ethtool_stat { [32 x i8] c"tx_dma_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 52 }, %struct.be_ethtool_stat { [32 x i8] c"tx_spoof_check_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 60 }, %struct.be_ethtool_stat { [32 x i8] c"tx_tso_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 56 }, %struct.be_ethtool_stat { [32 x i8] c"tx_qinq_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 64 }, %struct.be_ethtool_stat { [32 x i8] c"tx_internal_parity_err\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 68 }, %struct.be_ethtool_stat { [32 x i8] c"tx_sge_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 72 }, %struct.be_ethtool_stat { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 0 }, %struct.be_ethtool_stat { [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 8 }, %struct.be_ethtool_stat { [32 x i8] c"tx_vxlan_offload_pkts\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 16 }, %struct.be_ethtool_stat { [32 x i8] c"tx_reqs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 24 }, %struct.be_ethtool_stat { [32 x i8] c"tx_stops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 40 }, %struct.be_ethtool_stat { [32 x i8] c"tx_drv_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 44 }], [152 x i8] zeroinitializer }, align 32
@et_self_tests = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"MAC Loopback test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"PHY Loopback test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"External Loopback test\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"DDR DMA test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Link test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@be_priv_flags = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"disable-tpe-recovery\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@be_set_priv_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1405, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HW error recovery is disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"be_set_priv_flags\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@be_set_priv_flags._entry_ptr = internal global ptr @be_set_priv_flags._entry, section ".printk_index", align 4
@be_set_priv_flags._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.4, i32 1409, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HW error recovery is enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@be_set_priv_flags._entry_ptr.26 = internal global ptr @be_set_priv_flags._entry.24, section ".printk_index", align 4
@be_get_rxnfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1117, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ethtool::get_rxnfc: RX flow hashing is disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"be_get_rxnfc\00", [19 x i8] zeroinitializer }, align 32
@be_get_rxnfc._entry_ptr = internal global ptr @be_get_rxnfc._entry, section ".printk_index", align 4
@be_set_rxnfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1205, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ethtool::set_rxnfc: RX flow hashing is disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"be_set_rxnfc\00", [19 x i8] zeroinitializer }, align 32
@be_set_rxnfc._entry_ptr = internal global ptr @be_set_rxnfc._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"/dbg/dump.bin\00", [18 x i8] zeroinitializer }, align 32
@be_set_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 774, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FW dump initiated successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"be_set_dump\00", [20 x i8] zeroinitializer }, align 32
@be_set_dump._entry_ptr = internal global ptr @be_set_dump._entry, section ".printk_index", align 4
@be_set_dump._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 779, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FW dump deleted successfully\0A\00", [34 x i8] zeroinitializer }, align 32
@be_set_dump._entry_ptr.36 = internal global ptr @be_set_dump._entry.34, section ".printk_index", align 4
@be_set_dump._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.4, i32 782, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid dump level: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@be_set_dump._entry_ptr.39 = internal global ptr @be_set_dump._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 529, i64 545, i64 1792, i64 1808]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 57888, i64 57896]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 57888, i64 57896]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 1824, i64 1832]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 57888, i64 57896]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 41, i64 45]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 16, i64 529, i64 545, i64 1792, i64 1808]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 16, i64 529, i64 545, i64 1792, i64 1808]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 57888, i64 57896]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 57888, i64 57896]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 57888, i64 57896]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"be_ethtool_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1416, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 223, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 229, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 815, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 832, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1002, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1005, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 276, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 719, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 904, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [9 x i8] c"et_stats\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 35, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 443, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"et_rx_stats\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 134, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 450, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"et_tx_stats\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 158, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"et_self_tests\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 204, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"be_priv_flags\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 425, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1404, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1408, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1116, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1204, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 255, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 774, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 779, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [50 x i8] c"../drivers/net/ethernet/emulex/benet/be_ethtool.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 782, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @be_get_rxnfc._entry, ptr @be_get_rxnfc._entry_ptr, ptr @be_self_test._entry, ptr @be_self_test._entry_ptr, ptr @be_set_dump._entry, ptr @be_set_dump._entry.34, ptr @be_set_dump._entry.37, ptr @be_set_dump._entry_ptr, ptr @be_set_dump._entry_ptr.36, ptr @be_set_dump._entry_ptr.39, ptr @be_set_pauseparam._entry, ptr @be_set_pauseparam._entry_ptr, ptr @be_set_priv_flags._entry, ptr @be_set_priv_flags._entry.24, ptr @be_set_priv_flags._entry_ptr, ptr @be_set_priv_flags._entry_ptr.26, ptr @be_set_rxnfc._entry, ptr @be_set_rxnfc._entry_ptr, ptr @be_set_wol._entry, ptr @be_set_wol._entry.7, ptr @be_set_wol._entry_ptr, ptr @be_set_wol._entry_ptr.10, ptr @lancer_cmd_read_file._entry, ptr @lancer_cmd_read_file._entry_ptr, ptr @be_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @et_stats, ptr @.str.19, ptr @et_rx_stats, ptr @.str.20, ptr @et_tx_stats, ptr @et_self_tests, ptr @be_priv_flags, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_wol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_wol._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lancer_cmd_read_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et_stats to i32), i32 1628, i32 2016, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et_rx_stats to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et_tx_stats to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et_self_tests to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_priv_flags to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_priv_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_priv_flags._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_get_rxnfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_rxnfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_dump._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_set_dump._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @be_pause_supported(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %interface_type = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 83, i32 5
  %0 = ptrtoint ptr %interface_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %interface_type, align 2
  %2 = and i16 %1, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %3 = icmp ne i16 %2, 1
  ret i1 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #17
  %fw_ver = getelementptr i8, ptr %netdev, i32 688816
  %fw_on_flash = getelementptr i8, ptr %netdev, i32 688848
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32) %fw_ver, ptr noundef dereferenceable(32) %fw_on_flash, i32 32) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_ver, i32 noundef 32) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %fw_ver, ptr noundef %fw_on_flash)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.end.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call18 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @be_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wol_cap = getelementptr i8, ptr %netdev, i32 689816
  %0 = ptrtoint ptr %wol_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wol_cap, align 8
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %supported, align 4
  %or = or i32 %4, 32
  store i32 %or, ptr %supported, align 4
  %wol_en = getelementptr i8, ptr %netdev, i32 689817
  %5 = ptrtoint ptr %wol_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wol_en, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  %or3 = or i32 %8, 32
  store i32 %or3, ptr %wolopts, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %wolopts4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %9 = ptrtoint ptr %wolopts4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wolopts4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2, %if.then.if.end5_crit_edge
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %10 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_wol(ptr noundef %netdev, ptr nocapture noundef readonly %wol) #3 align 64 {
entry:
  %cmd = alloca %struct.be_dma_mem, align 4
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #17
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmd, align 4, !annotation !99
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !99
  %5 = getelementptr inbounds %struct.be_dma_mem, ptr %cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #17
  %6 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  %and = and i32 %8, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_cap = getelementptr i8, ptr %netdev, i32 689816
  %9 = ptrtoint ptr %wol_cap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wol_cap, align 8
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2) #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 604, ptr %5, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 604, ptr noundef %3, i32 noundef 3264, i32 noundef 0) #17
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %cmd, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %14 = call ptr @memset(ptr %mac, i32 0, i32 6)
  %15 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts, align 4
  %and15 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16 = icmp ne i32 %and15, 0
  %and15.lobit = lshr exact i32 %and15, 5
  %17 = trunc i32 %and15.lobit to i8
  br i1 %tobool16, label %if.then18, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %netdev20 = getelementptr i8, ptr %netdev, i32 2308
  %18 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev20, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mac, align 4
  %add.ptr.i66 = getelementptr i8, ptr %21, i32 4
  %25 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i66, align 2
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %6, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end13.if.end21_crit_edge
  %call23 = call i32 @be_cmd_enable_magic_wol(ptr noundef %add.ptr.i, ptr noundef nonnull %mac, ptr noundef nonnull %cmd) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp sgt i32 %call23, 0
  %spec.select = select i1 %cmp, i32 -5, i32 %call23
  br label %err

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 128
  %call33 = call i32 @pci_enable_wake(ptr noundef %29, i32 noundef 3, i1 noundef zeroext %tobool16) #17
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 128
  %call36 = call i32 @pci_enable_wake(ptr noundef %31, i32 noundef 4, i1 noundef zeroext %tobool16) #17
  %wol_en = getelementptr i8, ptr %netdev, i32 689817
  %32 = ptrtoint ptr %wol_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %17, ptr %wol_en, align 1
  br label %err

err:                                              ; preds = %if.end30, %do.end28
  %status.0 = phi i32 [ %spec.select, %do.end28 ], [ 0, %if.end30 ]
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %3, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %err ], [ -95, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_get_msg_level(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 689824
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 32
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_set_msg_level(ptr noundef %netdev, i32 noundef %level) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 689824
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %level)
  %cmp = icmp eq i32 %1, %level
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %level, 8192
  %and2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp3.not = icmp eq i32 %and, %and2
  br i1 %cmp3.not, label %if.end.if.end28_crit_edge, label %if.then4

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then4:                                         ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.then4.if.end28_crit_edge [
    i16 545, label %if.then4.if.then24_crit_edge
    i16 1808, label %if.then4.if.then24_crit_edge40
    i16 529, label %if.then4.if.then24_crit_edge41
    i16 1792, label %if.then4.if.then24_crit_edge42
  ]

if.then4.if.then24_crit_edge42:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24

if.then4.if.then24_crit_edge41:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24

if.then4.if.then24_crit_edge40:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24

if.then4.if.then24_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24

if.then4.if.end28_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then24:                                        ; preds = %if.then4.if.then24_crit_edge, %if.then4.if.then24_crit_edge40, %if.then4.if.then24_crit_edge41, %if.then4.if.then24_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 64, i32 48
  %call26 = tail call i32 @be_cmd_set_fw_log_level(ptr noundef %add.ptr.i, i32 noundef %cond) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then4.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %level, ptr %msg_enable, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_eeprom_len(ptr noundef %netdev) #3 align 64 {
entry:
  %data_read.i18 = alloca i32, align 4
  %eof.i19 = alloca i32, align 4
  %addn_status.i20 = alloca i8, align 1
  %data_len_cmd.i21 = alloca %struct.be_dma_mem, align 4
  %data_read.i = alloca i32, align 4
  %eof.i = alloca i32, align 4
  %addn_status.i = alloca i8, align 1
  %data_len_cmd.i = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_privileges.i = getelementptr i8, ptr %netdev, i32 688812
  %0 = ptrtoint ptr %cmd_privileges.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_privileges.i, align 4
  %and.i = and i32 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %5, label %if.end.cleanup_crit_edge [
    i16 -7648, label %if.end.if.then8_crit_edge
    i16 -7640, label %if.end.if.then8_crit_edge23
  ]

if.end.if.then8_crit_edge23:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge23
  %virtfn = getelementptr i8, ptr %netdev, i32 689728
  %7 = ptrtoint ptr %virtfn to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %virtfn, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_read.i) #17
  %9 = ptrtoint ptr %data_read.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_read.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eof.i) #17
  %10 = ptrtoint ptr %eof.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %eof.i, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addn_status.i) #17
  %11 = ptrtoint ptr %addn_status.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %addn_status.i, align 1, !annotation !99
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data_len_cmd.i) #17
  %12 = call ptr @memset(ptr %data_len_cmd.i, i32 0, i32 12)
  %call.i = call i32 @lancer_cmd_read_object(ptr noundef %add.ptr.i, ptr noundef nonnull %data_len_cmd.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %data_read.i, ptr noundef nonnull %eof.i, ptr noundef nonnull %addn_status.i) #17
  %13 = ptrtoint ptr %data_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_read.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data_len_cmd.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addn_status.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eof.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_read.i) #17
  br label %cleanup

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_read.i18) #17
  %15 = ptrtoint ptr %data_read.i18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data_read.i18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eof.i19) #17
  %16 = ptrtoint ptr %eof.i19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %eof.i19, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addn_status.i20) #17
  %17 = ptrtoint ptr %addn_status.i20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %addn_status.i20, align 1, !annotation !99
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data_len_cmd.i21) #17
  %18 = call ptr @memset(ptr %data_len_cmd.i21, i32 0, i32 12)
  %call.i22 = call i32 @lancer_cmd_read_object(ptr noundef %add.ptr.i, ptr noundef nonnull %data_len_cmd.i21, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %data_read.i18, ptr noundef nonnull %eof.i19, ptr noundef nonnull %addn_status.i20) #17
  %19 = ptrtoint ptr %data_read.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_read.i18, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data_len_cmd.i21) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addn_status.i20) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eof.i19) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_read.i18) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.else ], [ %14, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ 1024, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_read_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  %eeprom_cmd = alloca %struct.be_dma_mem, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eeprom_cmd) #17
  %0 = getelementptr inbounds %struct.be_dma_mem, ptr %eeprom_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %eeprom_cmd, i32 0, i32 2
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %7, label %if.end14 [
    i16 -7648, label %if.end.if.then7_crit_edge
    i16 -7640, label %if.end.if.then7_crit_edge58
  ]

if.end.if.then7_crit_edge58:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge58
  %virtfn = getelementptr i8, ptr %netdev, i32 689728
  %9 = ptrtoint ptr %virtfn to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %virtfn, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call fastcc i32 @lancer_cmd_read_file(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.11, i32 noundef %3, ptr noundef %data)
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call fastcc i32 @lancer_cmd_read_file(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12, i32 noundef %3, ptr noundef %data)
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, 6562
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %11 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %magic, align 4
  %12 = ptrtoint ptr %eeprom_cmd to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %eeprom_cmd, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1040, ptr %1, align 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1040, ptr noundef %0, i32 noundef 3264, i32 noundef 0) #17
  %16 = ptrtoint ptr %eeprom_cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %eeprom_cmd, align 8
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end14.cleanup_crit_edge, label %if.end24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call25 = call i32 @be_cmd_get_seeprom_data(ptr noundef %add.ptr.i, ptr noundef nonnull %eeprom_cmd) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %eeprom_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eeprom_cmd, align 8
  %seeprom_data = getelementptr inbounds %struct.be_cmd_resp_seeprom_read, ptr %18, i32 0, i32 1
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %seeprom_data, i32 %20
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %22)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 128
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  %28 = ptrtoint ptr %eeprom_cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eeprom_cmd, align 8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  call void @dma_free_attrs(ptr noundef %dev32, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp36 = icmp sgt i32 %call25, 0
  %spec.select = select i1 %cmp36, i32 -5, i32 %call25
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end14.cleanup_crit_edge, %if.else, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.else ], [ %call11, %if.then9 ], [ %spec.select, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eeprom_cmd) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %et, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %aic_obj = getelementptr i8, ptr %netdev, i32 687392
  %prev_eqd = getelementptr i8, ptr %netdev, i32 687400
  %0 = ptrtoint ptr %prev_eqd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prev_eqd, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_coalesce_usecs, align 4
  %max_eqd = getelementptr i8, ptr %netdev, i32 687396
  %3 = ptrtoint ptr %max_eqd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_eqd, align 4
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 18
  %5 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_coalesce_usecs_high, align 4
  %6 = ptrtoint ptr %aic_obj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aic_obj, align 8
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 13
  %8 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_coalesce_usecs_low, align 4
  %9 = load i32, ptr %prev_eqd, align 8
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 5
  %10 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_coalesce_usecs, align 4
  %11 = load i32, ptr %max_eqd, align 4
  %tx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 20
  %12 = ptrtoint ptr %tx_coalesce_usecs_high to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_coalesce_usecs_high, align 4
  %13 = load i32, ptr %aic_obj, align 8
  %tx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 15
  %14 = ptrtoint ptr %tx_coalesce_usecs_low to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_coalesce_usecs_low, align 4
  %aic_enabled = getelementptr i8, ptr %netdev, i32 688672
  %15 = ptrtoint ptr %aic_enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aic_enabled, align 32, !range !98
  %17 = zext i8 %16 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 10
  %18 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %use_adaptive_rx_coalesce, align 4
  %19 = load i8, ptr %aic_enabled, align 32, !range !98
  %20 = zext i8 %19 to i32
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 11
  %21 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %use_adaptive_tx_coalesce, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %et, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 10
  %0 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %aic_enabled = getelementptr i8, ptr %netdev, i32 688672
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %aic_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %aic_enabled, align 32
  %num_evt_qs = getelementptr i8, ptr %netdev, i32 2664
  %3 = ptrtoint ptr %num_evt_qs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_evt_qs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp75.not = icmp eq i16 %4, 0
  br i1 %cmp75.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aic_obj = getelementptr i8, ptr %netdev, i32 687392
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 18
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 13
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %et, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %aic.077 = phi ptr [ %aic_obj, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_coalesce_usecs_high, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 128)
  %max_eqd = getelementptr inbounds %struct.be_aic_obj, ptr %aic.077, i32 0, i32 1
  %8 = ptrtoint ptr %max_eqd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_eqd, align 4
  %9 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs_low, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %7)
  %12 = ptrtoint ptr %aic.077 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %aic.077, align 8
  %13 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_coalesce_usecs, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %7)
  %et_eqd = getelementptr inbounds %struct.be_aic_obj, ptr %aic.077, i32 0, i32 3
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %11)
  %17 = ptrtoint ptr %et_eqd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %et_eqd, align 4
  %incdec.ptr = getelementptr %struct.be_aic_obj, ptr %aic.077, i32 1
  %inc = add nuw nsw i32 %i.076, 1
  %18 = ptrtoint ptr %num_evt_qs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_evt_qs, align 8
  %conv = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %land.lhs.true, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %25, label %land.lhs.true.if.end_crit_edge [
    i16 1824, label %land.lhs.true.if.then_crit_edge
    i16 1832, label %land.lhs.true.if.then_crit_edge78
  ]

land.lhs.true.if.then_crit_edge78:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge78
  tail call void @be_eqd_update(ptr noundef %add.ptr.i, i1 noundef zeroext true) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @be_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr i8, ptr %netdev, i32 285828
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_max_pending, align 4
  %3 = load i32, ptr %q, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %q6 = getelementptr i8, ptr %netdev, i32 15368
  %5 = ptrtoint ptr %q6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q6, align 8
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %7 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_max_pending, align 4
  %8 = load i32, ptr %q6, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_get_pauseparam(ptr noundef %netdev, ptr noundef %ecmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 3
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 2
  %call1 = tail call i32 @be_cmd_get_flow_control(ptr noundef %add.ptr.i, ptr noundef %tx_pause, ptr noundef %rx_pause) #17
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 689754
  %0 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_autoneg, align 2
  %conv = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %autoneg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %ecmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 689754
  %2 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fc_autoneg, align 2
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pause, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %ecmd, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pause, align 4
  %call2 = tail call i32 @be_cmd_set_flow_control(ptr noundef %add.ptr.i, i32 noundef %5, i32 noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp sgt i32 %call2, 0
  %spec.select = select i1 %cmp4, i32 -5, i32 %call2
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pause, align 4
  %tx_fc = getelementptr i8, ptr %netdev, i32 689540
  %12 = ptrtoint ptr %tx_fc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_fc, align 4
  %13 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pause, align 4
  %rx_fc = getelementptr i8, ptr %netdev, i32 689536
  %15 = ptrtoint ptr %rx_fc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_fc, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_self_test(ptr noundef %netdev, ptr nocapture noundef %test, ptr nocapture noundef %data) #3 align 64 {
entry:
  %ddrdma_cmd.i = alloca %struct.be_dma_mem, align 4
  %link_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_status) #17
  %function_caps = getelementptr i8, ptr %netdev, i32 689532
  %0 = ptrtoint ptr %function_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function_caps, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #21
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %data, i32 0, i32 40)
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = ptrtoint ptr %link_status to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %link_status, align 1
  %flags2 = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %14 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags2, align 4
  %and3 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end35_crit_edge, label %if.then5

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then5:                                         ; preds = %if.end
  %hba_port_num.i = getelementptr i8, ptr %netdev, i32 689744
  %16 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hba_port_num.i, align 16
  %call.i = tail call i32 @be_cmd_set_loopback(ptr noundef %add.ptr.i, i8 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i99 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i99, label %if.end.i, label %if.then5.if.then8_crit_edge

if.then5.if.then8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.i:                                         ; preds = %if.then5
  %18 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hba_port_num.i, align 16
  %conv2.i = zext i8 %19 to i32
  %call4.i = tail call i32 @be_cmd_loopback_test(ptr noundef %add.ptr.i, i32 noundef %conv2.i, i32 noundef 0, i32 noundef 1500, i32 noundef 2, i64 noundef 2748) #17
  %conv5.i = sext i32 %call4.i to i64
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv5.i, ptr %data, align 8
  %21 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hba_port_num.i, align 16
  %call7.i = tail call i32 @be_cmd_set_loopback(ptr noundef %add.ptr.i, i8 noundef zeroext %22, i8 noundef zeroext -1, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %be_loopback_test.exit, label %if.end.i.if.then8_crit_edge

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

be_loopback_test.exit:                            ; preds = %if.end.i
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %phi.cmp140 = icmp eq i64 %24, 0
  br i1 %phi.cmp140, label %be_loopback_test.exit.if.end11_crit_edge, label %be_loopback_test.exit.if.then8_crit_edge

be_loopback_test.exit.if.then8_crit_edge:         ; preds = %be_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

be_loopback_test.exit.if.end11_crit_edge:         ; preds = %be_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then8:                                         ; preds = %be_loopback_test.exit.if.then8_crit_edge, %if.end.i.if.then8_crit_edge, %if.then5.if.then8_crit_edge
  %25 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags2, align 4
  %or10 = or i32 %26, 2
  store i32 %or10, ptr %flags2, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %be_loopback_test.exit.if.end11_crit_edge
  %arrayidx12 = getelementptr i64, ptr %data, i32 1
  %27 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hba_port_num.i, align 16
  %call.i101 = tail call i32 @be_cmd_set_loopback(ptr noundef %add.ptr.i, i8 noundef zeroext %28, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i110, label %if.end11.if.then16_crit_edge

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

if.end.i110:                                      ; preds = %if.end11
  %29 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hba_port_num.i, align 16
  %conv2.i105 = zext i8 %30 to i32
  %call4.i106 = tail call i32 @be_cmd_loopback_test(ptr noundef %add.ptr.i, i32 noundef %conv2.i105, i32 noundef 1, i32 noundef 1500, i32 noundef 2, i64 noundef 2748) #17
  %conv5.i107 = sext i32 %call4.i106 to i64
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv5.i107, ptr %arrayidx12, align 8
  %32 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hba_port_num.i, align 16
  %call7.i108 = tail call i32 @be_cmd_set_loopback(ptr noundef %add.ptr.i, i8 noundef zeroext %33, i8 noundef zeroext -1, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i108)
  %tobool8.not.i109 = icmp eq i32 %call7.i108, 0
  br i1 %tobool8.not.i109, label %if.end11.i113, label %if.end.i110.if.then16_crit_edge

if.end.i110.if.then16_crit_edge:                  ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

if.end11.i113:                                    ; preds = %if.end.i110
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %phi.cmp = icmp eq i64 %35, 0
  br i1 %phi.cmp, label %if.end11.i113.if.end19_crit_edge, label %if.end11.i113.if.then16_crit_edge

if.end11.i113.if.then16_crit_edge:                ; preds = %if.end11.i113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

if.end11.i113.if.end19_crit_edge:                 ; preds = %if.end11.i113
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then16:                                        ; preds = %if.end11.i113.if.then16_crit_edge, %if.end.i110.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  %36 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags2, align 4
  %or18 = or i32 %37, 2
  store i32 %or18, ptr %flags2, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.i113.if.end19_crit_edge
  %38 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags2, align 4
  %and21 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end35_crit_edge, label %if.then23

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then23:                                        ; preds = %if.end19
  %arrayidx24 = getelementptr i64, ptr %data, i32 2
  %40 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hba_port_num.i, align 16
  %call.i117 = tail call i32 @be_cmd_set_loopback(ptr noundef %add.ptr.i, i8 noundef zeroext %41, i8 noundef zeroext 2, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end.i126, label %if.then23.if.then28_crit_edge

if.then23.if.then28_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then28

if.end.i126:                                      ; preds = %if.then23
  %42 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hba_port_num.i, align 16
  %conv2.i121 = zext i8 %43 to i32
  %call4.i122 = tail call i32 @be_cmd_loopback_test(ptr noundef %add.ptr.i, i32 noundef %conv2.i121, i32 noundef 2, i32 noundef 1500, i32 noundef 2, i64 noundef 2748) #17
  %conv5.i123 = sext i32 %call4.i122 to i64
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv5.i123, ptr %arrayidx24, align 8
  %45 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hba_port_num.i, align 16
  %call7.i124 = tail call i32 @be_cmd_set_loopback(ptr noundef %add.ptr.i, i8 noundef zeroext %46, i8 noundef zeroext -1, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i124)
  %tobool8.not.i125 = icmp eq i32 %call7.i124, 0
  br i1 %tobool8.not.i125, label %if.end11.i129, label %if.end.i126.if.then28_crit_edge

if.end.i126.if.then28_crit_edge:                  ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then28

if.end11.i129:                                    ; preds = %if.end.i126
  %47 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx24, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %phi.cmp136 = icmp eq i64 %48, 0
  br i1 %phi.cmp136, label %if.end11.i129.if.end31_crit_edge, label %if.end11.i129.if.then28_crit_edge

if.end11.i129.if.then28_crit_edge:                ; preds = %if.end11.i129
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then28

if.end11.i129.if.end31_crit_edge:                 ; preds = %if.end11.i129
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then28:                                        ; preds = %if.end11.i129.if.then28_crit_edge, %if.end.i126.if.then28_crit_edge, %if.then23.if.then28_crit_edge
  %49 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags2, align 4
  %or30 = or i32 %50, 2
  store i32 %or30, ptr %flags2, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end11.i129.if.end31_crit_edge
  %51 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags2, align 4
  %or33 = or i32 %52, 8
  store i32 %or33, ptr %flags2, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end31, %if.end19.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %device, align 2
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %56, label %land.lhs.true [
    i16 -7648, label %if.end35.if.end52_crit_edge
    i16 -7640, label %if.end35.if.end52_crit_edge142
  ]

if.end35.if.end52_crit_edge142:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ddrdma_cmd.i) #17
  %58 = ptrtoint ptr %ddrdma_cmd.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %ddrdma_cmd.i, align 4, !annotation !99
  %59 = getelementptr inbounds %struct.be_dma_mem, ptr %ddrdma_cmd.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %59, align 4, !annotation !99
  %61 = getelementptr inbounds %struct.be_dma_mem, ptr %ddrdma_cmd.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8224, ptr %61, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8224, ptr noundef %59, i32 noundef 3264, i32 noundef 0) #17
  %63 = ptrtoint ptr %ddrdma_cmd.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i, ptr %ddrdma_cmd.i, align 4
  %tobool.not.i132 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i132, label %land.lhs.true.be_test_ddr_dma.exit.thread_crit_edge, label %for.body.preheader.i

land.lhs.true.be_test_ddr_dma.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_test_ddr_dma.exit.thread

for.body.preheader.i:                             ; preds = %land.lhs.true
  %call3.i = call i32 @be_cmd_ddr_dma_test(ptr noundef %add.ptr.i, i64 noundef 6510615555426900570, i32 noundef 4096, ptr noundef nonnull %ddrdma_cmd.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %for.cond.i, label %for.body.preheader.i.err.i_crit_edge

for.body.preheader.i.err.i_crit_edge:             ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  %call3.1.i = call i32 @be_cmd_ddr_dma_test(ptr noundef %add.ptr.i, i64 noundef -6510615555426900571, i32 noundef 4096, ptr noundef nonnull %ddrdma_cmd.i) #17
  br label %err.i

err.i:                                            ; preds = %for.cond.i, %for.body.preheader.i.err.i_crit_edge
  %ret.1.i = phi i32 [ %call3.i, %for.body.preheader.i.err.i_crit_edge ], [ %call3.1.i, %for.cond.i ]
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 128
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %61, align 4
  %68 = ptrtoint ptr %ddrdma_cmd.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ddrdma_cmd.i, align 4
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %59, align 4
  call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef %67, ptr noundef %69, i32 noundef %71, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp12.i = icmp sgt i32 %ret.1.i, 0
  br i1 %cmp12.i, label %err.i.be_test_ddr_dma.exit.thread_crit_edge, label %be_test_ddr_dma.exit

err.i.be_test_ddr_dma.exit.thread_crit_edge:      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_test_ddr_dma.exit.thread

be_test_ddr_dma.exit.thread:                      ; preds = %err.i.be_test_ddr_dma.exit.thread_crit_edge, %land.lhs.true.be_test_ddr_dma.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ddrdma_cmd.i) #17
  br label %if.then48

be_test_ddr_dma.exit:                             ; preds = %err.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ddrdma_cmd.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp46.not = icmp eq i32 %ret.1.i, 0
  br i1 %cmp46.not, label %be_test_ddr_dma.exit.if.end52_crit_edge, label %be_test_ddr_dma.exit.if.then48_crit_edge

be_test_ddr_dma.exit.if.then48_crit_edge:         ; preds = %be_test_ddr_dma.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then48

be_test_ddr_dma.exit.if.end52_crit_edge:          ; preds = %be_test_ddr_dma.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end52

if.then48:                                        ; preds = %be_test_ddr_dma.exit.if.then48_crit_edge, %be_test_ddr_dma.exit.thread
  %arrayidx49 = getelementptr i64, ptr %data, i32 3
  %72 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1, ptr %arrayidx49, align 8
  %73 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags2, align 4
  %or51 = or i32 %74, 2
  store i32 %or51, ptr %flags2, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %be_test_ddr_dma.exit.if.end52_crit_edge, %if.end35.if.end52_crit_edge, %if.end35.if.end52_crit_edge142
  %75 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool53.not = icmp eq i8 %76, 0
  br i1 %tobool53.not, label %if.then54, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end52
  %call60 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end66, label %for.body.preheader.if.then62_crit_edge

for.body.preheader.if.then62_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %77 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags2, align 4
  %or56 = or i32 %78, 2
  store i32 %or56, ptr %flags2, align 4
  %arrayidx57 = getelementptr i64, ptr %data, i32 4
  %79 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 1, ptr %arrayidx57, align 8
  br label %cleanup

if.then62:                                        ; preds = %if.end69.8.if.then62_crit_edge, %if.end69.7.if.then62_crit_edge, %if.end69.6.if.then62_crit_edge, %if.end69.5.if.then62_crit_edge, %if.end69.4.if.then62_crit_edge, %if.end69.3.if.then62_crit_edge, %if.end69.2.if.then62_crit_edge, %if.end69.1.if.then62_crit_edge, %if.end69.if.then62_crit_edge, %for.body.preheader.if.then62_crit_edge
  %80 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags2, align 4
  %or64 = or i32 %81, 2
  store i32 %or64, ptr %flags2, align 4
  %arrayidx65 = getelementptr i64, ptr %data, i32 4
  %82 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 -1, ptr %arrayidx65, align 8
  br label %cleanup

if.end66:                                         ; preds = %for.body.preheader
  %83 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool67.not = icmp eq i8 %84, 0
  br i1 %tobool67.not, label %if.end69, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69:                                         ; preds = %if.end66
  %call70 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.1 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.1)
  %tobool61.not.1 = icmp eq i32 %call60.1, 0
  br i1 %tobool61.not.1, label %if.end66.1, label %if.end69.if.then62_crit_edge

if.end69.if.then62_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.1:                                       ; preds = %if.end69
  %85 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool67.not.1 = icmp eq i8 %86, 0
  br i1 %tobool67.not.1, label %if.end69.1, label %if.end66.1.cleanup_crit_edge

if.end66.1.cleanup_crit_edge:                     ; preds = %if.end66.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.1:                                       ; preds = %if.end66.1
  %call70.1 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.2 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.2)
  %tobool61.not.2 = icmp eq i32 %call60.2, 0
  br i1 %tobool61.not.2, label %if.end66.2, label %if.end69.1.if.then62_crit_edge

if.end69.1.if.then62_crit_edge:                   ; preds = %if.end69.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.2:                                       ; preds = %if.end69.1
  %87 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool67.not.2 = icmp eq i8 %88, 0
  br i1 %tobool67.not.2, label %if.end69.2, label %if.end66.2.cleanup_crit_edge

if.end66.2.cleanup_crit_edge:                     ; preds = %if.end66.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.2:                                       ; preds = %if.end66.2
  %call70.2 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.3 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.3)
  %tobool61.not.3 = icmp eq i32 %call60.3, 0
  br i1 %tobool61.not.3, label %if.end66.3, label %if.end69.2.if.then62_crit_edge

if.end69.2.if.then62_crit_edge:                   ; preds = %if.end69.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.3:                                       ; preds = %if.end69.2
  %89 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool67.not.3 = icmp eq i8 %90, 0
  br i1 %tobool67.not.3, label %if.end69.3, label %if.end66.3.cleanup_crit_edge

if.end66.3.cleanup_crit_edge:                     ; preds = %if.end66.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.3:                                       ; preds = %if.end66.3
  %call70.3 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.4 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.4)
  %tobool61.not.4 = icmp eq i32 %call60.4, 0
  br i1 %tobool61.not.4, label %if.end66.4, label %if.end69.3.if.then62_crit_edge

if.end69.3.if.then62_crit_edge:                   ; preds = %if.end69.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.4:                                       ; preds = %if.end69.3
  %91 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool67.not.4 = icmp eq i8 %92, 0
  br i1 %tobool67.not.4, label %if.end69.4, label %if.end66.4.cleanup_crit_edge

if.end66.4.cleanup_crit_edge:                     ; preds = %if.end66.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.4:                                       ; preds = %if.end66.4
  %call70.4 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.5 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.5)
  %tobool61.not.5 = icmp eq i32 %call60.5, 0
  br i1 %tobool61.not.5, label %if.end66.5, label %if.end69.4.if.then62_crit_edge

if.end69.4.if.then62_crit_edge:                   ; preds = %if.end69.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.5:                                       ; preds = %if.end69.4
  %93 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool67.not.5 = icmp eq i8 %94, 0
  br i1 %tobool67.not.5, label %if.end69.5, label %if.end66.5.cleanup_crit_edge

if.end66.5.cleanup_crit_edge:                     ; preds = %if.end66.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.5:                                       ; preds = %if.end66.5
  %call70.5 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.6 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.6)
  %tobool61.not.6 = icmp eq i32 %call60.6, 0
  br i1 %tobool61.not.6, label %if.end66.6, label %if.end69.5.if.then62_crit_edge

if.end69.5.if.then62_crit_edge:                   ; preds = %if.end69.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.6:                                       ; preds = %if.end69.5
  %95 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool67.not.6 = icmp eq i8 %96, 0
  br i1 %tobool67.not.6, label %if.end69.6, label %if.end66.6.cleanup_crit_edge

if.end66.6.cleanup_crit_edge:                     ; preds = %if.end66.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.6:                                       ; preds = %if.end66.6
  %call70.6 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.7 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.7)
  %tobool61.not.7 = icmp eq i32 %call60.7, 0
  br i1 %tobool61.not.7, label %if.end66.7, label %if.end69.6.if.then62_crit_edge

if.end69.6.if.then62_crit_edge:                   ; preds = %if.end69.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.7:                                       ; preds = %if.end69.6
  %97 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool67.not.7 = icmp eq i8 %98, 0
  br i1 %tobool67.not.7, label %if.end69.7, label %if.end66.7.cleanup_crit_edge

if.end66.7.cleanup_crit_edge:                     ; preds = %if.end66.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.7:                                       ; preds = %if.end66.7
  %call70.7 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.8 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.8)
  %tobool61.not.8 = icmp eq i32 %call60.8, 0
  br i1 %tobool61.not.8, label %if.end66.8, label %if.end69.7.if.then62_crit_edge

if.end69.7.if.then62_crit_edge:                   ; preds = %if.end69.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.8:                                       ; preds = %if.end69.7
  %99 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool67.not.8 = icmp eq i8 %100, 0
  br i1 %tobool67.not.8, label %if.end69.8, label %if.end66.8.cleanup_crit_edge

if.end66.8.cleanup_crit_edge:                     ; preds = %if.end66.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.8:                                       ; preds = %if.end66.8
  %call70.8 = call i32 @msleep_interruptible(i32 noundef 500) #17
  %call60.9 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.9)
  %tobool61.not.9 = icmp eq i32 %call60.9, 0
  br i1 %tobool61.not.9, label %if.end66.9, label %if.end69.8.if.then62_crit_edge

if.end69.8.if.then62_crit_edge:                   ; preds = %if.end69.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62

if.end66.9:                                       ; preds = %if.end69.8
  %101 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %link_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool67.not.9 = icmp eq i8 %102, 0
  br i1 %tobool67.not.9, label %if.end69.9, label %if.end66.9.cleanup_crit_edge

if.end66.9.cleanup_crit_edge:                     ; preds = %if.end66.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69.9:                                       ; preds = %if.end66.9
  call void @__sanitizer_cov_trace_pc() #19
  %call70.9 = call i32 @msleep_interruptible(i32 noundef 500) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end69.9, %if.end66.9.cleanup_crit_edge, %if.end66.8.cleanup_crit_edge, %if.end66.7.cleanup_crit_edge, %if.end66.6.cleanup_crit_edge, %if.end66.5.cleanup_crit_edge, %if.end66.4.cleanup_crit_edge, %if.end66.3.cleanup_crit_edge, %if.end66.2.cleanup_crit_edge, %if.end66.1.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then62, %if.then54, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_status) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_get_stat_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.for.body_crit_edge
    i32 0, label %for.body44.preheader
    i32 2, label %for.body55
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body44.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = call ptr @memcpy(ptr %data, ptr @et_self_tests, i32 160)
  br label %sw.epilog

for.cond1.preheader:                              ; preds = %for.body
  %num_rx_qs = getelementptr i8, ptr %netdev, i32 285696
  %2 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_qs, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp2100.not = icmp eq i16 %3, 0
  br i1 %cmp2100.not, label %for.cond1.preheader.for.cond20.preheader_crit_edge, label %for.cond1.preheader.for.cond5.preheader_crit_edge

for.cond1.preheader.for.cond5.preheader_crit_edge: ; preds = %for.cond1.preheader
  br label %for.cond5.preheader

for.cond1.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond20.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %data.addr.095 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [37 x %struct.be_ethtool_stat], ptr @et_stats, i32 0, i32 %i.096
  %4 = call ptr @memcpy(ptr %data.addr.095, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %data.addr.095, i32 32
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond5.preheader:                              ; preds = %for.cond5.preheader.for.cond5.preheader_crit_edge, %for.cond1.preheader.for.cond5.preheader_crit_edge
  %i.1102 = phi i32 [ %inc18, %for.cond5.preheader.for.cond5.preheader_crit_edge ], [ 0, %for.cond1.preheader.for.cond5.preheader_crit_edge ]
  %data.addr.1101 = phi ptr [ %add.ptr13.8, %for.cond5.preheader.for.cond5.preheader_crit_edge ], [ %add.ptr, %for.cond1.preheader.for.cond5.preheader_crit_edge ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.addr.1101, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef nonnull @et_rx_stats)
  %add.ptr13 = getelementptr i8, ptr %data.addr.1101, i32 32
  %call12.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 1))
  %add.ptr13.1 = getelementptr i8, ptr %data.addr.1101, i32 64
  %call12.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.1, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 2))
  %add.ptr13.2 = getelementptr i8, ptr %data.addr.1101, i32 96
  %call12.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.2, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 3))
  %add.ptr13.3 = getelementptr i8, ptr %data.addr.1101, i32 128
  %call12.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.3, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 4))
  %add.ptr13.4 = getelementptr i8, ptr %data.addr.1101, i32 160
  %call12.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.4, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 5))
  %add.ptr13.5 = getelementptr i8, ptr %data.addr.1101, i32 192
  %call12.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.5, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 6))
  %add.ptr13.6 = getelementptr i8, ptr %data.addr.1101, i32 224
  %call12.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.6, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 7))
  %add.ptr13.7 = getelementptr i8, ptr %data.addr.1101, i32 256
  %call12.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13.7, ptr noundef nonnull @.str.19, i32 noundef %i.1102, ptr noundef getelementptr inbounds ([9 x %struct.be_ethtool_stat], ptr @et_rx_stats, i32 0, i32 8))
  %add.ptr13.8 = getelementptr i8, ptr %data.addr.1101, i32 288
  %inc18 = add nuw nsw i32 %i.1102, 1
  %5 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_rx_qs, align 128
  %conv = zext i16 %6 to i32
  %cmp2 = icmp ult i32 %inc18, %conv
  br i1 %cmp2, label %for.cond5.preheader.for.cond5.preheader_crit_edge, label %for.cond5.preheader.for.cond20.preheader_crit_edge

for.cond5.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond20.preheader

for.cond5.preheader.for.cond5.preheader_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond5.preheader

for.cond20.preheader:                             ; preds = %for.cond5.preheader.for.cond20.preheader_crit_edge, %for.cond1.preheader.for.cond20.preheader_crit_edge
  %data.addr.1.lcssa = phi ptr [ %add.ptr, %for.cond1.preheader.for.cond20.preheader_crit_edge ], [ %add.ptr13.8, %for.cond5.preheader.for.cond20.preheader_crit_edge ]
  %num_tx_qs = getelementptr i8, ptr %netdev, i32 15234
  %7 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_tx_qs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp22106.not = icmp eq i16 %8, 0
  br i1 %cmp22106.not, label %for.cond20.preheader.sw.epilog_crit_edge, label %for.cond20.preheader.for.cond25.preheader_crit_edge

for.cond20.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond20.preheader
  br label %for.cond25.preheader

for.cond20.preheader.sw.epilog_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.cond25.preheader:                             ; preds = %for.cond25.preheader.for.cond25.preheader_crit_edge, %for.cond20.preheader.for.cond25.preheader_crit_edge
  %i.2108 = phi i32 [ %inc38, %for.cond25.preheader.for.cond25.preheader_crit_edge ], [ 0, %for.cond20.preheader.for.cond25.preheader_crit_edge ]
  %data.addr.3107 = phi ptr [ %add.ptr33.13, %for.cond25.preheader.for.cond25.preheader_crit_edge ], [ %data.addr.1.lcssa, %for.cond20.preheader.for.cond25.preheader_crit_edge ]
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.addr.3107, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef nonnull @et_tx_stats)
  %add.ptr33 = getelementptr i8, ptr %data.addr.3107, i32 32
  %call32.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 1))
  %add.ptr33.1 = getelementptr i8, ptr %data.addr.3107, i32 64
  %call32.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.1, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 2))
  %add.ptr33.2 = getelementptr i8, ptr %data.addr.3107, i32 96
  %call32.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.2, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 3))
  %add.ptr33.3 = getelementptr i8, ptr %data.addr.3107, i32 128
  %call32.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.3, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 4))
  %add.ptr33.4 = getelementptr i8, ptr %data.addr.3107, i32 160
  %call32.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.4, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 5))
  %add.ptr33.5 = getelementptr i8, ptr %data.addr.3107, i32 192
  %call32.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.5, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 6))
  %add.ptr33.6 = getelementptr i8, ptr %data.addr.3107, i32 224
  %call32.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.6, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 7))
  %add.ptr33.7 = getelementptr i8, ptr %data.addr.3107, i32 256
  %call32.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.7, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 8))
  %add.ptr33.8 = getelementptr i8, ptr %data.addr.3107, i32 288
  %call32.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.8, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 9))
  %add.ptr33.9 = getelementptr i8, ptr %data.addr.3107, i32 320
  %call32.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.9, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 10))
  %add.ptr33.10 = getelementptr i8, ptr %data.addr.3107, i32 352
  %call32.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.10, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 11))
  %add.ptr33.11 = getelementptr i8, ptr %data.addr.3107, i32 384
  %call32.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.11, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 12))
  %add.ptr33.12 = getelementptr i8, ptr %data.addr.3107, i32 416
  %call32.13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33.12, ptr noundef nonnull @.str.20, i32 noundef %i.2108, ptr noundef getelementptr inbounds ([14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 13))
  %add.ptr33.13 = getelementptr i8, ptr %data.addr.3107, i32 448
  %inc38 = add nuw nsw i32 %i.2108, 1
  %9 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_tx_qs, align 2
  %conv21 = zext i16 %10 to i32
  %cmp22 = icmp ult i32 %inc38, %conv21
  br i1 %cmp22, label %for.cond25.preheader.for.cond25.preheader_crit_edge, label %for.cond25.preheader.sw.epilog_crit_edge

for.cond25.preheader.sw.epilog_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.cond25.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond25.preheader

for.body55:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call59 = tail call ptr @strcpy(ptr noundef %data, ptr noundef nonnull @be_priv_flags) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body55, %for.cond25.preheader.sw.epilog_crit_edge, %for.cond20.preheader.sw.epilog_crit_edge, %for.body44.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_phys_id(ptr noundef %netdev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 0, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %hba_port_num = getelementptr i8, ptr %netdev, i32 689744
  %1 = ptrtoint ptr %hba_port_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hba_port_num, align 16
  %beacon_state = getelementptr i8, ptr %netdev, i32 689516
  %call1 = tail call i32 @be_cmd_get_beacon_state(ptr noundef %add.ptr.i, i8 noundef zeroext %2, ptr noundef %beacon_state) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  %spec.select = select i1 %cmp, i32 -5, i32 %call1
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hba_port_num3 = getelementptr i8, ptr %netdev, i32 689744
  %3 = ptrtoint ptr %hba_port_num3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hba_port_num3, align 16
  %call4 = tail call i32 @be_cmd_set_beacon_state(ptr noundef %add.ptr.i, i8 noundef zeroext %4, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hba_port_num6 = getelementptr i8, ptr %netdev, i32 689744
  %5 = ptrtoint ptr %hba_port_num6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hba_port_num6, align 16
  %call7 = tail call i32 @be_cmd_set_beacon_state(ptr noundef %add.ptr.i, i8 noundef zeroext %6, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hba_port_num9 = getelementptr i8, ptr %netdev, i32 689744
  %7 = ptrtoint ptr %hba_port_num9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hba_port_num9, align 16
  %beacon_state10 = getelementptr i8, ptr %netdev, i32 689516
  %9 = ptrtoint ptr %beacon_state10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beacon_state10, align 4
  %conv = trunc i32 %10 to i8
  %call11 = tail call i32 @be_cmd_set_beacon_state(ptr noundef %add.ptr.i, i8 noundef zeroext %8, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %conv) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb2
  %status.0 = phi i32 [ %call11, %sw.bb8 ], [ %call7, %sw.bb5 ], [ %call4, %sw.bb2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp12 = icmp sgt i32 %status.0, 0
  %spec.select35 = select i1 %cmp12, i32 -5, i32 %status.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 1, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select35, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_stats = getelementptr i8, ptr %netdev, i32 687236
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0127 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset = getelementptr [37 x %struct.be_ethtool_stat], ptr @et_stats, i32 0, i32 %i.0127, i32 3
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %drv_stats, i32 %1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %3 to i64
  %arrayidx1 = getelementptr i64, ptr %data, i32 %i.0127
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %arrayidx1, align 8
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  %num_rx_qs = getelementptr i8, ptr %netdev, i32 285696
  %5 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_rx_qs, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp5130.not = icmp eq i16 %6, 0
  br i1 %cmp5130.not, label %for.end.for.end32_crit_edge, label %for.body7.preheader

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

for.body7.preheader:                              ; preds = %for.end
  %rx_obj = getelementptr i8, ptr %netdev, i32 285824
  br label %for.body7

for.body7:                                        ; preds = %for.body19.preheader.for.body7_crit_edge, %for.body7.preheader
  %base.0133 = phi i32 [ %add29, %for.body19.preheader.for.body7_crit_edge ], [ 37, %for.body7.preheader ]
  %j.0132 = phi i32 [ %inc31, %for.body19.preheader.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %rxo.0131 = phi ptr [ %incdec.ptr, %for.body19.preheader.for.body7_crit_edge ], [ %rx_obj, %for.body7.preheader ]
  %stats9 = getelementptr inbounds %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5
  %sync = getelementptr inbounds %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 9
  %arrayidx11 = getelementptr i64, ptr %data, i32 %base.0133
  %rx_pkts = getelementptr inbounds %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 1
  %add12 = add nuw nsw i32 %base.0133, 1
  %arrayidx13 = getelementptr i64, ptr %data, i32 %add12
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body7
  %call10 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync)
  %7 = ptrtoint ptr %stats9 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stats9, align 8
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx11, align 8
  %10 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_pkts, align 8
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx13, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !100
  %13 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sync, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %14, %call10
  br i1 %cmp.i.i.i.i.not, label %for.body19.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

for.body19.preheader:                             ; preds = %do.body
  %add.ptr22 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr22, align 4
  %conv23 = zext i32 %16 to i64
  %add24 = add nuw nsw i32 %base.0133, 2
  %arrayidx25 = getelementptr i64, ptr %data, i32 %add24
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv23, ptr %arrayidx25, align 8
  %add.ptr22.1 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %add.ptr22.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr22.1, align 4
  %conv23.1 = zext i32 %19 to i64
  %add24.1 = add nuw nsw i32 %base.0133, 3
  %arrayidx25.1 = getelementptr i64, ptr %data, i32 %add24.1
  %20 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv23.1, ptr %arrayidx25.1, align 8
  %add.ptr22.2 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 8
  %21 = ptrtoint ptr %add.ptr22.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr22.2, align 4
  %conv23.2 = zext i32 %22 to i64
  %add24.2 = add nuw nsw i32 %base.0133, 4
  %arrayidx25.2 = getelementptr i64, ptr %data, i32 %add24.2
  %23 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv23.2, ptr %arrayidx25.2, align 8
  %add.ptr22.3 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %add.ptr22.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr22.3, align 4
  %conv23.3 = zext i32 %25 to i64
  %add24.3 = add nuw nsw i32 %base.0133, 5
  %arrayidx25.3 = getelementptr i64, ptr %data, i32 %add24.3
  %26 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv23.3, ptr %arrayidx25.3, align 8
  %add.ptr22.4 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %add.ptr22.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr22.4, align 4
  %conv23.4 = zext i32 %28 to i64
  %add24.4 = add nuw nsw i32 %base.0133, 6
  %arrayidx25.4 = getelementptr i64, ptr %data, i32 %add24.4
  %29 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv23.4, ptr %arrayidx25.4, align 8
  %add.ptr22.5 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %add.ptr22.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr22.5, align 4
  %conv23.5 = zext i32 %31 to i64
  %add24.5 = add nuw nsw i32 %base.0133, 7
  %arrayidx25.5 = getelementptr i64, ptr %data, i32 %add24.5
  %32 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv23.5, ptr %arrayidx25.5, align 8
  %add.ptr22.6 = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %add.ptr22.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr22.6, align 4
  %conv23.6 = zext i32 %34 to i64
  %add24.6 = add nuw nsw i32 %base.0133, 8
  %arrayidx25.6 = getelementptr i64, ptr %data, i32 %add24.6
  %35 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv23.6, ptr %arrayidx25.6, align 8
  %add29 = add nuw nsw i32 %base.0133, 9
  %inc31 = add nuw nsw i32 %j.0132, 1
  %incdec.ptr = getelementptr %struct.be_rx_obj, ptr %rxo.0131, i32 1
  %36 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_rx_qs, align 128
  %conv4 = zext i16 %37 to i32
  %cmp5 = icmp ult i32 %inc31, %conv4
  br i1 %cmp5, label %for.body19.preheader.for.body7_crit_edge, label %for.body19.preheader.for.end32_crit_edge

for.body19.preheader.for.end32_crit_edge:         ; preds = %for.body19.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

for.body19.preheader.for.body7_crit_edge:         ; preds = %for.body19.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7

for.end32:                                        ; preds = %for.body19.preheader.for.end32_crit_edge, %for.end.for.end32_crit_edge
  %base.0.lcssa = phi i32 [ 37, %for.end.for.end32_crit_edge ], [ %add29, %for.body19.preheader.for.end32_crit_edge ]
  %num_tx_qs = getelementptr i8, ptr %netdev, i32 15234
  %38 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_tx_qs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp36136.not = icmp eq i16 %39, 0
  br i1 %cmp36136.not, label %for.end32.for.end75_crit_edge, label %for.body38.preheader

for.end32.for.end75_crit_edge:                    ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end75

for.body38.preheader:                             ; preds = %for.end32
  %tx_obj = getelementptr i8, ptr %netdev, i32 15360
  br label %for.body38

for.body38:                                       ; preds = %do.end70.for.body38_crit_edge, %for.body38.preheader
  %base.1139 = phi i32 [ %add71, %do.end70.for.body38_crit_edge ], [ %base.0.lcssa, %for.body38.preheader ]
  %j.1138 = phi i32 [ %inc73, %do.end70.for.body38_crit_edge ], [ 0, %for.body38.preheader ]
  %txo.0137 = phi ptr [ %incdec.ptr74, %do.end70.for.body38_crit_edge ], [ %tx_obj, %for.body38.preheader ]
  %sync_compl = getelementptr inbounds %struct.be_tx_obj, ptr %txo.0137, i32 0, i32 5, i32 15
  %tx_compl = getelementptr inbounds %struct.be_tx_obj, ptr %txo.0137, i32 0, i32 5, i32 4
  %arrayidx43 = getelementptr i64, ptr %data, i32 %base.1139
  br label %do.body41

do.body41:                                        ; preds = %do.body41.do.body41_crit_edge, %for.body38
  %call42 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync_compl)
  %40 = ptrtoint ptr %tx_compl to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tx_compl, align 8
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx43, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !100
  %43 = ptrtoint ptr %sync_compl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %sync_compl, align 4
  %cmp.i.i.i.i125.not = icmp eq i32 %44, %call42
  br i1 %cmp.i.i.i.i125.not, label %do.body48.preheader, label %do.body41.do.body41_crit_edge

do.body41.do.body41_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body41

do.body48.preheader:                              ; preds = %do.body41
  %stats40 = getelementptr inbounds %struct.be_tx_obj, ptr %txo.0137, i32 0, i32 5
  %sync49 = getelementptr inbounds %struct.be_tx_obj, ptr %txo.0137, i32 0, i32 5, i32 14
  br label %do.body48

do.body48:                                        ; preds = %do.cond67.do.body48_crit_edge, %do.body48.preheader
  %call50 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync49)
  br label %for.body54

for.body54:                                       ; preds = %cond.end.for.body54_crit_edge, %do.body48
  %i.2134 = phi i32 [ 1, %do.body48 ], [ %inc65, %cond.end.for.body54_crit_edge ]
  %offset56 = getelementptr [14 x %struct.be_ethtool_stat], ptr @et_tx_stats, i32 0, i32 %i.2134, i32 3
  %45 = ptrtoint ptr %offset56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset56, align 4
  %add.ptr57 = getelementptr i8, ptr %stats40, i32 %46
  %47 = lshr i32 3841, %i.2134
  %48 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp59.not = icmp eq i32 %48, 0
  br i1 %cmp59.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr57, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr57, align 4
  %conv61 = zext i32 %52 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %50, %cond.true ], [ %conv61, %cond.false ]
  %add62 = add nuw nsw i32 %i.2134, %base.1139
  %arrayidx63 = getelementptr i64, ptr %data, i32 %add62
  %53 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %cond, ptr %arrayidx63, align 8
  %inc65 = add nuw nsw i32 %i.2134, 1
  %exitcond141.not = icmp eq i32 %inc65, 14
  br i1 %exitcond141.not, label %do.cond67, label %cond.end.for.body54_crit_edge

cond.end.for.body54_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body54

do.cond67:                                        ; preds = %cond.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !100
  %54 = ptrtoint ptr %sync49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %sync49, align 4
  %cmp.i.i.i.i126.not = icmp eq i32 %55, %call50
  br i1 %cmp.i.i.i.i126.not, label %do.end70, label %do.cond67.do.body48_crit_edge

do.cond67.do.body48_crit_edge:                    ; preds = %do.cond67
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body48

do.end70:                                         ; preds = %do.cond67
  %add71 = add nuw nsw i32 %base.1139, 14
  %inc73 = add nuw nsw i32 %j.1138, 1
  %incdec.ptr74 = getelementptr %struct.be_tx_obj, ptr %txo.0137, i32 1
  %56 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_tx_qs, align 2
  %conv35 = zext i16 %57 to i32
  %cmp36 = icmp ult i32 %inc73, %conv35
  br i1 %cmp36, label %do.end70.for.body38_crit_edge, label %do.end70.for.end75_crit_edge

do.end70.for.end75_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end75

do.end70.for.body38_crit_edge:                    ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body38

for.end75:                                        ; preds = %do.end70.for.end75_crit_edge, %for.end32.for.end75_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_get_priv_flags(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr i8, ptr %netdev, i32 690176
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags, align 128
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_priv_flags(ptr nocapture noundef %netdev, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr i8, ptr %netdev, i32 690176
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags, align 128
  %and = and i32 %1, 1
  %and2 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp.not = icmp eq i32 %and, %and2
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and15 = and i32 %1, -2
  %not.tobool3.not = xor i1 %tobool3.not, true
  %masksel = zext i1 %not.tobool3.not to i32
  %or.sink = or i32 %and15, %masksel
  %.str.21.sink = select i1 %tobool3.not, ptr @.str.25, ptr @.str.21
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.sink, ptr %priv_flags, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.21.sink) #21
  br label %if.end21

if.end21:                                         ; preds = %if.then, %entry.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %stringset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %stringset, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %num_rx_qs = getelementptr i8, ptr %netdev, i32 285696
  %1 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_rx_qs, align 128
  %conv = zext i16 %2 to i32
  %mul = mul nuw nsw i32 %conv, 9
  %add = add nuw nsw i32 %mul, 37
  %num_tx_qs = getelementptr i8, ptr %netdev, i32 15234
  %3 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_tx_qs, align 2
  %conv2 = zext i16 %4 to i32
  %mul3 = mul nuw nsw i32 %conv2, 14
  %add4 = add nuw nsw i32 %add, %mul3
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 1, %sw.bb5 ], [ %add4, %sw.bb1 ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %cmd, ptr nocapture noundef readnone %rule_locs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_qs.i = getelementptr i8, ptr %netdev, i32 285696
  %0 = ptrtoint ptr %num_rx_qs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rx_qs.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp ugt i16 %1, 1
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 41, label %sw.bb
    i32 45, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %8, label %sw.bb.be_get_rss_hash_opts.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb38.i
  ]

sw.bb.be_get_rss_hash_opts.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_get_rss_hash_opts.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %rss_flags.i = getelementptr i8, ptr %netdev, i32 690136
  %10 = ptrtoint ptr %rss_flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rss_flags.i, align 8
  %and.i = and i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i64 0, i64 48
  %and3.i = and i64 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  %or6.i = or i64 %spec.select.i, 192
  %spec.select71.i = select i1 %tobool4.not.i, i64 %spec.select.i, i64 %or6.i
  br label %be_get_rss_hash_opts.exit

sw.bb8.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %rss_flags10.i = getelementptr i8, ptr %netdev, i32 690136
  %12 = ptrtoint ptr %rss_flags10.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rss_flags10.i, align 8
  %and11.i = and i64 %13, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  %spec.select68.i = select i1 %tobool12.not.i, i64 0, i64 48
  %and18.i = and i64 %13, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  %or21.i = or i64 %spec.select68.i, 192
  %spec.select72.i = select i1 %tobool19.not.i, i64 %spec.select68.i, i64 %or21.i
  br label %be_get_rss_hash_opts.exit

sw.bb23.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %rss_flags25.i = getelementptr i8, ptr %netdev, i32 690136
  %14 = ptrtoint ptr %rss_flags25.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rss_flags25.i, align 8
  %and26.i = and i64 %15, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i)
  %tobool27.not.i = icmp eq i64 %and26.i, 0
  %spec.select69.i = select i1 %tobool27.not.i, i64 0, i64 48
  %and33.i = and i64 %15, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i)
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  %or36.i = or i64 %spec.select69.i, 192
  %spec.select73.i = select i1 %tobool34.not.i, i64 %spec.select69.i, i64 %or36.i
  br label %be_get_rss_hash_opts.exit

sw.bb38.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %rss_flags40.i = getelementptr i8, ptr %netdev, i32 690136
  %16 = ptrtoint ptr %rss_flags40.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rss_flags40.i, align 8
  %and41.i = and i64 %17, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41.i)
  %tobool42.not.i = icmp eq i64 %and41.i, 0
  %spec.select70.i = select i1 %tobool42.not.i, i64 0, i64 48
  %and48.i = and i64 %17, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48.i)
  %tobool49.not.i = icmp eq i64 %and48.i, 0
  %or51.i = or i64 %spec.select70.i, 192
  %spec.select74.i = select i1 %tobool49.not.i, i64 %spec.select70.i, i64 %or51.i
  br label %be_get_rss_hash_opts.exit

be_get_rss_hash_opts.exit:                        ; preds = %sw.bb38.i, %sw.bb23.i, %sw.bb8.i, %sw.bb.i, %sw.bb.be_get_rss_hash_opts.exit_crit_edge
  %data.4.i = phi i64 [ 0, %sw.bb.be_get_rss_hash_opts.exit_crit_edge ], [ %spec.select71.i, %sw.bb.i ], [ %spec.select72.i, %sw.bb8.i ], [ %spec.select73.i, %sw.bb23.i ], [ %spec.select74.i, %sw.bb38.i ]
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %data.4.i, ptr %data, align 8
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv5 = zext i16 %1 to i64
  %data6 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %19 = ptrtoint ptr %data6 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv5, ptr %data6, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %be_get_rss_hash_opts.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %be_get_rss_hash_opts.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_rxnfc(ptr noundef %netdev, ptr nocapture noundef readonly %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_rx_qs.i = getelementptr i8, ptr %netdev, i32 285696
  %0 = ptrtoint ptr %num_rx_qs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rx_qs.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp ugt i16 %1, 1
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cond = icmp eq i32 %5, 42
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %rss_info.i = getelementptr i8, ptr %netdev, i32 689840
  %rss_flags1.i = getelementptr i8, ptr %netdev, i32 690136
  %6 = ptrtoint ptr %rss_flags1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rss_flags1.i, align 8
  %conv.i = trunc i64 %7 to i32
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.49)
  switch i64 %9, label %sw.bb.cleanup_crit_edge [
    i64 48, label %sw.bb.if.end.i_crit_edge
    i64 240, label %sw.bb.if.end.i_crit_edge8
  ]

sw.bb.if.end.i_crit_edge8:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %11, label %if.end.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb16.i
    i32 2, label %sw.bb30.i
    i32 6, label %sw.bb70.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.51)
  switch i64 %9, label %sw.bb.i.sw.epilog.i_crit_edge [
    i64 48, label %if.then9.i
    i64 240, label %if.then13.i
  ]

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  %and.i = and i32 %conv.i, -3
  br label %sw.epilog.i

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  %or.i = or i32 %conv.i, 3
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i64 %9, label %sw.bb16.i.sw.epilog.i_crit_edge [
    i64 48, label %if.then20.i
    i64 240, label %if.then26.i
  ]

sw.bb16.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then20.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #19
  %and21.i = and i32 %conv.i, -9
  br label %sw.epilog.i

if.then26.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #19
  %or27.i = or i32 %conv.i, 12
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i64 %9, label %sw.bb30.i.sw.epilog.i_crit_edge [
    i64 240, label %land.lhs.true34.i
    i64 48, label %if.then60.i
  ]

sw.bb30.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

land.lhs.true34.i:                                ; preds = %sw.bb30.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 128
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %16, label %if.then66.i [
    i16 545, label %land.lhs.true34.i.cleanup_crit_edge
    i16 1808, label %land.lhs.true34.i.cleanup_crit_edge9
    i16 529, label %land.lhs.true34.i.cleanup_crit_edge10
    i16 1792, label %land.lhs.true34.i.cleanup_crit_edge11
  ]

land.lhs.true34.i.cleanup_crit_edge11:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true34.i.cleanup_crit_edge10:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true34.i.cleanup_crit_edge9:             ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true34.i.cleanup_crit_edge:              ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then60.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #19
  %and61.i = and i32 %conv.i, -17
  br label %sw.epilog.i

if.then66.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  %or67.i = or i32 %conv.i, 17
  br label %sw.epilog.i

sw.bb70.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.55)
  switch i64 %9, label %sw.bb70.i.sw.epilog.i_crit_edge [
    i64 240, label %land.lhs.true74.i
    i64 48, label %if.then103.i
  ]

sw.bb70.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

land.lhs.true74.i:                                ; preds = %sw.bb70.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %device76.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device76.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device76.i, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %21, label %if.then109.i [
    i16 545, label %land.lhs.true74.i.cleanup_crit_edge
    i16 1808, label %land.lhs.true74.i.cleanup_crit_edge12
    i16 529, label %land.lhs.true74.i.cleanup_crit_edge13
    i16 1792, label %land.lhs.true74.i.cleanup_crit_edge14
  ]

land.lhs.true74.i.cleanup_crit_edge14:            ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true74.i.cleanup_crit_edge13:            ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true74.i.cleanup_crit_edge12:            ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true74.i.cleanup_crit_edge:              ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then103.i:                                     ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #19
  %and104.i = and i32 %conv.i, -33
  br label %sw.epilog.i

if.then109.i:                                     ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #19
  %or110.i = or i32 %conv.i, 36
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then109.i, %if.then103.i, %sw.bb70.i.sw.epilog.i_crit_edge, %if.then66.i, %if.then60.i, %sw.bb30.i.sw.epilog.i_crit_edge, %if.then26.i, %if.then20.i, %sw.bb16.i.sw.epilog.i_crit_edge, %if.then13.i, %if.then9.i, %sw.bb.i.sw.epilog.i_crit_edge
  %rss_flags.0.i = phi i32 [ %and104.i, %if.then103.i ], [ %or110.i, %if.then109.i ], [ %and61.i, %if.then60.i ], [ %or67.i, %if.then66.i ], [ %and21.i, %if.then20.i ], [ %or27.i, %if.then26.i ], [ %and.i, %if.then9.i ], [ %or.i, %if.then13.i ], [ %conv.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %conv.i, %sw.bb16.i.sw.epilog.i_crit_edge ], [ %conv.i, %sw.bb30.i.sw.epilog.i_crit_edge ], [ %conv.i, %sw.bb70.i.sw.epilog.i_crit_edge ]
  %conv113.i = zext i32 %rss_flags.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv113.i)
  %cmp116.i = icmp eq i64 %7, %conv113.i
  br i1 %cmp116.i, label %sw.epilog.i.cleanup_crit_edge, label %if.end119.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end119.i:                                      ; preds = %sw.epilog.i
  %rss_hkey.i = getelementptr i8, ptr %netdev, i32 690096
  %call.i = tail call i32 @be_cmd_rss_config(ptr noundef %add.ptr.i, ptr noundef %rss_info.i, i32 noundef %rss_flags.0.i, i16 noundef zeroext 128, ptr noundef %rss_hkey.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then123.i, label %if.end119.i.if.end127.i_crit_edge

if.end119.i.if.end127.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end127.i

if.then123.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %rss_flags1.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv113.i, ptr %rss_flags1.i, align 8
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then123.i, %if.end119.i.if.end127.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp128.i = icmp sgt i32 %call.i, 0
  %spec.select.i = select i1 %cmp128.i, i32 -5, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end127.i, %sw.epilog.i.cleanup_crit_edge, %land.lhs.true74.i.cleanup_crit_edge, %land.lhs.true74.i.cleanup_crit_edge12, %land.lhs.true74.i.cleanup_crit_edge13, %land.lhs.true74.i.cleanup_crit_edge14, %land.lhs.true34.i.cleanup_crit_edge, %land.lhs.true34.i.cleanup_crit_edge9, %land.lhs.true34.i.cleanup_crit_edge10, %land.lhs.true34.i.cleanup_crit_edge11, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select.i, %if.end127.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %land.lhs.true34.i.cleanup_crit_edge ], [ -22, %land.lhs.true34.i.cleanup_crit_edge9 ], [ -22, %land.lhs.true34.i.cleanup_crit_edge10 ], [ -22, %land.lhs.true34.i.cleanup_crit_edge11 ], [ -22, %land.lhs.true74.i.cleanup_crit_edge ], [ -22, %land.lhs.true74.i.cleanup_crit_edge12 ], [ -22, %land.lhs.true74.i.cleanup_crit_edge13 ], [ -22, %land.lhs.true74.i.cleanup_crit_edge14 ], [ -22, %if.end.i.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_do_flash(ptr noundef %netdev, ptr noundef %efl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %efl, i32 0, i32 2
  %call1 = tail call i32 @be_load_fw(ptr noundef %add.ptr.i, ptr noundef %data) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %hkey, ptr noundef writeonly %hfunc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.be_adapter, ptr %add.ptr.i, i32 0, i32 91, i32 1, i32 %i.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i32, ptr %indir, i32 %i.015
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %hkey, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %rss_hkey = getelementptr i8, ptr %netdev, i32 690096
  %3 = call ptr @memcpy(ptr %hkey, ptr %rss_hkey, i32 40)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %hfunc, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hfunc, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef %hkey, i8 noundef zeroext %hfunc) #3 align 64 {
entry:
  %rsstable = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %rsstable) #17
  %0 = call ptr @memset(ptr %rsstable, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %if.else, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.058
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %rss_id = getelementptr %struct.be_adapter, ptr %add.ptr.i, i32 0, i32 26, i32 %2, i32 6
  %3 = ptrtoint ptr %rss_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rss_id, align 64
  %arrayidx9 = getelementptr [128 x i8], ptr %rsstable, i32 0, i32 %i.058
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx9, align 1
  %conv10 = trunc i32 %2 to i8
  %arrayidx11 = getelementptr %struct.be_adapter, ptr %add.ptr.i, i32 0, i32 91, i32 1, i32 %i.058
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10, ptr %arrayidx11, align 1
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.if.end15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %rss_info12 = getelementptr i8, ptr %netdev, i32 689840
  %7 = call ptr @memcpy(ptr %rsstable, ptr %rss_info12, i32 128)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %for.body.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %hkey, null
  %rss_hkey = getelementptr i8, ptr %netdev, i32 690096
  %spec.select = select i1 %tobool16.not, ptr %rss_hkey, ptr %hkey
  %rss_flags = getelementptr i8, ptr %netdev, i32 690136
  %8 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rss_flags, align 8
  %conv23 = trunc i64 %9 to i32
  %call24 = call i32 @be_cmd_rss_config(ptr noundef %add.ptr.i, ptr noundef nonnull %rsstable, i32 noundef %conv23, i16 noundef zeroext 128, ptr noundef %spec.select) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %rss_flags to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %rss_flags, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %rss_info22 = getelementptr i8, ptr %netdev, i32 689840
  %11 = call ptr @memcpy(ptr %rss_hkey, ptr %spec.select, i32 40)
  %12 = call ptr @memcpy(ptr %rss_info22, ptr %rsstable, i32 128)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then26 ], [ 0, %if.end29 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %rsstable) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @be_get_channels(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rss_qs = getelementptr i8, ptr %netdev, i32 285698
  %0 = ptrtoint ptr %num_rss_qs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rss_qs, align 2
  %2 = tail call i16 @llvm.umax.i16(i16 %1, i16 1)
  %cond = zext i16 %2 to i32
  %num_tx_qs = getelementptr i8, ptr %netdev, i32 15234
  %3 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_tx_qs, align 2
  %5 = tail call i16 @llvm.umin.i16(i16 %2, i16 %4)
  %6 = zext i16 %5 to i32
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %7 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %combined_count, align 4
  %sub = sub nsw i32 %cond, %6
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %8 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %rx_count, align 4
  %9 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_tx_qs, align 2
  %conv20 = zext i16 %10 to i32
  %sub22 = sub nsw i32 %conv20, %6
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %11 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub22, ptr %tx_count, align 4
  %max_tx_qs.i.i = getelementptr i8, ptr %netdev, i32 689688
  %12 = ptrtoint ptr %max_tx_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_tx_qs.i.i, align 4
  %max_nic_evt_qs.i.i = getelementptr i8, ptr %netdev, i32 689706
  %14 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %16 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv2.i.i = zext i16 %15 to i32
  %conv3.i.i = and i32 %16, 65535
  %17 = tail call i32 @llvm.umin.i32(i32 %conv3.i.i, i32 %conv2.i.i) #17
  %conv9.i.i = zext i16 %13 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %conv9.i.i) #17
  %conv19.i.i = trunc i32 %18 to i16
  %max_rss_qs.i.i = getelementptr i8, ptr %netdev, i32 689690
  %19 = ptrtoint ptr %max_rss_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_rss_qs.i.i, align 2
  %21 = tail call i16 @llvm.umax.i16(i16 %20, i16 1) #17
  %cond.i.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %24 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv9.i12.i = zext i16 %23 to i32
  %conv10.i.i = and i32 %24, 65535
  %25 = tail call i32 @llvm.umin.i32(i32 %conv10.i.i, i32 %conv9.i12.i) #17
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %cond.i.i) #17
  %conv31.i.i = trunc i32 %26 to i16
  %27 = tail call i16 @llvm.umin.i16(i16 %conv19.i.i, i16 %conv31.i.i) #17
  %conv24 = zext i16 %27 to i32
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %28 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv24, ptr %max_combined, align 4
  %29 = ptrtoint ptr %max_rss_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_rss_qs.i.i, align 2
  %31 = tail call i16 @llvm.umax.i16(i16 %30, i16 1) #17
  %cond.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %34 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv9.i = zext i16 %33 to i32
  %conv10.i = and i32 %34, 65535
  %35 = tail call i32 @llvm.umin.i32(i32 %conv10.i, i32 %conv9.i) #17
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %cond.i) #17
  %sub27 = add nsw i32 %36, -1
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 1
  %37 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub27, ptr %max_rx, align 4
  %38 = ptrtoint ptr %max_tx_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max_tx_qs.i.i, align 4
  %40 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %42 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv2.i = zext i16 %41 to i32
  %conv3.i = and i32 %42, 65535
  %43 = tail call i32 @llvm.umin.i32(i32 %conv3.i, i32 %conv2.i) #17
  %conv9.i50 = zext i16 %39 to i32
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %conv9.i50) #17
  %sub30 = add nsw i32 %44, -1
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 2
  %45 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub30, ptr %max_tx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_channels(ptr noundef %netdev, ptr nocapture noundef readonly %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %0 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %2 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %4 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false2.if.end_crit_edge, label %land.lhs.true

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %6 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  %max_tx_qs.i.i = getelementptr i8, ptr %netdev, i32 689688
  %8 = ptrtoint ptr %max_tx_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_tx_qs.i.i, align 4
  %max_nic_evt_qs.i.i = getelementptr i8, ptr %netdev, i32 689706
  %10 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %12 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv2.i.i = zext i16 %11 to i32
  %conv3.i.i = and i32 %12, 65535
  %13 = tail call i32 @llvm.umin.i32(i32 %conv3.i.i, i32 %conv2.i.i) #17
  %conv9.i.i = zext i16 %9 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %conv9.i.i) #17
  %conv19.i.i = trunc i32 %14 to i16
  %max_rss_qs.i.i = getelementptr i8, ptr %netdev, i32 689690
  %15 = ptrtoint ptr %max_rss_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_rss_qs.i.i, align 2
  %17 = tail call i16 @llvm.umax.i16(i16 %16, i16 1) #17
  %cond.i.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %20 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv9.i12.i = zext i16 %19 to i32
  %conv10.i.i = and i32 %20, 65535
  %21 = tail call i32 @llvm.umin.i32(i32 %conv10.i.i, i32 %conv9.i12.i) #17
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %cond.i.i) #17
  %conv31.i.i = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.umin.i16(i16 %conv19.i.i, i16 %conv31.i.i) #17
  %conv = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ugt i32 %3, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %24 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not = icmp eq i32 %25, 0
  br i1 %tobool10.not, label %lor.lhs.false8.lor.lhs.false18_crit_edge, label %land.lhs.true11

lor.lhs.false8.lor.lhs.false18_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false18

land.lhs.true11:                                  ; preds = %lor.lhs.false8
  %26 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %combined_count, align 4
  %add = add i32 %27, %25
  %28 = ptrtoint ptr %max_rss_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_rss_qs.i.i, align 2
  %30 = tail call i16 @llvm.umax.i16(i16 %29, i16 1) #17
  %cond.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %33 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv9.i = zext i16 %32 to i32
  %conv10.i = and i32 %33, 65535
  %34 = tail call i32 @llvm.umin.i32(i32 %conv10.i, i32 %conv9.i) #17
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %cond.i) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp16 = icmp ugt i32 %add, %35
  br i1 %cmp16, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.lor.lhs.false18_crit_edge

land.lhs.true11.lor.lhs.false18_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false18

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false18:                                  ; preds = %land.lhs.true11.lor.lhs.false18_crit_edge, %lor.lhs.false8.lor.lhs.false18_crit_edge
  %tx_count19 = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %36 = ptrtoint ptr %tx_count19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_count19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool20.not = icmp eq i32 %37, 0
  br i1 %tobool20.not, label %lor.lhs.false18.if.end30_crit_edge, label %land.lhs.true21

lor.lhs.false18.if.end30_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.lhs.true21:                                  ; preds = %lor.lhs.false18
  %38 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %combined_count, align 4
  %add24 = add i32 %39, %37
  %40 = ptrtoint ptr %max_tx_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_tx_qs.i.i, align 4
  %42 = ptrtoint ptr %max_nic_evt_qs.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_nic_evt_qs.i.i, align 2
  %call.i.i.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %44 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv2.i = zext i16 %43 to i32
  %conv3.i = and i32 %44, 65535
  %45 = tail call i32 @llvm.umin.i32(i32 %conv3.i, i32 %conv2.i) #17
  %conv9.i66 = zext i16 %41 to i32
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %conv9.i66) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %46)
  %cmp27 = icmp ugt i32 %add24, %46
  br i1 %cmp27, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end30_crit_edge

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true21.if.end30_crit_edge, %lor.lhs.false18.if.end30_crit_edge
  %47 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %combined_count, align 4
  %49 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_count, align 4
  %add33 = add i32 %50, %48
  %conv34 = trunc i32 %add33 to i16
  %cfg_num_rx_irqs = getelementptr i8, ptr %netdev, i32 2660
  %51 = ptrtoint ptr %cfg_num_rx_irqs to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv34, ptr %cfg_num_rx_irqs, align 4
  %52 = load i32, ptr %combined_count, align 4
  %53 = ptrtoint ptr %tx_count19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_count19, align 4
  %add37 = add i32 %54, %52
  %conv38 = trunc i32 %add37 to i16
  %cfg_num_tx_irqs = getelementptr i8, ptr %netdev, i32 2662
  %55 = ptrtoint ptr %cfg_num_tx_irqs to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv38, ptr %cfg_num_tx_irqs, align 2
  %call39 = tail call i32 @be_update_queues(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp sgt i32 %call39, 0
  %spec.select = select i1 %cmp40, i32 -5, i32 %call39
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end30 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true21.cleanup_crit_edge ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_dump_flag(ptr noundef %netdev, ptr nocapture noundef writeonly %dump) #3 align 64 {
entry:
  %data_read.i.i = alloca i32, align 4
  %eof.i.i = alloca i32, align 4
  %addn_status.i.i = alloca i8, align 1
  %data_len_cmd.i.i = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_privileges.i = getelementptr i8, ptr %netdev, i32 688812
  %0 = ptrtoint ptr %cmd_privileges.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_privileges.i, align 4
  %and.i = and i32 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %5, label %if.else.i [
    i16 -7648, label %if.end.if.then.i_crit_edge
    i16 -7640, label %if.end.if.then.i_crit_edge6
  ]

if.end.if.then.i_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_read.i.i) #17
  %7 = ptrtoint ptr %data_read.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_read.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eof.i.i) #17
  %8 = ptrtoint ptr %eof.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %eof.i.i, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addn_status.i.i) #17
  %9 = ptrtoint ptr %addn_status.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %addn_status.i.i, align 1, !annotation !99
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data_len_cmd.i.i) #17
  %10 = call ptr @memset(ptr %data_len_cmd.i.i, i32 0, i32 12)
  %call.i.i = call i32 @lancer_cmd_read_object(ptr noundef %add.ptr.i, ptr noundef nonnull %data_len_cmd.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull %data_read.i.i, ptr noundef nonnull %eof.i.i, ptr noundef nonnull %addn_status.i.i) #17
  %11 = ptrtoint ptr %data_read.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_read.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data_len_cmd.i.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addn_status.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eof.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_read.i.i) #17
  br label %be_get_dump_len.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %fat_dump_len.i = getelementptr i8, ptr %netdev, i32 690148
  %13 = ptrtoint ptr %fat_dump_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fat_dump_len.i, align 4
  br label %be_get_dump_len.exit

be_get_dump_len.exit:                             ; preds = %if.else.i, %if.then.i
  %dump_size.0.i = phi i32 [ %12, %if.then.i ], [ %14, %if.else.i ]
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dump_size.0.i, ptr %len, align 4
  %version = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %16 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %version, align 4
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %17 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %flag, align 4
  br label %cleanup

cleanup:                                          ; preds = %be_get_dump_len.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %be_get_dump_len.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_dump_data(ptr noundef %netdev, ptr nocapture noundef readonly %dump, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_privileges.i = getelementptr i8, ptr %netdev, i32 688812
  %0 = ptrtoint ptr %cmd_privileges.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_privileges.i, align 4
  %and.i = and i32 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %7, label %if.else.i [
    i16 -7648, label %if.end.if.then.i_crit_edge
    i16 -7640, label %if.end.if.then.i_crit_edge6
  ]

if.end.if.then.i_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge6
  %call.i = tail call fastcc i32 @lancer_cmd_read_file(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.31, i32 noundef %3, ptr noundef %buf) #17
  br label %be_read_dump_data.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call7.i = tail call i32 @be_cmd_get_fat_dump(ptr noundef %add.ptr.i, i32 noundef %3, ptr noundef %buf) #17
  br label %be_read_dump_data.exit

be_read_dump_data.exit:                           ; preds = %if.else.i, %if.then.i
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ %call7.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp = icmp sgt i32 %status.0.i, 0
  %spec.select = select i1 %cmp, i32 -5, i32 %status.0.i
  br label %cleanup

cleanup:                                          ; preds = %be_read_dump_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %be_read_dump_data.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_set_dump(ptr noundef %netdev, ptr nocapture noundef readonly %dump) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 -7648, label %entry.lor.lhs.false9_crit_edge
    i16 -7640, label %entry.lor.lhs.false9_crit_edge38
  ]

entry.lor.lhs.false9_crit_edge38:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false9

entry.lor.lhs.false9_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false9:                                   ; preds = %entry.lor.lhs.false9_crit_edge, %entry.lor.lhs.false9_crit_edge38
  %cmd_privileges.i = getelementptr i8, ptr %netdev, i32 688812
  %5 = ptrtoint ptr %cmd_privileges.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd_privileges.i, align 4
  %and.i = and i32 %6, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false9.cleanup_crit_edge, label %if.end

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flag, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %8, label %do.end24 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  %call11 = tail call i32 @lancer_initiate_dump(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %do.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32) #21
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %call15 = tail call i32 @lancer_delete_dump(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end20, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end20:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.35) #21
  br label %cleanup

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %8) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end20, %sw.bb14.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false9.cleanup_crit_edge ], [ %call15, %sw.bb14.cleanup_crit_edge ], [ 0, %do.end20 ], [ %call11, %sw.bb.cleanup_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_module_info(ptr noundef %netdev, ptr nocapture noundef writeonly %modinfo) #3 align 64 {
entry:
  %page_data = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %page_data) #17
  %0 = call ptr @memset(ptr %page_data, i32 255, i32 256)
  %cmd_privileges.i = getelementptr i8, ptr %netdev, i32 688812
  %1 = ptrtoint ptr %cmd_privileges.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_privileges.i, align 4
  %and.i = and i32 %2, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = call i32 @be_cmd_read_port_transceiver_data(ptr noundef %add.ptr.i, i8 noundef zeroext -96, ptr noundef nonnull %page_data) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr inbounds [256 x i8], ptr %page_data, i32 0, i32 94
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %. = select i1 %tobool4.not, i32 1, i32 2
  %.19 = select i1 %tobool4.not, i32 256, i32 512
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %., ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %6 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.19, ptr %eeprom_len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  %spec.select = select i1 %cmp, i32 -5, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end9 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %page_data) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_module_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_privileges.i = getelementptr i8, ptr %netdev, i32 688812
  %0 = ptrtoint ptr %cmd_privileges.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_privileges.i, align 4
  %and.i = and i32 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @be_cmd_read_port_transceiver_data(ptr noundef %add.ptr.i, i8 noundef zeroext -96, ptr noundef %data) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end4:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp = icmp ugt i32 %add, 256
  br i1 %cmp, label %if.then5, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then5:                                         ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %data, i32 256
  %call6 = tail call i32 @be_cmd_read_port_transceiver_data(ptr noundef %add.ptr.i, i8 noundef zeroext -94, ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10thread-pre-split, label %if.then5.err_crit_edge

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end10thread-pre-split:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %offset, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.end4.if.end10_crit_edge
  %7 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %3, %if.end4.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr15 = getelementptr i8, ptr %data, i32 %7
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = call ptr @memcpy(ptr %data, ptr %add.ptr15, i32 %9)
  br label %cleanup

err:                                              ; preds = %if.then5.err_crit_edge, %if.end.err_crit_edge
  %status.1 = phi i32 [ %call2, %if.end.err_crit_edge ], [ %call6, %if.then5.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp18 = icmp sgt i32 %status.1, 0
  %spec.select = select i1 %cmp18, i32 -5, i32 %status.1
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then13, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ], [ %spec.select, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @be_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  %link_status = alloca i8, align 1
  %link_speed = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_status) #17
  %0 = ptrtoint ptr %link_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %link_status, align 1, !annotation !99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_speed) #17
  %1 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %link_speed, align 2
  %link_speed1 = getelementptr i8, ptr %netdev, i32 689768
  %2 = ptrtoint ptr %link_speed1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_speed1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else50

if.then:                                          ; preds = %entry
  %call2 = call i32 @be_cmd_link_status_query(ptr noundef %add.ptr.i, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_status, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %link_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_status, align 1
  call void @be_link_status_update(ptr noundef %add.ptr.i, i8 noundef zeroext %5) #17
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %link_speed, align 2
  %conv = zext i16 %7 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %speed, align 4
  %call4 = call i32 @be_cmd_get_phy_info(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %auto_speeds_supported = getelementptr i8, ptr %netdev, i32 689764
  %9 = ptrtoint ptr %auto_speeds_supported to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %auto_speeds_supported, align 4
  %conv8 = zext i16 %10 to i32
  %fixed_speeds_supported = getelementptr i8, ptr %netdev, i32 689766
  %11 = ptrtoint ptr %fixed_speeds_supported to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fixed_speeds_supported, align 2
  %call11 = call i32 @be_cmd_query_cable_type(ptr noundef %add.ptr.i) #17
  %or123 = or i16 %12, %10
  %or = zext i16 %or123 to i32
  %call12 = call fastcc i32 @convert_to_et_setting(ptr noundef %add.ptr.i, i32 noundef %or)
  %call13 = call fastcc i32 @convert_to_et_setting(ptr noundef %add.ptr.i, i32 noundef %conv8)
  %interface_type.i = getelementptr i8, ptr %netdev, i32 689758
  %13 = ptrtoint ptr %interface_type.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %interface_type.i, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %14, label %sw.default.i [
    i16 7, label %if.then6.be_get_port_type.exit_crit_edge
    i16 8, label %if.then6.be_get_port_type.exit_crit_edge126
    i16 9, label %if.then6.be_get_port_type.exit_crit_edge127
    i16 3, label %sw.bb1.i
    i16 10, label %sw.bb4.i
    i16 1, label %if.then6.sw.bb13.i_crit_edge
    i16 2, label %if.then6.sw.bb13.i_crit_edge128
    i16 6, label %if.then6.be_get_port_type.exit_crit_edge129
  ]

if.then6.be_get_port_type.exit_crit_edge129:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_get_port_type.exit

if.then6.sw.bb13.i_crit_edge128:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb13.i

if.then6.sw.bb13.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb13.i

if.then6.be_get_port_type.exit_crit_edge127:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_get_port_type.exit

if.then6.be_get_port_type.exit_crit_edge126:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_get_port_type.exit

if.then6.be_get_port_type.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_get_port_type.exit

sw.bb1.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %cable_type.i = getelementptr i8, ptr %netdev, i32 689780
  %16 = ptrtoint ptr %cable_type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cable_type.i, align 4
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %..i = select i1 %tobool.not.i, i8 3, i8 5
  br label %be_get_port_type.exit

sw.bb4.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %cable_type6.i = getelementptr i8, ptr %netdev, i32 689780
  %19 = ptrtoint ptr %cable_type6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cable_type6.i, align 4
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not.i = icmp eq i8 %21, 0
  %.17.i = select i1 %tobool9.not.i, i8 3, i8 5
  br label %be_get_port_type.exit

sw.bb13.i:                                        ; preds = %if.then6.sw.bb13.i_crit_edge, %if.then6.sw.bb13.i_crit_edge128
  br label %be_get_port_type.exit

sw.default.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %be_get_port_type.exit

be_get_port_type.exit:                            ; preds = %sw.default.i, %sw.bb13.i, %sw.bb4.i, %sw.bb1.i, %if.then6.be_get_port_type.exit_crit_edge, %if.then6.be_get_port_type.exit_crit_edge126, %if.then6.be_get_port_type.exit_crit_edge127, %if.then6.be_get_port_type.exit_crit_edge129
  %port.0.i = phi i8 [ -1, %sw.default.i ], [ 3, %sw.bb13.i ], [ 0, %if.then6.be_get_port_type.exit_crit_edge ], [ 0, %if.then6.be_get_port_type.exit_crit_edge126 ], [ 0, %if.then6.be_get_port_type.exit_crit_edge127 ], [ %..i, %sw.bb1.i ], [ %.17.i, %sw.bb4.i ], [ 0, %if.then6.be_get_port_type.exit_crit_edge129 ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %port.0.i, ptr %port, align 1
  %23 = ptrtoint ptr %auto_speeds_supported to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %auto_speeds_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool19.not = icmp eq i16 %24, 0
  br i1 %tobool19.not, label %be_get_port_type.exit.if.end24_crit_edge, label %if.then20

be_get_port_type.exit.if.end24_crit_edge:         ; preds = %be_get_port_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then20:                                        ; preds = %be_get_port_type.exit
  call void @__sanitizer_cov_trace_pc() #19
  %or21 = or i32 %call12, 64
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %25 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %autoneg, align 1
  %or23 = or i32 %call13, 64
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %be_get_port_type.exit.if.end24_crit_edge
  %supported.0 = phi i32 [ %or21, %if.then20 ], [ %call12, %be_get_port_type.exit.if.end24_crit_edge ]
  %advertising.0 = phi i32 [ %or23, %if.then20 ], [ %call13, %be_get_port_type.exit.if.end24_crit_edge ]
  %or25 = or i32 %supported.0, 8192
  %26 = ptrtoint ptr %interface_type.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %interface_type.i, align 2
  %28 = and i16 %27, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %.not = icmp eq i16 %28, 1
  %or28 = or i32 %advertising.0, 8192
  %spec.select = select i1 %.not, i32 %advertising.0, i32 %or28
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %port31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %29 = ptrtoint ptr %port31 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %port31, align 1
  %autoneg33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %30 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %autoneg33, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end24
  %supported.1 = phi i32 [ 0, %if.else ], [ %or25, %if.end24 ]
  %advertising.1 = phi i32 [ 0, %if.else ], [ %spec.select, %if.end24 ]
  %31 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed, align 4
  %33 = ptrtoint ptr %link_speed1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %link_speed1, align 8
  %port40 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %34 = ptrtoint ptr %port40 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %port40, align 1
  %port_type = getelementptr i8, ptr %netdev, i32 689755
  %36 = ptrtoint ptr %port_type to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %port_type, align 1
  %autoneg43 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %37 = ptrtoint ptr %autoneg43 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %autoneg43, align 1
  %autoneg45 = getelementptr i8, ptr %netdev, i32 689753
  %39 = ptrtoint ptr %autoneg45 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %autoneg45, align 1
  %advertising47 = getelementptr i8, ptr %netdev, i32 689772
  %40 = ptrtoint ptr %advertising47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %advertising.1, ptr %advertising47, align 4
  %supported49 = getelementptr i8, ptr %netdev, i32 689776
  %41 = ptrtoint ptr %supported49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %supported.1, ptr %supported49, align 8
  br label %if.end67

if.else50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %speed54 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %42 = ptrtoint ptr %speed54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %3, ptr %speed54, align 4
  %port_type56 = getelementptr i8, ptr %netdev, i32 689755
  %43 = ptrtoint ptr %port_type56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %port_type56, align 1
  %port58 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %45 = ptrtoint ptr %port58 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %port58, align 1
  %autoneg60 = getelementptr i8, ptr %netdev, i32 689753
  %46 = ptrtoint ptr %autoneg60 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %autoneg60, align 1
  %autoneg62 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %48 = ptrtoint ptr %autoneg62 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %autoneg62, align 1
  %advertising64 = getelementptr i8, ptr %netdev, i32 689772
  %49 = ptrtoint ptr %advertising64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %advertising64, align 4
  %supported66 = getelementptr i8, ptr %netdev, i32 689776
  %51 = ptrtoint ptr %supported66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %supported66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else50, %if.end34
  %supported.2 = phi i32 [ %supported.1, %if.end34 ], [ %52, %if.else50 ]
  %advertising.2 = phi i32 [ %advertising.1, %if.end34 ], [ %50, %if.else50 ]
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i125 = icmp eq i32 %55, 0
  %conv70 = select i1 %tobool.not.i125, i8 1, i8 -1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %56 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv70, ptr %duplex, align 4
  %port_num = getelementptr i8, ptr %netdev, i32 689520
  %57 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port_num, align 16
  %conv72 = trunc i32 %58 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %59 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv72, ptr %phy_address, align 2
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.2) #17
  %advertising76 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising76, i32 noundef %advertising.2) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_speed) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_status) #17
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_enable_magic_wol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_set_fw_log_level(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lancer_cmd_read_object(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lancer_cmd_read_file(ptr noundef %adapter, ptr noundef %file_name, i32 noundef %buf_len, ptr nocapture noundef writeonly %buf) unnamed_addr #3 align 64 {
entry:
  %read_cmd = alloca %struct.be_dma_mem, align 4
  %read_len = alloca i32, align 4
  %eof = alloca i32, align 4
  %addn_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %read_cmd) #17
  %0 = ptrtoint ptr %read_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %read_cmd, align 4, !annotation !99
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %read_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !99
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %read_cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_len) #17
  %4 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %read_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eof) #17
  %5 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %eof, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addn_status) #17
  %6 = ptrtoint ptr %addn_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %addn_status, align 1, !annotation !99
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32768, ptr %3, align 4
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 32768, ptr noundef %1, i32 noundef 2592, i32 noundef 0) #17
  %10 = ptrtoint ptr %read_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %read_cmd, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp37.not = icmp eq i32 %buf_len, 0
  br i1 %cmp37.not, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %11 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %eof, align 4
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 128
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.13) #21
  br label %cleanup

land.rhs:                                         ; preds = %if.then9.land.rhs_crit_edge, %land.rhs.preheader
  %14 = phi i32 [ %.pr, %land.rhs.preheader ], [ %and12, %if.then9.land.rhs_crit_edge ]
  %total_read_len.038 = phi i32 [ 0, %land.rhs.preheader ], [ %add11, %if.then9.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub = sub i32 %buf_len, %total_read_len.038
  %15 = call i32 @llvm.umin.i32(i32 %sub, i32 32768)
  %add = add nuw nsw i32 %15, 3
  %and = and i32 %add, 131068
  %call7 = call i32 @lancer_cmd_read_object(ptr noundef %adapter, ptr noundef nonnull %read_cmd, i32 noundef %and, i32 noundef %total_read_len.038, ptr noundef %file_name, ptr noundef nonnull %read_len, ptr noundef nonnull %eof, ptr noundef nonnull %addn_status) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then9:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %buf, i32 %total_read_len.038
  %16 = ptrtoint ptr %read_cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_cmd, align 4
  %18 = ptrtoint ptr %read_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read_len, align 4
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %17, i32 %19)
  %add11 = add i32 %19, %total_read_len.038
  %21 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eof, align 4
  %and12 = and i32 %22, -2147483648
  store i32 %and12, ptr %eof, align 4
  %cmp = icmp ult i32 %add11, %buf_len
  br i1 %cmp, label %if.then9.land.rhs_crit_edge, label %if.then9.while.end_crit_edge

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then9.land.rhs_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

while.end:                                        ; preds = %if.then9.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %status.1 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ -5, %while.body.while.end_crit_edge ], [ 0, %if.then9.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ]
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 128
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = ptrtoint ptr %read_cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_cmd, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev15, i32 noundef %26, ptr noundef %28, i32 noundef %30, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ %status.1, %while.end ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addn_status) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eof) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_len) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %read_cmd) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_get_seeprom_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @be_eqd_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_get_flow_control(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_set_flow_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_link_status_query(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_set_loopback(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_loopback_test(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_ddr_dma_test(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_get_beacon_state(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_set_beacon_state(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !101
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #17
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #17
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #17
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #17
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !102
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !103

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #17, !srcloc !104
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !106
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !107
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_rss_config(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_load_fw(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_update_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_get_fat_dump(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lancer_initiate_dump(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lancer_delete_dump(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_read_port_transceiver_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @be_link_status_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_get_phy_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_query_cable_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @convert_to_et_setting(ptr nocapture noundef readonly %adapter, i32 noundef %if_speeds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %interface_type = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 83, i32 5
  %0 = ptrtoint ptr %interface_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %interface_type, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %1, label %sw.default91 [
    i16 7, label %entry.sw.bb_crit_edge
    i16 8, label %entry.sw.bb_crit_edge147
    i16 9, label %entry.sw.bb_crit_edge148
    i16 5, label %sw.bb12
    i16 12, label %sw.bb24
    i16 4, label %entry.sw.epilog93_crit_edge
    i16 11, label %sw.bb38
    i16 10, label %sw.bb50
    i16 3, label %entry.sw.bb62_crit_edge
    i16 1, label %entry.sw.bb62_crit_edge149
    i16 2, label %entry.sw.bb62_crit_edge150
    i16 6, label %sw.bb74
  ]

entry.sw.bb62_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

entry.sw.bb62_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

entry.sw.bb62_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

entry.sw.epilog93_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog93

entry.sw.bb_crit_edge148:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.bb_crit_edge147:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge147, %entry.sw.bb_crit_edge148
  %and = and i32 %if_speeds, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 128, i32 160
  %and2 = shl i32 %if_speeds, 2
  %3 = and i32 %and2, 8
  %and7 = shl i32 %if_speeds, 1
  %4 = and i32 %and7, 2
  %5 = or i32 %4, %3
  %6 = or i32 %5, %spec.select
  br label %sw.epilog93

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and14 = and i32 %if_speeds, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %spec.select134 = select i1 %tobool15.not, i32 65536, i32 196608
  %and19 = shl i32 %if_speeds, 15
  %7 = and i32 %and19, 262144
  %8 = or i32 %spec.select134, %7
  br label %sw.epilog93

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and26 = and i32 %if_speeds, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %spec.select135 = select i1 %tobool27.not, i32 65536, i32 589824
  %and31 = shl i32 %if_speeds, 18
  %9 = and i32 %and31, 4194304
  %10 = or i32 %spec.select135, %9
  br label %sw.epilog93

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and40 = and i32 %if_speeds, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %spec.select136 = select i1 %tobool41.not, i32 65536, i32 589824
  %and45 = shl i32 %if_speeds, 18
  %11 = and i32 %and45, 8388608
  %12 = or i32 %spec.select136, %11
  br label %sw.epilog93

sw.bb50:                                          ; preds = %entry
  %and51 = and i32 %if_speeds, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %sw.bb50.sw.bb62_crit_edge, label %if.then53

sw.bb50.sw.bb62_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb62

if.then53:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #19
  %cable_type = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 83, i32 12
  %13 = ptrtoint ptr %cable_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cable_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch.selectcmp = icmp eq i8 %14, 2
  %switch.select = select i1 %switch.selectcmp, i32 67109888, i32 33555456
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %switch.selectcmp137 = icmp eq i8 %14, 8
  %switch.select138 = select i1 %switch.selectcmp137, i32 16778240, i32 %switch.select
  br label %sw.bb62

sw.bb62:                                          ; preds = %if.then53, %sw.bb50.sw.bb62_crit_edge, %entry.sw.bb62_crit_edge, %entry.sw.bb62_crit_edge149, %entry.sw.bb62_crit_edge150
  %val.5 = phi i32 [ 1024, %entry.sw.bb62_crit_edge ], [ 1024, %entry.sw.bb62_crit_edge149 ], [ 1024, %entry.sw.bb62_crit_edge150 ], [ 1024, %sw.bb50.sw.bb62_crit_edge ], [ %switch.select138, %if.then53 ]
  %and64 = shl i32 %if_speeds, 9
  %15 = and i32 %and64, 4096
  %and69 = shl i32 %if_speeds, 3
  %16 = and i32 %and69, 32
  %17 = or i32 %16, %15
  %18 = or i32 %17, %val.5
  br label %sw.epilog93

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %and76 = and i32 %if_speeds, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %spec.select140 = select i1 %tobool77.not, i32 128, i32 4224
  %and81 = shl i32 %if_speeds, 3
  %19 = and i32 %and81, 32
  %and86 = shl i32 %if_speeds, 2
  %20 = and i32 %and86, 8
  %21 = or i32 %20, %19
  %22 = or i32 %21, %spec.select140
  br label %sw.epilog93

sw.default91:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog93

sw.epilog93:                                      ; preds = %sw.default91, %sw.bb74, %sw.bb62, %sw.bb38, %sw.bb24, %sw.bb12, %sw.bb, %entry.sw.epilog93_crit_edge
  %val.9 = phi i32 [ 128, %sw.default91 ], [ 589824, %entry.sw.epilog93_crit_edge ], [ %8, %sw.bb12 ], [ %10, %sw.bb24 ], [ %12, %sw.bb38 ], [ %18, %sw.bb62 ], [ %6, %sw.bb ], [ %22, %sw.bb74 ]
  ret i32 %val.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @be_ethtool_ops, !1, !"be_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1416, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 223, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 229, i32 5}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 815, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @be_set_wol._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @be_set_wol._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 832, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @be_set_wol._entry.7, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @be_set_wol._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1002, i32 14}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1005, i32 14}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 276, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lancer_cmd_read_file._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @lancer_cmd_read_file._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 719, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @be_set_pauseparam._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @be_set_pauseparam._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 904, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @be_self_test._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @be_self_test._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"pattern", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 851, i32 19}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 443, i32 19}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 450, i32 19}
!44 = !{ptr @et_stats, !45, !"et_stats", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 35, i32 37}
!46 = !{ptr @et_rx_stats, !47, !"et_rx_stats", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 134, i32 37}
!48 = !{ptr @et_tx_stats, !49, !"et_tx_stats", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 158, i32 37}
!50 = !{ptr @et_self_tests, !51, !"et_self_tests", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 204, i32 19}
!52 = !{ptr @be_priv_flags, !53, !"be_priv_flags", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 425, i32 19}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1404, i32 4}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @be_set_priv_flags._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @be_set_priv_flags._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1408, i32 4}
!62 = !{ptr @be_set_priv_flags._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @be_set_priv_flags._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1116, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @be_get_rxnfc._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @be_get_rxnfc._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 1204, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @be_set_rxnfc._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @be_set_rxnfc._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 255, i32 11}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 774, i32 4}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @be_set_dump._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @be_set_dump._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 779, i32 4}
!83 = !{ptr @be_set_dump._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @be_set_dump._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/emulex/benet/be_ethtool.c", i32 782, i32 3}
!87 = !{ptr @be_set_dump._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @be_set_dump._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
!99 = !{!"auto-init"}
!100 = !{i64 2150011655}
!101 = !{i64 1131868, i64 1131929}
!102 = !{i64 1134600}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 1134885}
!105 = !{i64 2155423416}
!106 = !{i64 2155423258}
!107 = !{i64 2155423586}
