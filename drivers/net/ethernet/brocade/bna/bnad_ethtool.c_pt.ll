; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bnad_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bnad_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.186 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.bfa_ioc_attr = type { i32, i32, %struct.bfa_adapter_attr, %struct.bfa_ioc_driver_attr, %struct.bfa_ioc_pci_attr, i8, i8, i8, i8, i8, [3 x i8] }
%struct.bfa_adapter_attr = type { [8 x i8], [12 x i8], i32, [16 x i8], [128 x i8], i64, [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.bfa_mfg_vpd, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bfa_mfg_vpd = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.bfa_ioc_driver_attr = type { [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_ioc_pci_attr = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.210, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.210 = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.bnad_iocmd_comp = type { ptr, %struct.completion, i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnad = type { ptr, i32, [120 x i8], [1 x %struct.bnad_tx_info], [1 x %struct.bnad_rx_info], [128 x i32], i32, i32, i32, i32, i32, i32, i8, i8, [102 x i8], [1 x %struct.bna_rx_config], [20 x i8], [1 x %struct.bna_tx_config], ptr, %struct.bna, i32, i32, ptr, i64, i64, i32, ptr, %struct.mutex, [68 x i8], %struct.spinlock, %struct.timer_list, %struct.timer_list, %struct.timer_list, [4 x %struct.bna_res_info], [8 x %struct.bna_res_info], [1 x %struct.bnad_tx_res_info], [1 x %struct.bnad_rx_res_info], %struct.bnad_completion, [6 x i8], ptr, %struct.bnad_stats, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], ptr, i32, [5 x ptr], ptr, [84 x i8] }
%struct.bnad_tx_info = type { ptr, [8 x ptr], i32, %struct.delayed_work, [116 x i8] }
%struct.bnad_rx_info = type { ptr, [16 x %struct.bnad_rx_ctrl], i32, %struct.work_struct, [72 x i8] }
%struct.bnad_rx_ctrl = type { ptr, ptr, i32, %struct.napi_struct, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bna_rx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bna_rss_config, %struct.bna_hds_config, i32 }
%struct.bna_rss_config = type { i32, i8, [10 x i32] }
%struct.bna_hds_config = type { i32, i32 }
%struct.bna_tx_config = type { i32, i32, i32, i32 }
%struct.bna = type { %struct.bna_ident, %struct.bfa_pcidev, %struct.bna_reg, %struct.bna_bit_defn, %struct.bna_stats, %struct.bna_ioceth, %struct.bfa_cee, %struct.bfa_flash, %struct.bfa_msgq, %struct.bna_ethport, %struct.bna_enet, %struct.bna_stats_mod, %struct.bna_tx_mod, %struct.bna_rx_mod, %struct.bna_ucam_mod, %struct.bna_mcam_mod, i32, i32, i32, ptr }
%struct.bna_ident = type { i32, [64 x i8] }
%struct.bfa_pcidev = type { i32, i8, i16, i16, ptr }
%struct.bna_reg = type { ptr, ptr }
%struct.bna_bit_defn = type { i32, i32, i32, i32, i32, i32 }
%struct.bna_stats = type <{ %struct.bna_dma_addr, ptr, %struct.bfi_enet_stats }>
%struct.bna_dma_addr = type { i32, i32 }
%struct.bfi_enet_stats = type { %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_bpc, %struct.bfi_enet_stats_rad, %struct.bfi_enet_stats_rad, %struct.bfi_enet_stats_fc_rx, %struct.bfi_enet_stats_fc_tx, [32 x %struct.bfi_enet_stats_rxf], [32 x %struct.bfi_enet_stats_txf] }
%struct.bfi_enet_stats_mac = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_bpc = type { [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64] }
%struct.bfi_enet_stats_rad = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_fc_rx = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_fc_tx = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_rxf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_txf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bna_ioceth = type { ptr, %struct.bfa_ioc, %struct.bna_attr, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_attr_req, ptr, ptr, ptr }
%struct.bfa_ioc = type { ptr, ptr, %struct.bfa_pcidev, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, %struct.list_head, ptr, i32, i8, i32, %struct.bfa_ioc_regs, %struct.bfa_ioc_drv_stats, i8, i8, i8, i8, %struct.bfa_dma, ptr, ptr, %struct.bfa_ioc_mbox_mod, ptr, %struct.bfa_iocpf, i32, i32, i32, i32, i32, i8, i8 }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon.197] }
%struct.anon.197 = type { ptr, ptr }
%struct.bfa_iocpf = type { ptr, ptr, i8, i8, i32 }
%struct.bna_attr = type { i8, i32, i32, i32, i32, i32 }
%struct.bfa_msgq_cmd_entry = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.bfi_enet_attr_req = type { %struct.bfi_msgq_mhdr }
%struct.bfi_msgq_mhdr = type { i8, i8, i16, i16, i8, i8 }
%struct.bfa_cee = type { ptr, i8, i8, i8, i32, i32, i32, %struct.bfa_cee_cbfn, %struct.bfa_ioc_notify, ptr, ptr, %struct.bfa_dma, %struct.bfa_dma, ptr, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd }
%struct.bfa_cee_cbfn = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfa_ioc_notify = type { %struct.list_head, ptr, ptr }
%struct.bfa_mbox_cmd = type { %struct.list_head, ptr, ptr, [8 x i32] }
%struct.bfa_flash = type { ptr, i32, i8, [3 x i8], i32, i32, i32, i32, ptr, i64, ptr, ptr, ptr, i32, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify }
%struct.bfa_msgq = type { %struct.bfa_msgq_cmdq, %struct.bfa_msgq_rspq, %struct.bfa_wc, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify, ptr }
%struct.bfa_msgq_cmdq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i16, i32, i32, %struct.bfa_mbox_cmd, %struct.list_head, ptr }
%struct.bfa_msgq_rspq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i32, [34 x %struct.anon.200], ptr }
%struct.anon.200 = type { ptr, ptr }
%struct.bfa_wc = type { ptr, ptr, i32 }
%struct.bna_ethport = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.201, ptr }
%union.anon.201 = type { %struct.bfi_enet_enable_req }
%struct.bfi_enet_enable_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8] }
%struct.bna_enet = type { ptr, i32, i32, %struct.bna_pause_config, i32, ptr, ptr, ptr, %struct.bfa_wc, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_set_pause_req, ptr }
%struct.bna_pause_config = type { i32, i32 }
%struct.bfi_enet_set_pause_req = type { %struct.bfi_msgq_mhdr, [2 x i8], i8, i8 }
%struct.bna_stats_mod = type { i8, i8, i8, %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req }
%struct.bfi_enet_stats_req = type { %struct.bfi_msgq_mhdr, i16, [2 x i8], i32, i32, %union.bfi_addr_u }
%union.bfi_addr_u = type { %struct.anon.194 }
%struct.anon.194 = type { i32, i32 }
%struct.bna_tx_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.bfa_wc, i32, i8, i32, i32, i32, i32, i32, ptr }
%struct.bna_rx_mod = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, i32, i32, ptr, %struct.bfa_wc, [8 x [2 x i32]], i32 }
%struct.bna_ucam_mod = type { ptr, %struct.list_head, %struct.list_head, ptr }
%struct.bna_mcam_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.bna_res_info = type { i32, %union.bna_res_u }
%union.bna_res_u = type { %struct.bna_mem_info }
%struct.bna_mem_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.bnad_tx_res_info = type { [7 x %struct.bna_res_info] }
%struct.bnad_rx_res_info = type { [16 x %struct.bna_res_info] }
%struct.bnad_completion = type { %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bnad_stats = type { %struct.bnad_drv_stats, ptr }
%struct.bnad_drv_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.bna_ccb = type { ptr, ptr, i32, ptr, i32, ptr, [2 x ptr], ptr, %struct.bna_pkt_rate, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, [16 x i8] }
%struct.bna_pkt_rate = type { i32, i32 }
%struct.bna_rcb = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.bna_rxq = type { %struct.list_head, i32, i32, i32, i32, %struct.bna_qpt, ptr, ptr, ptr, i32, i64, i64, i64, i64, i64 }
%struct.bna_qpt = type { %struct.bna_dma_addr, ptr, i32, i32 }
%struct.bna_tcb = type { ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, [16 x i8] }
%struct.bna_txq = type { %struct.list_head, i8, %struct.bna_qpt, ptr, %struct.bna_ib, ptr, i32, i64, i64 }
%struct.bna_ib = type { %struct.bna_dma_addr, ptr, %struct.bna_ib_dbell, i32, i32, i8, i32, i32 }
%struct.bna_ib_dbell = type { ptr, i32 }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.181, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.181 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.bfa_flash_attr = type { i32, i32, [32 x %struct.bfa_flash_part_attr] }
%struct.bfa_flash_part_attr = type { i32, i32, i32, i32, i32, i32, [8 x i8] }

@bnad_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 561, i32 0, ptr @bnad_get_drvinfo, ptr null, ptr null, ptr @bnad_get_wol, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @bnad_get_eeprom_len, ptr @bnad_get_eeprom, ptr @bnad_set_eeprom, ptr @bnad_get_coalesce, ptr @bnad_set_coalesce, ptr @bnad_get_ringparam, ptr @bnad_set_ringparam, ptr null, ptr @bnad_get_pauseparam, ptr @bnad_set_pauseparam, ptr null, ptr @bnad_get_strings, ptr null, ptr @bnad_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @bnad_get_sset_count, ptr null, ptr null, ptr @bnad_flash_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnad_get_link_ksettings, ptr @bnad_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bna\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bnad_net_stats_strings = internal constant { [189 x ptr], [172 x i8] } { [189 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], [172 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_packets\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_bytes\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_errors\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_dropped\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_dropped\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multicast\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"collisions\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_length_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_crc_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_frame_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_fifo_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netif_queue_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netif_queue_wakeup\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netif_queue_stopped\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tso4\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tso6\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tso_err\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcpcsum_offload\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udpcsum_offload\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csum_help\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_skb_too_short\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_skb_stopping\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_skb_max_vectors\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_skb_mss_too_long\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_skb_tso_too_short\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_skb_tso_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_skb_non_tso_too_long\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_skb_tcp_hdr\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_skb_udp_hdr\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_skb_csum_err\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_skb_headlen_too_long\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_skb_headlen_zero\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_skb_frag_zero\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_skb_len_mismatch\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_skb_map_failed\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw_stats_updates\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netif_rx_dropped\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"link_toggle\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cee_toggle\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxp_info_alloc_failed\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mbox_intr_disabled\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mbox_intr_enabled\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_unmap_q_alloc_failed\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_unmap_q_alloc_failed\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxbuf_alloc_failed\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxbuf_map_failed\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_stats_clr_cnt\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_frame_64\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_frame_65_127\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_frame_128_255\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_frame_256_511\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mac_frame_512_1023\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac_frame_1024_1518\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac_frame_1518_1522\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_rx_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mac_rx_packets\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_rx_fcs_error\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_rx_multicast\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_rx_broadcast\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mac_rx_control_frames\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_rx_pause\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mac_rx_unknown_opcode\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac_rx_alignment_error\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mac_rx_frame_length_error\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_rx_code_error\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mac_rx_carrier_sense_error\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_rx_undersize\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac_rx_oversize\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_rx_fragments\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mac_rx_jabber\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_rx_drop\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_tx_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mac_tx_packets\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_tx_multicast\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_tx_broadcast\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_tx_pause\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac_tx_deferral\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mac_tx_excessive_deferral\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mac_tx_single_collision\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mac_tx_muliple_collision\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mac_tx_late_collision\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mac_tx_excessive_collision\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac_tx_total_collision\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mac_tx_pause_honored\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_tx_drop\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mac_tx_jabber\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_tx_fcs_error\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mac_tx_control_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac_tx_oversize\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_tx_undersize\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_tx_fragments\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_0\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_1\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_2\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_3\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_4\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_5\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_6\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_tx_pause_7\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_0\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_1\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_2\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_3\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_4\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_5\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_6\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_tx_zero_pause_7\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_0\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_1\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_2\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_3\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_4\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_5\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_6\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_tx_first_pause_7\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_0\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_1\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_2\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_3\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_4\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_5\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_6\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bpc_rx_pause_7\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_0\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_1\00", [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_2\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_3\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_4\00", [44 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_5\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_6\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpc_rx_zero_pause_7\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_0\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_1\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_2\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_3\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_4\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_5\00", [43 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_6\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bpc_rx_first_pause_7\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rad_rx_frames\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rad_rx_octets\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rad_rx_vlan_frames\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rad_rx_ucast\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rad_rx_ucast_octets\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rad_rx_ucast_vlan\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rad_rx_mcast\00", [19 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rad_rx_mcast_octets\00", [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rad_rx_mcast_vlan\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rad_rx_bcast\00", [19 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rad_rx_bcast_octets\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rad_rx_bcast_vlan\00", [46 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rad_rx_drops\00", [19 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rlb_rad_rx_frames\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rlb_rad_rx_octets\00", [46 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rlb_rad_rx_vlan_frames\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rlb_rad_rx_ucast\00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rlb_rad_rx_ucast_octets\00", [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rlb_rad_rx_ucast_vlan\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rlb_rad_rx_mcast\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rlb_rad_rx_mcast_octets\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rlb_rad_rx_mcast_vlan\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rlb_rad_rx_bcast\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rlb_rad_rx_bcast_octets\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rlb_rad_rx_bcast_vlan\00", [42 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rlb_rad_rx_drops\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_rx_ucast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_rx_ucast\00", [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_rx_ucast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_rx_mcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_rx_mcast\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_rx_mcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_rx_bcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_rx_bcast\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_rx_bcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_tx_ucast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_tx_ucast\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_tx_ucast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_tx_mcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_tx_mcast\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_tx_mcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_tx_bcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_tx_bcast\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_tx_bcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fc_tx_parity_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc_tx_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fc_tx_fid_parity_errors\00", [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txf%d_ucast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txf%d_ucast\00", [20 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txf%d_ucast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txf%d_mcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txf%d_mcast\00", [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txf%d_mcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txf%d_bcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txf%d_bcast\00", [20 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txf%d_bcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txf%d_errors\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"txf%d_filter_vlan\00", [46 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"txf%d_filter_mac_sa\00", [44 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxf%d_ucast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxf%d_ucast\00", [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxf%d_ucast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxf%d_mcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxf%d_mcast\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxf%d_mcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rxf%d_bcast_octets\00", [45 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxf%d_bcast\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxf%d_bcast_vlan\00", [47 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxf%d_frame_drops\00", [46 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cq%d_producer_index\00", [44 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cq%d_consumer_index\00", [44 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cq%d_hw_producer_index\00", [41 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cq%d_intr\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cq%d_poll\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cq%d_schedule\00", [18 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cq%d_keep_poll\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cq%d_complete\00", [18 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxq%d_packets\00", [18 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxq%d_bytes\00", [20 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxq%d_packets_with_error\00", [39 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxq%d_allocbuf_failed\00", [42 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxq%d_mapbuf_failed\00", [44 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxq%d_producer_index\00", [43 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxq%d_consumer_index\00", [43 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txq%d_packets\00", [18 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txq%d_bytes\00", [20 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"txq%d_producer_index\00", [43 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"txq%d_consumer_index\00", [43 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"txq%d_hw_consumer_index\00", [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't load firmware %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"flash update failed with err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"firmware image update failed with err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"bnad_ethtool_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1069, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 286, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 87, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [23 x i8] c"bnad_net_stats_strings\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 29, i32 20 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 30, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 31, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 32, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 33, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 34, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 35, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 36, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 37, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 38, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 39, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 40, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 41, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 42, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 43, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 45, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 46, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 47, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 48, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 49, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 50, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 51, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 52, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 53, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 54, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 55, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 56, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 57, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 58, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 59, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 60, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 61, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 62, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 63, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 64, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 65, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 66, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 67, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 68, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 69, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 70, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 72, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 73, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 75, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 76, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 77, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 78, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 79, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 80, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 81, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 83, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 84, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 85, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 86, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 87, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 88, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 89, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 90, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 91, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 92, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 93, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 94, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 95, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 96, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 97, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 98, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 99, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 100, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 101, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 102, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 103, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 104, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 105, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 106, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 107, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 109, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 110, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 111, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 112, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 113, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 114, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 115, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 116, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 117, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 118, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 119, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 120, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 121, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 122, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 123, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 124, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 125, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 126, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 127, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 128, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 130, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 131, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 132, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 133, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 134, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 135, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 136, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 137, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 138, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 139, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 140, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 141, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 142, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 143, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 144, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 145, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 146, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 147, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 148, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 149, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 150, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 151, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 152, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 153, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 155, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 156, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 157, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 158, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 159, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 160, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 161, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 162, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 163, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 164, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 165, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 166, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 167, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 168, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 169, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 170, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 171, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 172, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 173, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 174, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 175, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 176, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 177, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 178, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 180, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 181, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 182, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 183, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 184, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 185, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 186, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 187, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 188, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 189, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 190, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 191, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 192, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 194, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 195, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 196, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 197, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 198, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 199, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 200, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 201, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 202, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 203, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 204, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 205, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 206, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 208, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 209, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 210, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 211, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 212, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 213, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 214, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 215, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 216, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 218, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 219, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 220, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 221, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 222, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 223, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 224, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 225, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 226, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 227, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 228, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 229, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 537, i32 26 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 538, i32 26 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 539, i32 26 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 540, i32 26 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 541, i32 26 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 542, i32 26 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 543, i32 26 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 544, i32 26 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 545, i32 26 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 546, i32 26 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 547, i32 26 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 548, i32 26 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 553, i32 26 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 554, i32 26 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 555, i32 26 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 556, i32 26 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 557, i32 26 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 558, i32 26 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 559, i32 26 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 560, i32 26 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 561, i32 26 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 562, i32 26 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 567, i32 26 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 568, i32 26 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 569, i32 26 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 570, i32 26 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 571, i32 26 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 572, i32 26 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 573, i32 26 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 574, i32 26 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 579, i32 26 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 580, i32 26 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 581, i32 26 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 582, i32 26 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 583, i32 26 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 584, i32 26 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 585, i32 26 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 590, i32 26 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 591, i32 26 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 592, i32 26 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 593, i32 26 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 594, i32 26 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1037, i32 22 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1050, i32 23 }
@___asan_gen_.950 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.951 = private constant [51 x i8] c"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1061, i32 8 }
@llvm.compiler.used = appending global [239 x ptr] [ptr @bnad_ethtool_ops, ptr @.str, ptr @init_completion.__key, ptr @.str.1, ptr @bnad_net_stats_strings, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235], section "llvm.metadata"
@0 = internal global [239 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_net_stats_strings to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bnad_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bnad_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1600) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %ioc = getelementptr i8, ptr %netdev, i32 14976
  tail call void @bfa_nw_ioc_get_attr(ptr noundef %ioc, ptr noundef nonnull %call7.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call5) #14
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %fw_ver = getelementptr inbounds %struct.bfa_ioc_attr, ptr %call7.i.i, i32 0, i32 2, i32 8
  %call11 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_ver, i32 noundef 32) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %1 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcidev, align 64
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call14 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bnad_get_wol(ptr nocapture noundef readnone %netdev, ptr nocapture noundef writeonly %wolinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnad_get_eeprom_len(ptr nocapture noundef readnone %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4194304
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr noundef %bytes) #1 align 64 {
entry:
  %fcomp = alloca %struct.bnad_iocmd_comp, align 4
  %base_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fcomp) #14
  %0 = getelementptr inbounds i8, ptr %fcomp, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_offset) #14
  %2 = ptrtoint ptr %base_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %base_offset, align 4
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 64
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor, align 8
  %conv = zext i16 %6 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv2 = zext i16 %8 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %9 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %call3 = call fastcc i32 @bnad_get_flash_partition_by_offset(ptr noundef %add.ptr.i, i32 noundef %11, ptr noundef nonnull %base_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %fcomp, align 4
  %comp_status = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 2
  %13 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %comp_status, align 4
  %comp = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1
  %14 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #14
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %flash = getelementptr i8, ptr %netdev, i32 16056
  %id = getelementptr i8, ptr %netdev, i32 2308
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %conv13 = trunc i32 %16 to i8
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %21 = ptrtoint ptr %base_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_offset, align 4
  %sub = sub i32 %20, %22
  %call15 = call i32 @bfa_nw_flash_read_part(ptr noundef %flash, i32 noundef %call3, i8 noundef zeroext %conv13, ptr noundef %bytes, i32 noundef %18, i32 noundef %sub, ptr noundef nonnull @bnad_cb_completion, ptr noundef nonnull %fcomp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call10) #14
  br i1 %cmp16.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @wait_for_completion(ptr noundef %comp) #14
  %23 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %comp_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %24, %if.end20 ], [ %call15, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_offset) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fcomp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr noundef %bytes) #1 align 64 {
entry:
  %fcomp = alloca %struct.bnad_iocmd_comp, align 4
  %base_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fcomp) #14
  %0 = getelementptr inbounds i8, ptr %fcomp, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_offset) #14
  %2 = ptrtoint ptr %base_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %base_offset, align 4
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %3 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %magic, align 4
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 64
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 8
  %conv = zext i16 %8 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %conv2 = zext i16 %10 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %or)
  %cmp.not = icmp eq i32 %4, %or
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %call4 = call fastcc i32 @bnad_get_flash_partition_by_offset(ptr noundef %add.ptr.i, i32 noundef %12, ptr noundef nonnull %base_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %fcomp, align 4
  %comp_status = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 2
  %14 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %comp_status, align 4
  %comp = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1
  %15 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #14
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call14 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %flash = getelementptr i8, ptr %netdev, i32 16056
  %id = getelementptr i8, ptr %netdev, i32 2308
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %conv17 = trunc i32 %17 to i8
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %22 = ptrtoint ptr %base_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_offset, align 4
  %sub = sub i32 %21, %23
  %call19 = call i32 @bfa_nw_flash_update_part(ptr noundef %flash, i32 noundef %call4, i8 noundef zeroext %conv17, ptr noundef %bytes, i32 noundef %19, i32 noundef %sub, ptr noundef nonnull @bnad_cb_completion, ptr noundef nonnull %fcomp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call14) #14
  br i1 %cmp20.not, label %if.end24, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  call void @wait_for_completion(ptr noundef %comp) #14
  %24 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %comp_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ %25, %if.end24 ], [ %call19, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_offset) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fcomp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_get_coalesce(ptr noundef %netdev, ptr nocapture noundef writeonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %cfg_flags = getelementptr i8, ptr %netdev, i32 17336
  %0 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %1, 1
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %2 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %use_adaptive_rx_coalesce, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #14
  %rx_coalescing_timeo = getelementptr i8, ptr %netdev, i32 7833
  %3 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx_coalescing_timeo, align 1
  %conv7 = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %conv7, 5
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %5 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %rx_coalesce_usecs, align 4
  %tx_coalescing_timeo = getelementptr i8, ptr %netdev, i32 7832
  %6 = ptrtoint ptr %tx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_coalescing_timeo, align 8
  %conv8 = zext i8 %7 to i32
  %mul9 = mul nuw nsw i32 %conv8, 5
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul9, ptr %tx_coalesce_usecs, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 6
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %2 = add i32 %1, -1276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1275, i32 %2)
  %3 = icmp ult i32 %2, -1275
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %4 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_coalesce_usecs, align 4
  %6 = add i32 %5, -1276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1275, i32 %6)
  %7 = icmp ult i32 %6, -1275
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #14
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %8 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cfg_flags20 = getelementptr i8, ptr %netdev, i32 17336
  %10 = ptrtoint ptr %cfg_flags20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg_flags20, align 8
  %and21 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end8
  br i1 %tobool22.not, label %if.then17, label %if.then15.if.end54_crit_edge

if.then15.if.end54_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %11, 1
  %12 = ptrtoint ptr %cfg_flags20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %cfg_flags20, align 8
  tail call void @bnad_dim_timer_start(ptr noundef %add.ptr.i) #14
  br label %if.end54

if.else:                                          ; preds = %if.end8
  br i1 %tobool22.not, label %if.else.if.end54_crit_edge, label %if.then23

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %and25 = and i32 %11, -2
  %13 = ptrtoint ptr %cfg_flags20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and25, ptr %cfg_flags20, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call12) #14
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  tail call void @bnad_rx_coalescing_timeo_set(ptr noundef %add.ptr.i) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then23, %if.else.if.end54_crit_edge, %if.then17, %if.then15.if.end54_crit_edge
  %flags.0 = phi i32 [ %call12, %if.then15.if.end54_crit_edge ], [ %call12, %if.then17 ], [ %call48, %if.then23 ], [ %call12, %if.else.if.end54_crit_edge ]
  %tx_coalescing_timeo = getelementptr i8, ptr %netdev, i32 7832
  %14 = ptrtoint ptr %tx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_coalescing_timeo, align 8
  %conv55 = zext i8 %15 to i32
  %16 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_coalesce_usecs, align 4
  %div = udiv i32 %17, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv55)
  %cmp57.not = icmp eq i32 %div, %conv55
  br i1 %cmp57.not, label %if.end54.if.end64_crit_edge, label %if.then59

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %conv62 = trunc i32 %div to i8
  %18 = ptrtoint ptr %tx_coalescing_timeo to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv62, ptr %tx_coalescing_timeo, align 8
  tail call void @bnad_tx_coalescing_timeo_set(ptr noundef %add.ptr.i) #14
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end54.if.end64_crit_edge
  %rx_coalescing_timeo = getelementptr i8, ptr %netdev, i32 7833
  %19 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_coalescing_timeo, align 1
  %conv65 = zext i8 %20 to i32
  %21 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_coalesce_usecs, align 4
  %div67 = udiv i32 %22, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div67, i32 %conv65)
  %cmp68.not = icmp eq i32 %div67, %conv65
  br i1 %cmp68.not, label %if.end64.if.end80_crit_edge, label %if.then70

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then70:                                        ; preds = %if.end64
  %conv73 = trunc i32 %div67 to i8
  %23 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv73, ptr %rx_coalescing_timeo, align 1
  %cfg_flags75 = getelementptr i8, ptr %netdev, i32 17336
  %24 = ptrtoint ptr %cfg_flags75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg_flags75, align 8
  %and76 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then78, label %if.then70.if.end80_crit_edge

if.then70.if.end80_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then78:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnad_rx_coalescing_timeo_set(ptr noundef %add.ptr.i) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then70.if.end80_crit_edge, %if.end64.if.end80_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %flags.0) #14
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnad_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ringparam, ptr nocapture noundef readnone %kernel_ringparam, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16384, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2048, ptr %tx_max_pending, align 4
  %rxq_depth = getelementptr i8, ptr %netdev, i32 7828
  %2 = ptrtoint ptr %rxq_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxq_depth, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %txq_depth = getelementptr i8, ptr %netdev, i32 7824
  %5 = ptrtoint ptr %txq_depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txq_depth, align 16
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ringparam, ptr nocapture noundef readnone %kernel_ringparam, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #14
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  %rxq_depth = getelementptr i8, ptr %netdev, i32 7828
  %2 = ptrtoint ptr %rxq_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxq_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %txq_depth = getelementptr i8, ptr %netdev, i32 7824
  %6 = ptrtoint ptr %txq_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txq_depth, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1 = icmp eq i32 %5, %7
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = add i32 %1, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 15873, i32 %8)
  %9 = icmp ult i32 %8, 15873
  %10 = tail call i32 @llvm.ctpop.i32(i32 %1) #14, !range !486
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1.i = icmp ult i32 %10, 2
  %or.cond162 = and i1 %9, %cmp1.i
  br i1 %or.cond162, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %tx_pending13 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_pending13, align 4
  %13 = add i32 %12, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %13)
  %14 = icmp ult i32 %13, 1537
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #14, !range !486
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp1.i158 = icmp ult i32 %15, 2
  %or.cond163 = and i1 %14, %cmp1.i158
  br i1 %or.cond163, label %if.end23, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  br i1 %cmp, label %if.end23.if.end60_crit_edge, label %if.then27

if.end23.if.end60_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then27:                                        ; preds = %if.end23
  %16 = ptrtoint ptr %rxq_depth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %rxq_depth, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then27.cleanup_crit_edge, label %for.cond.preheader

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then27
  %num_rx = getelementptr i8, ptr %netdev, i32 7812
  %19 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp34164.not = icmp eq i32 %20, 0
  br i1 %cmp34164.not, label %for.cond.preheader.land.lhs.true44_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.land.lhs.true44_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true44

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %err.0167 = phi i32 [ %err.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0165 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.0165
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 128
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnad_destroy_rx(ptr noundef %add.ptr.i, i32 noundef %i.0165) #14
  %call37 = tail call i32 @bnad_setup_rx(ptr noundef %add.ptr.i, i32 noundef %i.0165) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp ne i32 %call37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0167)
  %tobool40.not = icmp eq i32 %err.0167, 0
  %or.cond155 = select i1 %tobool38.not, i1 %tobool40.not, i1 false
  %spec.select = select i1 %or.cond155, i32 %call37, i32 %err.0167
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0167, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end36 ]
  %inc = add nuw i32 %i.0165, 1
  %23 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_rx, align 4
  %cmp34 = icmp ult i32 %inc, %24
  br i1 %cmp34, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool43.not = icmp eq i32 %err.1, 0
  br i1 %tobool43.not, label %for.end.land.lhs.true44_crit_edge, label %for.end.if.end60_crit_edge

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

for.end.land.lhs.true44_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true44

land.lhs.true44:                                  ; preds = %for.end.land.lhs.true44_crit_edge, %for.cond.preheader.land.lhs.true44_crit_edge
  %rx_info45 = getelementptr i8, ptr %netdev, i32 2688
  %25 = ptrtoint ptr %rx_info45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_info45, align 128
  %tobool48.not = icmp eq ptr %26, null
  br i1 %tobool48.not, label %land.lhs.true44.if.end60_crit_edge, label %if.then49

land.lhs.true44.if.end60_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then49:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnad_restore_vlans(ptr noundef %add.ptr.i, i32 noundef 0) #14
  %call50 = tail call i32 @bnad_enable_default_bcast(ptr noundef %add.ptr.i) #14
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %call57 = tail call i32 @bnad_mac_addr_set_locked(ptr noundef %add.ptr.i, ptr noundef %28) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call54) #14
  %cfg_flags = getelementptr i8, ptr %netdev, i32 17336
  %29 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %30, -7
  store i32 %and, ptr %cfg_flags, align 8
  tail call void @bnad_set_rx_mode(ptr noundef %netdev) #14
  br label %if.end60

if.end60:                                         ; preds = %if.then49, %land.lhs.true44.if.end60_crit_edge, %for.end.if.end60_crit_edge, %if.end23.if.end60_crit_edge
  %err.2 = phi i32 [ %err.1, %for.end.if.end60_crit_edge ], [ 0, %if.then49 ], [ 0, %land.lhs.true44.if.end60_crit_edge ], [ 0, %if.end23.if.end60_crit_edge ]
  %31 = ptrtoint ptr %tx_pending13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_pending13, align 4
  %txq_depth62 = getelementptr i8, ptr %netdev, i32 7824
  %33 = ptrtoint ptr %txq_depth62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txq_depth62, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp63.not = icmp eq i32 %32, %34
  br i1 %cmp63.not, label %if.end60.cleanup_crit_edge, label %if.then65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then65:                                        ; preds = %if.end60
  %35 = ptrtoint ptr %txq_depth62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %txq_depth62, align 16
  %state.i159 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %36 = ptrtoint ptr %state.i159 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i159, align 4
  %and1.i.i160 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i160)
  %tobool.i161.not = icmp eq i32 %and1.i.i160, 0
  br i1 %tobool.i161.not, label %if.then65.cleanup_crit_edge, label %for.cond72.preheader

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond72.preheader:                             ; preds = %if.then65
  %num_tx = getelementptr i8, ptr %netdev, i32 7808
  %38 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp73168.not = icmp eq i32 %39, 0
  br i1 %cmp73168.not, label %for.cond72.preheader.cleanup_crit_edge, label %for.cond72.preheader.for.body75_crit_edge

for.cond72.preheader.for.body75_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body75

for.cond72.preheader.cleanup_crit_edge:           ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body75:                                       ; preds = %for.inc86.for.body75_crit_edge, %for.cond72.preheader.for.body75_crit_edge
  %err.3171 = phi i32 [ %err.4, %for.inc86.for.body75_crit_edge ], [ %err.2, %for.cond72.preheader.for.body75_crit_edge ]
  %i.1169 = phi i32 [ %inc87, %for.inc86.for.body75_crit_edge ], [ 0, %for.cond72.preheader.for.body75_crit_edge ]
  %arrayidx76 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 3, i32 %i.1169
  %40 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx76, align 128
  %tobool77.not = icmp eq ptr %41, null
  br i1 %tobool77.not, label %for.body75.for.inc86_crit_edge, label %if.end79

for.body75.for.inc86_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc86

if.end79:                                         ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnad_destroy_tx(ptr noundef %add.ptr.i, i32 noundef %i.1169) #14
  %call80 = tail call i32 @bnad_setup_tx(ptr noundef %add.ptr.i, i32 noundef %i.1169) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp ne i32 %call80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3171)
  %tobool83.not = icmp eq i32 %err.3171, 0
  %or.cond156 = select i1 %tobool81.not, i1 %tobool83.not, i1 false
  %spec.select157 = select i1 %or.cond156, i32 %call80, i32 %err.3171
  br label %for.inc86

for.inc86:                                        ; preds = %if.end79, %for.body75.for.inc86_crit_edge
  %err.4 = phi i32 [ %err.3171, %for.body75.for.inc86_crit_edge ], [ %spec.select157, %if.end79 ]
  %inc87 = add nuw i32 %i.1169, 1
  %42 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tx, align 128
  %cmp73 = icmp ult i32 %inc87, %43
  br i1 %cmp73, label %for.inc86.for.body75_crit_edge, label %for.inc86.cleanup_crit_edge

for.inc86.cleanup_crit_edge:                      ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc86.for.body75_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body75

cleanup:                                          ; preds = %for.inc86.cleanup_crit_edge, %for.cond72.preheader.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %if.then65.cleanup_crit_edge ], [ %err.2, %if.end60.cleanup_crit_edge ], [ %err.2, %for.cond72.preheader.cleanup_crit_edge ], [ %err.4, %for.inc86.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnad_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pauseparam) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %pause_config = getelementptr i8, ptr %netdev, i32 16848
  %rx_pause = getelementptr i8, ptr %netdev, i32 16852
  %1 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_pause, align 4
  %rx_pause1 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %3 = ptrtoint ptr %rx_pause1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_pause1, align 4
  %4 = ptrtoint ptr %pause_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pause_config, align 4
  %tx_pause5 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %6 = ptrtoint ptr %tx_pause5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_pause5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pauseparam) #1 align 64 {
entry:
  %pause_config = alloca %struct.bna_pause_config, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pause_config) #14
  %0 = ptrtoint ptr %pause_config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pause_config, align 4, !annotation !487
  %1 = getelementptr inbounds %struct.bna_pause_config, ptr %pause_config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !487
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 1
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #14
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_pause, align 4
  %enet = getelementptr i8, ptr %netdev, i32 16836
  %rx_pause2 = getelementptr i8, ptr %netdev, i32 16852
  %7 = ptrtoint ptr %rx_pause2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_pause2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3.not = icmp eq i32 %6, %8
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %pause_config1 = getelementptr i8, ptr %netdev, i32 16848
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %9 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pause, align 4
  %11 = ptrtoint ptr %pause_config1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pause_config1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.not = icmp eq i32 %10, %12
  br i1 %cmp8.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %1, align 4
  %tx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %14 = ptrtoint ptr %tx_pause12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause12, align 4
  %16 = ptrtoint ptr %pause_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pause_config, align 4
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  call void @bna_enet_pause_config(ptr noundef %enet, ptr noundef nonnull %pause_config) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call17) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then9, %lor.lhs.false.if.end23_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pause_config) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_get_strings(ptr noundef %netdev, i32 noundef %stringset, ptr noundef %string) #1 align 64 {
entry:
  %string.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %string.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %string, ptr %string.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #14
  br label %do.body

do.body:                                          ; preds = %do.end13.do.body_crit_edge, %if.end
  %i.0173 = phi i32 [ 0, %if.end ], [ %inc, %do.end13.do.body_crit_edge ]
  %arrayidx = getelementptr [189 x ptr], ptr @bnad_net_stats_strings, i32 0, i32 %i.0173
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call2 = call i32 @strlen(ptr noundef %2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call2)
  %cmp3 = icmp ugt i32 %call2, 31
  br i1 %cmp3, label %do.body7, label %do.end13, !prof !488

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bnad_ethtool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 610, 0\0A.popsection", ""() #14, !srcloc !489
  unreachable

do.end13:                                         ; preds = %do.body
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef %2) #14
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 189
  br i1 %exitcond.not, label %for.end, label %do.end13.do.body_crit_edge

do.end13.do.body_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %do.end13
  %rid_mask = getelementptr i8, ptr %netdev, i32 17104
  %3 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rid_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool16.not174 = icmp eq i32 %4, 0
  br i1 %tobool16.not174, label %for.end.for.end23_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  br label %for.body17

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.body17:                                       ; preds = %if.end20.for.body17_crit_edge, %for.end.for.body17_crit_edge
  %bmap.0177 = phi i32 [ %shr, %if.end20.for.body17_crit_edge ], [ %4, %for.end.for.body17_crit_edge ]
  %i.1175 = phi i32 [ %inc22, %if.end20.for.body17_crit_edge ], [ 0, %for.end.for.body17_crit_edge ]
  %and = and i32 %bmap.0177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body17.if.end20_crit_edge, label %if.then19

for.body17.if.end20_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.191, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.192, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.193, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.194, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.195, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.196, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.197, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.198, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.199, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.200, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.201, i32 noundef %i.1175) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.202, i32 noundef %i.1175) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.body17.if.end20_crit_edge
  %shr = lshr i32 %bmap.0177, 1
  %inc22 = add nuw nsw i32 %i.1175, 1
  %tobool16.not = icmp ult i32 %bmap.0177, 2
  br i1 %tobool16.not, label %if.end20.for.end23_crit_edge, label %if.end20.for.body17_crit_edge

if.end20.for.body17_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17

if.end20.for.end23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.end23:                                        ; preds = %if.end20.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %rid_mask25 = getelementptr i8, ptr %netdev, i32 17256
  %5 = ptrtoint ptr %rid_mask25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rid_mask25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool27.not178 = icmp eq i32 %6, 0
  br i1 %tobool27.not178, label %for.end23.for.cond38.preheader_crit_edge, label %for.end23.for.body28_crit_edge

for.end23.for.body28_crit_edge:                   ; preds = %for.end23
  br label %for.body28

for.end23.for.cond38.preheader_crit_edge:         ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %if.end32.for.cond38.preheader_crit_edge, %for.end23.for.cond38.preheader_crit_edge
  %num_rx = getelementptr i8, ptr %netdev, i32 7812
  %7 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39185.not = icmp eq i32 %8, 0
  br i1 %cmp39185.not, label %for.cond38.preheader.for.cond99.preheader_crit_edge, label %for.body40.lr.ph

for.cond38.preheader.for.cond99.preheader_crit_edge: ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond99.preheader

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %num_rxp_per_rx = getelementptr i8, ptr %netdev, i32 7820
  br label %for.body40

for.body28:                                       ; preds = %if.end32.for.body28_crit_edge, %for.end23.for.body28_crit_edge
  %bmap.1181 = phi i32 [ %shr33, %if.end32.for.body28_crit_edge ], [ %6, %for.end23.for.body28_crit_edge ]
  %i.2179 = phi i32 [ %inc35, %if.end32.for.body28_crit_edge ], [ 0, %for.end23.for.body28_crit_edge ]
  %and29 = and i32 %bmap.1181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %for.body28.if.end32_crit_edge, label %if.then31

for.body28.if.end32_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then31:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.203, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.204, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.205, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.206, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.207, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.208, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.209, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.210, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.211, i32 noundef %i.2179) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.212, i32 noundef %i.2179) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body28.if.end32_crit_edge
  %shr33 = lshr i32 %bmap.1181, 2
  %inc35 = add nuw nsw i32 %i.2179, 1
  %tobool27.not = icmp ult i32 %bmap.1181, 4
  br i1 %tobool27.not, label %if.end32.for.cond38.preheader_crit_edge, label %if.end32.for.body28_crit_edge

if.end32.for.body28_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body28

if.end32.for.cond38.preheader_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond38.preheader

for.cond55.preheader:                             ; preds = %for.inc52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp57193.not = icmp eq i32 %16, 0
  br i1 %cmp57193.not, label %for.cond55.preheader.for.cond99.preheader_crit_edge, label %for.body58.lr.ph

for.cond55.preheader.for.cond99.preheader_crit_edge: ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond99.preheader

for.body58.lr.ph:                                 ; preds = %for.cond55.preheader
  %num_rxp_per_rx66 = getelementptr i8, ptr %netdev, i32 7820
  br label %for.body58

for.body40:                                       ; preds = %for.inc52.for.body40_crit_edge, %for.body40.lr.ph
  %q_num.0187 = phi i32 [ 0, %for.body40.lr.ph ], [ %q_num.2, %for.inc52.for.body40_crit_edge ]
  %i.3186 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc53, %for.inc52.for.body40_crit_edge ]
  %arrayidx41 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.3186
  %9 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx41, align 128
  %tobool42.not = icmp eq ptr %10, null
  br i1 %tobool42.not, label %for.body40.for.inc52_crit_edge, label %for.cond45.preheader

for.body40.for.inc52_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

for.cond45.preheader:                             ; preds = %for.body40
  %11 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rxp_per_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp46182.not = icmp eq i32 %12, 0
  br i1 %cmp46182.not, label %for.cond45.preheader.for.inc52_crit_edge, label %for.cond45.preheader.for.body47_crit_edge

for.cond45.preheader.for.body47_crit_edge:        ; preds = %for.cond45.preheader
  br label %for.body47

for.cond45.preheader.for.inc52_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond45.preheader.for.body47_crit_edge
  %q_num.1184 = phi i32 [ %inc48, %for.body47.for.body47_crit_edge ], [ %q_num.0187, %for.cond45.preheader.for.body47_crit_edge ]
  %j.0183 = phi i32 [ %inc50, %for.body47.for.body47_crit_edge ], [ 0, %for.cond45.preheader.for.body47_crit_edge ]
  %inc48 = add i32 %q_num.1184, 1
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.213, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.214, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.215, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.216, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.217, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.218, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.219, i32 noundef %q_num.1184) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.220, i32 noundef %q_num.1184) #14
  %inc50 = add nuw i32 %j.0183, 1
  %13 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_rxp_per_rx, align 4
  %cmp46 = icmp ult i32 %inc50, %14
  br i1 %cmp46, label %for.body47.for.body47_crit_edge, label %for.body47.for.inc52_crit_edge

for.body47.for.inc52_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body47

for.inc52:                                        ; preds = %for.body47.for.inc52_crit_edge, %for.cond45.preheader.for.inc52_crit_edge, %for.body40.for.inc52_crit_edge
  %q_num.2 = phi i32 [ %q_num.0187, %for.body40.for.inc52_crit_edge ], [ %q_num.0187, %for.cond45.preheader.for.inc52_crit_edge ], [ %inc48, %for.body47.for.inc52_crit_edge ]
  %inc53 = add nuw i32 %i.3186, 1
  %15 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rx, align 4
  %cmp39 = icmp ult i32 %inc53, %16
  br i1 %cmp39, label %for.inc52.for.body40_crit_edge, label %for.cond55.preheader

for.inc52.for.body40_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40

for.cond99.preheader:                             ; preds = %for.inc96.for.cond99.preheader_crit_edge, %for.cond55.preheader.for.cond99.preheader_crit_edge, %for.cond38.preheader.for.cond99.preheader_crit_edge
  %num_tx = getelementptr i8, ptr %netdev, i32 7808
  %17 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp100202.not = icmp eq i32 %18, 0
  br i1 %cmp100202.not, label %for.cond99.preheader.for.end115_crit_edge, label %for.body101.lr.ph

for.cond99.preheader.for.end115_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end115

for.body101.lr.ph:                                ; preds = %for.cond99.preheader
  %num_txq_per_tx = getelementptr i8, ptr %netdev, i32 7816
  br label %for.body101

for.body58:                                       ; preds = %for.inc96.for.body58_crit_edge, %for.body58.lr.ph
  %q_num.3197 = phi i32 [ 0, %for.body58.lr.ph ], [ %q_num.6, %for.inc96.for.body58_crit_edge ]
  %i.4194 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc97, %for.inc96.for.body58_crit_edge ]
  %arrayidx60 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.4194
  %19 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx60, align 128
  %tobool62.not = icmp eq ptr %20, null
  br i1 %tobool62.not, label %for.body58.for.inc96_crit_edge, label %for.cond65.preheader

for.body58.for.inc96_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

for.cond65.preheader:                             ; preds = %for.body58
  %21 = ptrtoint ptr %num_rxp_per_rx66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_rxp_per_rx66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp67189.not = icmp eq i32 %22, 0
  br i1 %cmp67189.not, label %for.cond65.preheader.for.inc96_crit_edge, label %for.cond65.preheader.for.body68_crit_edge

for.cond65.preheader.for.body68_crit_edge:        ; preds = %for.cond65.preheader
  br label %for.body68

for.cond65.preheader.for.inc96_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

for.body68:                                       ; preds = %for.inc93.for.body68_crit_edge, %for.cond65.preheader.for.body68_crit_edge
  %q_num.4191 = phi i32 [ %q_num.5, %for.inc93.for.body68_crit_edge ], [ %q_num.3197, %for.cond65.preheader.for.body68_crit_edge ]
  %j.1190 = phi i32 [ %inc94, %for.inc93.for.body68_crit_edge ], [ 0, %for.cond65.preheader.for.body68_crit_edge ]
  %inc69 = add i32 %q_num.4191, 1
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.221, i32 noundef %q_num.4191) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.222, i32 noundef %q_num.4191) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.223, i32 noundef %q_num.4191) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.224, i32 noundef %q_num.4191) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.225, i32 noundef %q_num.4191) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.226, i32 noundef %q_num.4191) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.227, i32 noundef %q_num.4191) #14
  %arrayidx72 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.4194, i32 1, i32 %j.1190
  %23 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx72, align 8
  %tobool73.not = icmp eq ptr %24, null
  br i1 %tobool73.not, label %for.body68.for.inc93_crit_edge, label %land.lhs.true

for.body68.for.inc93_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc93

land.lhs.true:                                    ; preds = %for.body68
  %arrayidx79 = getelementptr %struct.bna_ccb, ptr %24, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx79, align 4
  %tobool80.not = icmp eq ptr %26, null
  br i1 %tobool80.not, label %land.lhs.true.for.inc93_crit_edge, label %land.lhs.true81

land.lhs.true.for.inc93_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc93

land.lhs.true81:                                  ; preds = %land.lhs.true
  %rxq = getelementptr inbounds %struct.bna_rcb, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rxq, align 4
  %tobool89.not = icmp eq ptr %28, null
  br i1 %tobool89.not, label %land.lhs.true81.for.inc93_crit_edge, label %if.then90

land.lhs.true81.for.inc93_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc93

if.then90:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  %inc91 = add i32 %q_num.4191, 2
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.221, i32 noundef %inc69) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.222, i32 noundef %inc69) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.223, i32 noundef %inc69) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.224, i32 noundef %inc69) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.225, i32 noundef %inc69) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.226, i32 noundef %inc69) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.227, i32 noundef %inc69) #14
  br label %for.inc93

for.inc93:                                        ; preds = %if.then90, %land.lhs.true81.for.inc93_crit_edge, %land.lhs.true.for.inc93_crit_edge, %for.body68.for.inc93_crit_edge
  %q_num.5 = phi i32 [ %inc91, %if.then90 ], [ %inc69, %land.lhs.true81.for.inc93_crit_edge ], [ %inc69, %land.lhs.true.for.inc93_crit_edge ], [ %inc69, %for.body68.for.inc93_crit_edge ]
  %inc94 = add nuw i32 %j.1190, 1
  %29 = ptrtoint ptr %num_rxp_per_rx66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_rxp_per_rx66, align 4
  %cmp67 = icmp ult i32 %inc94, %30
  br i1 %cmp67, label %for.inc93.for.body68_crit_edge, label %for.inc93.for.inc96_crit_edge

for.inc93.for.inc96_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

for.inc93.for.body68_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body68

for.inc96:                                        ; preds = %for.inc93.for.inc96_crit_edge, %for.cond65.preheader.for.inc96_crit_edge, %for.body58.for.inc96_crit_edge
  %q_num.6 = phi i32 [ %q_num.3197, %for.body58.for.inc96_crit_edge ], [ %q_num.3197, %for.cond65.preheader.for.inc96_crit_edge ], [ %q_num.5, %for.inc93.for.inc96_crit_edge ]
  %inc97 = add nuw i32 %i.4194, 1
  %31 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_rx, align 4
  %cmp57 = icmp ult i32 %inc97, %32
  br i1 %cmp57, label %for.inc96.for.body58_crit_edge, label %for.inc96.for.cond99.preheader_crit_edge

for.inc96.for.cond99.preheader_crit_edge:         ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond99.preheader

for.inc96.for.body58_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body58

for.body101:                                      ; preds = %for.inc113.for.body101_crit_edge, %for.body101.lr.ph
  %q_num.7204 = phi i32 [ 0, %for.body101.lr.ph ], [ %q_num.9, %for.inc113.for.body101_crit_edge ]
  %i.5203 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc114, %for.inc113.for.body101_crit_edge ]
  %arrayidx102 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 3, i32 %i.5203
  %33 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx102, align 128
  %tobool103.not = icmp eq ptr %34, null
  br i1 %tobool103.not, label %for.body101.for.inc113_crit_edge, label %for.cond106.preheader

for.body101.for.inc113_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc113

for.cond106.preheader:                            ; preds = %for.body101
  %35 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_txq_per_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp107198.not = icmp eq i32 %36, 0
  br i1 %cmp107198.not, label %for.cond106.preheader.for.inc113_crit_edge, label %for.cond106.preheader.for.body108_crit_edge

for.cond106.preheader.for.body108_crit_edge:      ; preds = %for.cond106.preheader
  br label %for.body108

for.cond106.preheader.for.inc113_crit_edge:       ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc113

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %for.cond106.preheader.for.body108_crit_edge
  %q_num.8200 = phi i32 [ %inc109, %for.body108.for.body108_crit_edge ], [ %q_num.7204, %for.cond106.preheader.for.body108_crit_edge ]
  %j.2199 = phi i32 [ %inc111, %for.body108.for.body108_crit_edge ], [ 0, %for.cond106.preheader.for.body108_crit_edge ]
  %inc109 = add i32 %q_num.8200, 1
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.228, i32 noundef %q_num.8200) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.229, i32 noundef %q_num.8200) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.230, i32 noundef %q_num.8200) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.231, i32 noundef %q_num.8200) #14
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %string.addr, ptr noundef nonnull @.str.232, i32 noundef %q_num.8200) #14
  %inc111 = add nuw i32 %j.2199, 1
  %37 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_txq_per_tx, align 8
  %cmp107 = icmp ult i32 %inc111, %38
  br i1 %cmp107, label %for.body108.for.body108_crit_edge, label %for.body108.for.inc113_crit_edge

for.body108.for.inc113_crit_edge:                 ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc113

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body108

for.inc113:                                       ; preds = %for.body108.for.inc113_crit_edge, %for.cond106.preheader.for.inc113_crit_edge, %for.body101.for.inc113_crit_edge
  %q_num.9 = phi i32 [ %q_num.7204, %for.body101.for.inc113_crit_edge ], [ %q_num.7204, %for.cond106.preheader.for.inc113_crit_edge ], [ %inc109, %for.body108.for.inc113_crit_edge ]
  %inc114 = add nuw i32 %i.5203, 1
  %39 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_tx, align 128
  %cmp100 = icmp ult i32 %inc114, %40
  br i1 %cmp100, label %for.inc113.for.body101_crit_edge, label %for.inc113.for.end115_crit_edge

for.inc113.for.end115_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end115

for.inc113.for.body101_crit_edge:                 ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body101

for.end115:                                       ; preds = %for.inc113.for.end115_crit_edge, %for.cond99.preheader.for.end115_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end115, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readonly %stats, ptr noundef writeonly %buf) #1 align 64 {
entry:
  %net_stats64 = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %net_stats64) #14
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #14
  %call1 = tail call fastcc i32 @bnad_get_stats_count_locked(ptr noundef %netdev)
  %n_stats = getelementptr inbounds %struct.ethtool_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %n_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %1)
  %cmp.not = icmp eq i32 %call1, %1
  br i1 %cmp.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #14
  br label %cleanup

do.body3:                                         ; preds = %entry
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %2 = call ptr @memset(ptr %net_stats64, i32 0, i32 192)
  call void @bnad_netdev_qstats_fill(ptr noundef %add.ptr.i, ptr noundef nonnull %net_stats64) #14
  call void @bnad_netdev_hwstats_fill(ptr noundef %add.ptr.i, ptr noundef nonnull %net_stats64) #14
  %3 = ptrtoint ptr %net_stats64 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %net_stats64, align 8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %buf, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 1
  %6 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_packets, align 8
  %arrayidx10 = getelementptr i64, ptr %buf, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx10, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 2
  %9 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_bytes, align 8
  %arrayidx12 = getelementptr i64, ptr %buf, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx12, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 3
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_bytes, align 8
  %arrayidx14 = getelementptr i64, ptr %buf, i32 3
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx14, align 8
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 4
  %15 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_errors, align 8
  %arrayidx16 = getelementptr i64, ptr %buf, i32 4
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx16, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_errors, align 8
  %arrayidx18 = getelementptr i64, ptr %buf, i32 5
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx18, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 6
  %21 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_dropped, align 8
  %arrayidx20 = getelementptr i64, ptr %buf, i32 6
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx20, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 7
  %24 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_dropped, align 8
  %arrayidx22 = getelementptr i64, ptr %buf, i32 7
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx22, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 8
  %27 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %multicast, align 8
  %arrayidx24 = getelementptr i64, ptr %buf, i32 8
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx24, align 8
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 9
  %30 = ptrtoint ptr %collisions to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %collisions, align 8
  %arrayidx26 = getelementptr i64, ptr %buf, i32 9
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx26, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 10
  %33 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_length_errors, align 8
  %arrayidx28 = getelementptr i64, ptr %buf, i32 10
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx28, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 12
  %36 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rx_crc_errors, align 8
  %arrayidx30 = getelementptr i64, ptr %buf, i32 11
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx30, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 13
  %39 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_frame_errors, align 8
  %arrayidx32 = getelementptr i64, ptr %buf, i32 12
  %41 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx32, align 8
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats64, i32 0, i32 18
  %42 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tx_fifo_errors, align 8
  %arrayidx34 = getelementptr i64, ptr %buf, i32 13
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx34, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %48, 1
  %49 = zext i32 %and1.i.i.i to i64
  %stats37 = getelementptr i8, ptr %netdev, i32 19176
  %netif_queue_stopped = getelementptr i8, ptr %netdev, i32 19192
  %50 = ptrtoint ptr %netif_queue_stopped to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %netif_queue_stopped, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body3
  %bi.0191 = phi i32 [ 14, %do.body3 ], [ %inc43, %for.body.for.body_crit_edge ]
  %i.0190 = phi i32 [ 0, %do.body3 ], [ %inc45, %for.body.for.body_crit_edge ]
  %arrayidx42 = getelementptr i64, ptr %stats37, i32 %i.0190
  %51 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx42, align 8
  %inc43 = add nuw nsw i32 %bi.0191, 1
  %arrayidx44 = getelementptr i64, ptr %buf, i32 %bi.0191
  %53 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx44, align 8
  %inc45 = add nuw nsw i32 %i.0190, 1
  %exitcond.not = icmp eq i32 %inc45, 35
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %bna_stats = getelementptr i8, ptr %netdev, i32 19456
  %54 = ptrtoint ptr %bna_stats to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bna_stats, align 8
  %hw_stats = getelementptr inbounds %struct.bna_stats, ptr %55, i32 0, i32 2
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.end
  %bi.1193 = phi i32 [ 49, %for.end ], [ %inc52, %for.body50.for.body50_crit_edge ]
  %i.1192 = phi i32 [ 0, %for.end ], [ %inc55, %for.body50.for.body50_crit_edge ]
  %arrayidx51 = getelementptr i64, ptr %hw_stats, i32 %i.1192
  %56 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx51, align 8
  %inc52 = add nuw nsw i32 %bi.1193, 1
  %arrayidx53 = getelementptr i64, ptr %buf, i32 %bi.1193
  %58 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx53, align 8
  %inc55 = add nuw nsw i32 %i.1192, 1
  %exitcond209.not = icmp eq i32 %inc55, 140
  br i1 %exitcond209.not, label %for.end56, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body50

for.end56:                                        ; preds = %for.body50
  %rid_mask = getelementptr i8, ptr %netdev, i32 17104
  %59 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rid_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not196 = icmp eq i32 %60, 0
  br i1 %tobool.not196, label %for.end56.for.end78_crit_edge, label %for.end56.for.body58_crit_edge

for.end56.for.body58_crit_edge:                   ; preds = %for.end56
  br label %for.body58

for.end56.for.end78_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end78

for.body58:                                       ; preds = %if.end75.for.body58_crit_edge, %for.end56.for.body58_crit_edge
  %bmap.0200 = phi i32 [ %shr, %if.end75.for.body58_crit_edge ], [ %60, %for.end56.for.body58_crit_edge ]
  %bi.2199 = phi i32 [ %bi.4, %if.end75.for.body58_crit_edge ], [ 189, %for.end56.for.body58_crit_edge ]
  %i.2197 = phi i32 [ %inc77, %if.end75.for.body58_crit_edge ], [ 0, %for.end56.for.body58_crit_edge ]
  %and = and i32 %bmap.0200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %for.body58.if.end75_crit_edge, label %if.then60

for.body58.if.end75_crit_edge:                    ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then60:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %bna_stats to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bna_stats, align 8
  %arrayidx64 = getelementptr %struct.bna_stats, ptr %62, i32 0, i32 2, i32 7, i32 %i.2197
  %63 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx64, align 8
  %inc70 = add i32 %bi.2199, 1
  %arrayidx71 = getelementptr i64, ptr %buf, i32 %bi.2199
  %65 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx71, align 8
  %arrayidx69.1 = getelementptr i64, ptr %arrayidx64, i32 1
  %66 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx69.1, align 8
  %inc70.1 = add i32 %bi.2199, 2
  %arrayidx71.1 = getelementptr i64, ptr %buf, i32 %inc70
  %68 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx71.1, align 8
  %arrayidx69.2 = getelementptr i64, ptr %arrayidx64, i32 2
  %69 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx69.2, align 8
  %inc70.2 = add i32 %bi.2199, 3
  %arrayidx71.2 = getelementptr i64, ptr %buf, i32 %inc70.1
  %71 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx71.2, align 8
  %arrayidx69.3 = getelementptr i64, ptr %arrayidx64, i32 3
  %72 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx69.3, align 8
  %inc70.3 = add i32 %bi.2199, 4
  %arrayidx71.3 = getelementptr i64, ptr %buf, i32 %inc70.2
  %74 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx71.3, align 8
  %arrayidx69.4 = getelementptr i64, ptr %arrayidx64, i32 4
  %75 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx69.4, align 8
  %inc70.4 = add i32 %bi.2199, 5
  %arrayidx71.4 = getelementptr i64, ptr %buf, i32 %inc70.3
  %77 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx71.4, align 8
  %arrayidx69.5 = getelementptr i64, ptr %arrayidx64, i32 5
  %78 = ptrtoint ptr %arrayidx69.5 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx69.5, align 8
  %inc70.5 = add i32 %bi.2199, 6
  %arrayidx71.5 = getelementptr i64, ptr %buf, i32 %inc70.4
  %80 = ptrtoint ptr %arrayidx71.5 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %arrayidx71.5, align 8
  %arrayidx69.6 = getelementptr i64, ptr %arrayidx64, i32 6
  %81 = ptrtoint ptr %arrayidx69.6 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx69.6, align 8
  %inc70.6 = add i32 %bi.2199, 7
  %arrayidx71.6 = getelementptr i64, ptr %buf, i32 %inc70.5
  %83 = ptrtoint ptr %arrayidx71.6 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx71.6, align 8
  %arrayidx69.7 = getelementptr i64, ptr %arrayidx64, i32 7
  %84 = ptrtoint ptr %arrayidx69.7 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx69.7, align 8
  %inc70.7 = add i32 %bi.2199, 8
  %arrayidx71.7 = getelementptr i64, ptr %buf, i32 %inc70.6
  %86 = ptrtoint ptr %arrayidx71.7 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx71.7, align 8
  %arrayidx69.8 = getelementptr i64, ptr %arrayidx64, i32 8
  %87 = ptrtoint ptr %arrayidx69.8 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx69.8, align 8
  %inc70.8 = add i32 %bi.2199, 9
  %arrayidx71.8 = getelementptr i64, ptr %buf, i32 %inc70.7
  %89 = ptrtoint ptr %arrayidx71.8 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx71.8, align 8
  %arrayidx69.9 = getelementptr i64, ptr %arrayidx64, i32 9
  %90 = ptrtoint ptr %arrayidx69.9 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx69.9, align 8
  %inc70.9 = add i32 %bi.2199, 10
  %arrayidx71.9 = getelementptr i64, ptr %buf, i32 %inc70.8
  %92 = ptrtoint ptr %arrayidx71.9 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx71.9, align 8
  %arrayidx69.10 = getelementptr i64, ptr %arrayidx64, i32 10
  %93 = ptrtoint ptr %arrayidx69.10 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx69.10, align 8
  %inc70.10 = add i32 %bi.2199, 11
  %arrayidx71.10 = getelementptr i64, ptr %buf, i32 %inc70.9
  %95 = ptrtoint ptr %arrayidx71.10 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx71.10, align 8
  %arrayidx69.11 = getelementptr i64, ptr %arrayidx64, i32 11
  %96 = ptrtoint ptr %arrayidx69.11 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx69.11, align 8
  %inc70.11 = add i32 %bi.2199, 12
  %arrayidx71.11 = getelementptr i64, ptr %buf, i32 %inc70.10
  %98 = ptrtoint ptr %arrayidx71.11 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %arrayidx71.11, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then60, %for.body58.if.end75_crit_edge
  %bi.4 = phi i32 [ %bi.2199, %for.body58.if.end75_crit_edge ], [ %inc70.11, %if.then60 ]
  %shr = lshr i32 %bmap.0200, 1
  %inc77 = add nuw nsw i32 %i.2197, 1
  %tobool.not = icmp ult i32 %bmap.0200, 2
  br i1 %tobool.not, label %if.end75.for.end78_crit_edge, label %if.end75.for.body58_crit_edge

if.end75.for.body58_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body58

if.end75.for.end78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end78

for.end78:                                        ; preds = %if.end75.for.end78_crit_edge, %for.end56.for.end78_crit_edge
  %bi.2.lcssa = phi i32 [ 189, %for.end56.for.end78_crit_edge ], [ %bi.4, %if.end75.for.end78_crit_edge ]
  %rid_mask80 = getelementptr i8, ptr %netdev, i32 17256
  %99 = ptrtoint ptr %rid_mask80 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rid_mask80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool82.not203 = icmp eq i32 %100, 0
  br i1 %tobool82.not203, label %for.end78.for.end105_crit_edge, label %for.end78.for.body83_crit_edge

for.end78.for.body83_crit_edge:                   ; preds = %for.end78
  br label %for.body83

for.end78.for.end105_crit_edge:                   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end105

for.body83:                                       ; preds = %if.end101.for.body83_crit_edge, %for.end78.for.body83_crit_edge
  %bmap.1207 = phi i32 [ %shr102, %if.end101.for.body83_crit_edge ], [ %100, %for.end78.for.body83_crit_edge ]
  %bi.5206 = phi i32 [ %bi.7, %if.end101.for.body83_crit_edge ], [ %bi.2.lcssa, %for.end78.for.body83_crit_edge ]
  %i.3204 = phi i32 [ %inc104, %if.end101.for.body83_crit_edge ], [ 0, %for.end78.for.body83_crit_edge ]
  %and84 = and i32 %bmap.1207, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %for.body83.if.end101_crit_edge, label %if.then86

for.body83.if.end101_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then86:                                        ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %bna_stats to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bna_stats, align 8
  %arrayidx90 = getelementptr %struct.bna_stats, ptr %102, i32 0, i32 2, i32 6, i32 %i.3204
  %103 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx90, align 8
  %inc96 = add i32 %bi.5206, 1
  %arrayidx97 = getelementptr i64, ptr %buf, i32 %bi.5206
  %105 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %arrayidx97, align 8
  %arrayidx95.1 = getelementptr i64, ptr %arrayidx90, i32 1
  %106 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx95.1, align 8
  %inc96.1 = add i32 %bi.5206, 2
  %arrayidx97.1 = getelementptr i64, ptr %buf, i32 %inc96
  %108 = ptrtoint ptr %arrayidx97.1 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %arrayidx97.1, align 8
  %arrayidx95.2 = getelementptr i64, ptr %arrayidx90, i32 2
  %109 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx95.2, align 8
  %inc96.2 = add i32 %bi.5206, 3
  %arrayidx97.2 = getelementptr i64, ptr %buf, i32 %inc96.1
  %111 = ptrtoint ptr %arrayidx97.2 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %arrayidx97.2, align 8
  %arrayidx95.3 = getelementptr i64, ptr %arrayidx90, i32 3
  %112 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx95.3, align 8
  %inc96.3 = add i32 %bi.5206, 4
  %arrayidx97.3 = getelementptr i64, ptr %buf, i32 %inc96.2
  %114 = ptrtoint ptr %arrayidx97.3 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %arrayidx97.3, align 8
  %arrayidx95.4 = getelementptr i64, ptr %arrayidx90, i32 4
  %115 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx95.4, align 8
  %inc96.4 = add i32 %bi.5206, 5
  %arrayidx97.4 = getelementptr i64, ptr %buf, i32 %inc96.3
  %117 = ptrtoint ptr %arrayidx97.4 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %arrayidx97.4, align 8
  %arrayidx95.5 = getelementptr i64, ptr %arrayidx90, i32 5
  %118 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx95.5, align 8
  %inc96.5 = add i32 %bi.5206, 6
  %arrayidx97.5 = getelementptr i64, ptr %buf, i32 %inc96.4
  %120 = ptrtoint ptr %arrayidx97.5 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %arrayidx97.5, align 8
  %arrayidx95.6 = getelementptr i64, ptr %arrayidx90, i32 6
  %121 = ptrtoint ptr %arrayidx95.6 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx95.6, align 8
  %inc96.6 = add i32 %bi.5206, 7
  %arrayidx97.6 = getelementptr i64, ptr %buf, i32 %inc96.5
  %123 = ptrtoint ptr %arrayidx97.6 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %arrayidx97.6, align 8
  %arrayidx95.7 = getelementptr i64, ptr %arrayidx90, i32 7
  %124 = ptrtoint ptr %arrayidx95.7 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx95.7, align 8
  %inc96.7 = add i32 %bi.5206, 8
  %arrayidx97.7 = getelementptr i64, ptr %buf, i32 %inc96.6
  %126 = ptrtoint ptr %arrayidx97.7 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %arrayidx97.7, align 8
  %arrayidx95.8 = getelementptr i64, ptr %arrayidx90, i32 8
  %127 = ptrtoint ptr %arrayidx95.8 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx95.8, align 8
  %inc96.8 = add i32 %bi.5206, 9
  %arrayidx97.8 = getelementptr i64, ptr %buf, i32 %inc96.7
  %129 = ptrtoint ptr %arrayidx97.8 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %arrayidx97.8, align 8
  %arrayidx95.9 = getelementptr i64, ptr %arrayidx90, i32 9
  %130 = ptrtoint ptr %arrayidx95.9 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %arrayidx95.9, align 8
  %inc96.9 = add i32 %bi.5206, 10
  %arrayidx97.9 = getelementptr i64, ptr %buf, i32 %inc96.8
  %132 = ptrtoint ptr %arrayidx97.9 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %arrayidx97.9, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then86, %for.body83.if.end101_crit_edge
  %bi.7 = phi i32 [ %bi.5206, %for.body83.if.end101_crit_edge ], [ %inc96.9, %if.then86 ]
  %shr102 = lshr i32 %bmap.1207, 1
  %inc104 = add nuw nsw i32 %i.3204, 1
  %tobool82.not = icmp ult i32 %bmap.1207, 2
  br i1 %tobool82.not, label %if.end101.for.end105_crit_edge, label %if.end101.for.body83_crit_edge

if.end101.for.body83_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body83

if.end101.for.end105_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end105

for.end105:                                       ; preds = %if.end101.for.end105_crit_edge, %for.end78.for.end105_crit_edge
  %bi.5.lcssa = phi i32 [ %bi.2.lcssa, %for.end78.for.end105_crit_edge ], [ %bi.7, %if.end101.for.end105_crit_edge ]
  %num_rx.i = getelementptr i8, ptr %netdev, i32 7812
  %133 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp6.not.i = icmp eq i32 %134, 0
  br i1 %cmp6.not.i, label %for.end105.for.cond211.preheader.i_crit_edge, label %for.body.lr.ph.i

for.end105.for.cond211.preheader.i_crit_edge:     ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond211.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.end105
  %num_rxp_per_rx.i = getelementptr i8, ptr %netdev, i32 7820
  br label %for.body.i

for.cond77.preheader.i:                           ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp7917.not.i = icmp eq i32 %174, 0
  br i1 %cmp7917.not.i, label %for.cond77.preheader.i.for.cond211.preheader.i_crit_edge, label %for.cond77.preheader.i.for.body81.i_crit_edge

for.cond77.preheader.i.for.body81.i_crit_edge:    ; preds = %for.cond77.preheader.i
  br label %for.body81.i

for.cond77.preheader.i.for.cond211.preheader.i_crit_edge: ; preds = %for.cond77.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond211.preheader.i

for.body.i:                                       ; preds = %for.inc74.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc75.i, %for.inc74.i.for.body.i_crit_edge ]
  %bi.addr.07.i = phi i32 [ %bi.5.lcssa, %for.body.lr.ph.i ], [ %bi.addr.3.i, %for.inc74.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i, align 128
  %tobool.not.i = icmp eq ptr %136, null
  br i1 %tobool.not.i, label %for.body.i.for.inc74.i_crit_edge, label %for.cond1.preheader.i

for.body.i.for.inc74.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %137 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_rxp_per_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp21.not.i = icmp eq i32 %138, 0
  br i1 %cmp21.not.i, label %for.cond1.preheader.i.for.inc74.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.inc74.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %j.04.i = phi i32 [ %inc73.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %bi.addr.13.i = phi i32 [ %bi.addr.2.i, %for.inc.i.for.body3.i_crit_edge ], [ %bi.addr.07.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i, i32 1, i32 %j.04.i
  %139 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx6.i, align 8
  %tobool7.not.i = icmp eq ptr %140, null
  br i1 %tobool7.not.i, label %for.body3.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body3.i
  %rcb13.i = getelementptr inbounds %struct.bna_ccb, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %rcb13.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rcb13.i, align 4
  %tobool15.not.i = icmp eq ptr %142, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %rxq.i = getelementptr inbounds %struct.bna_rcb, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rxq.i, align 4
  %tobool24.not.i = icmp eq ptr %144, null
  br i1 %tobool24.not.i, label %land.lhs.true16.i.for.inc.i_crit_edge, label %if.then25.i

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then25.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #16
  %producer_index.i = getelementptr inbounds %struct.bna_ccb, ptr %140, i32 0, i32 2
  %145 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %producer_index.i, align 4
  %conv.i = zext i32 %146 to i64
  %inc.i = add i32 %bi.addr.13.i, 1
  %arrayidx31.i = getelementptr i64, ptr %buf, i32 %bi.addr.13.i
  %147 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %conv.i, ptr %arrayidx31.i, align 8
  %inc32.i = add i32 %bi.addr.13.i, 2
  %arrayidx33.i = getelementptr i64, ptr %buf, i32 %inc.i
  %148 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 0, ptr %arrayidx33.i, align 8
  %149 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx6.i, align 8
  %hw_producer_index.i = getelementptr inbounds %struct.bna_ccb, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %hw_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw_producer_index.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %152, align 4
  %conv39.i = zext i32 %154 to i64
  %inc40.i = add i32 %bi.addr.13.i, 3
  %arrayidx41.i = getelementptr i64, ptr %buf, i32 %inc32.i
  %155 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv39.i, ptr %arrayidx41.i, align 8
  %rx_intr_ctr.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i, i32 1, i32 %j.04.i, i32 4
  %156 = ptrtoint ptr %rx_intr_ctr.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rx_intr_ctr.i, align 8
  %inc46.i = add i32 %bi.addr.13.i, 4
  %arrayidx47.i = getelementptr i64, ptr %buf, i32 %inc40.i
  %158 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %arrayidx47.i, align 8
  %rx_poll_ctr.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i, i32 1, i32 %j.04.i, i32 5
  %159 = ptrtoint ptr %rx_poll_ctr.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %rx_poll_ctr.i, align 8
  %inc52.i = add i32 %bi.addr.13.i, 5
  %arrayidx53.i = getelementptr i64, ptr %buf, i32 %inc46.i
  %161 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %arrayidx53.i, align 8
  %rx_schedule.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i, i32 1, i32 %j.04.i, i32 6
  %162 = ptrtoint ptr %rx_schedule.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx_schedule.i, align 8
  %inc58.i = add i32 %bi.addr.13.i, 6
  %arrayidx59.i = getelementptr i64, ptr %buf, i32 %inc52.i
  %164 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %163, ptr %arrayidx59.i, align 8
  %rx_keep_poll.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i, i32 1, i32 %j.04.i, i32 7
  %165 = ptrtoint ptr %rx_keep_poll.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %rx_keep_poll.i, align 8
  %inc64.i = add i32 %bi.addr.13.i, 7
  %arrayidx65.i = getelementptr i64, ptr %buf, i32 %inc58.i
  %167 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %arrayidx65.i, align 8
  %rx_complete.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.08.i, i32 1, i32 %j.04.i, i32 8
  %168 = ptrtoint ptr %rx_complete.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %rx_complete.i, align 8
  %inc70.i = add i32 %bi.addr.13.i, 8
  %arrayidx71.i = getelementptr i64, ptr %buf, i32 %inc64.i
  %170 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %arrayidx71.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then25.i, %land.lhs.true16.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %bi.addr.2.i = phi i32 [ %inc70.i, %if.then25.i ], [ %bi.addr.13.i, %land.lhs.true16.i.for.inc.i_crit_edge ], [ %bi.addr.13.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %bi.addr.13.i, %for.body3.i.for.inc.i_crit_edge ]
  %inc73.i = add nuw i32 %j.04.i, 1
  %171 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_rxp_per_rx.i, align 4
  %cmp2.i = icmp ult i32 %inc73.i, %172
  br i1 %cmp2.i, label %for.inc.i.for.body3.i_crit_edge, label %for.inc.i.for.inc74.i_crit_edge

for.inc.i.for.inc74.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i

for.inc74.i:                                      ; preds = %for.inc.i.for.inc74.i_crit_edge, %for.cond1.preheader.i.for.inc74.i_crit_edge, %for.body.i.for.inc74.i_crit_edge
  %bi.addr.3.i = phi i32 [ %bi.addr.07.i, %for.body.i.for.inc74.i_crit_edge ], [ %bi.addr.07.i, %for.cond1.preheader.i.for.inc74.i_crit_edge ], [ %bi.addr.2.i, %for.inc.i.for.inc74.i_crit_edge ]
  %inc75.i = add nuw i32 %i.08.i, 1
  %173 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_rx.i, align 4
  %cmp.i = icmp ult i32 %inc75.i, %174
  br i1 %cmp.i, label %for.inc74.i.for.body.i_crit_edge, label %for.cond77.preheader.i

for.inc74.i.for.body.i_crit_edge:                 ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond211.preheader.i:                          ; preds = %for.inc208.i.for.cond211.preheader.i_crit_edge, %for.cond77.preheader.i.for.cond211.preheader.i_crit_edge, %for.end105.for.cond211.preheader.i_crit_edge
  %bi.addr.4.lcssa.i = phi i32 [ %bi.addr.3.i, %for.cond77.preheader.i.for.cond211.preheader.i_crit_edge ], [ %bi.5.lcssa, %for.end105.for.cond211.preheader.i_crit_edge ], [ %bi.addr.8.i, %for.inc208.i.for.cond211.preheader.i_crit_edge ]
  %num_tx.i = getelementptr i8, ptr %netdev, i32 7808
  %175 = ptrtoint ptr %num_tx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %num_tx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp21227.not.i = icmp eq i32 %176, 0
  br i1 %cmp21227.not.i, label %for.cond211.preheader.i.bnad_per_q_stats_fill.exit_crit_edge, label %for.body214.lr.ph.i

for.cond211.preheader.i.bnad_per_q_stats_fill.exit_crit_edge: ; preds = %for.cond211.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnad_per_q_stats_fill.exit

for.body214.lr.ph.i:                              ; preds = %for.cond211.preheader.i
  %num_txq_per_tx.i = getelementptr i8, ptr %netdev, i32 7816
  br label %for.body214.i

for.body81.i:                                     ; preds = %for.inc208.i.for.body81.i_crit_edge, %for.cond77.preheader.i.for.body81.i_crit_edge
  %i.119.i = phi i32 [ %inc209.i, %for.inc208.i.for.body81.i_crit_edge ], [ 0, %for.cond77.preheader.i.for.body81.i_crit_edge ]
  %bi.addr.418.i = phi i32 [ %bi.addr.8.i, %for.inc208.i.for.body81.i_crit_edge ], [ %bi.addr.3.i, %for.cond77.preheader.i.for.body81.i_crit_edge ]
  %arrayidx83.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.119.i
  %177 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx83.i, align 128
  %tobool85.not.i = icmp eq ptr %178, null
  br i1 %tobool85.not.i, label %for.body81.i.for.inc208.i_crit_edge, label %for.cond88.preheader.i

for.body81.i.for.inc208.i_crit_edge:              ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc208.i

for.cond88.preheader.i:                           ; preds = %for.body81.i
  %179 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_rxp_per_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp9013.not.i = icmp eq i32 %180, 0
  br i1 %cmp9013.not.i, label %for.cond88.preheader.i.for.inc208.i_crit_edge, label %for.cond88.preheader.i.for.body92.i_crit_edge

for.cond88.preheader.i.for.body92.i_crit_edge:    ; preds = %for.cond88.preheader.i
  br label %for.body92.i

for.cond88.preheader.i.for.inc208.i_crit_edge:    ; preds = %for.cond88.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc208.i

for.body92.i:                                     ; preds = %for.inc205.i.for.body92.i_crit_edge, %for.cond88.preheader.i.for.body92.i_crit_edge
  %j.115.i = phi i32 [ %inc206.i, %for.inc205.i.for.body92.i_crit_edge ], [ 0, %for.cond88.preheader.i.for.body92.i_crit_edge ]
  %bi.addr.514.i = phi i32 [ %bi.addr.7.i, %for.inc205.i.for.body92.i_crit_edge ], [ %bi.addr.418.i, %for.cond88.preheader.i.for.body92.i_crit_edge ]
  %arrayidx96.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.119.i, i32 1, i32 %j.115.i
  %181 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx96.i, align 8
  %tobool98.not.i = icmp eq ptr %182, null
  br i1 %tobool98.not.i, label %for.body92.i.for.inc205.i_crit_edge, label %if.then99.i

for.body92.i.for.inc205.i_crit_edge:              ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc205.i

if.then99.i:                                      ; preds = %for.body92.i
  %rcb105.i = getelementptr inbounds %struct.bna_ccb, ptr %182, i32 0, i32 6
  %183 = ptrtoint ptr %rcb105.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rcb105.i, align 4
  %tobool107.not.i = icmp eq ptr %184, null
  br i1 %tobool107.not.i, label %if.then99.i.if.end148.i_crit_edge, label %land.lhs.true108.i

if.then99.i.if.end148.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148.i

land.lhs.true108.i:                               ; preds = %if.then99.i
  %rxq116.i = getelementptr inbounds %struct.bna_rcb, ptr %184, i32 0, i32 7
  %185 = ptrtoint ptr %rxq116.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rxq116.i, align 4
  %tobool117.not.i = icmp eq ptr %186, null
  br i1 %tobool117.not.i, label %land.lhs.true108.i.if.end148.i_crit_edge, label %if.then118.i

land.lhs.true108.i.if.end148.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148.i

if.then118.i:                                     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_packets.i = getelementptr inbounds %struct.bna_rxq, ptr %186, i32 0, i32 10
  %187 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %rx_packets.i, align 8
  %inc127.i = add i32 %bi.addr.514.i, 1
  %arrayidx128.i = getelementptr i64, ptr %buf, i32 %bi.addr.514.i
  %189 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %188, ptr %arrayidx128.i, align 8
  %190 = ptrtoint ptr %rxq116.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rxq116.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.bna_rxq, ptr %191, i32 0, i32 11
  %192 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %rx_bytes.i, align 8
  %inc130.i = add i32 %bi.addr.514.i, 2
  %arrayidx131.i = getelementptr i64, ptr %buf, i32 %inc127.i
  %194 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %arrayidx131.i, align 8
  %195 = load ptr, ptr %rxq116.i, align 4
  %rx_packets_with_error.i = getelementptr inbounds %struct.bna_rxq, ptr %195, i32 0, i32 12
  %196 = ptrtoint ptr %rx_packets_with_error.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %rx_packets_with_error.i, align 8
  %inc133.i = add i32 %bi.addr.514.i, 3
  %arrayidx134.i = getelementptr i64, ptr %buf, i32 %inc130.i
  %198 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %arrayidx134.i, align 8
  %199 = load ptr, ptr %rxq116.i, align 4
  %rxbuf_alloc_failed.i = getelementptr inbounds %struct.bna_rxq, ptr %199, i32 0, i32 13
  %200 = ptrtoint ptr %rxbuf_alloc_failed.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %rxbuf_alloc_failed.i, align 8
  %inc136.i = add i32 %bi.addr.514.i, 4
  %arrayidx137.i = getelementptr i64, ptr %buf, i32 %inc133.i
  %202 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %201, ptr %arrayidx137.i, align 8
  %203 = load ptr, ptr %rxq116.i, align 4
  %rxbuf_map_failed.i = getelementptr inbounds %struct.bna_rxq, ptr %203, i32 0, i32 14
  %204 = ptrtoint ptr %rxbuf_map_failed.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %rxbuf_map_failed.i, align 8
  %inc139.i = add i32 %bi.addr.514.i, 5
  %arrayidx140.i = getelementptr i64, ptr %buf, i32 %inc136.i
  %206 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %205, ptr %arrayidx140.i, align 8
  %producer_index141.i = getelementptr inbounds %struct.bna_rcb, ptr %184, i32 0, i32 3
  %207 = ptrtoint ptr %producer_index141.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %producer_index141.i, align 4
  %conv142.i = zext i32 %208 to i64
  %inc143.i = add i32 %bi.addr.514.i, 6
  %arrayidx144.i = getelementptr i64, ptr %buf, i32 %inc139.i
  %209 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv142.i, ptr %arrayidx144.i, align 8
  %consumer_index.i = getelementptr inbounds %struct.bna_rcb, ptr %184, i32 0, i32 4
  %210 = ptrtoint ptr %consumer_index.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %consumer_index.i, align 4
  %conv145.i = zext i32 %211 to i64
  %inc146.i = add i32 %bi.addr.514.i, 7
  %arrayidx147.i = getelementptr i64, ptr %buf, i32 %inc143.i
  %212 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %conv145.i, ptr %arrayidx147.i, align 8
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then118.i, %land.lhs.true108.i.if.end148.i_crit_edge, %if.then99.i.if.end148.i_crit_edge
  %bi.addr.6.i = phi i32 [ %inc146.i, %if.then118.i ], [ %bi.addr.514.i, %land.lhs.true108.i.if.end148.i_crit_edge ], [ %bi.addr.514.i, %if.then99.i.if.end148.i_crit_edge ]
  %213 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx96.i, align 8
  %arrayidx155.i = getelementptr %struct.bna_ccb, ptr %214, i32 0, i32 6, i32 1
  %215 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx155.i, align 4
  %tobool156.not.i = icmp eq ptr %216, null
  br i1 %tobool156.not.i, label %if.end148.i.for.inc205.i_crit_edge, label %land.lhs.true157.i

if.end148.i.for.inc205.i_crit_edge:               ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc205.i

land.lhs.true157.i:                               ; preds = %if.end148.i
  %rxq165.i = getelementptr inbounds %struct.bna_rcb, ptr %216, i32 0, i32 7
  %217 = ptrtoint ptr %rxq165.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rxq165.i, align 4
  %tobool166.not.i = icmp eq ptr %218, null
  br i1 %tobool166.not.i, label %land.lhs.true157.i.for.inc205.i_crit_edge, label %if.then167.i

land.lhs.true157.i.for.inc205.i_crit_edge:        ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc205.i

if.then167.i:                                     ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_packets176.i = getelementptr inbounds %struct.bna_rxq, ptr %218, i32 0, i32 10
  %219 = ptrtoint ptr %rx_packets176.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %rx_packets176.i, align 8
  %inc177.i = add i32 %bi.addr.6.i, 1
  %arrayidx178.i = getelementptr i64, ptr %buf, i32 %bi.addr.6.i
  %221 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %220, ptr %arrayidx178.i, align 8
  %222 = ptrtoint ptr %rxq165.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rxq165.i, align 4
  %rx_bytes180.i = getelementptr inbounds %struct.bna_rxq, ptr %223, i32 0, i32 11
  %224 = ptrtoint ptr %rx_bytes180.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %rx_bytes180.i, align 8
  %inc181.i = add i32 %bi.addr.6.i, 2
  %arrayidx182.i = getelementptr i64, ptr %buf, i32 %inc177.i
  %226 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %225, ptr %arrayidx182.i, align 8
  %227 = load ptr, ptr %rxq165.i, align 4
  %rx_packets_with_error184.i = getelementptr inbounds %struct.bna_rxq, ptr %227, i32 0, i32 12
  %228 = ptrtoint ptr %rx_packets_with_error184.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %rx_packets_with_error184.i, align 8
  %inc185.i = add i32 %bi.addr.6.i, 3
  %arrayidx186.i = getelementptr i64, ptr %buf, i32 %inc181.i
  %230 = ptrtoint ptr %arrayidx186.i to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %arrayidx186.i, align 8
  %231 = load ptr, ptr %rxq165.i, align 4
  %rxbuf_alloc_failed188.i = getelementptr inbounds %struct.bna_rxq, ptr %231, i32 0, i32 13
  %232 = ptrtoint ptr %rxbuf_alloc_failed188.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %rxbuf_alloc_failed188.i, align 8
  %inc189.i = add i32 %bi.addr.6.i, 4
  %arrayidx190.i = getelementptr i64, ptr %buf, i32 %inc185.i
  %234 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %233, ptr %arrayidx190.i, align 8
  %235 = load ptr, ptr %rxq165.i, align 4
  %rxbuf_map_failed192.i = getelementptr inbounds %struct.bna_rxq, ptr %235, i32 0, i32 14
  %236 = ptrtoint ptr %rxbuf_map_failed192.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %rxbuf_map_failed192.i, align 8
  %inc193.i = add i32 %bi.addr.6.i, 5
  %arrayidx194.i = getelementptr i64, ptr %buf, i32 %inc189.i
  %238 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %237, ptr %arrayidx194.i, align 8
  %producer_index195.i = getelementptr inbounds %struct.bna_rcb, ptr %216, i32 0, i32 3
  %239 = ptrtoint ptr %producer_index195.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %producer_index195.i, align 4
  %conv196.i = zext i32 %240 to i64
  %inc197.i = add i32 %bi.addr.6.i, 6
  %arrayidx198.i = getelementptr i64, ptr %buf, i32 %inc193.i
  %241 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %conv196.i, ptr %arrayidx198.i, align 8
  %consumer_index199.i = getelementptr inbounds %struct.bna_rcb, ptr %216, i32 0, i32 4
  %242 = ptrtoint ptr %consumer_index199.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %consumer_index199.i, align 4
  %conv200.i = zext i32 %243 to i64
  %inc201.i = add i32 %bi.addr.6.i, 7
  %arrayidx202.i = getelementptr i64, ptr %buf, i32 %inc197.i
  %244 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %conv200.i, ptr %arrayidx202.i, align 8
  br label %for.inc205.i

for.inc205.i:                                     ; preds = %if.then167.i, %land.lhs.true157.i.for.inc205.i_crit_edge, %if.end148.i.for.inc205.i_crit_edge, %for.body92.i.for.inc205.i_crit_edge
  %bi.addr.7.i = phi i32 [ %inc201.i, %if.then167.i ], [ %bi.addr.6.i, %land.lhs.true157.i.for.inc205.i_crit_edge ], [ %bi.addr.6.i, %if.end148.i.for.inc205.i_crit_edge ], [ %bi.addr.514.i, %for.body92.i.for.inc205.i_crit_edge ]
  %inc206.i = add nuw i32 %j.115.i, 1
  %245 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %num_rxp_per_rx.i, align 4
  %cmp90.i = icmp ult i32 %inc206.i, %246
  br i1 %cmp90.i, label %for.inc205.i.for.body92.i_crit_edge, label %for.inc205.i.for.inc208.i_crit_edge

for.inc205.i.for.inc208.i_crit_edge:              ; preds = %for.inc205.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc208.i

for.inc205.i.for.body92.i_crit_edge:              ; preds = %for.inc205.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body92.i

for.inc208.i:                                     ; preds = %for.inc205.i.for.inc208.i_crit_edge, %for.cond88.preheader.i.for.inc208.i_crit_edge, %for.body81.i.for.inc208.i_crit_edge
  %bi.addr.8.i = phi i32 [ %bi.addr.418.i, %for.body81.i.for.inc208.i_crit_edge ], [ %bi.addr.418.i, %for.cond88.preheader.i.for.inc208.i_crit_edge ], [ %bi.addr.7.i, %for.inc205.i.for.inc208.i_crit_edge ]
  %inc209.i = add nuw i32 %i.119.i, 1
  %247 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %num_rx.i, align 4
  %cmp79.i = icmp ult i32 %inc209.i, %248
  br i1 %cmp79.i, label %for.inc208.i.for.body81.i_crit_edge, label %for.inc208.i.for.cond211.preheader.i_crit_edge

for.inc208.i.for.cond211.preheader.i_crit_edge:   ; preds = %for.inc208.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond211.preheader.i

for.inc208.i.for.body81.i_crit_edge:              ; preds = %for.inc208.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body81.i

for.body214.i:                                    ; preds = %for.inc260.i.for.body214.i_crit_edge, %for.body214.lr.ph.i
  %i.229.i = phi i32 [ 0, %for.body214.lr.ph.i ], [ %inc261.i, %for.inc260.i.for.body214.i_crit_edge ]
  %bi.addr.928.i = phi i32 [ %bi.addr.4.lcssa.i, %for.body214.lr.ph.i ], [ %bi.addr.12.i, %for.inc260.i.for.body214.i_crit_edge ]
  %arrayidx215.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 3, i32 %i.229.i
  %249 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arrayidx215.i, align 128
  %tobool216.not.i = icmp eq ptr %250, null
  br i1 %tobool216.not.i, label %for.body214.i.for.inc260.i_crit_edge, label %for.cond219.preheader.i

for.body214.i.for.inc260.i_crit_edge:             ; preds = %for.body214.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc260.i

for.cond219.preheader.i:                          ; preds = %for.body214.i
  %251 = ptrtoint ptr %num_txq_per_tx.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %num_txq_per_tx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp22023.not.i = icmp eq i32 %252, 0
  br i1 %cmp22023.not.i, label %for.cond219.preheader.i.for.inc260.i_crit_edge, label %for.cond219.preheader.i.for.body222.i_crit_edge

for.cond219.preheader.i.for.body222.i_crit_edge:  ; preds = %for.cond219.preheader.i
  br label %for.body222.i

for.cond219.preheader.i.for.inc260.i_crit_edge:   ; preds = %for.cond219.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc260.i

for.body222.i:                                    ; preds = %for.inc257.i.for.body222.i_crit_edge, %for.cond219.preheader.i.for.body222.i_crit_edge
  %j.225.i = phi i32 [ %inc258.i, %for.inc257.i.for.body222.i_crit_edge ], [ 0, %for.cond219.preheader.i.for.body222.i_crit_edge ]
  %bi.addr.1024.i = phi i32 [ %bi.addr.11.i, %for.inc257.i.for.body222.i_crit_edge ], [ %bi.addr.928.i, %for.cond219.preheader.i.for.body222.i_crit_edge ]
  %arrayidx226.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 3, i32 %i.229.i, i32 1, i32 %j.225.i
  %253 = ptrtoint ptr %arrayidx226.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx226.i, align 4
  %tobool227.not.i = icmp eq ptr %254, null
  br i1 %tobool227.not.i, label %for.body222.i.for.inc257.i_crit_edge, label %land.lhs.true228.i

for.body222.i.for.inc257.i_crit_edge:             ; preds = %for.body222.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc257.i

land.lhs.true228.i:                               ; preds = %for.body222.i
  %txq.i = getelementptr inbounds %struct.bna_tcb, ptr %254, i32 0, i32 9
  %255 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %txq.i, align 4
  %tobool233.not.i = icmp eq ptr %256, null
  br i1 %tobool233.not.i, label %land.lhs.true228.i.for.inc257.i_crit_edge, label %if.then234.i

land.lhs.true228.i.for.inc257.i_crit_edge:        ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc257.i

if.then234.i:                                     ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #16
  %tx_packets.i = getelementptr inbounds %struct.bna_txq, ptr %256, i32 0, i32 7
  %257 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %tx_packets.i, align 8
  %inc240.i = add i32 %bi.addr.1024.i, 1
  %arrayidx241.i = getelementptr i64, ptr %buf, i32 %bi.addr.1024.i
  %259 = ptrtoint ptr %arrayidx241.i to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %arrayidx241.i, align 8
  %260 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %txq.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.bna_txq, ptr %261, i32 0, i32 8
  %262 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %tx_bytes.i, align 8
  %inc243.i = add i32 %bi.addr.1024.i, 2
  %arrayidx244.i = getelementptr i64, ptr %buf, i32 %inc240.i
  %264 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %arrayidx244.i, align 8
  %producer_index245.i = getelementptr inbounds %struct.bna_tcb, ptr %254, i32 0, i32 3
  %265 = ptrtoint ptr %producer_index245.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %producer_index245.i, align 4
  %conv246.i = zext i32 %266 to i64
  %inc247.i = add i32 %bi.addr.1024.i, 3
  %arrayidx248.i = getelementptr i64, ptr %buf, i32 %inc243.i
  %267 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %conv246.i, ptr %arrayidx248.i, align 8
  %consumer_index249.i = getelementptr inbounds %struct.bna_tcb, ptr %254, i32 0, i32 4
  %268 = ptrtoint ptr %consumer_index249.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %consumer_index249.i, align 4
  %conv250.i = zext i32 %269 to i64
  %inc251.i = add i32 %bi.addr.1024.i, 4
  %arrayidx252.i = getelementptr i64, ptr %buf, i32 %inc247.i
  %270 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_store8_noabort(i32 %270)
  store i64 %conv250.i, ptr %arrayidx252.i, align 8
  %hw_consumer_index.i = getelementptr inbounds %struct.bna_tcb, ptr %254, i32 0, i32 5
  %271 = ptrtoint ptr %hw_consumer_index.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hw_consumer_index.i, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load volatile i32, ptr %272, align 4
  %conv253.i = zext i32 %274 to i64
  %inc254.i = add i32 %bi.addr.1024.i, 5
  %arrayidx255.i = getelementptr i64, ptr %buf, i32 %inc251.i
  %275 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %conv253.i, ptr %arrayidx255.i, align 8
  br label %for.inc257.i

for.inc257.i:                                     ; preds = %if.then234.i, %land.lhs.true228.i.for.inc257.i_crit_edge, %for.body222.i.for.inc257.i_crit_edge
  %bi.addr.11.i = phi i32 [ %inc254.i, %if.then234.i ], [ %bi.addr.1024.i, %land.lhs.true228.i.for.inc257.i_crit_edge ], [ %bi.addr.1024.i, %for.body222.i.for.inc257.i_crit_edge ]
  %inc258.i = add nuw i32 %j.225.i, 1
  %276 = ptrtoint ptr %num_txq_per_tx.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %num_txq_per_tx.i, align 8
  %cmp220.i = icmp ult i32 %inc258.i, %277
  br i1 %cmp220.i, label %for.inc257.i.for.body222.i_crit_edge, label %for.inc257.i.for.inc260.i_crit_edge

for.inc257.i.for.inc260.i_crit_edge:              ; preds = %for.inc257.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc260.i

for.inc257.i.for.body222.i_crit_edge:             ; preds = %for.inc257.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body222.i

for.inc260.i:                                     ; preds = %for.inc257.i.for.inc260.i_crit_edge, %for.cond219.preheader.i.for.inc260.i_crit_edge, %for.body214.i.for.inc260.i_crit_edge
  %bi.addr.12.i = phi i32 [ %bi.addr.928.i, %for.body214.i.for.inc260.i_crit_edge ], [ %bi.addr.928.i, %for.cond219.preheader.i.for.inc260.i_crit_edge ], [ %bi.addr.11.i, %for.inc257.i.for.inc260.i_crit_edge ]
  %inc261.i = add nuw i32 %i.229.i, 1
  %278 = ptrtoint ptr %num_tx.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %num_tx.i, align 128
  %cmp212.i = icmp ult i32 %inc261.i, %279
  br i1 %cmp212.i, label %for.inc260.i.for.body214.i_crit_edge, label %for.inc260.i.bnad_per_q_stats_fill.exit_crit_edge

for.inc260.i.bnad_per_q_stats_fill.exit_crit_edge: ; preds = %for.inc260.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnad_per_q_stats_fill.exit

for.inc260.i.for.body214.i_crit_edge:             ; preds = %for.inc260.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body214.i

bnad_per_q_stats_fill.exit:                       ; preds = %for.inc260.i.bnad_per_q_stats_fill.exit_crit_edge, %for.cond211.preheader.i.bnad_per_q_stats_fill.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call6) #14
  call void @mutex_unlock(ptr noundef %conf_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %bnad_per_q_stats_fill.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %net_stats64) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @bnad_get_stats_count_locked(ptr noundef %netdev)
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_flash_device(ptr noundef %netdev, ptr noundef %eflash) #1 align 64 {
entry:
  %fcomp = alloca %struct.bnad_iocmd_comp, align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fcomp) #14
  %0 = call ptr @memset(ptr %fcomp, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #14
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !487
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %eflash, i32 0, i32 2
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call1 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %data, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.233, ptr noundef %data) #19
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %4 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %fcomp, align 4
  %comp_status = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 2
  %5 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %comp_status, align 4
  %comp = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1
  %6 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #14
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  call void @_raw_spin_lock_irq(ptr noundef %bna_lock) #14
  %flash = getelementptr i8, ptr %netdev, i32 16056
  %id = getelementptr i8, ptr %netdev, i32 2308
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %data5 = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data5, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %call6 = call i32 @bfa_nw_flash_update_part(ptr noundef %flash, i32 noundef 2, i8 noundef zeroext %conv, ptr noundef %12, i32 noundef %14, i32 noundef 0, ptr noundef nonnull @bnad_cb_completion, ptr noundef nonnull %fcomp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.234, i32 noundef %call6) #19
  call void @_raw_spin_unlock_irq(ptr noundef %bna_lock) #14
  br label %out

if.end10:                                         ; preds = %if.end
  call void @_raw_spin_unlock_irq(ptr noundef %bna_lock) #14
  call void @wait_for_completion(ptr noundef %comp) #14
  %15 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %comp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14.not = icmp eq i32 %16, 0
  br i1 %cmp14.not, label %if.end10.out_crit_edge, label %if.then16

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.235, i32 noundef %16) #19
  br label %out

out:                                              ; preds = %if.then16, %if.end10.out_crit_edge, %if.then8, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ -5, %if.then8 ], [ -5, %if.then16 ], [ 0, %if.end10.out_crit_edge ]
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fcomp) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnad_get_link_ksettings(ptr noundef %netdev, ptr nocapture noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7168, ptr %add.ptr.i, align 4
  %add.ptr.i55 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7168, ptr %add.ptr.i55, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %autoneg, align 1
  %5 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %link_modes, align 4
  %6 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %phy_address, align 2
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool.not.i, i32 10000, i32 -1
  %spec.select64 = select i1 %tobool.not.i, i8 1, i8 -1
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select64, ptr %14, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnad_set_link_ksettings(ptr nocapture noundef readnone %netdev, ptr nocapture noundef readonly %cmd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %cmp3 = icmp eq i32 %3, 10000
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp7 = icmp eq i8 %5, 1
  br i1 %cmp7, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  br label %return

return:                                           ; preds = %if.end10, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %if.end10 ], [ -95, %entry.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_get_flash_partition_by_offset(ptr noundef %bnad, i32 noundef %offset, ptr nocapture noundef writeonly %base_offset) unnamed_addr #1 align 64 {
entry:
  %fcomp = alloca %struct.bnad_iocmd_comp, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fcomp) #14
  %0 = getelementptr inbounds i8, ptr %fcomp, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1032) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bnad, ptr %fcomp, align 4
  %comp_status = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 2
  %4 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %comp_status, align 4
  %comp = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1
  %5 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #14
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #14
  %flash = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19, i32 7
  %call7 = call i32 @bfa_nw_flash_get_attr(ptr noundef %flash, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @bnad_cb_completion, ptr noundef nonnull %fcomp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call4) #14
  br i1 %cmp8.not, label %if.end12, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end
  call void @wait_for_completion(ptr noundef %comp) #14
  %6 = ptrtoint ptr %comp_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp eq i32 %7, 0
  br i1 %cmp16, label %for.cond.preheader, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end12
  %npart = getelementptr inbounds %struct.bfa_flash_attr, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %npart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1965.not = icmp eq i32 %9, 0
  br i1 %cmp1965.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %part_off = getelementptr %struct.bfa_flash_attr, ptr %call7.i.i, i32 0, i32 2, i32 %i.066, i32 2
  %10 = ptrtoint ptr %part_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %part_off, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %offset)
  %cmp21.not = icmp ugt i32 %11, %offset
  br i1 %cmp21.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %part_size = getelementptr %struct.bfa_flash_attr, ptr %call7.i.i, i32 0, i32 2, i32 %i.066, i32 3
  %12 = ptrtoint ptr %part_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %part_size, align 4
  %add = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp28 = icmp ugt i32 %add, %offset
  br i1 %cmp28, label %if.then30, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.le = getelementptr %struct.bfa_flash_attr, ptr %call7.i.i, i32 0, i32 2, i32 %i.066
  %14 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.le, align 8
  %16 = ptrtoint ptr %base_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %base_offset, align 4
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then30, %for.cond.preheader.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ %15, %if.then30 ], [ 0, %if.end12.cleanup.sink.split_crit_edge ], [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %for.inc.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fcomp) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_flash_read_part(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_completion(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_flash_get_attr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_flash_update_part(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_dim_timer_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_rx_coalescing_timeo_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_tx_coalescing_timeo_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_destroy_rx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnad_setup_rx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_restore_vlans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnad_enable_default_bcast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnad_mac_addr_set_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_set_rx_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_destroy_tx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnad_setup_tx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_pause_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_get_stats_count_locked(ptr nocapture noundef readonly %netdev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rid_mask = getelementptr i8, ptr %netdev, i32 17104
  %0 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rid_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not114 = icmp eq i32 %1, 0
  br i1 %tobool.not114, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bmap.0116 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %txf_active_num.0115 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %bmap.0116, 1
  %spec.select = add i32 %and, %txf_active_num.0115
  %shr = lshr i32 %bmap.0116, 1
  %tobool.not = icmp ult i32 %bmap.0116, 2
  br i1 %tobool.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = mul i32 %spec.select, 12
  %phi.bo137 = add i32 %phi.bo, 189
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %txf_active_num.0.lcssa = phi i32 [ 189, %entry.for.end_crit_edge ], [ %phi.bo137, %for.end.loopexit ]
  %rid_mask4 = getelementptr i8, ptr %netdev, i32 17256
  %2 = ptrtoint ptr %rid_mask4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rid_mask4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not117 = icmp eq i32 %3, 0
  br i1 %tobool6.not117, label %for.end.for.end16_crit_edge, label %for.end.for.body7_crit_edge

for.end.for.body7_crit_edge:                      ; preds = %for.end
  br label %for.body7

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end.for.body7_crit_edge
  %bmap.1119 = phi i32 [ %shr13, %for.body7.for.body7_crit_edge ], [ %3, %for.end.for.body7_crit_edge ]
  %rxf_active_num.0118 = phi i32 [ %spec.select112, %for.body7.for.body7_crit_edge ], [ 0, %for.end.for.body7_crit_edge ]
  %and8 = and i32 %bmap.1119, 1
  %spec.select112 = add i32 %and8, %rxf_active_num.0118
  %shr13 = lshr i32 %bmap.1119, 1
  %tobool6.not = icmp ult i32 %bmap.1119, 2
  br i1 %tobool6.not, label %for.end16.loopexit, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.end16.loopexit:                               ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo138 = mul i32 %spec.select112, 10
  br label %for.end16

for.end16:                                        ; preds = %for.end16.loopexit, %for.end.for.end16_crit_edge
  %rxf_active_num.0.lcssa = phi i32 [ 0, %for.end.for.end16_crit_edge ], [ %phi.bo138, %for.end16.loopexit ]
  %add18 = add i32 %txf_active_num.0.lcssa, %rxf_active_num.0.lcssa
  %num_rx = getelementptr i8, ptr %netdev, i32 7812
  %4 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp125.not = icmp eq i32 %5, 0
  br i1 %cmp125.not, label %for.end16.for.cond62.preheader_crit_edge, label %for.body20.lr.ph

for.end16.for.cond62.preheader_crit_edge:         ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond62.preheader

for.body20.lr.ph:                                 ; preds = %for.end16
  %num_rxp_per_rx = getelementptr i8, ptr %netdev, i32 7820
  br label %for.body20

for.cond62.preheader:                             ; preds = %for.inc59.for.cond62.preheader_crit_edge, %for.end16.for.cond62.preheader_crit_edge
  %count.0.lcssa = phi i32 [ %add18, %for.end16.for.cond62.preheader_crit_edge ], [ %count.3, %for.inc59.for.cond62.preheader_crit_edge ]
  %num_tx = getelementptr i8, ptr %netdev, i32 7808
  %6 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp63131.not = icmp eq i32 %7, 0
  br i1 %cmp63131.not, label %for.cond62.preheader.for.end73_crit_edge, label %for.body64.lr.ph

for.cond62.preheader.for.end73_crit_edge:         ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end73

for.body64.lr.ph:                                 ; preds = %for.cond62.preheader
  %num_txq_per_tx = getelementptr i8, ptr %netdev, i32 7816
  br label %for.body64

for.body20:                                       ; preds = %for.inc59.for.body20_crit_edge, %for.body20.lr.ph
  %count.0129 = phi i32 [ %add18, %for.body20.lr.ph ], [ %count.3, %for.inc59.for.body20_crit_edge ]
  %i.2126 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc60, %for.inc59.for.body20_crit_edge ]
  %arrayidx = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.2126
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 128
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %for.body20.for.inc59_crit_edge, label %if.end23

for.body20.for.inc59_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

if.end23:                                         ; preds = %for.body20
  %10 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rxp_per_rx, align 4
  %reass.mul = mul i32 %11, 15
  %add28 = add i32 %reass.mul, %count.0129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31121.not = icmp eq i32 %11, 0
  br i1 %cmp31121.not, label %if.end23.for.inc59_crit_edge, label %if.end23.for.body32_crit_edge

if.end23.for.body32_crit_edge:                    ; preds = %if.end23
  br label %for.body32

if.end23.for.inc59_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

for.body32:                                       ; preds = %for.inc56.for.body32_crit_edge, %if.end23.for.body32_crit_edge
  %count.1123 = phi i32 [ %count.2, %for.inc56.for.body32_crit_edge ], [ %add28, %if.end23.for.body32_crit_edge ]
  %j.0122 = phi i32 [ %inc57, %for.inc56.for.body32_crit_edge ], [ 0, %if.end23.for.body32_crit_edge ]
  %arrayidx35 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.2126, i32 1, i32 %j.0122
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx35, align 8
  %tobool36.not = icmp eq ptr %13, null
  br i1 %tobool36.not, label %for.body32.for.inc56_crit_edge, label %land.lhs.true

for.body32.for.inc56_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc56

land.lhs.true:                                    ; preds = %for.body32
  %arrayidx42 = getelementptr %struct.bna_ccb, ptr %13, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %15, null
  br i1 %tobool43.not, label %land.lhs.true.for.inc56_crit_edge, label %land.lhs.true44

land.lhs.true.for.inc56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc56

land.lhs.true44:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %rxq = getelementptr inbounds %struct.bna_rcb, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxq, align 4
  %tobool52.not = icmp eq ptr %17, null
  %add54 = add i32 %count.1123, 7
  %spec.select113 = select i1 %tobool52.not, i32 %count.1123, i32 %add54
  br label %for.inc56

for.inc56:                                        ; preds = %land.lhs.true44, %land.lhs.true.for.inc56_crit_edge, %for.body32.for.inc56_crit_edge
  %count.2 = phi i32 [ %count.1123, %land.lhs.true.for.inc56_crit_edge ], [ %count.1123, %for.body32.for.inc56_crit_edge ], [ %spec.select113, %land.lhs.true44 ]
  %inc57 = add nuw i32 %j.0122, 1
  %exitcond.not = icmp eq i32 %inc57, %11
  br i1 %exitcond.not, label %for.inc56.for.inc59_crit_edge, label %for.inc56.for.body32_crit_edge

for.inc56.for.body32_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body32

for.inc56.for.inc59_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc59

for.inc59:                                        ; preds = %for.inc56.for.inc59_crit_edge, %if.end23.for.inc59_crit_edge, %for.body20.for.inc59_crit_edge
  %count.3 = phi i32 [ %count.0129, %for.body20.for.inc59_crit_edge ], [ %add28, %if.end23.for.inc59_crit_edge ], [ %count.2, %for.inc56.for.inc59_crit_edge ]
  %inc60 = add nuw i32 %i.2126, 1
  %exitcond135.not = icmp eq i32 %inc60, %5
  br i1 %exitcond135.not, label %for.inc59.for.cond62.preheader_crit_edge, label %for.inc59.for.body20_crit_edge

for.inc59.for.body20_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

for.inc59.for.cond62.preheader_crit_edge:         ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond62.preheader

for.body64:                                       ; preds = %for.inc71.for.body64_crit_edge, %for.body64.lr.ph
  %count.4133 = phi i32 [ %count.0.lcssa, %for.body64.lr.ph ], [ %count.5, %for.inc71.for.body64_crit_edge ]
  %i.3132 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc72, %for.inc71.for.body64_crit_edge ]
  %arrayidx65 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 3, i32 %i.3132
  %18 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx65, align 128
  %tobool66.not = icmp eq ptr %19, null
  br i1 %tobool66.not, label %for.body64.for.inc71_crit_edge, label %if.end68

for.body64.for.inc71_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc71

if.end68:                                         ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_txq_per_tx, align 8
  %mul69 = mul i32 %21, 5
  %add70 = add i32 %mul69, %count.4133
  br label %for.inc71

for.inc71:                                        ; preds = %if.end68, %for.body64.for.inc71_crit_edge
  %count.5 = phi i32 [ %add70, %if.end68 ], [ %count.4133, %for.body64.for.inc71_crit_edge ]
  %inc72 = add nuw i32 %i.3132, 1
  %exitcond136.not = icmp eq i32 %inc72, %7
  br i1 %exitcond136.not, label %for.inc71.for.end73_crit_edge, label %for.inc71.for.body64_crit_edge

for.inc71.for.body64_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body64

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end73

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %for.cond62.preheader.for.end73_crit_edge
  %count.4.lcssa = phi i32 [ %count.0.lcssa, %for.cond62.preheader.for.end73_crit_edge ], [ %count.5, %for.inc71.for.end73_crit_edge ]
  ret i32 %count.4.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_netdev_qstats_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_netdev_hwstats_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 239)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 239)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475}
!llvm.module.flags = !{!477, !478, !479, !480, !481, !482, !483, !484}
!llvm.ident = !{!485}

!0 = !{ptr @bnad_ethtool_ops, !1, !"bnad_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 1069, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 286, i32 27}
!4 = !{ptr @init_completion.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../include/linux/completion.h", i32 87, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 30, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 31, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 32, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 33, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 34, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 35, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 36, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 37, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 38, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 39, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 40, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 41, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 42, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 43, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 45, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 46, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 47, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 48, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 49, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 50, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 51, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 52, i32 2}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 53, i32 2}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 54, i32 2}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 55, i32 2}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 56, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 57, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 58, i32 2}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 59, i32 2}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 60, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 61, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 62, i32 2}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 63, i32 2}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 64, i32 2}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 65, i32 2}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 66, i32 2}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 67, i32 2}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 68, i32 2}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 69, i32 2}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 70, i32 2}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 72, i32 2}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 73, i32 2}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 75, i32 2}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 76, i32 2}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 77, i32 2}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 78, i32 2}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 79, i32 2}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 80, i32 2}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 81, i32 2}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 83, i32 2}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 84, i32 2}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 85, i32 2}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 86, i32 2}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 87, i32 2}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 88, i32 2}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 89, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 90, i32 2}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 91, i32 2}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 92, i32 2}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 93, i32 2}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 94, i32 2}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 95, i32 2}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 96, i32 2}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 97, i32 2}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 98, i32 2}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 99, i32 2}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 100, i32 2}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 101, i32 2}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 102, i32 2}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 103, i32 2}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 104, i32 2}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 105, i32 2}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 106, i32 2}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 107, i32 2}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 109, i32 2}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 110, i32 2}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 111, i32 2}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 112, i32 2}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 113, i32 2}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 114, i32 2}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 115, i32 2}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 116, i32 2}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 117, i32 2}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 118, i32 2}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 119, i32 2}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 120, i32 2}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 121, i32 2}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 122, i32 2}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 123, i32 2}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 124, i32 2}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 125, i32 2}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 126, i32 2}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 127, i32 2}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 128, i32 2}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 130, i32 2}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 131, i32 2}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 132, i32 2}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 133, i32 2}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 134, i32 2}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 135, i32 2}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 136, i32 2}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 137, i32 2}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 138, i32 2}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 139, i32 2}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 140, i32 2}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 141, i32 2}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 142, i32 2}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 143, i32 2}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 144, i32 2}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 145, i32 2}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 146, i32 2}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 147, i32 2}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 148, i32 2}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 149, i32 2}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 150, i32 2}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 151, i32 2}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 152, i32 2}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 153, i32 2}
!243 = !{ptr @.str.120, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 155, i32 2}
!245 = !{ptr @.str.121, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 156, i32 2}
!247 = !{ptr @.str.122, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 157, i32 2}
!249 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 158, i32 2}
!251 = !{ptr @.str.124, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 159, i32 2}
!253 = !{ptr @.str.125, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 160, i32 2}
!255 = !{ptr @.str.126, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 161, i32 2}
!257 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 162, i32 2}
!259 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 163, i32 2}
!261 = !{ptr @.str.129, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 164, i32 2}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 165, i32 2}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 166, i32 2}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 167, i32 2}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 168, i32 2}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 169, i32 2}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 170, i32 2}
!275 = !{ptr @.str.136, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 171, i32 2}
!277 = !{ptr @.str.137, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 172, i32 2}
!279 = !{ptr @.str.138, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 173, i32 2}
!281 = !{ptr @.str.139, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 174, i32 2}
!283 = !{ptr @.str.140, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 175, i32 2}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 176, i32 2}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 177, i32 2}
!289 = !{ptr @.str.143, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 178, i32 2}
!291 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 180, i32 2}
!293 = !{ptr @.str.145, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 181, i32 2}
!295 = !{ptr @.str.146, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 182, i32 2}
!297 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 183, i32 2}
!299 = !{ptr @.str.148, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 184, i32 2}
!301 = !{ptr @.str.149, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 185, i32 2}
!303 = !{ptr @.str.150, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 186, i32 2}
!305 = !{ptr @.str.151, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 187, i32 2}
!307 = !{ptr @.str.152, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 188, i32 2}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 189, i32 2}
!311 = !{ptr @.str.154, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 190, i32 2}
!313 = !{ptr @.str.155, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 191, i32 2}
!315 = !{ptr @.str.156, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 192, i32 2}
!317 = !{ptr @.str.157, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 194, i32 2}
!319 = !{ptr @.str.158, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 195, i32 2}
!321 = !{ptr @.str.159, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 196, i32 2}
!323 = !{ptr @.str.160, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 197, i32 2}
!325 = !{ptr @.str.161, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 198, i32 2}
!327 = !{ptr @.str.162, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 199, i32 2}
!329 = !{ptr @.str.163, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 200, i32 2}
!331 = !{ptr @.str.164, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 201, i32 2}
!333 = !{ptr @.str.165, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 202, i32 2}
!335 = !{ptr @.str.166, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 203, i32 2}
!337 = !{ptr @.str.167, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 204, i32 2}
!339 = !{ptr @.str.168, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 205, i32 2}
!341 = !{ptr @.str.169, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 206, i32 2}
!343 = !{ptr @.str.170, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 208, i32 2}
!345 = !{ptr @.str.171, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 209, i32 2}
!347 = !{ptr @.str.172, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 210, i32 2}
!349 = !{ptr @.str.173, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 211, i32 2}
!351 = !{ptr @.str.174, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 212, i32 2}
!353 = !{ptr @.str.175, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 213, i32 2}
!355 = !{ptr @.str.176, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 214, i32 2}
!357 = !{ptr @.str.177, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 215, i32 2}
!359 = !{ptr @.str.178, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 216, i32 2}
!361 = !{ptr @.str.179, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 218, i32 2}
!363 = !{ptr @.str.180, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 219, i32 2}
!365 = !{ptr @.str.181, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 220, i32 2}
!367 = !{ptr @.str.182, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 221, i32 2}
!369 = !{ptr @.str.183, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 222, i32 2}
!371 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 223, i32 2}
!373 = !{ptr @.str.185, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 224, i32 2}
!375 = !{ptr @.str.186, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 225, i32 2}
!377 = !{ptr @.str.187, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 226, i32 2}
!379 = !{ptr @.str.188, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 227, i32 2}
!381 = !{ptr @.str.189, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 228, i32 2}
!383 = !{ptr @.str.190, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 229, i32 2}
!385 = !{ptr @bnad_net_stats_strings, !386, !"bnad_net_stats_strings", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 29, i32 20}
!387 = !{ptr @.str.191, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 537, i32 26}
!389 = !{ptr @.str.192, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 538, i32 26}
!391 = !{ptr @.str.193, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 539, i32 26}
!393 = !{ptr @.str.194, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 540, i32 26}
!395 = !{ptr @.str.195, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 541, i32 26}
!397 = !{ptr @.str.196, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 542, i32 26}
!399 = !{ptr @.str.197, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 543, i32 26}
!401 = !{ptr @.str.198, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 544, i32 26}
!403 = !{ptr @.str.199, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 545, i32 26}
!405 = !{ptr @.str.200, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 546, i32 26}
!407 = !{ptr @.str.201, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 547, i32 26}
!409 = !{ptr @.str.202, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 548, i32 26}
!411 = !{ptr @.str.203, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 553, i32 26}
!413 = !{ptr @.str.204, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 554, i32 26}
!415 = !{ptr @.str.205, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 555, i32 26}
!417 = !{ptr @.str.206, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 556, i32 26}
!419 = !{ptr @.str.207, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 557, i32 26}
!421 = !{ptr @.str.208, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 558, i32 26}
!423 = !{ptr @.str.209, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 559, i32 26}
!425 = !{ptr @.str.210, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 560, i32 26}
!427 = !{ptr @.str.211, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 561, i32 26}
!429 = !{ptr @.str.212, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 562, i32 26}
!431 = !{ptr @.str.213, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 567, i32 26}
!433 = !{ptr @.str.214, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 568, i32 26}
!435 = !{ptr @.str.215, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 569, i32 26}
!437 = !{ptr @.str.216, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 570, i32 26}
!439 = !{ptr @.str.217, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 571, i32 26}
!441 = !{ptr @.str.218, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 572, i32 26}
!443 = !{ptr @.str.219, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 573, i32 26}
!445 = !{ptr @.str.220, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 574, i32 26}
!447 = !{ptr @.str.221, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 579, i32 26}
!449 = !{ptr @.str.222, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 580, i32 26}
!451 = !{ptr @.str.223, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 581, i32 26}
!453 = !{ptr @.str.224, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 582, i32 26}
!455 = !{ptr @.str.225, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 583, i32 26}
!457 = !{ptr @.str.226, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 584, i32 26}
!459 = !{ptr @.str.227, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 585, i32 26}
!461 = !{ptr @.str.228, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 590, i32 26}
!463 = !{ptr @.str.229, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 591, i32 26}
!465 = !{ptr @.str.230, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 592, i32 26}
!467 = !{ptr @.str.231, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 593, i32 26}
!469 = !{ptr @.str.232, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 594, i32 26}
!471 = !{ptr @.str.233, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 1037, i32 22}
!473 = !{ptr @.str.234, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 1050, i32 23}
!475 = !{ptr @.str.235, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/brocade/bna/bnad_ethtool.c", i32 1061, i32 8}
!477 = !{i32 1, !"wchar_size", i32 2}
!478 = !{i32 1, !"min_enum_size", i32 4}
!479 = !{i32 8, !"branch-target-enforcement", i32 0}
!480 = !{i32 8, !"sign-return-address", i32 0}
!481 = !{i32 8, !"sign-return-address-all", i32 0}
!482 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!483 = !{i32 7, !"uwtable", i32 1}
!484 = !{i32 7, !"frame-pointer", i32 2}
!485 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!486 = !{i32 0, i32 33}
!487 = !{!"auto-init"}
!488 = !{!"branch_weights", i32 1, i32 2000}
!489 = !{i64 2159242604, i64 2159243116, i64 2159242641, i64 2159242697, i64 2159242731, i64 2159242755, i64 2159242796, i64 2159242817, i64 2159242845, i64 2159242879}
