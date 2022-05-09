; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_et_stat = type { [32 x i8], i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.161 = type { ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.174, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, i32, i8, i32, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.155, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.155 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.173, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.162, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.162 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.173 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.154, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.154 = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@nfp_port_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @nfp_app_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_port_get_strings, ptr null, ptr @nfp_port_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @nfp_port_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_app_get_dump_flag, ptr @nfp_app_get_dump_data, ptr @nfp_app_set_dump, ptr null, ptr @nfp_port_get_module_info, ptr @nfp_port_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_net_get_link_ksettings, ptr @nfp_net_set_link_ksettings, ptr null, ptr @nfp_port_get_fecparam, ptr @nfp_port_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@nfp_net_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1587, i32 0, ptr @nfp_net_get_drvinfo, ptr @nfp_net_get_regs_len, ptr @nfp_net_get_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @nfp_net_get_coalesce, ptr @nfp_net_set_coalesce, ptr @nfp_net_get_ringparam, ptr @nfp_net_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @nfp_net_get_strings, ptr null, ptr @nfp_net_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @nfp_net_get_sset_count, ptr @nfp_net_get_rxnfc, ptr @nfp_net_set_rxnfc, ptr null, ptr null, ptr @nfp_net_get_rxfh_key_size, ptr @nfp_net_get_rxfh_indir_size, ptr @nfp_net_get_rxfh, ptr @nfp_net_set_rxfh, ptr null, ptr null, ptr @nfp_net_get_channels, ptr @nfp_net_set_channels, ptr @nfp_app_get_dump_flag, ptr @nfp_app_get_dump_data, ptr @nfp_app_set_dump, ptr null, ptr @nfp_port_get_module_info, ptr @nfp_port_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_net_get_link_ksettings, ptr @nfp_net_set_link_ksettings, ptr null, ptr @nfp_port_get_fecparam, ptr @nfp_port_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s %s %s %s\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%hu.%hu\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nfp_net_et_stats = internal constant { [26 x %struct.nfp_et_stat], [248 x i8] } { [26 x %struct.nfp_et_stat] [%struct.nfp_et_stat { [32 x i8] c"dev_rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3328 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3336 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3344 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_uc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3352 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_mc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3360 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_bc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3368 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3376 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_mc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3384 }, %struct.nfp_et_stat { [32 x i8] c"dev_rx_bc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3392 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3400 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3408 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3416 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_uc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3424 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_mc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3432 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_bc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3440 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3448 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_mc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3456 }, %struct.nfp_et_stat { [32 x i8] c"dev_tx_bc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3464 }, %struct.nfp_et_stat { [32 x i8] c"bpf_pass_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3472 }, %struct.nfp_et_stat { [32 x i8] c"bpf_pass_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3480 }, %struct.nfp_et_stat { [32 x i8] c"bpf_app1_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3488 }, %struct.nfp_et_stat { [32 x i8] c"bpf_app1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3496 }, %struct.nfp_et_stat { [32 x i8] c"bpf_app2_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3504 }, %struct.nfp_et_stat { [32 x i8] c"bpf_app2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3512 }, %struct.nfp_et_stat { [32 x i8] c"bpf_app3_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3520 }, %struct.nfp_et_stat { [32 x i8] c"bpf_app3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3528 }], [248 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxq_%u_pkts\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxq_%u_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txq_%u_pkts\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txq_%u_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mac.%s\00", [25 x i8] zeroinitializer }, align 32
@nfp_mac_et_stats = internal constant { [59 x %struct.nfp_et_stat], [532 x i8] } { [59 x %struct.nfp_et_stat] [%struct.nfp_et_stat { [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.nfp_et_stat { [32 x i8] c"rx_frame_too_long_errors\00\00\00\00\00\00\00\00", i32 16 }, %struct.nfp_et_stat { [32 x i8] c"rx_range_length_errors\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.nfp_et_stat { [32 x i8] c"rx_vlan_received_ok\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.nfp_et_stat { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.nfp_et_stat { [32 x i8] c"rx_broadcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.nfp_et_stat { [32 x i8] c"rx_drop_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.nfp_et_stat { [32 x i8] c"rx_alignment_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_mac_ctrl_frames\00\00\00\00\00\00\00\00", i32 72 }, %struct.nfp_et_stat { [32 x i8] c"rx_frames_received_ok\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.nfp_et_stat { [32 x i8] c"rx_frame_check_sequence_errors\00\00", i32 88 }, %struct.nfp_et_stat { [32 x i8] c"rx_unicast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.nfp_et_stat { [32 x i8] c"rx_multicast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.nfp_et_stat { [32 x i8] c"rx_undersize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_65_to_127_octets\00\00\00\00\00\00\00\00", i32 136 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_128_to_255_octets\00\00\00\00\00\00\00", i32 192 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_256_to_511_octets\00\00\00\00\00\00\00", i32 200 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_512_to_1023_octets\00\00\00\00\00\00", i32 144 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_1024_to_1518_octets\00\00\00\00\00", i32 152 }, %struct.nfp_et_stat { [32 x i8] c"rx_pkts_1519_to_max_octets\00\00\00\00\00\00", i32 208 }, %struct.nfp_et_stat { [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160 }, %struct.nfp_et_stat { [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 168 }, %struct.nfp_et_stat { [32 x i8] c"rx_oversize_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 216 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class0\00\00\00\00\00\00\00\00\00\00", i32 224 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class1\00\00\00\00\00\00\00\00\00\00", i32 232 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class2\00\00\00\00\00\00\00\00\00\00", i32 176 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class3\00\00\00\00\00\00\00\00\00\00", i32 184 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class4\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class5\00\00\00\00\00\00\00\00\00\00", i32 248 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class6\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.nfp_et_stat { [32 x i8] c"rx_pause_frames_class7\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.nfp_et_stat { [32 x i8] c"rx_mac_ctrl_frames_received\00\00\00\00\00", i32 272 }, %struct.nfp_et_stat { [32 x i8] c"rx_mac_head_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 280 }, %struct.nfp_et_stat { [32 x i8] c"tx_queue_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 312 }, %struct.nfp_et_stat { [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 320 }, %struct.nfp_et_stat { [32 x i8] c"tx_vlan_transmitted_ok\00\00\00\00\00\00\00\00\00\00", i32 336 }, %struct.nfp_et_stat { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 344 }, %struct.nfp_et_stat { [32 x i8] c"tx_broadcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 352 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_mac_ctrl_frames\00\00\00\00\00\00\00\00", i32 384 }, %struct.nfp_et_stat { [32 x i8] c"tx_frames_transmitted_ok\00\00\00\00\00\00\00\00", i32 392 }, %struct.nfp_et_stat { [32 x i8] c"tx_unicast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 400 }, %struct.nfp_et_stat { [32 x i8] c"tx_multicast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 408 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 360 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_65_to_127_octets\00\00\00\00\00\00\00\00", i32 416 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_128_to_255_octets\00\00\00\00\00\00\00", i32 424 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_256_to_511_octets\00\00\00\00\00\00\00", i32 368 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_512_to_1023_octets\00\00\00\00\00\00", i32 376 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_1024_to_1518_octets\00\00\00\00\00", i32 432 }, %struct.nfp_et_stat { [32 x i8] c"tx_pkts_1519_to_max_octets\00\00\00\00\00\00", i32 440 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class0\00\00\00\00\00\00\00\00\00\00", i32 448 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class1\00\00\00\00\00\00\00\00\00\00", i32 456 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class2\00\00\00\00\00\00\00\00\00\00", i32 480 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class3\00\00\00\00\00\00\00\00\00\00", i32 488 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class4\00\00\00\00\00\00\00\00\00\00", i32 464 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class5\00\00\00\00\00\00\00\00\00\00", i32 472 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class6\00\00\00\00\00\00\00\00\00\00", i32 496 }, %struct.nfp_et_stat { [32 x i8] c"tx_pause_frames_class7\00\00\00\00\00\00\00\00\00\00", i32 504 }], [532 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arm.diag\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to access the NSP: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"reading module EEPROM not supported. Please update flash\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported module 0x%x detected\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Incomplete read from module EEPROM: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Reading from module EEPROM failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_net_get_link_ksettings.ls_to_ethtool = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 -1, i32 1000, i32 10000, i32 25000, i32 40000, i32 50000, i32 100000], [32 x i8] zeroinitializer }, align 32
@nfp_net_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@.str.15 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Changing settings not allowed on an active interface. It may cause the port to be disabled until driver reload.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Change ring size: RxQ %u->%u, TxQ %u->%u\0A\00", [54 x i8] zeroinitializer }, align 32
@nfp_net_set_ringparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 434, ptr @.str.17, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ctrl: Change ring size: RxQ %u->%u, TxQ %u->%u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_net_set_ringparam\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_net_set_ringparam._entry_ptr = internal global ptr @nfp_net_set_ringparam._entry, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rvec_%u_rx_pkts\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rvec_%u_tx_pkts\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rvec_%u_tx_busy\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_rx_csum_ok\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hw_rx_csum_inner_ok\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hw_rx_csum_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw_rx_csum_err\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_replace_buf_alloc_fail\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_tls_decrypted_packets\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_tx_csum\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw_tx_inner_csum\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_gather\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_lso\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_tls_encrypted_packets\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_tls_ooo\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_tls_drop_no_sync_data\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hw_tls_no_space\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_tls_resync_req_ok\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_tls_resync_req_ign\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_tls_resync_sent\00", [45 x i8] zeroinitializer }, align 32
@nfp_tlv_stat_names = internal constant { [19 x [32 x i8]], [128 x i8] } { [19 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"dev_rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_uc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_mc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_bc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_mc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_rx_bc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_uc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_mc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_bc_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_mc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"dev_tx_bc_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [128 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dev_unknown_stat%u\00", [45 x i8] zeroinitializer }, align 32
@ethtool_flow_to_nfp_flag.xlate_ethtool_to_nfp = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 1024, i32 2048, i32 0, i32 0, i32 4096, i32 8192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i32 512], [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Changed RSS config to 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@nfp_net_set_rss_hash_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.21, i32 977, ptr @.str.17, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ctrl: Changed RSS config to 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nfp_net_set_rss_hash_opt\00", [39 x i8] zeroinitializer }, align 32
@nfp_net_set_rss_hash_opt._entry_ptr = internal global ptr @nfp_net_set_rss_hash_opt._entry, section ".printk_index", align 4
@switch.table.nfp_port_set_fecparam = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 28, i64 40, i64 112]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 41, i64 45]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"nfp_port_ethtool_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1491, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"nfp_net_ethtool_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1457, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 235, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 209, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 192, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_app.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 278, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"nfp_net_et_stats\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 36, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 558, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 559, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 560, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 561, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 665, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"nfp_mac_et_stats\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 71, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1120, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1234, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1239, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1281, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1324, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1329, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"ls_to_ethtool\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 273, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 350, i32 23 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 219, i32 47 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 433, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 453, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 454, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 455, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 458, i32 25 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 459, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 460, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 461, i32 25 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 462, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 463, i32 25 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 464, i32 25 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 465, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 466, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 467, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 468, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 469, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 470, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 472, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 473, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 474, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 475, i32 25 }
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"nfp_tlv_stat_names\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 151, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 609, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [21 x i8] c"xlate_ethtool_to_nfp\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 877, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [56 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 977, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [35 x i8] c"switch.table.nfp_port_set_fecparam\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @nfp_net_set_ringparam._entry, ptr @nfp_net_set_ringparam._entry_ptr, ptr @nfp_net_set_rss_hash_opt._entry, ptr @nfp_net_set_rss_hash_opt._entry_ptr, ptr @nfp_port_ethtool_ops, ptr @nfp_net_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nfp_net_et_stats, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nfp_mac_et_stats, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nfp_net_get_link_ksettings.ls_to_ethtool, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @nfp_tlv_stat_names, ptr @.str.43, ptr @ethtool_flow_to_nfp_flag.xlate_ethtool_to_nfp, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @switch.table.nfp_port_set_fecparam], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_port_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_et_stats to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_mac_et_stats to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_get_link_ksettings.ls_to_ethtool to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_set_ringparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_tlv_stat_names to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_flow_to_nfp_flag.xlate_ethtool_to_nfp to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_set_rss_hash_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_port_set_fecparam to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_app_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call2 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call fastcc void @nfp_get_drvinfo(ptr noundef %call, ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %drvinfo)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_port_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %data.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %type.i = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc ptr @nfp_vnic_get_hw_stats_strings(ptr noundef %data, i32 noundef 0, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %4 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data.addr.i, align 4
  %call.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.else.nfp_mac_get_stats_strings.exit_crit_edge, label %lor.lhs.false.i

if.else.nfp_mac_get_stats_strings.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_strings.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %5 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eth_stats.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nfp_mac_get_stats_strings.exit_crit_edge, label %lor.lhs.false.i.for.body.i_crit_edge

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

lor.lhs.false.i.nfp_mac_get_stats_strings.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_strings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [59 x %struct.nfp_et_stat], ptr @nfp_mac_et_stats, i32 0, i32 %i.07.i
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.8, ptr noundef %arrayidx.i) #13
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 59
  br i1 %exitcond.not.i, label %for.body.i.nfp_mac_get_stats_strings.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.nfp_mac_get_stats_strings.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_strings.exit

nfp_mac_get_stats_strings.exit:                   ; preds = %for.body.i.nfp_mac_get_stats_strings.exit_crit_edge, %lor.lhs.false.i.nfp_mac_get_stats_strings.exit_crit_edge, %if.else.nfp_mac_get_stats_strings.exit_crit_edge
  %7 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %retval.0.i = load ptr, ptr %data.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  br label %if.end

if.end:                                           ; preds = %nfp_mac_get_stats_strings.exit, %if.then
  %data.addr.0 = phi ptr [ %call2, %if.then ], [ %retval.0.i, %nfp_mac_get_stats_strings.exit ]
  %call4 = call ptr @nfp_app_port_get_stats_strings(ptr noundef %call, ptr noundef %data.addr.0) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_port_get_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %type.i = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vnic = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 6, i32 0, i32 4
  %4 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vnic, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.049.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.048.i = phi ptr [ %data, %if.then ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %off.i = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %i.049.i, i32 1
  %6 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %10 = zext i32 %8 to i64
  %11 = zext i32 %9 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #13
  %incdec.ptr.i = getelementptr i64, ptr %data.addr.048.i, i32 1
  %15 = ptrtoint ptr %data.addr.048.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %data.addr.048.i, align 8
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %lor.lhs.false.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.else
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %16 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eth_stats.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.for.body.i16_crit_edge

lor.lhs.false.i.for.body.i16_crit_edge:           ; preds = %lor.lhs.false.i
  br label %for.body.i16

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %lor.lhs.false.i.for.body.i16_crit_edge
  %i.013.i = phi i32 [ %inc.i14, %for.body.i16.for.body.i16_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i16_crit_edge ]
  %data.addr.012.i = phi ptr [ %incdec.ptr.i13, %for.body.i16.for.body.i16_crit_edge ], [ %data, %lor.lhs.false.i.for.body.i16_crit_edge ]
  %18 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eth_stats.i, align 4
  %off.i10 = getelementptr [59 x %struct.nfp_et_stat], ptr @nfp_mac_et_stats, i32 0, i32 %i.013.i, i32 1
  %20 = ptrtoint ptr %off.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %off.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 %21
  %add.ptr.i.i12 = getelementptr i32, ptr %add.ptr.i11, i32 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %24 = zext i32 %22 to i64
  %25 = zext i32 %23 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #13
  %incdec.ptr.i13 = getelementptr i64, ptr %data.addr.012.i, i32 1
  %29 = ptrtoint ptr %data.addr.012.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %data.addr.012.i, align 8
  %inc.i14 = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, 59
  br i1 %exitcond.not.i15, label %for.body.i16.if.end_crit_edge, label %for.body.i16.for.body.i16_crit_edge

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i16

for.body.i16.if.end_crit_edge:                    ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %for.body.i16.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.else.if.end_crit_edge, %for.body.i.if.end_crit_edge
  %data.addr.0 = phi ptr [ %data, %lor.lhs.false.i.if.end_crit_edge ], [ %data, %if.else.if.end_crit_edge ], [ %incdec.ptr.i, %for.body.i.if.end_crit_edge ], [ %incdec.ptr.i13, %for.body.i16.if.end_crit_edge ]
  %call4 = tail call ptr @nfp_app_port_get_stats(ptr noundef %call, ptr noundef %data.addr.0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_port_get_sset_count(ptr noundef %netdev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type.i = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %sw.bb.if.end_crit_edge, label %if.else

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %call.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %lor.lhs.false.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %4 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth_stats.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 59
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i, %if.else.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %count.0 = phi i32 [ 26, %sw.bb.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call4 = tail call i32 @nfp_app_port_get_stats_count(ptr noundef %call) #13
  %add = add i32 %call4, %count.0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_app_get_dump_flag(ptr noundef %netdev, ptr nocapture noundef writeonly %dump) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dump_flag = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dump_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dump_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.i, label %if.end3

if.end.i:                                         ; preds = %if.end
  %version.i = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %version.i, align 4
  %flag.i = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %5 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flag.i, align 4
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp.i, align 4
  %call.i = tail call ptr @nfp_resource_acquire(ptr noundef %7, ptr noundef nonnull @.str.9) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i = tail call i64 @nfp_resource_size(ptr noundef %call.i) #13
  %conv25.i = trunc i64 %call24.i to i32
  %len26.i = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %9 = ptrtoint ptr %len26.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv25.i, ptr %len26.i, align 4
  tail call void @nfp_resource_release(ptr noundef %call.i) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %flag, align 4
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pf, align 4
  %dump_len = getelementptr inbounds %struct.nfp_pf, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dump_len, align 4
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end4.i, %if.then2.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ %8, %if.then2.i ], [ 0, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_app_get_dump_data(ptr noundef %netdev, ptr noundef %dump, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dump_flag = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dump_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dump_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @nfp_dump_nsp_diag(ptr noundef nonnull %call, ptr noundef %dump, ptr noundef %buffer)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flag, align 4
  %5 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pf, align 4
  %dump_len = getelementptr inbounds %struct.nfp_pf, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dump_len, align 4
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %len, align 4
  %10 = load ptr, ptr %pf, align 4
  %dumpspec = getelementptr inbounds %struct.nfp_pf, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %dumpspec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dumpspec, align 4
  %call9 = tail call i32 @nfp_net_dump_populate_buffer(ptr noundef %10, ptr noundef %12, ptr noundef %dump, ptr noundef %buffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call9, %if.end3 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_app_set_dump(ptr noundef %netdev, ptr nocapture noundef readonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %val, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf, align 4
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dump_flag = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %dump_flag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dump_flag, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dumpspec = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %dumpspec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dumpspec, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call12 = tail call i64 @nfp_net_dump_calculate_size(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12)
  %cmp13 = icmp slt i64 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %call12 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flag, align 4
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf, align 4
  %dump_flag18 = getelementptr inbounds %struct.nfp_pf, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %dump_flag18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %dump_flag18, align 4
  %conv19 = trunc i64 %call12 to i32
  %12 = load ptr, ptr %pf, align 4
  %dump_len = getelementptr inbounds %struct.nfp_pf, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %dump_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv19, ptr %dump_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end3.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %conv, %if.then14 ], [ 0, %if.end15 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_port_get_module_info(ptr noundef %netdev, ptr nocapture noundef writeonly %modinfo) #0 align 64 {
entry:
  %read_len = alloca i32, align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_len) #13
  %0 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_len, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #13
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %data, align 1, !annotation !117
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1 = tail call ptr @nfp_port_get_eth_port(ptr noundef %call) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call2 = tail call ptr @nfp_nsp_open(ptr noundef %5) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %6) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call2) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %call.i)
  %cmp.i68 = icmp ugt i16 %call.i, 28
  br i1 %cmp.i68, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.11) #16
  br label %exit_close_nsp

if.end9:                                          ; preds = %if.end6
  %interface = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 6
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 1, label %if.end9.sw.bb_crit_edge
    i32 28, label %if.end9.sw.bb_crit_edge69
    i32 40, label %sw.bb18
    i32 112, label %sw.bb33
  ]

if.end9.sw.bb_crit_edge69:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge69
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call1, align 4
  %call10 = call i32 @nfp_nsp_read_module_eeprom(ptr noundef %call2, i32 noundef %11, i32 noundef 94, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %read_len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %sw.bb.exit_close_nsp_crit_edge, label %if.end12

sw.bb.exit_close_nsp_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_close_nsp

if.end12:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %15 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %eeprom_len, align 4
  br label %exit_close_nsp

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %type, align 4
  %eeprom_len16 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %17 = ptrtoint ptr %eeprom_len16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %eeprom_len16, align 4
  br label %exit_close_nsp

sw.bb18:                                          ; preds = %if.end9
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call1, align 4
  %call20 = call i32 @nfp_nsp_read_module_eeprom(ptr noundef %call2, i32 noundef %19, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %read_len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %sw.bb18.exit_close_nsp_crit_edge, label %if.end23

sw.bb18.exit_close_nsp_crit_edge:                 ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_close_nsp

if.end23:                                         ; preds = %sw.bb18
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp24 = icmp ult i8 %21, 3
  %type27 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %type27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %type27, align 4
  %eeprom_len28 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %23 = ptrtoint ptr %eeprom_len28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %eeprom_len28, align 4
  br label %exit_close_nsp

if.else29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %type27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %type27, align 4
  %eeprom_len31 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %25 = ptrtoint ptr %eeprom_len31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %eeprom_len31, align 4
  br label %exit_close_nsp

sw.bb33:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %type34 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %26 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %type34, align 4
  %eeprom_len35 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %27 = ptrtoint ptr %eeprom_len35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %eeprom_len35, align 4
  br label %exit_close_nsp

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12, i32 noundef %8) #16
  br label %exit_close_nsp

exit_close_nsp:                                   ; preds = %sw.default, %sw.bb33, %if.else29, %if.then26, %sw.bb18.exit_close_nsp_crit_edge, %if.else, %if.then14, %sw.bb.exit_close_nsp_crit_edge, %if.then8
  %err.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb33 ], [ %call20, %sw.bb18.exit_close_nsp_crit_edge ], [ %call20, %if.then26 ], [ %call20, %if.else29 ], [ %call10, %sw.bb.exit_close_nsp_crit_edge ], [ %call10, %if.else ], [ %call10, %if.then14 ], [ -95, %if.then8 ]
  call void @nfp_nsp_close(ptr noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %exit_close_nsp, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then4 ], [ %err.0, %exit_close_nsp ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_len) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_port_get_module_eeprom(ptr noundef %netdev, ptr noundef %eeprom, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1 = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call2 = tail call ptr @nfp_nsp_open(ptr noundef %3) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %4) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call2) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %call.i)
  %cmp.i39 = icmp ugt i16 %call.i, 28
  br i1 %cmp.i39, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.11) #16
  br label %exit_close_nsp

if.end9:                                          ; preds = %if.end6
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call11 = tail call i32 @nfp_nsp_read_module_eeprom(ptr noundef %call2, i32 noundef %6, i32 noundef %8, ptr noundef %data, i32 noundef %10, ptr noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end9.exit_close_nsp_crit_edge

if.end9.exit_close_nsp_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_close_nsp

if.then12:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.13, i32 noundef %call11) #16
  br label %exit_close_nsp

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.14, i32 noundef %call11) #16
  br label %exit_close_nsp

exit_close_nsp:                                   ; preds = %if.else, %if.then15, %if.end9.exit_close_nsp_crit_edge, %if.then8
  %err.0 = phi i32 [ 0, %if.then15 ], [ %call11, %if.else ], [ %call11, %if.end9.exit_close_nsp_crit_edge ], [ -95, %if.then8 ]
  tail call void @nfp_nsp_close(ptr noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %exit_close_nsp, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %err.0, %exit_close_nsp ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_get_link_ksettings(ptr noundef %netdev, ptr nocapture noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_modes, align 4
  %or.i82 = or i32 %1, 9216
  store i32 %or.i82, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %advertising, align 4
  %or.i83 = or i32 %3, 8192
  store i32 %or.i83, ptr %advertising, align 4
  %port6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %port6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %port6, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %duplex, align 4
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call9 = tail call ptr @nfp_port_get_eth_port(ptr noundef %call) #13
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  %aneg = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call9, i32 0, i32 9
  %7 = ptrtoint ptr %aneg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.not = icmp ne i32 %8, 4
  %conv = zext i1 %cmp.not to i8
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %autoneg, align 1
  %add.ptr.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %11, 131072
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %fec_modes_supported.i.i = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call9, i32 0, i32 20
  %12 = ptrtoint ptr %fec_modes_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fec_modes_supported.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.then.cleanup.sink.split.i_crit_edge, label %if.end.i

if.then.cleanup.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then4.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i32.i = or i32 %11, 655360
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i32.i, ptr %add.ptr.i.i, align 4
  %add.ptr.i33.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %add.ptr.i33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i33.i, align 4
  %or.i34.i = or i32 %16, 524288
  store i32 %or.i34.i, ptr %add.ptr.i33.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then4.i, %if.end.i.if.end11.i_crit_edge
  %and12.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end_crit_edge, label %if.then14.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %or.i36.i = or i32 %18, 262144
  store i32 %or.i36.i, ptr %add.ptr.i.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then14.i, %if.then.cleanup.sink.split.i_crit_edge
  %.sink40.i = phi i32 [ 262144, %if.then14.i ], [ 131072, %if.then.cleanup.sink.split.i_crit_edge ]
  %add.ptr.i29.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i29.i, align 4
  %or.i38.i = or i32 %20, %.sink40.i
  store i32 %or.i38.i, ptr %add.ptr.i29.i, align 4
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.end11.i.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i84 = icmp eq i32 %23, 0
  br i1 %tobool.not.i84, label %if.then15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %state.i86 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %24 = ptrtoint ptr %state.i86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i86, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i8487 = icmp eq i32 %26, 0
  br i1 %tobool.not.i8487, label %if.end23, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %port_type = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call9, i32 0, i32 17
  %27 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port_type, align 4
  %29 = ptrtoint ptr %port6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %port6, align 1
  %speed18 = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call9, i32 0, i32 5
  %30 = ptrtoint ptr %speed18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed18, align 4
  %32 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %speed, align 4
  %33 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %duplex, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end.thread
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %34 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %35, @nfp_net_netdev_ops
  br i1 %cmp.i, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %ctrl_bar.i = getelementptr i8, ptr %netdev, i32 2340
  %36 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %37, i32 52
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #13, !srcloc !114
  %39 = lshr i32 %38, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %shr = and i32 %39, 15
  %40 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %shr, label %lor.lhs.false [
    i32 0, label %if.end26.cleanup_crit_edge
    i32 1, label %if.end26.if.then49_crit_edge
  ]

if.end26.if.then49_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp47 = icmp ugt i32 %shr, 7
  br i1 %cmp47, label %lor.lhs.false.if.then49_crit_edge, label %if.end50

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %if.end26.if.then49_crit_edge
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [8 x i32], ptr @nfp_net_get_link_ksettings.ls_to_ethtool, i32 0, i32 %shr
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %speed, align 4
  %44 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then49, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then15, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then49 ], [ 0, %if.end50 ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %if.end23.cleanup_crit_edge ], [ -95, %if.end26.cleanup_crit_edge ], [ 0, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_set_link_ksettings(ptr noundef %netdev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1 = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %if.end

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.15) #16
  br label %cleanup32

if.end4:                                          ; preds = %if.end
  %app = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %index = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call5 = tail call ptr @nfp_eth_config_start(ptr noundef %5, i32 noundef %7) #13
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup32

if.end9:                                          ; preds = %if.end4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  %cond = select i1 %cmp, i32 0, i32 4
  %call11 = tail call i32 @__nfp_eth_set_aneg(ptr noundef %call5, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.err_bad_set_crit_edge

if.end9.err_bad_set_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_bad_set

if.end14:                                         ; preds = %if.end9
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp16.not = icmp eq i32 %12, -1
  br i1 %cmp16.not, label %if.end14.if.end26_crit_edge, label %if.then18

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then18:                                        ; preds = %if.end14
  %lanes = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 4
  %13 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lanes, align 4
  %div = udiv i32 %12, %14
  %call22 = tail call i32 @__nfp_eth_set_speed(ptr noundef %call5, i32 noundef %div) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then18.if.end26_crit_edge, label %if.then18.err_bad_set_crit_edge

if.then18.err_bad_set_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_bad_set

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %if.then18.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %call27 = tail call i32 @nfp_eth_config_commit_end(ptr noundef %call5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp sgt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup32_crit_edge, label %if.end31

if.end26.cleanup32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nfp_net_refresh_port_table(ptr noundef %call) #13
  br label %cleanup32

err_bad_set:                                      ; preds = %if.then18.err_bad_set_crit_edge, %if.end9.err_bad_set_crit_edge
  %err.0 = phi i32 [ %call11, %if.end9.err_bad_set_crit_edge ], [ %call22, %if.then18.err_bad_set_crit_edge ]
  tail call void @nfp_eth_config_cleanup_end(ptr noundef %call5) #13
  br label %cleanup32

cleanup32:                                        ; preds = %err_bad_set, %if.end31, %if.end26.cleanup32_crit_edge, %if.then7, %if.then3, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ -16, %if.then3 ], [ %8, %if.then7 ], [ %err.0, %err_bad_set ], [ %call27, %if.end31 ], [ -95, %entry.cleanup32_crit_edge ], [ 0, %if.end26.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_port_get_fecparam(ptr noundef %netdev, ptr nocapture noundef writeonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %active_fec, align 4
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %param, i32 0, i32 2
  %1 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %fec, align 4
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1 = tail call ptr @nfp_port_get_eth_port(ptr noundef %call) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fec_modes_supported.i = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 20
  %2 = ptrtoint ptr %fec_modes_supported.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fec_modes_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and.i = shl i32 %3, 1
  %4 = and i32 %and.i, 2
  %and1.i = shl i32 %3, 3
  %5 = and i32 %and1.i, 16
  %6 = or i32 %5, %4
  %7 = and i32 %and.i, 8
  %8 = or i32 %6, %7
  %and11.i = lshr i32 %3, 1
  %9 = and i32 %and11.i, 4
  %10 = or i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not.i = icmp eq i32 %10, 0
  %..i = select i1 %tobool16.not.i, i32 1, i32 %10
  %11 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %..i, ptr %fec, align 4
  %fec7 = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 8
  %12 = ptrtoint ptr %fec7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fec7, align 4
  %and.i17 = shl i32 %13, 1
  %14 = and i32 %and.i17, 2
  %and1.i18 = shl i32 %13, 3
  %15 = and i32 %and1.i18, 16
  %16 = or i32 %15, %14
  %17 = and i32 %and.i17, 8
  %18 = or i32 %16, %17
  %and11.i19 = lshr i32 %13, 1
  %19 = and i32 %and11.i19, 4
  %20 = or i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not.i20 = icmp eq i32 %20, 0
  %..i21 = select i1 %tobool16.not.i20, i32 1, i32 %20
  %21 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %..i21, ptr %active_fec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_port_set_fecparam(ptr noundef %netdev, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1 = tail call ptr @nfp_port_get_eth_port(ptr noundef %call) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fec_modes_supported.i = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 20
  %0 = ptrtoint ptr %fec_modes_supported.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fec_modes_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fec5 = getelementptr inbounds %struct.ethtool_fecparam, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %fec5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fec5, align 4
  %4 = add i32 %3, -2
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %switch.hole_check, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.hole_check:                                ; preds = %if.end4
  %switch.maskindex = trunc i32 %5 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.nfp_port_set_fecparam, i32 0, i32 %5
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %app = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpp, align 4
  %index = getelementptr inbounds %struct.nfp_eth_table_port, ptr %call1, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %call9 = tail call i32 @nfp_eth_set_fec(ptr noundef %12, i32 noundef %14, i32 noundef %switch.load) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %switch.lookup.if.end12_crit_edge

switch.lookup.if.end12_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nfp_net_refresh_port_table(ptr noundef %call) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %switch.lookup.if.end12_crit_edge
  %15 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %switch.hole_check.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end12 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ -95, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfp_net_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nfp_net_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_from_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_get_drvinfo(ptr noundef %app, ptr noundef %pdev, ptr noundef %vnic_version, ptr noundef %drvinfo) unnamed_addr #0 align 64 {
entry:
  %nsp_version = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nsp_version) #13
  %0 = call ptr @memset(ptr %nsp_version, i32 0, i32 32)
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #13
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %call, i32 noundef 32) #13
  %tobool.not.i = icmp eq ptr %app, null
  br i1 %tobool.not.i, label %nfp_net_get_nspinfo.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %1 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpp.i, align 4
  %call.i = tail call ptr @nfp_nsp_open(ptr noundef %2) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end.i12_crit_edge, label %if.end3.i

if.end.i.if.end.i12_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i12

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_major(ptr noundef %call.i) #13
  %conv.i = zext i16 %call4.i to i32
  %call5.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call.i) #13
  %conv6.i = zext i16 %call5.i to i32
  %call7.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %nsp_version, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %conv.i, i32 noundef %conv6.i) #13
  tail call void @nfp_nsp_close(ptr noundef %call.i) #13
  br label %if.end.i12

nfp_net_get_nspinfo.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call ptr @nfp_app_mip_name(ptr noundef null) #13
  br label %nfp_app_name.exit

if.end.i12:                                       ; preds = %if.end3.i, %if.end.i.if.end.i12_crit_edge
  %call514 = tail call ptr @nfp_app_mip_name(ptr noundef nonnull %app) #13
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.i, align 4
  %name.i = getelementptr inbounds %struct.nfp_app_type, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  br label %nfp_app_name.exit

nfp_app_name.exit:                                ; preds = %if.end.i12, %nfp_net_get_nspinfo.exit
  %call518 = phi ptr [ %call514, %if.end.i12 ], [ %call5, %nfp_net_get_nspinfo.exit ]
  %retval.0.i = phi ptr [ %6, %if.end.i12 ], [ @.str.3, %nfp_net_get_nspinfo.exit ]
  %fw_version16 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version16, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %vnic_version, ptr noundef nonnull %nsp_version, ptr noundef %call518, ptr noundef %retval.0.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nsp_version) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_mip_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_major(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfp_vnic_get_hw_stats_strings(ptr noundef %data, i32 noundef %num_vecs, i1 noundef zeroext %repr) unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  %mul = select i1 %repr, i32 9, i32 0
  %arrayidx = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %mul
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx) #13
  %add.1 = add nuw nsw i32 %mul, 1
  %arrayidx.1 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.1
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.1) #13
  %add.2 = or i32 %mul, 2
  %arrayidx.2 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.2
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.2) #13
  %add.3 = add nuw nsw i32 %mul, 3
  %arrayidx.3 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.3
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.3) #13
  %add.4 = or i32 %mul, 4
  %arrayidx.4 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.4
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.4) #13
  %add.5 = add nuw nsw i32 %mul, 5
  %arrayidx.5 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.5
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.5) #13
  %add.6 = or i32 %mul, 6
  %arrayidx.6 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.6
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.6) #13
  %add.7 = add nuw nsw i32 %mul, 7
  %arrayidx.7 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.7) #13
  %add.8 = add nuw nsw i32 %mul, 8
  %arrayidx.8 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %add.8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx.8) #13
  %sub = sub nuw nsw i32 9, %mul
  %arrayidx6 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6) #13
  %sub.1 = sub nuw nsw i32 10, %mul
  %arrayidx6.1 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.1
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.1) #13
  %sub.2 = sub nuw nsw i32 11, %mul
  %arrayidx6.2 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.2
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.2) #13
  %sub.3 = sub nuw nsw i32 12, %mul
  %arrayidx6.3 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.3
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.3) #13
  %sub.4 = sub nuw nsw i32 13, %mul
  %arrayidx6.4 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.4
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.4) #13
  %sub.5 = sub nuw nsw i32 14, %mul
  %arrayidx6.5 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.5
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.5) #13
  %sub.6 = xor i32 %mul, 15
  %arrayidx6.6 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.6
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.6) #13
  %sub.7 = sub nuw nsw i32 16, %mul
  %arrayidx6.7 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.7
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.7) #13
  %sub.8 = sub nuw nsw i32 17, %mul
  %arrayidx6.8 = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %sub.8
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef %arrayidx6.8) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 18)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 19)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 20)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 21)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 22)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 23)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 24)) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef getelementptr inbounds ([26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 25)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vecs)
  %cmp2347.not = icmp eq i32 %num_vecs, 0
  br i1 %cmp2347.not, label %entry.for.end28_crit_edge, label %entry.for.body25_crit_edge

entry.for.body25_crit_edge:                       ; preds = %entry
  br label %for.body25

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end28

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %entry.for.body25_crit_edge
  %i.348 = phi i32 [ %inc27, %for.body25.for.body25_crit_edge ], [ 0, %entry.for.body25_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.4, i32 noundef %i.348) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.5, i32 noundef %i.348) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.6, i32 noundef %i.348) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.7, i32 noundef %i.348) #13
  %inc27 = add nuw i32 %i.348, 1
  %exitcond.not = icmp eq i32 %inc27, %num_vecs
  br i1 %exitcond.not, label %for.body25.for.end28_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25

for.body25.for.end28_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end28

for.end28:                                        ; preds = %for.body25.for.end28_crit_edge, %entry.for.end28_crit_edge
  %1 = ptrtoint ptr %data.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.addr, align 4
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_port_get_stats_strings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_port_get_eth_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfp_vnic_get_hw_stats(ptr noundef writeonly %data, ptr noundef %mem, i32 noundef %num_vecs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vecs)
  %cmp250.not = icmp eq i32 %num_vecs, 0
  br i1 %cmp250.not, label %for.cond1.preheader.for.end26_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.end26_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.049 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.048 = phi ptr [ %data, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %off = getelementptr [26 x %struct.nfp_et_stat], ptr @nfp_net_et_stats, i32 0, i32 %i.049, i32 1
  %0 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %off, align 4
  %add.ptr = getelementptr i8, ptr %mem, i32 %1
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %4 = zext i32 %2 to i64
  %5 = zext i32 %3 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #13
  %incdec.ptr = getelementptr i64, ptr %data.addr.048, i32 1
  %9 = ptrtoint ptr %data.addr.048 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %data.addr.048, align 8
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.152 = phi i32 [ %inc25, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %data.addr.151 = phi ptr [ %incdec.ptr23, %for.body3.for.body3_crit_edge ], [ %incdec.ptr, %for.cond1.preheader.for.body3_crit_edge ]
  %mul = shl i32 %i.152, 4
  %add = add i32 %mul, 5120
  %add.ptr4 = getelementptr i8, ptr %mem, i32 %add
  %add.ptr.i44 = getelementptr i32, ptr %add.ptr4, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %12 = zext i32 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #13
  %incdec.ptr6 = getelementptr i64, ptr %data.addr.151, i32 1
  %17 = ptrtoint ptr %data.addr.151 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %data.addr.151, align 8
  %add.ptr10 = getelementptr i8, ptr %add.ptr4, i32 8
  %add.ptr.i45 = getelementptr i32, ptr %add.ptr10, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %20 = zext i32 %18 to i64
  %21 = zext i32 %19 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #13
  %incdec.ptr12 = getelementptr i64, ptr %data.addr.151, i32 2
  %25 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %incdec.ptr6, align 8
  %add14 = add i32 %mul, 4096
  %add.ptr15 = getelementptr i8, ptr %mem, i32 %add14
  %add.ptr.i46 = getelementptr i32, ptr %add.ptr15, i32 1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %28 = zext i32 %26 to i64
  %29 = zext i32 %27 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #13
  %incdec.ptr17 = getelementptr i64, ptr %data.addr.151, i32 3
  %33 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %incdec.ptr12, align 8
  %add.ptr21 = getelementptr i8, ptr %add.ptr15, i32 8
  %add.ptr.i47 = getelementptr i32, ptr %add.ptr21, i32 1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %36 = zext i32 %34 to i64
  %37 = zext i32 %35 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or i64 %38, %36
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #13
  %incdec.ptr23 = getelementptr i64, ptr %data.addr.151, i32 4
  %41 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %incdec.ptr17, align 8
  %inc25 = add nuw i32 %i.152, 1
  %exitcond53.not = icmp eq i32 %inc25, %num_vecs
  br i1 %exitcond53.not, label %for.body3.for.end26_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.body3.for.end26_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

for.end26:                                        ; preds = %for.body3.for.end26_crit_edge, %for.cond1.preheader.for.end26_crit_edge
  %data.addr.1.lcssa = phi ptr [ %incdec.ptr, %for.cond1.preheader.for.end26_crit_edge ], [ %incdec.ptr23, %for.body3.for.end26_crit_edge ]
  ret ptr %data.addr.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_port_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_port_get_stats_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_dump_nsp_diag(ptr noundef readonly %app, ptr nocapture noundef %dump, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %app, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flag, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_resource_acquire(ptr noundef %3, ptr noundef nonnull @.str.9) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %buffer, null
  br i1 %tobool5.not, label %if.else23, label %if.then6

if.then6:                                         ; preds = %if.end4
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %conv = zext i32 %6 to i64
  %call7 = tail call i64 @nfp_resource_size(ptr noundef %call) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %conv)
  %cmp.not = icmp eq i64 %call7, %conv
  br i1 %cmp.not, label %if.end10, label %if.then6.exit_release_crit_edge

if.then6.exit_release_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_release

if.end10:                                         ; preds = %if.then6
  %7 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpp, align 4
  %call12 = tail call i32 @nfp_resource_cpp_id(ptr noundef %call) #13
  %call13 = tail call i64 @nfp_resource_address(ptr noundef %call) #13
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call15 = tail call i32 @nfp_cpp_read(ptr noundef %8, i32 noundef %call12, i64 noundef %call13, ptr noundef nonnull %buffer, i32 noundef %10) #13
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %12)
  %cmp17.not = icmp eq i32 %call15, %12
  br i1 %cmp17.not, label %if.end10.exit_release_crit_edge, label %if.then19

if.end10.exit_release_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit_release

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp20 = icmp slt i32 %call15, 0
  %spec.select = select i1 %cmp20, i32 %call15, i32 -5
  br label %exit_release

if.else23:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i64 @nfp_resource_size(ptr noundef %call) #13
  %conv25 = trunc i64 %call24 to i32
  %len26 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %13 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv25, ptr %len26, align 4
  br label %exit_release

exit_release:                                     ; preds = %if.else23, %if.then19, %if.end10.exit_release_crit_edge, %if.then6.exit_release_crit_edge
  %ret.0 = phi i32 [ %spec.select, %if.then19 ], [ 0, %if.else23 ], [ -22, %if.then6.exit_release_crit_edge ], [ 0, %if.end10.exit_release_crit_edge ]
  tail call void @nfp_resource_release(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %exit_release, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %ret.0, %exit_release ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_resource_acquire(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_resource_cpp_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_resource_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_dump_populate_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_net_dump_calculate_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_get_eth_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_read_module_eeprom(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_eth_config_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_eth_set_aneg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_eth_set_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_eth_config_commit_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_refresh_port_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_eth_config_cleanup_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_eth_set_fec(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_net_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #0 align 64 {
entry:
  %vnic_version = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vnic_version) #13
  %0 = call ptr @memset(ptr %vnic_version, i32 0, i32 32)
  %fw_ver = getelementptr i8, ptr %netdev, i32 2372
  %resv = getelementptr i8, ptr %netdev, i32 2375
  %1 = ptrtoint ptr %resv to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %resv, align 1
  %conv = zext i8 %2 to i32
  %class = getelementptr i8, ptr %netdev, i32 2374
  %3 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %class, align 2
  %conv2 = zext i8 %4 to i32
  %major = getelementptr i8, ptr %netdev, i32 2373
  %5 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %major, align 1
  %conv4 = zext i8 %6 to i32
  %7 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_ver, align 4
  %conv6 = zext i8 %8 to i32
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vnic_version, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6)
  %pdev = getelementptr i8, ptr %netdev, i32 61176
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call10 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  %app = getelementptr i8, ptr %netdev, i32 61180
  %15 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %app, align 4
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  call fastcc void @nfp_get_drvinfo(ptr noundef %16, ptr noundef %18, ptr noundef nonnull %vnic_version, ptr noundef %drvinfo)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vnic_version) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_net_get_regs_len(ptr nocapture noundef readnone %netdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32768
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_net_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_bar.i = getelementptr i8, ptr %netdev, i32 2340
  %0 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #13, !srcloc !114
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !118
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %version, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_bar.i, align 4
  %mul = shl nuw nsw i32 %i.09, 2
  %add.ptr = getelementptr i8, ptr %6, i32 %mul
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !114
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  %arrayidx = getelementptr i32, ptr %p, i32 %i.09
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_net_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cap = getelementptr i8, ptr %netdev, i32 2380
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx_coalesce_adapt_on = getelementptr i8, ptr %netdev, i32 60852
  %2 = ptrtoint ptr %rx_coalesce_adapt_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_coalesce_adapt_on, align 4, !range !120
  %4 = zext i8 %3 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %5 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %use_adaptive_rx_coalesce, align 4
  %tx_coalesce_adapt_on = getelementptr i8, ptr %netdev, i32 60853
  %6 = ptrtoint ptr %tx_coalesce_adapt_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_coalesce_adapt_on, align 1, !range !120
  %8 = zext i8 %7 to i32
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %9 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %use_adaptive_tx_coalesce, align 4
  %rx_coalesce_usecs = getelementptr i8, ptr %netdev, i32 60856
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_coalesce_usecs, align 8
  %rx_coalesce_usecs4 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %12 = ptrtoint ptr %rx_coalesce_usecs4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_coalesce_usecs4, align 4
  %rx_coalesce_max_frames = getelementptr i8, ptr %netdev, i32 60860
  %13 = ptrtoint ptr %rx_coalesce_max_frames to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_coalesce_max_frames, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %15 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_max_coalesced_frames, align 4
  %tx_coalesce_usecs = getelementptr i8, ptr %netdev, i32 60864
  %16 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_coalesce_usecs, align 64
  %tx_coalesce_usecs5 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %18 = ptrtoint ptr %tx_coalesce_usecs5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_coalesce_usecs5, align 4
  %tx_coalesce_max_frames = getelementptr i8, ptr %netdev, i32 60868
  %19 = ptrtoint ptr %tx_coalesce_max_frames to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_coalesce_max_frames, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %21 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx_max_coalesced_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tlv_caps = getelementptr i8, ptr %netdev, i32 60884
  %0 = ptrtoint ptr %tlv_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tlv_caps, align 4
  %div60 = lshr i32 %1, 4
  %cap = getelementptr i8, ptr %netdev, i32 2380
  %2 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end9_crit_edge

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true6.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %mul = mul i32 %5, %div60
  %rx_max_coalesced_frames11 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %12 = ptrtoint ptr %rx_max_coalesced_frames11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_max_coalesced_frames11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul)
  %cmp.i = icmp ult i32 %mul, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %13)
  %cmp1.i = icmp ult i32 %13, 65535
  %not.or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %not.or.cond.i, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %mul17 = mul i32 %9, %div60
  %tx_max_coalesced_frames18 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %14 = ptrtoint ptr %tx_max_coalesced_frames18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_max_coalesced_frames18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul17)
  %cmp.i61 = icmp ult i32 %mul17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %15)
  %cmp1.i62 = icmp ult i32 %15, 65535
  %not.or.cond.i63 = and i1 %cmp.i61, %cmp1.i62
  br i1 %not.or.cond.i63, label %if.end22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %16 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23 = icmp ne i32 %17, 0
  %rx_coalesce_adapt_on = getelementptr i8, ptr %netdev, i32 60852
  %frombool = zext i1 %tobool23 to i8
  %18 = ptrtoint ptr %rx_coalesce_adapt_on to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %rx_coalesce_adapt_on, align 4
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %19 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25 = icmp ne i32 %20, 0
  %tx_coalesce_adapt_on = getelementptr i8, ptr %netdev, i32 60853
  %frombool28 = zext i1 %tobool25 to i8
  %21 = ptrtoint ptr %tx_coalesce_adapt_on to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool28, ptr %tx_coalesce_adapt_on, align 1
  %22 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs30 = getelementptr i8, ptr %netdev, i32 60856
  %24 = ptrtoint ptr %rx_coalesce_usecs30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rx_coalesce_usecs30, align 8
  %25 = ptrtoint ptr %rx_max_coalesced_frames11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_max_coalesced_frames11, align 4
  %rx_coalesce_max_frames = getelementptr i8, ptr %netdev, i32 60860
  %27 = ptrtoint ptr %rx_coalesce_max_frames to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rx_coalesce_max_frames, align 4
  %28 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_coalesce_usecs, align 4
  %tx_coalesce_usecs33 = getelementptr i8, ptr %netdev, i32 60864
  %30 = ptrtoint ptr %tx_coalesce_usecs33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_coalesce_usecs33, align 64
  %31 = ptrtoint ptr %tx_max_coalesced_frames18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_max_coalesced_frames18, align 4
  %tx_coalesce_max_frames = getelementptr i8, ptr %netdev, i32 60868
  %33 = ptrtoint ptr %tx_coalesce_max_frames to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tx_coalesce_max_frames, align 4
  tail call void @nfp_net_coalesce_write_cfg(ptr noundef %add.ptr.i) #13
  %call35 = tail call i32 @nfp_net_reconfig(ptr noundef %add.ptr.i, i32 noundef 256) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfp_net_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 262144, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 262144, ptr %tx_max_pending, align 4
  %rxd_cnt = getelementptr i8, ptr %netdev, i32 2348
  %2 = ptrtoint ptr %rxd_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxd_cnt, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %txd_cnt = getelementptr i8, ptr %netdev, i32 2344
  %5 = ptrtoint ptr %txd_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txd_cnt, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %cond.false22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false22:                                     ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %sub.i143 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i143)
  %tobool.not.i.i.i = icmp eq i32 %sub.i143, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i143, i1 true) #13, !range !121
  %sub.i.i.i = sub nuw nsw i32 32, %6
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pending, align 4
  %sub.i147 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i147)
  %tobool.not.i.i.i148 = icmp eq i32 %sub.i147, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %sub.i147, i1 true) #13, !range !121
  %sub.i.i.i149 = sub nuw nsw i32 32, %9
  %sub.i.i.op.i150 = shl nuw i32 1, %sub.i.i.i149
  %shl.i151 = select i1 %tobool.not.i.i.i148, i32 1, i32 %sub.i.i.op.i150
  %10 = add i32 %shl.i, -262145
  call void @__sanitizer_cov_trace_const_cmp4(i32 -261889, i32 %10)
  %11 = icmp ult i32 %10, -261889
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shl.i151)
  %cmp70 = icmp ult i32 %shl.i151, 256
  %or.cond141 = select i1 %11, i1 true, i1 %cmp70
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %shl.i151)
  %cmp73 = icmp ugt i32 %shl.i151, 262144
  %or.cond142 = select i1 %or.cond141, i1 true, i1 %cmp73
  br i1 %or.cond142, label %cond.false22.cleanup_crit_edge, label %if.end76

cond.false22.cleanup_crit_edge:                   ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end76:                                         ; preds = %cond.false22
  %rxd_cnt77 = getelementptr i8, ptr %netdev, i32 2348
  %12 = ptrtoint ptr %rxd_cnt77 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxd_cnt77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shl.i)
  %cmp78 = icmp eq i32 %13, %shl.i
  br i1 %cmp78, label %land.lhs.true, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end76
  %txd_cnt81 = getelementptr i8, ptr %netdev, i32 2344
  %14 = ptrtoint ptr %txd_cnt81 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txd_cnt81, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shl.i151)
  %cmp82 = icmp eq i32 %15, %shl.i151
  br i1 %cmp82, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true.if.end85_crit_edge, %if.end76.if.end85_crit_edge
  %netdev87 = getelementptr i8, ptr %netdev, i32 2308
  %16 = ptrtoint ptr %netdev87 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev87, align 4
  %tobool88.not = icmp eq ptr %17, null
  br i1 %tobool88.not, label %do.end, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %txd_cnt95 = getelementptr i8, ptr %netdev, i32 2344
  %18 = ptrtoint ptr %txd_cnt95 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txd_cnt95, align 8
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %17, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef %shl.i, i32 noundef %19, i32 noundef %shl.i151) #16
  br label %if.end101

do.end:                                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 128
  %txd_cnt100 = getelementptr i8, ptr %netdev, i32 2344
  %22 = ptrtoint ptr %txd_cnt100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txd_cnt100, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %21, ptr noundef nonnull @.str.19, i32 noundef %13, i32 noundef %shl.i, i32 noundef %23, i32 noundef %shl.i151) #16
  br label %if.end101

if.end101:                                        ; preds = %do.end, %if.then89
  %call102 = tail call fastcc i32 @nfp_net_set_ring_size(ptr noundef %add.ptr.i, i32 noundef %shl.i, i32 noundef %shl.i151)
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %land.lhs.true.cleanup_crit_edge, %cond.false22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call102, %if.end101 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %cond.false22.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_net_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  %data.addr.i21 = alloca ptr, align 4
  %data.addr.i15 = alloca ptr, align 4
  %data.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %0 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr.i, align 4
  %max_r_vecs.i = getelementptr i8, ptr %netdev, i32 2596
  %1 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_r_vecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not.i = icmp eq i32 %2, 0
  br i1 %cmp5.not.i, label %sw.bb.nfp_vnic_get_sw_stats_strings.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.nfp_vnic_get_sw_stats_strings.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_vnic_get_sw_stats_strings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.23, i32 noundef %i.06.i) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.24, i32 noundef %i.06.i) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.25, i32 noundef %i.06.i) #13
  %inc.i = add nuw i32 %i.06.i, 1
  %3 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_r_vecs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %4
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nfp_vnic_get_sw_stats_strings.exit_crit_edge

for.body.i.nfp_vnic_get_sw_stats_strings.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_vnic_get_sw_stats_strings.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

nfp_vnic_get_sw_stats_strings.exit:               ; preds = %for.body.i.nfp_vnic_get_sw_stats_strings.exit_crit_edge, %sw.bb.nfp_vnic_get_sw_stats_strings.exit_crit_edge
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.26) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.27) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.28) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.29) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.30) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.31) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.32) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.33) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.34) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.35) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.36) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.37) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.38) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.39) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.40) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.41) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @.str.42) #13
  %5 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  %vnic_stats_off = getelementptr i8, ptr %netdev, i32 60912
  %7 = ptrtoint ptr %vnic_stats_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vnic_stats_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %nfp_vnic_get_sw_stats_strings.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_r_vecs.i, align 4
  %call2 = call fastcc ptr @nfp_vnic_get_hw_stats_strings(ptr noundef %6, i32 noundef %10, i1 noundef zeroext false)
  br label %if.end

if.else:                                          ; preds = %nfp_vnic_get_sw_stats_strings.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i15)
  %11 = ptrtoint ptr %data.addr.i15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %6, ptr %data.addr.i15, align 4
  %ctrl_bar.i = getelementptr i8, ptr %netdev, i32 2340
  %12 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 %8
  %vnic_stats_cnt.i = getelementptr i8, ptr %netdev, i32 60916
  %14 = ptrtoint ptr %vnic_stats_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vnic_stats_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36.not.i = icmp eq i32 %15, 0
  br i1 %cmp36.not.i, label %if.else.for.cond13.preheader.i_crit_edge, label %if.else.for.body.i18_crit_edge

if.else.for.body.i18_crit_edge:                   ; preds = %if.else
  br label %for.body.i18

if.else.for.cond13.preheader.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.inc.i.for.cond13.preheader.i_crit_edge, %if.else.for.cond13.preheader.i_crit_edge
  %16 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_r_vecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1440.not.i = icmp eq i32 %17, 0
  br i1 %cmp1440.not.i, label %for.cond13.preheader.i.nfp_vnic_get_tlv_stats_strings.exit_crit_edge, label %for.cond13.preheader.i.for.body16.i_crit_edge

for.cond13.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body16.i

for.cond13.preheader.i.nfp_vnic_get_tlv_stats_strings.exit_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_vnic_get_tlv_stats_strings.exit

for.body.i18:                                     ; preds = %for.inc.i.for.body.i18_crit_edge, %if.else.for.body.i18_crit_edge
  %id_word.039.i = phi i64 [ %shr.i, %for.inc.i.for.body.i18_crit_edge ], [ 0, %if.else.for.body.i18_crit_edge ]
  %i.037.i = phi i32 [ %inc.i19, %for.inc.i.for.body.i18_crit_edge ], [ 0, %if.else.for.body.i18_crit_edge ]
  %rem.i = and i32 %i.037.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i18.if.end.i_crit_edge

for.body.i18.if.end.i_crit_edge:                  ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = shl i32 %i.037.i, 1
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i16, i32 %mul.i
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr2.i, i32 1
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #13, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %20 = zext i32 %18 to i64
  %21 = zext i32 %19 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = call i64 @llvm.bswap.i64(i64 %23) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i18.if.end.i_crit_edge
  %id_word.1.i = phi i64 [ %id_word.039.i, %for.body.i18.if.end.i_crit_edge ], [ %24, %if.then.i ]
  %conv.i = trunc i64 %id_word.1.i to i32
  %conv3.i = and i32 %conv.i, 65535
  %shr.i = lshr i64 %id_word.1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %conv3.i)
  %cmp4.i = icmp ult i32 %conv3.i, 19
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr [19 x [32 x i8]], ptr @nfp_tlv_stat_names, i32 0, i32 %conv3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool8.not.i = icmp eq i8 %26, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %data.addr.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.addr.i15, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %arrayidx.i, i32 32)
  %add.ptr11.i = getelementptr i8, ptr %28, i32 32
  store ptr %add.ptr11.i, ptr %data.addr.i15, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i15, ptr noundef nonnull @.str.43, i32 noundef %conv3.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then9.i
  %inc.i19 = add nuw i32 %i.037.i, 1
  %30 = ptrtoint ptr %vnic_stats_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vnic_stats_cnt.i, align 4
  %cmp.i20 = icmp ult i32 %inc.i19, %31
  br i1 %cmp.i20, label %for.inc.i.for.body.i18_crit_edge, label %for.inc.i.for.cond13.preheader.i_crit_edge

for.inc.i.for.cond13.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond13.preheader.i

for.inc.i.for.body.i18_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i18

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond13.preheader.i.for.body16.i_crit_edge
  %i.141.i = phi i32 [ %inc18.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body16.i_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i15, ptr noundef nonnull @.str.4, i32 noundef %i.141.i) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i15, ptr noundef nonnull @.str.5, i32 noundef %i.141.i) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i15, ptr noundef nonnull @.str.6, i32 noundef %i.141.i) #13
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i15, ptr noundef nonnull @.str.7, i32 noundef %i.141.i) #13
  %inc18.i = add nuw i32 %i.141.i, 1
  %32 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_r_vecs.i, align 4
  %cmp14.i = icmp ult i32 %inc18.i, %33
  br i1 %cmp14.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.nfp_vnic_get_tlv_stats_strings.exit_crit_edge

for.body16.i.nfp_vnic_get_tlv_stats_strings.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_vnic_get_tlv_stats_strings.exit

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16.i

nfp_vnic_get_tlv_stats_strings.exit:              ; preds = %for.body16.i.nfp_vnic_get_tlv_stats_strings.exit_crit_edge, %for.cond13.preheader.i.nfp_vnic_get_tlv_stats_strings.exit_crit_edge
  %34 = ptrtoint ptr %data.addr.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.addr.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i15)
  br label %if.end

if.end:                                           ; preds = %nfp_vnic_get_tlv_stats_strings.exit, %if.then
  %data.addr.0 = phi ptr [ %35, %nfp_vnic_get_tlv_stats_strings.exit ], [ %call2, %if.then ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i21)
  %36 = ptrtoint ptr %data.addr.i21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data.addr.0, ptr %data.addr.i21, align 4
  %call.i = call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1.i = call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #13
  %tobool.not.i22 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i22, label %if.end.nfp_mac_get_stats_strings.exit_crit_edge, label %lor.lhs.false.i

if.end.nfp_mac_get_stats_strings.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_strings.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %37 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %eth_stats.i, align 4
  %tobool2.not.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nfp_mac_get_stats_strings.exit_crit_edge, label %lor.lhs.false.i.for.body.i25_crit_edge

lor.lhs.false.i.for.body.i25_crit_edge:           ; preds = %lor.lhs.false.i
  br label %for.body.i25

lor.lhs.false.i.nfp_mac_get_stats_strings.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_strings.exit

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %lor.lhs.false.i.for.body.i25_crit_edge
  %i.07.i = phi i32 [ %inc.i24, %for.body.i25.for.body.i25_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i25_crit_edge ]
  %arrayidx.i23 = getelementptr [59 x %struct.nfp_et_stat], ptr @nfp_mac_et_stats, i32 0, i32 %i.07.i
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %data.addr.i21, ptr noundef nonnull @.str.8, ptr noundef %arrayidx.i23) #13
  %inc.i24 = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i24, 59
  br i1 %exitcond.not.i, label %for.body.i25.nfp_mac_get_stats_strings.exit_crit_edge, label %for.body.i25.for.body.i25_crit_edge

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i25

for.body.i25.nfp_mac_get_stats_strings.exit_crit_edge: ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_strings.exit

nfp_mac_get_stats_strings.exit:                   ; preds = %for.body.i25.nfp_mac_get_stats_strings.exit_crit_edge, %lor.lhs.false.i.nfp_mac_get_stats_strings.exit_crit_edge, %if.end.nfp_mac_get_stats_strings.exit_crit_edge
  %39 = ptrtoint ptr %data.addr.i21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %retval.0.i = load ptr, ptr %data.addr.i21, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i21)
  %port = getelementptr i8, ptr %netdev, i32 61188
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 4
  %call5 = call ptr @nfp_app_port_get_stats_strings(ptr noundef %41, ptr noundef %retval.0.i) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %nfp_mac_get_stats_strings.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_net_get_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %max_r_vecs.i = getelementptr i8, ptr %netdev, i32 2596
  %0 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_r_vecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp168.not.i = icmp eq i32 %1, 0
  br i1 %cmp168.not.i, label %entry.nfp_vnic_get_sw_stats.exit_crit_edge, label %entry.do.body.preheader.i_crit_edge

entry.do.body.preheader.i_crit_edge:              ; preds = %entry
  br label %do.body.preheader.i

entry.nfp_vnic_get_sw_stats.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_vnic_get_sw_stats.exit

do.body.preheader.i:                              ; preds = %do.end63.i.do.body.preheader.i_crit_edge, %entry.do.body.preheader.i_crit_edge
  %gathered_stats.sroa.0.0.i = phi i64 [ %add.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.6.0.i = phi i64 [ %add.1.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.9.0.i = phi i64 [ %add.2.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.12.0.i = phi i64 [ %add.3.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.15.0.i = phi i64 [ %add.4.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.18.0.i = phi i64 [ %add.5.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.21.0.i = phi i64 [ %add.6.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.24.0.i = phi i64 [ %add.7.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.27.0.i = phi i64 [ %add.8.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.30.0.i = phi i64 [ %add.9.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.33.0.i = phi i64 [ %add.10.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.36.0.i = phi i64 [ %add.11.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %gathered_stats.sroa.39.0.i = phi i64 [ %add.12.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %i.0170.i = phi i32 [ %inc70.i, %do.end63.i.do.body.preheader.i_crit_edge ], [ 0, %entry.do.body.preheader.i_crit_edge ]
  %data.addr.0169.i = phi ptr [ %add.ptr.i16, %do.end63.i.do.body.preheader.i_crit_edge ], [ %data, %entry.do.body.preheader.i_crit_edge ]
  %rx_sync.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 8
  %rx_pkts.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 9
  %hw_csum_rx_ok.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 12
  %hw_csum_rx_inner_ok.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 13
  %hw_csum_rx_complete.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 14
  %hw_csum_rx_error.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 16
  %rx_replace_buf_alloc_fail.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 17
  %hw_tls_rx.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %call1.i = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %rx_sync.i) #13
  %2 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rx_pkts.i, align 8
  %4 = ptrtoint ptr %data.addr.0169.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %data.addr.0169.i, align 8
  %5 = ptrtoint ptr %hw_csum_rx_ok.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hw_csum_rx_ok.i, align 16
  %7 = ptrtoint ptr %hw_csum_rx_inner_ok.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hw_csum_rx_inner_ok.i, align 8
  %9 = ptrtoint ptr %hw_csum_rx_complete.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hw_csum_rx_complete.i, align 64
  %11 = ptrtoint ptr %hw_csum_rx_error.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw_csum_rx_error.i, align 16
  %13 = ptrtoint ptr %rx_replace_buf_alloc_fail.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_replace_buf_alloc_fail.i, align 8
  %15 = ptrtoint ptr %hw_tls_rx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hw_tls_rx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !122
  %17 = ptrtoint ptr %rx_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %rx_sync.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %18, %call1.i
  br i1 %cmp.i.i.i.i.not.i, label %do.body27.preheader.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body27.preheader.i:                            ; preds = %do.body.i
  %tx_sync.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 19
  %tx_pkts.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 20
  %arrayidx33.i = getelementptr i64, ptr %data.addr.0169.i, i32 1
  %tx_busy.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 31
  %arrayidx36.i = getelementptr i64, ptr %data.addr.0169.i, i32 2
  %hw_csum_tx.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 23
  %hw_csum_tx_inner.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 24
  %tx_gather.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 25
  %tx_lso.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 26
  %hw_tls_tx.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 27
  %tls_tx_fallback.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 28
  %tls_tx_no_fallback.i = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 17, i32 %i.0170.i, i32 29
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.do.body27.i_crit_edge, %do.body27.preheader.i
  %call30.i = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %tx_sync.i) #13
  %19 = ptrtoint ptr %tx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_pkts.i, align 8
  %21 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx33.i, align 8
  %22 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_busy.i, align 64
  %24 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx36.i, align 8
  %25 = ptrtoint ptr %hw_csum_tx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %hw_csum_tx.i, align 128
  %27 = ptrtoint ptr %hw_csum_tx_inner.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %hw_csum_tx_inner.i, align 8
  %29 = ptrtoint ptr %tx_gather.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_gather.i, align 16
  %31 = ptrtoint ptr %tx_lso.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_lso.i, align 8
  %33 = ptrtoint ptr %hw_tls_tx.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hw_tls_tx.i, align 32
  %35 = ptrtoint ptr %tls_tx_fallback.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tls_tx_fallback.i, align 8
  %37 = ptrtoint ptr %tls_tx_no_fallback.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tls_tx_no_fallback.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !122
  %39 = ptrtoint ptr %tx_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %tx_sync.i, align 4
  %cmp.i.i.i.i154.not.i = icmp eq i32 %40, %call30.i
  br i1 %cmp.i.i.i.i154.not.i, label %do.end63.i, label %do.body27.i.do.body27.i_crit_edge

do.body27.i.do.body27.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i

do.end63.i:                                       ; preds = %do.body27.i
  %add.i = add i64 %6, %gathered_stats.sroa.0.0.i
  %add.1.i = add i64 %8, %gathered_stats.sroa.6.0.i
  %add.2.i = add i64 %10, %gathered_stats.sroa.9.0.i
  %add.3.i = add i64 %12, %gathered_stats.sroa.12.0.i
  %add.4.i = add i64 %14, %gathered_stats.sroa.15.0.i
  %add.5.i = add i64 %16, %gathered_stats.sroa.18.0.i
  %add.6.i = add i64 %26, %gathered_stats.sroa.21.0.i
  %add.7.i = add i64 %28, %gathered_stats.sroa.24.0.i
  %add.8.i = add i64 %30, %gathered_stats.sroa.27.0.i
  %add.9.i = add i64 %32, %gathered_stats.sroa.30.0.i
  %add.10.i = add i64 %34, %gathered_stats.sroa.33.0.i
  %add.11.i = add i64 %36, %gathered_stats.sroa.36.0.i
  %add.12.i = add i64 %38, %gathered_stats.sroa.39.0.i
  %add.ptr.i16 = getelementptr i64, ptr %data.addr.0169.i, i32 3
  %inc70.i = add nuw i32 %i.0170.i, 1
  %41 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_r_vecs.i, align 4
  %cmp.i = icmp ult i32 %inc70.i, %42
  br i1 %cmp.i, label %do.end63.i.do.body.preheader.i_crit_edge, label %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge

do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge:  ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_vnic_get_sw_stats.exit

do.end63.i.do.body.preheader.i_crit_edge:         ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader.i

nfp_vnic_get_sw_stats.exit:                       ; preds = %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge, %entry.nfp_vnic_get_sw_stats.exit_crit_edge
  %gathered_stats.sroa.0.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.6.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.1.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.9.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.2.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.12.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.3.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.15.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.4.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.18.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.5.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.21.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.6.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.24.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.7.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.27.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.8.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.30.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.9.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.33.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.10.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.36.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.11.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %gathered_stats.sroa.39.1.i = phi i64 [ 0, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.12.i, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %data.addr.0.lcssa.i = phi ptr [ %data, %entry.nfp_vnic_get_sw_stats.exit_crit_edge ], [ %add.ptr.i16, %do.end63.i.nfp_vnic_get_sw_stats.exit_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 1
  %43 = ptrtoint ptr %data.addr.0.lcssa.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %gathered_stats.sroa.0.1.i, ptr %data.addr.0.lcssa.i, align 8
  %incdec.ptr.1.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 2
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %gathered_stats.sroa.6.1.i, ptr %incdec.ptr.i, align 8
  %incdec.ptr.2.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 3
  %45 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %gathered_stats.sroa.9.1.i, ptr %incdec.ptr.1.i, align 8
  %incdec.ptr.3.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 4
  %46 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %gathered_stats.sroa.12.1.i, ptr %incdec.ptr.2.i, align 8
  %incdec.ptr.4.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 5
  %47 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %gathered_stats.sroa.15.1.i, ptr %incdec.ptr.3.i, align 8
  %incdec.ptr.5.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 6
  %48 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %gathered_stats.sroa.18.1.i, ptr %incdec.ptr.4.i, align 8
  %incdec.ptr.6.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 7
  %49 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %gathered_stats.sroa.21.1.i, ptr %incdec.ptr.5.i, align 8
  %incdec.ptr.7.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 8
  %50 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %gathered_stats.sroa.24.1.i, ptr %incdec.ptr.6.i, align 8
  %incdec.ptr.8.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 9
  %51 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %gathered_stats.sroa.27.1.i, ptr %incdec.ptr.7.i, align 8
  %incdec.ptr.9.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 10
  %52 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %gathered_stats.sroa.30.1.i, ptr %incdec.ptr.8.i, align 8
  %incdec.ptr.10.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 11
  %53 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %gathered_stats.sroa.33.1.i, ptr %incdec.ptr.9.i, align 8
  %incdec.ptr.11.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 12
  %54 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %gathered_stats.sroa.36.1.i, ptr %incdec.ptr.10.i, align 8
  %incdec.ptr.12.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 13
  %55 = ptrtoint ptr %incdec.ptr.11.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %gathered_stats.sroa.39.1.i, ptr %incdec.ptr.11.i, align 8
  %ktls_no_space.i = getelementptr i8, ptr %netdev, i32 60944
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_no_space.i, i32 noundef 4) #13
  %56 = ptrtoint ptr %ktls_no_space.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %ktls_no_space.i, align 4
  %conv.i = sext i32 %57 to i64
  %incdec.ptr80.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 14
  %58 = ptrtoint ptr %incdec.ptr.12.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv.i, ptr %incdec.ptr.12.i, align 8
  %ktls_rx_resync_req.i = getelementptr i8, ptr %netdev, i32 60948
  %call.i.i151.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_rx_resync_req.i, i32 noundef 4) #13
  %59 = ptrtoint ptr %ktls_rx_resync_req.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %ktls_rx_resync_req.i, align 4
  %conv82.i = sext i32 %60 to i64
  %incdec.ptr83.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 15
  %61 = ptrtoint ptr %incdec.ptr80.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv82.i, ptr %incdec.ptr80.i, align 8
  %ktls_rx_resync_ign.i = getelementptr i8, ptr %netdev, i32 60952
  %call.i.i152.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_rx_resync_ign.i, i32 noundef 4) #13
  %62 = ptrtoint ptr %ktls_rx_resync_ign.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %ktls_rx_resync_ign.i, align 4
  %conv85.i = sext i32 %63 to i64
  %incdec.ptr86.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 16
  %64 = ptrtoint ptr %incdec.ptr83.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv85.i, ptr %incdec.ptr83.i, align 8
  %ktls_rx_resync_sent.i = getelementptr i8, ptr %netdev, i32 60956
  %call.i.i153.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ktls_rx_resync_sent.i, i32 noundef 4) #13
  %65 = ptrtoint ptr %ktls_rx_resync_sent.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %ktls_rx_resync_sent.i, align 4
  %conv88.i = sext i32 %66 to i64
  %incdec.ptr89.i = getelementptr i64, ptr %data.addr.0.lcssa.i, i32 17
  %67 = ptrtoint ptr %incdec.ptr86.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv88.i, ptr %incdec.ptr86.i, align 8
  %vnic_stats_off = getelementptr i8, ptr %netdev, i32 60912
  %68 = ptrtoint ptr %vnic_stats_off to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vnic_stats_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not = icmp eq i32 %69, 0
  %ctrl_bar = getelementptr i8, ptr %netdev, i32 2340
  %70 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl_bar, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %nfp_vnic_get_sw_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_r_vecs.i, align 4
  %call2 = tail call fastcc ptr @nfp_vnic_get_hw_stats(ptr noundef %incdec.ptr89.i, ptr noundef %71, i32 noundef %73)
  br label %if.end

if.else:                                          ; preds = %nfp_vnic_get_sw_stats.exit
  %add.ptr.i17 = getelementptr i8, ptr %71, i32 %69
  %vnic_stats_cnt.i = getelementptr i8, ptr %netdev, i32 60916
  %74 = ptrtoint ptr %vnic_stats_cnt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vnic_stats_cnt.i, align 4
  %mul.i = shl i32 %75, 1
  %add.i18 = add i32 %mul.i, 7
  %div63.i = and i32 %add.i18, -8
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i17, i32 %div63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp68.not.i = icmp eq i32 %75, 0
  br i1 %cmp68.not.i, label %if.else.for.end.i_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %data.addr.070.i = phi ptr [ %incdec.ptr.i20, %for.body.i.for.body.i_crit_edge ], [ %incdec.ptr89.i, %if.else.for.body.i_crit_edge ]
  %i.069.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %mul6.i = shl i32 %i.069.i, 3
  %add.ptr7.i = getelementptr i8, ptr %add.ptr3.i, i32 %mul6.i
  %add.ptr.i.i19 = getelementptr i32, ptr %add.ptr7.i, i32 1
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %78 = zext i32 %76 to i64
  %79 = zext i32 %77 to i64
  %80 = shl nuw i64 %79, 32
  %81 = or i64 %80, %78
  %82 = tail call i64 @llvm.bswap.i64(i64 %81) #13
  %incdec.ptr.i20 = getelementptr i64, ptr %data.addr.070.i, i32 1
  %83 = ptrtoint ptr %data.addr.070.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %data.addr.070.i, align 8
  %inc.i = add nuw i32 %i.069.i, 1
  %84 = ptrtoint ptr %vnic_stats_cnt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vnic_stats_cnt.i, align 4
  %cmp.i21 = icmp ult i32 %inc.i, %85
  br i1 %cmp.i21, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  %data.addr.0.lcssa.i22 = phi ptr [ %incdec.ptr89.i, %if.else.for.end.i_crit_edge ], [ %incdec.ptr.i20, %for.body.i.for.end.i_crit_edge ]
  %86 = ptrtoint ptr %ctrl_bar to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl_bar, align 4
  %88 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_r_vecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp1171.not.i = icmp eq i32 %89, 0
  br i1 %cmp1171.not.i, label %for.end.i.if.end_crit_edge, label %for.end.i.for.body12.i_crit_edge

for.end.i.for.body12.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body12.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.end.i.for.body12.i_crit_edge
  %data.addr.173.i = phi ptr [ %incdec.ptr34.i, %for.body12.i.for.body12.i_crit_edge ], [ %data.addr.0.lcssa.i22, %for.end.i.for.body12.i_crit_edge ]
  %i.172.i = phi i32 [ %inc36.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.end.i.for.body12.i_crit_edge ]
  %mul13.i = shl i32 %i.172.i, 4
  %add14.i = add i32 %mul13.i, 5120
  %add.ptr15.i = getelementptr i8, ptr %87, i32 %add14.i
  %add.ptr.i64.i = getelementptr i32, ptr %add.ptr15.i, i32 1
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %92 = zext i32 %90 to i64
  %93 = zext i32 %91 to i64
  %94 = shl nuw i64 %93, 32
  %95 = or i64 %94, %92
  %96 = tail call i64 @llvm.bswap.i64(i64 %95) #13
  %incdec.ptr17.i = getelementptr i64, ptr %data.addr.173.i, i32 1
  %97 = ptrtoint ptr %data.addr.173.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %data.addr.173.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %add.ptr15.i, i32 8
  %add.ptr.i65.i = getelementptr i32, ptr %add.ptr21.i, i32 1
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %100 = zext i32 %98 to i64
  %101 = zext i32 %99 to i64
  %102 = shl nuw i64 %101, 32
  %103 = or i64 %102, %100
  %104 = tail call i64 @llvm.bswap.i64(i64 %103) #13
  %incdec.ptr23.i = getelementptr i64, ptr %data.addr.173.i, i32 2
  %105 = ptrtoint ptr %incdec.ptr17.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %incdec.ptr17.i, align 8
  %add25.i = add i32 %mul13.i, 4096
  %add.ptr26.i = getelementptr i8, ptr %87, i32 %add25.i
  %add.ptr.i66.i = getelementptr i32, ptr %add.ptr26.i, i32 1
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %108 = zext i32 %106 to i64
  %109 = zext i32 %107 to i64
  %110 = shl nuw i64 %109, 32
  %111 = or i64 %110, %108
  %112 = tail call i64 @llvm.bswap.i64(i64 %111) #13
  %incdec.ptr28.i = getelementptr i64, ptr %data.addr.173.i, i32 3
  %113 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %incdec.ptr23.i, align 8
  %add.ptr32.i = getelementptr i8, ptr %add.ptr26.i, i32 8
  %add.ptr.i67.i = getelementptr i32, ptr %add.ptr32.i, i32 1
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %116 = zext i32 %114 to i64
  %117 = zext i32 %115 to i64
  %118 = shl nuw i64 %117, 32
  %119 = or i64 %118, %116
  %120 = tail call i64 @llvm.bswap.i64(i64 %119) #13
  %incdec.ptr34.i = getelementptr i64, ptr %data.addr.173.i, i32 4
  %121 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %incdec.ptr28.i, align 8
  %inc36.i = add nuw i32 %i.172.i, 1
  %122 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %max_r_vecs.i, align 4
  %cmp11.i = icmp ult i32 %inc36.i, %123
  br i1 %cmp11.i, label %for.body12.i.for.body12.i_crit_edge, label %for.body12.i.if.end_crit_edge

for.body12.i.if.end_crit_edge:                    ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12.i

if.end:                                           ; preds = %for.body12.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.then
  %data.addr.0 = phi ptr [ %call2, %if.then ], [ %data.addr.0.lcssa.i22, %for.end.i.if.end_crit_edge ], [ %incdec.ptr34.i, %for.body12.i.if.end_crit_edge ]
  %call.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1.i24 = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call1.i24, null
  br i1 %tobool.not.i, label %if.end.nfp_mac_get_stats.exit_crit_edge, label %lor.lhs.false.i

if.end.nfp_mac_get_stats.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %124 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %eth_stats.i, align 4
  %tobool2.not.i = icmp eq ptr %125, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nfp_mac_get_stats.exit_crit_edge, label %lor.lhs.false.i.for.body.i29_crit_edge

lor.lhs.false.i.for.body.i29_crit_edge:           ; preds = %lor.lhs.false.i
  br label %for.body.i29

lor.lhs.false.i.nfp_mac_get_stats.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats.exit

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %lor.lhs.false.i.for.body.i29_crit_edge
  %i.013.i = phi i32 [ %inc.i28, %for.body.i29.for.body.i29_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i29_crit_edge ]
  %data.addr.012.i = phi ptr [ %incdec.ptr.i27, %for.body.i29.for.body.i29_crit_edge ], [ %data.addr.0, %lor.lhs.false.i.for.body.i29_crit_edge ]
  %126 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %eth_stats.i, align 4
  %off.i = getelementptr [59 x %struct.nfp_et_stat], ptr @nfp_mac_et_stats, i32 0, i32 %i.013.i, i32 1
  %128 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %off.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %127, i32 %129
  %add.ptr.i.i26 = getelementptr i32, ptr %add.ptr.i25, i32 1
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #13, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  %132 = zext i32 %130 to i64
  %133 = zext i32 %131 to i64
  %134 = shl nuw i64 %133, 32
  %135 = or i64 %134, %132
  %136 = tail call i64 @llvm.bswap.i64(i64 %135) #13
  %incdec.ptr.i27 = getelementptr i64, ptr %data.addr.012.i, i32 1
  %137 = ptrtoint ptr %data.addr.012.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %data.addr.012.i, align 8
  %inc.i28 = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i28, 59
  br i1 %exitcond.not.i, label %for.body.i29.nfp_mac_get_stats.exit_crit_edge, label %for.body.i29.for.body.i29_crit_edge

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i29

for.body.i29.nfp_mac_get_stats.exit_crit_edge:    ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats.exit

nfp_mac_get_stats.exit:                           ; preds = %for.body.i29.nfp_mac_get_stats.exit_crit_edge, %lor.lhs.false.i.nfp_mac_get_stats.exit_crit_edge, %if.end.nfp_mac_get_stats.exit_crit_edge
  %retval.0.i = phi ptr [ %data.addr.0, %lor.lhs.false.i.nfp_mac_get_stats.exit_crit_edge ], [ %data.addr.0, %if.end.nfp_mac_get_stats.exit_crit_edge ], [ %incdec.ptr.i27, %for.body.i29.nfp_mac_get_stats.exit_crit_edge ]
  %port = getelementptr i8, ptr %netdev, i32 61188
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %port, align 4
  %call5 = tail call ptr @nfp_app_port_get_stats(ptr noundef %139, ptr noundef %retval.0.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_get_sset_count(ptr noundef %netdev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %max_r_vecs.i = getelementptr i8, ptr %netdev, i32 2596
  %0 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_r_vecs.i, align 4
  %mul.i = mul i32 %1, 3
  %add1.i = add i32 %mul.i, 17
  %vnic_stats_off = getelementptr i8, ptr %netdev, i32 60912
  %2 = ptrtoint ptr %vnic_stats_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vnic_stats_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.else

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %vnic_stats_cnt.i = getelementptr i8, ptr %netdev, i32 60916
  %4 = ptrtoint ptr %vnic_stats_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vnic_stats_cnt.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb.if.end_crit_edge
  %.sink = phi i32 [ %5, %if.else ], [ 26, %sw.bb.if.end_crit_edge ]
  %6 = ptrtoint ptr %max_r_vecs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_r_vecs.i, align 4
  %mul.i21 = shl i32 %7, 2
  %add.i22 = add i32 %mul.i21, %.sink
  %cnt.0 = add i32 %add1.i, %add.i22
  %call.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #13
  %call1.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #13
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.nfp_mac_get_stats_count.exit_crit_edge, label %lor.lhs.false.i

if.end.nfp_mac_get_stats_count.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nfp_mac_get_stats_count.exit

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %8 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eth_stats.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 59
  br label %nfp_mac_get_stats_count.exit

nfp_mac_get_stats_count.exit:                     ; preds = %lor.lhs.false.i, %if.end.nfp_mac_get_stats_count.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.nfp_mac_get_stats_count.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %add6 = add i32 %cnt.0, %retval.0.i
  %port = getelementptr i8, ptr %netdev, i32 61188
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %call7 = tail call i32 @nfp_app_port_get_stats_count(ptr noundef %11) #13
  %add8 = add i32 %add6, %call7
  br label %cleanup

cleanup:                                          ; preds = %nfp_mac_get_stats_count.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add8, %nfp_mac_get_stats_count.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_net_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %cmd, ptr nocapture noundef readnone %rule_locs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %num_rx_rings = getelementptr i8, ptr %netdev, i32 2364
  %3 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_rings, align 4
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %data.i, align 8
  %cap.i = getelementptr i8, ptr %netdev, i32 2380
  %7 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %8, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.cleanup_crit_edge, label %if.end.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp.i.i = icmp ugt i32 %10, 17
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %ethtool_flow_to_nfp_flag.exit.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ethtool_flow_to_nfp_flag.exit.i:                  ; preds = %if.end.i
  %11 = lshr i32 65433, %10
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.not.i, label %if.end3.i, label %ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge

ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge: ; preds = %ethtool_flow_to_nfp_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %ethtool_flow_to_nfp_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [18 x i32], ptr @ethtool_flow_to_nfp_flag.xlate_ethtool_to_nfp, i32 0, i32 %10
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 48, ptr %data.i, align 8
  %rss_cfg.i = getelementptr i8, ptr %netdev, i32 2392
  %16 = ptrtoint ptr %rss_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rss_cfg.i, align 8
  %and5.i = and i32 %17, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %spec.store.select.i = select i1 %tobool6.not.i, i64 48, i64 240
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %spec.store.select.i, ptr %data.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb2.cleanup_crit_edge ], [ -22, %ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ 0, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_set_rxnfc(ptr noundef %netdev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %1)
  %cond = icmp eq i32 %1, 42
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %rss_cfg.i = getelementptr i8, ptr %netdev, i32 2392
  %2 = ptrtoint ptr %rss_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rss_cfg.i, align 8
  %cap.i = getelementptr i8, ptr %netdev, i32 2380
  %4 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap.i, align 4
  %and.i = and i32 %5, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data.i, align 8
  %8 = and i64 %7, -193
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %8)
  %9 = icmp eq i64 %8, 48
  br i1 %9, label %if.end12.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %11)
  %cmp.i.i = icmp ugt i32 %11, 17
  br i1 %cmp.i.i, label %if.end12.i.cleanup_crit_edge, label %ethtool_flow_to_nfp_flag.exit.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ethtool_flow_to_nfp_flag.exit.i:                  ; preds = %if.end12.i
  %arrayidx.i.i = getelementptr [18 x i32], ptr @ethtool_flow_to_nfp_flag.xlate_ethtool_to_nfp, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %14 = lshr i32 65433, %11
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not.not.i = icmp eq i32 %15, 0
  br i1 %tobool13.not.not.i, label %if.end15.i, label %ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge

ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge: ; preds = %ethtool_flow_to_nfp_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i:                                       ; preds = %ethtool_flow_to_nfp_flag.exit.i
  %16 = trunc i64 %7 to i8
  %trunc.i = and i8 %16, -64
  %17 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %trunc.i, label %if.end15.i.cleanup_crit_edge [
    i8 0, label %sw.bb.i
    i8 -64, label %sw.bb19.i
  ]

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %neg.i = xor i32 %13, -1
  %and18.i = and i32 %3, %neg.i
  br label %do.body23.i

sw.bb19.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %13, %3
  br label %do.body23.i

do.body23.i:                                      ; preds = %sw.bb19.i, %sw.bb.i
  %new_rss_cfg.0.i = phi i32 [ %or.i, %sw.bb19.i ], [ %and18.i, %sw.bb.i ]
  %rss_hfunc.i = getelementptr i8, ptr %netdev, i32 2388
  %18 = ptrtoint ptr %rss_hfunc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rss_hfunc.i, align 4
  %conv38.i = zext i8 %19 to i32
  %shl.i = shl nuw i32 %conv38.i, 24
  %or40.i = or i32 %new_rss_cfg.0.i, %shl.i
  %or41.i = or i32 %or40.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %or41.i, i32 %3)
  %cmp.i = icmp eq i32 %or41.i, %3
  br i1 %cmp.i, label %do.body23.i.cleanup_crit_edge, label %do.body46.i

do.body23.i.cleanup_crit_edge:                    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body46.i:                                      ; preds = %do.body23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %or41.i) #13
  %ctrl_bar.i = getelementptr i8, ptr %netdev, i32 2340
  %21 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %22, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %20) #13, !srcloc !124
  %call49.i = tail call i32 @nfp_net_reconfig(ptr noundef %add.ptr.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %do.body46.i.cleanup_crit_edge

do.body46.i.cleanup_crit_edge:                    ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end52.i:                                       ; preds = %do.body46.i
  %23 = ptrtoint ptr %rss_cfg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or41.i, ptr %rss_cfg.i, align 8
  %netdev.i = getelementptr i8, ptr %netdev, i32 2308
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  %tobool55.not.i = icmp eq ptr %25, null
  br i1 %tobool55.not.i, label %do.end62.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %25, ptr noundef nonnull @.str.44, i32 noundef %or41.i) #16
  br label %cleanup

do.end62.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %27, ptr noundef nonnull @.str.45, i32 noundef %or41.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end62.i, %if.then56.i, %do.body46.i.cleanup_crit_edge, %do.body23.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %ethtool_flow_to_nfp_flag.exit.i.cleanup_crit_edge ], [ -22, %if.end15.i.cleanup_crit_edge ], [ 0, %do.body23.i.cleanup_crit_edge ], [ %call49.i, %do.body46.i.cleanup_crit_edge ], [ 0, %do.end62.i ], [ 0, %if.then56.i ], [ -22, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_get_rxfh_key_size(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cap = getelementptr i8, ptr %netdev, i32 2380
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  %and = and i32 %1, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @nfp_net_rss_key_sz(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_net_get_rxfh_indir_size(ptr nocapture noundef readonly %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cap = getelementptr i8, ptr %netdev, i32 2380
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  %and = and i32 %1, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 128
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_get_rxfh(ptr noundef %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cap = getelementptr i8, ptr %netdev, i32 2380
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  %and = and i32 %1, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %indir, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 8, i32 %i.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx3 = getelementptr i32, ptr %indir, i32 %i.030
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.if.end4_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %for.body.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %key, null
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %rss_key = getelementptr i8, ptr %netdev, i32 2396
  %call7 = tail call i32 @nfp_net_rss_key_sz(ptr noundef %add.ptr.i) #13
  %5 = call ptr @memcpy(ptr %key, ptr %rss_key, i32 %call7)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %hfunc, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %rss_hfunc = getelementptr i8, ptr %netdev, i32 2388
  %6 = ptrtoint ptr %rss_hfunc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rss_hfunc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp12 = icmp ugt i8 %7, 7
  %spec.store.select = select i1 %cmp12, i8 0, i8 %7
  %8 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.store.select, ptr %hfunc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cap = getelementptr i8, ptr %netdev, i32 2380
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  %and = and i32 %1, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hfunc)
  %cmp = icmp eq i8 %hfunc, 0
  br i1 %cmp, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rss_hfunc = getelementptr i8, ptr %netdev, i32 2388
  %2 = ptrtoint ptr %rss_hfunc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rss_hfunc, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %hfunc)
  %cmp5 = icmp eq i8 %3, %hfunc
  br i1 %cmp5, label %lor.lhs.false2.if.end_crit_edge, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false2.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tobool7.not = icmp eq ptr %key, null
  %tobool8.not = icmp eq ptr %indir, null
  %or.cond = and i1 %tobool8.not, %tobool7.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br i1 %tobool7.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %rss_key = getelementptr i8, ptr %netdev, i32 2396
  %call13 = tail call i32 @nfp_net_rss_key_sz(ptr noundef %add.ptr.i) #13
  %4 = call ptr @memcpy(ptr %rss_key, ptr %key, i32 %call13)
  tail call void @nfp_net_rss_write_key(ptr noundef %add.ptr.i) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  br i1 %tobool8.not, label %if.end14.if.end21_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.039
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %conv19 = trunc i32 %6 to i8
  %arrayidx20 = getelementptr %struct.nfp_net, ptr %add.ptr.i, i32 0, i32 8, i32 %i.039
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv19, ptr %arrayidx20, align 1
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nfp_net_rss_write_itbl(ptr noundef %add.ptr.i) #13
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.end14.if.end21_crit_edge
  %call22 = tail call i32 @nfp_net_reconfig(ptr noundef %add.ptr.i, i32 noundef 4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfp_net_get_channels(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %channel) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_rings1 = getelementptr i8, ptr %netdev, i32 2356
  %0 = ptrtoint ptr %num_tx_rings1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_rings1, align 4
  %xdp_prog = getelementptr i8, ptr %netdev, i32 2328
  %2 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_prog, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %num_rx_rings = getelementptr i8, ptr %netdev, i32 2364
  %4 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_rings, align 4
  %sub = sub i32 %1, %5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_tx_rings.0 = phi i32 [ %sub, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %max_rx_rings = getelementptr i8, ptr %netdev, i32 2584
  %6 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_rx_rings, align 8
  %max_r_vecs = getelementptr i8, ptr %netdev, i32 2596
  %8 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_r_vecs, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 1
  %11 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_rx, align 4
  %max_tx_rings = getelementptr i8, ptr %netdev, i32 2580
  %12 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_tx_rings, align 4
  %14 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_r_vecs, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 2
  %17 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_tx, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %10, i32 %16)
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 4
  %19 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_combined, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 3
  %20 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %max_other, align 4
  %num_rx_rings20 = getelementptr i8, ptr %netdev, i32 2364
  %21 = ptrtoint ptr %num_rx_rings20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_rx_rings20, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %num_tx_rings.0)
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 8
  %24 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %combined_count, align 4
  %25 = ptrtoint ptr %num_rx_rings20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rx_rings20, align 4
  %sub30 = sub i32 %26, %23
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %27 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub30, ptr %rx_count, align 4
  %sub32 = sub i32 %num_tx_rings.0, %23
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %28 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub32, ptr %tx_count, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 7
  %29 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %other_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_set_channels(ptr noundef %netdev, ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 7
  %0 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %2 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 8
  %6 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %combined_count, align 4
  %add = add i32 %7, %3
  %tx_count4 = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %8 = ptrtoint ptr %tx_count4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_count4, align 4
  %add5 = add i32 %9, %7
  %max_rx_rings = getelementptr i8, ptr %netdev, i32 2584
  %10 = ptrtoint ptr %max_rx_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rx_rings, align 8
  %max_r_vecs = getelementptr i8, ptr %netdev, i32 2596
  %12 = ptrtoint ptr %max_r_vecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_r_vecs, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp7 = icmp ugt i32 %add, %14
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %lor.lhs.false8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %max_tx_rings = getelementptr i8, ptr %netdev, i32 2580
  %15 = ptrtoint ptr %max_tx_rings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_tx_rings, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %17)
  %cmp16 = icmp ugt i32 %add5, %17
  br i1 %cmp16, label %lor.lhs.false8.cleanup_crit_edge, label %if.end18

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false8
  %call.i = tail call ptr @nfp_net_clone_dp(ptr noundef %add.ptr.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.end.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %num_rx_rings.i = getelementptr inbounds %struct.nfp_net_dp, ptr %call.i, i32 0, i32 17
  %18 = ptrtoint ptr %num_rx_rings.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %num_rx_rings.i, align 4
  %num_tx_rings.i = getelementptr inbounds %struct.nfp_net_dp, ptr %call.i, i32 0, i32 15
  %19 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add5, ptr %num_tx_rings.i, align 4
  %xdp_prog.i = getelementptr inbounds %struct.nfp_net_dp, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xdp_prog.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i32 %add5, %add
  %22 = ptrtoint ptr %num_tx_rings.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %num_tx_rings.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = tail call i32 @nfp_net_ring_reconfig(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end18.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5.i, %if.end4.i ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_coalesce_write_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_reconfig(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_set_ring_size(ptr noundef %nn, i32 noundef %rxd_cnt, i32 noundef %txd_cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_net_clone_dp(ptr noundef %nn) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rxd_cnt1 = getelementptr inbounds %struct.nfp_net_dp, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %rxd_cnt1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rxd_cnt, ptr %rxd_cnt1, align 4
  %txd_cnt2 = getelementptr inbounds %struct.nfp_net_dp, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %txd_cnt2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %txd_cnt, ptr %txd_cnt2, align 4
  %call3 = tail call i32 @nfp_net_ring_reconfig(ptr noundef %nn, ptr noundef nonnull %call, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_net_clone_dp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_ring_reconfig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin(ptr noundef %syncp) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !125
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #13
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !126
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !127

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !128
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !130
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_rss_key_sz(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_rss_write_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_net_rss_write_itbl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @nfp_port_ethtool_ops, !1, !"nfp_port_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1491, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 235, i32 34}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 209, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 192, i32 40}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.h", i32 278, i32 10}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 558, i32 26}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 559, i32 26}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 560, i32 26}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 561, i32 26}
!18 = !{ptr @nfp_net_et_stats, !19, !"nfp_net_et_stats", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 36, i32 33}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 665, i32 26}
!22 = !{ptr @nfp_mac_et_stats, !23, !"nfp_mac_et_stats", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 71, i32 33}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1120, i32 39}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1234, i32 22}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1239, i32 23}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1281, i32 22}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1324, i32 9}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1329, i32 8}
!36 = !{ptr @nfp_net_get_link_ksettings.ls_to_ethtool, !37, !"ls_to_ethtool", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 273, i32 19}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 350, i32 23}
!40 = !{ptr @nfp_net_ethtool_ops, !41, !"nfp_net_ethtool_ops", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 1457, i32 33}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 219, i32 47}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 433, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nfp_net_set_ringparam._entry, !45, !"_entry", i1 false, i1 false}
!52 = !{ptr @nfp_net_set_ringparam._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 453, i32 26}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 454, i32 26}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 455, i32 26}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 458, i32 25}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 459, i32 25}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 460, i32 25}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 461, i32 25}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 462, i32 25}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 463, i32 25}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 464, i32 25}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 465, i32 25}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 466, i32 25}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 467, i32 25}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 468, i32 25}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 469, i32 25}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 470, i32 25}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 472, i32 25}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 473, i32 25}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 474, i32 25}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 475, i32 25}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 609, i32 27}
!95 = !{ptr @nfp_tlv_stat_names, !96, !"nfp_tlv_stat_names", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 151, i32 19}
!97 = !{ptr @ethtool_flow_to_nfp_flag.xlate_ethtool_to_nfp, !98, !"xlate_ethtool_to_nfp", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 877, i32 19}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c", i32 977, i32 2}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nfp_net_set_rss_hash_opt._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfp_net_set_rss_hash_opt._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 6595745}
!115 = !{i64 2159113531}
!116 = !{i64 2159113953}
!117 = !{!"auto-init"}
!118 = !{i64 2159121879}
!119 = !{i64 2159186834}
!120 = !{i8 0, i8 2}
!121 = !{i32 0, i32 33}
!122 = !{i64 2150412139}
!123 = !{i64 2159182507}
!124 = !{i64 6595327}
!125 = !{i64 701521, i64 701582}
!126 = !{i64 704253}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 704538}
!129 = !{i64 2150987615}
!130 = !{i64 2150987457}
!131 = !{i64 2150987785}
