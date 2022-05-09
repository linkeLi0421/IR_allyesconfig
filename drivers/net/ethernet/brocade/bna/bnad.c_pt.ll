; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bnad.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bnad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bna_tx_event_cbfn = type { ptr, ptr, ptr, ptr, ptr }
%struct.bna_rx_event_cbfn = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%struct.atomic_t = type { i32 }
%union.anon.165 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnad = type { ptr, i32, [120 x i8], [1 x %struct.bnad_tx_info], [1 x %struct.bnad_rx_info], [128 x i32], i32, i32, i32, i32, i32, i32, i8, i8, [102 x i8], [1 x %struct.bna_rx_config], [20 x i8], [1 x %struct.bna_tx_config], ptr, %struct.bna, i32, i32, ptr, i64, i64, i32, ptr, %struct.mutex, [68 x i8], %struct.spinlock, %struct.timer_list, %struct.timer_list, %struct.timer_list, [4 x %struct.bna_res_info], [8 x %struct.bna_res_info], [1 x %struct.bnad_tx_res_info], [1 x %struct.bnad_rx_res_info], %struct.bnad_completion, [6 x i8], ptr, %struct.bnad_stats, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], ptr, i32, [5 x ptr], ptr, [84 x i8] }
%struct.bnad_tx_info = type { ptr, [8 x ptr], i32, %struct.delayed_work, [116 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bnad_rx_info = type { ptr, [16 x %struct.bnad_rx_ctrl], i32, %struct.work_struct, [72 x i8] }
%struct.bnad_rx_ctrl = type { ptr, ptr, i32, %struct.napi_struct, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bna_res_info = type { i32, %union.bna_res_u }
%union.bna_res_u = type { %struct.bna_mem_info }
%struct.bna_mem_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.bnad_tx_res_info = type { [7 x %struct.bna_res_info] }
%struct.bnad_rx_res_info = type { [16 x %struct.bna_res_info] }
%struct.bnad_completion = type { %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bnad_stats = type { %struct.bnad_drv_stats, ptr }
%struct.bnad_drv_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.170, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.170 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.191 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bna_tcb = type { ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, [16 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.bnad_iocmd_comp = type { ptr, %struct.completion, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.bna_mem_descr = type { i32, ptr, %struct.bna_dma_addr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.210, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.210 = type { ptr }
%struct.bna_txq = type { %struct.list_head, i8, %struct.bna_qpt, ptr, %struct.bna_ib, ptr, i32, i64, i64 }
%struct.bna_qpt = type { %struct.bna_dma_addr, ptr, i32, i32 }
%struct.bna_ib = type { %struct.bna_dma_addr, ptr, %struct.bna_ib_dbell, i32, i32, i8, i32, i32 }
%struct.bna_ib_dbell = type { ptr, i32 }
%struct.bna_tx = type { %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.list_head, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.192, ptr, ptr }
%union.anon.192 = type { %struct.bfi_enet_tx_cfg_req }
%struct.bfi_enet_tx_cfg_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [8 x %struct.anon.193], %struct.bfi_enet_ib_cfg, %struct.bfi_enet_tx_cfg }
%struct.anon.193 = type { %struct.bfi_enet_txq, %struct.bfi_enet_ib }
%struct.bfi_enet_txq = type { %struct.bfi_enet_q, i8, [3 x i8] }
%struct.bfi_enet_q = type { %union.bfi_addr_u, %union.bfi_addr_u, i16, i16 }
%struct.bfi_enet_ib = type { %union.bfi_addr_u, %union.anon.195, i16 }
%union.anon.195 = type { i16 }
%struct.bfi_enet_ib_cfg = type { i8, i8, i8, i8, i8, [3 x i8], i32, i32, i8, [3 x i8] }
%struct.bfi_enet_tx_cfg = type { i8, i8, i16, i8, i8, i8, [1 x i8] }
%struct.bnad_tx_unmap = type { ptr, i32, [4 x %struct.bnad_tx_vector] }
%struct.bnad_tx_vector = type { i32, i32 }
%struct.bna_ccb = type { ptr, ptr, i32, ptr, i32, ptr, [2 x ptr], ptr, %struct.bna_pkt_rate, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, [16 x i8] }
%struct.bna_pkt_rate = type { i32, i32 }
%struct.bna_cq = type { %struct.bna_qpt, ptr, %struct.bna_ib, ptr }
%struct.bna_rx = type { %struct.list_head, i32, i32, ptr, i32, i32, %struct.list_head, %struct.bna_hds_config, %struct.bna_rxf, i32, %struct.bfa_msgq_cmd_entry, %union.anon.203, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bna_rxf = type { ptr, %struct.bfa_msgq_cmd_entry, %union.anon.202, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.bna_mac, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i8, i32, [128 x i32], i8, i32, i32, i32, %struct.bna_rss_config, ptr, i32, ptr }
%union.anon.202 = type { %struct.bfi_enet_rx_vlan_req }
%struct.bfi_enet_rx_vlan_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [16 x i32] }
%struct.bna_mac = type { %struct.list_head, [6 x i8], ptr }
%union.anon.203 = type { %struct.bfi_enet_rx_cfg_req }
%struct.bfi_enet_rx_cfg_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [16 x %struct.anon.204], %struct.bfi_enet_ib_cfg, %struct.bfi_enet_rx_cfg }
%struct.anon.204 = type { %struct.bfi_enet_rxq, %struct.bfi_enet_rxq, %struct.bfi_enet_cq, %struct.bfi_enet_ib }
%struct.bfi_enet_rxq = type { %struct.bfi_enet_q, i16, i16 }
%struct.bfi_enet_cq = type { %struct.bfi_enet_q }
%struct.bfi_enet_rx_cfg = type { i8, [1 x i8], i16, %struct.anon.205, i8, i8, i8, i8 }
%struct.anon.205 = type { i8, i8, i8, i8 }
%struct.bna_rcb = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bnad_rx_unmap_q = type { i32, i32, i32, i32, [112 x i8], [0 x %struct.bnad_rx_unmap] }
%struct.bnad_rx_unmap = type { ptr, ptr, %struct.bnad_rx_vector, i32 }
%struct.bnad_rx_vector = type { i32, i32 }
%struct.bna_rxq = type { %struct.list_head, i32, i32, i32, i32, %struct.bna_qpt, ptr, ptr, ptr, i32, i64, i64, i64, i64, i64 }
%struct.bna_cq_entry = type { i32, i16, i16, i32, i8, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.bna_intr_info = type { i32, i32, ptr }
%struct.bna_intr_descr = type { i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.bna_rxq_entry = type { %struct.bna_dma_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.bna_txq_entry = type { %union.anon.213, [4 x %struct.bna_txq_wi_vector] }
%union.anon.213 = type { %struct.anon.214 }
%struct.anon.214 = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.bna_txq_wi_vector = type { i16, i16, %struct.bna_dma_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.anon.215 = type { i16, i16, [3 x i32] }
%struct.sockaddr = type { i16, [14 x i8] }

@__param_str_bnad_msix_disable = internal constant [22 x i8] c"bna.bnad_msix_disable\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bnad_msix_disable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bnad_msix_disable = internal constant %struct.kernel_param { ptr @__param_str_bnad_msix_disable, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @bnad_msix_disable } }, section "__param", align 4
@__UNIQUE_ID_bnad_msix_disabletype595 = internal constant [36 x i8] c"bna.parmtype=bnad_msix_disable:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bnad_msix_disable596 = internal constant [45 x i8] c"bna.parm=bnad_msix_disable:Disable MSIX mode\00", section ".modinfo", align 1
@__param_str_bnad_ioc_auto_recover = internal constant [26 x i8] c"bna.bnad_ioc_auto_recover\00", align 1
@bnad_ioc_auto_recover = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_bnad_ioc_auto_recover = internal constant %struct.kernel_param { ptr @__param_str_bnad_ioc_auto_recover, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @bnad_ioc_auto_recover } }, section "__param", align 4
@__UNIQUE_ID_bnad_ioc_auto_recovertype597 = internal constant [40 x i8] c"bna.parmtype=bnad_ioc_auto_recover:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bnad_ioc_auto_recover598 = internal constant [62 x i8] c"bna.parm=bnad_ioc_auto_recover:Enable / Disable auto recovery\00", section ".modinfo", align 1
@__param_str_bna_debugfs_enable = internal constant [23 x i8] c"bna.bna_debugfs_enable\00", align 1
@bna_debugfs_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_bna_debugfs_enable = internal constant %struct.kernel_param { ptr @__param_str_bna_debugfs_enable, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @bna_debugfs_enable } }, section "__param", align 4
@__UNIQUE_ID_bna_debugfs_enabletype599 = internal constant [37 x i8] c"bna.parmtype=bna_debugfs_enable:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bna_debugfs_enable600 = internal constant [86 x i8] c"bna.parm=bna_debugfs_enable:Enables debugfs feature, default=1, Range[false:0|true:1]\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnad_dim_timer_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&bnad->dim_timer)\00", [45 x i8] zeroinitializer }, align 32
@bnad_setup_tx.tx_cbfn = internal constant { %struct.bna_tx_event_cbfn, [44 x i8] } { %struct.bna_tx_event_cbfn { ptr @bnad_cb_tcb_setup, ptr @bnad_cb_tcb_destroy, ptr @bnad_cb_tx_stall, ptr @bnad_cb_tx_resume, ptr @bnad_cb_tx_cleanup }, [44 x i8] zeroinitializer }, align 32
@bnad_setup_tx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&tx_info->tx_cleanup_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@bnad_setup_tx.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&tx_info->tx_cleanup_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@bnad_setup_rx.rx_cbfn = internal constant { %struct.bna_rx_event_cbfn, [36 x i8] } { %struct.bna_rx_event_cbfn { ptr null, ptr null, ptr @bnad_cb_ccb_setup, ptr @bnad_cb_ccb_destroy, ptr @bnad_cb_rx_stall, ptr @bnad_cb_rx_cleanup, ptr @bnad_cb_rx_post }, [36 x i8] zeroinitializer }, align 32
@bnad_setup_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&rx_info->rx_cleanup_work)\00", [51 x i8] zeroinitializer }, align 32
@bna_napi_dim_vector = external dso_local constant [0 x [2 x i32]], align 4
@bnad_bcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@bnad_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.15, ptr @bnad_pci_id_table, ptr @bnad_pci_probe, ptr @bnad_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@bfi_fw = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_bna__603_3845_bnad_module_init6 = internal global ptr @bnad_module_init, section ".initcall6.init", align 4
@__exitcall_bnad_module_exit = internal global ptr @bnad_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author604 = internal constant [19 x i8] c"bna.author=Brocade\00", section ".modinfo", align 1
@__UNIQUE_ID_file605 = internal constant [46 x i8] c"bna.file=drivers/net/ethernet/brocade/bna/bna\00", section ".modinfo", align 1
@__UNIQUE_ID_license606 = internal constant [16 x i8] c"bna.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description607 = internal constant [58 x i8] c"bna.description=QLogic BR-series 10G PCIe Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware608 = internal constant [30 x i8] c"bna.firmware=ctfw-3.2.5.1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware609 = internal constant [31 x i8] c"bna.firmware=ct2fw-3.2.5.1.bin\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s TXQ %d\00", [22 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s CQ %d\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bna\00", [28 x i8] zeroinitializer }, align 32
@bnad_pci_id_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5719, i32 20, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5719, i32 34, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bnad_fwimg_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bnad_fwimg_mutex, i64 52), ptr getelementptr (i8, ptr @bnad_fwimg_mutex, i64 52) }, ptr @bnad_fwimg_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bnad_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 3590, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to load firmware image!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnad_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/brocade/bna/bnad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bnad_pci_probe._entry_ptr = internal global ptr @bnad_pci_probe._entry, section ".printk_index", align 4
@bna_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@bnad_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(&bnad->bna.ioceth.ioc.ioc_timer)\00", [62 x i8] zeroinitializer }, align 32
@bnad_pci_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(&bnad->bna.ioceth.ioc.hb_timer)\00", [63 x i8] zeroinitializer }, align 32
@bnad_pci_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&bnad->bna.ioceth.ioc.iocpf_timer)\00", [60 x i8] zeroinitializer }, align 32
@bnad_pci_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(&bnad->bna.ioceth.ioc.sem_timer)\00", [62 x i8] zeroinitializer }, align 32
@bnad_pci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.18, i32 3675, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"initialization failed err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@bnad_pci_probe._entry_ptr.30 = internal global ptr @bnad_pci_probe._entry.28, section ".printk_index", align 4
@bnad_pci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.18, i32 3717, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"registering net device failed\0A\00", [33 x i8] zeroinitializer }, align 32
@bnad_pci_probe._entry_ptr.33 = internal global ptr @bnad_pci_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnad_fwimg_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnad_fwimg_mutex\00", [47 x i8] zeroinitializer }, align 32
@bnad_lock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&bnad->bna_lock\00", [16 x i8] zeroinitializer }, align 32
@bnad_lock_init.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&bnad->conf_mutex\00", [46 x i8] zeroinitializer }, align 32
@bnad_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.18, i32 3472, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ioremap for bar0 failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bnad_init\00", [22 x i8] zeroinitializer }, align 32
@bnad_init._entry_ptr = internal global ptr @bnad_init._entry, section ".printk_index", align 4
@bnad_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.18, i32 3476, ptr @.str.43, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bar0 mapped to %p, len %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bnad_init._entry_ptr.44 = internal global ptr @bnad_init._entry.41, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_wq_%d\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@bnad_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bnad_open, ptr @bnad_stop, ptr @bnad_start_xmit, ptr null, ptr null, ptr null, ptr @bnad_set_rx_mode, ptr @bnad_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnad_change_mtu, ptr null, ptr null, ptr @bnad_get_stats64, ptr null, ptr null, ptr null, ptr @bnad_vlan_rx_add_vid, ptr @bnad_vlan_rx_kill_vid, ptr @bnad_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnad_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@bnad_stats_timer_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&bnad->stats_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RXQ:%u setup failed\0A\00", [43 x i8] zeroinitializer }, align 32
@bnad_enable_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.18, i32 2658, ptr @.str.52, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d MSI-X vectors allocated < %d requested\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnad_enable_msix\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bnad_enable_msix._entry_ptr = internal global ptr @bnad_enable_msix._entry, section ".printk_index", align 4
@bnad_enable_msix._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.18, i32 2681, ptr @.str.52, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MSI-X enable failed - operating in INTx mode\0A\00", [50 x i8] zeroinitializer }, align 32
@bnad_enable_msix._entry_ptr.55 = internal global ptr @bnad_enable_msix._entry.53, section ".printk_index", align 4
@bnad_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.18, i32 3831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bna: PCI driver registration failed err=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnad_module_init\00", [47 x i8] zeroinitializer }, align 32
@bnad_module_init._entry_ptr = internal global ptr @bnad_module_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 2336, i64 2592, i64 4448, i64 4704]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"bnad_msix_disable\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 32, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"bnad_ioc_auto_recover\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 36, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"bna_debugfs_enable\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 40, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 947, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 983, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1799, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [8 x i8] c"tx_cbfn\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1950, i32 40 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1996, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [8 x i8] c"rx_cbfn\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2198, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2253, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"bnad_bcast_addr\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 50, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"bnad_pci_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3815, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 87, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1538, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 326, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1160, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 717, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1589, i32 42 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3816, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"bnad_pci_id_table\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3797, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"bnad_fwimg_mutex\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3590, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"bna_id\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 49, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3662, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3663, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3664, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3665, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3675, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3717, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 27, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3533, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3534, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3472, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3475, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3497, i32 25 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3498, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"bnad_netdev_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3406, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1817, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 598, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2125, i32 23 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2656, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 2680, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [43 x i8] c"../drivers/net/ethernet/brocade/bna/bnad.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3831, i32 3 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author604, ptr @__UNIQUE_ID_bna_debugfs_enable600, ptr @__UNIQUE_ID_bna_debugfs_enabletype599, ptr @__UNIQUE_ID_bnad_ioc_auto_recover598, ptr @__UNIQUE_ID_bnad_ioc_auto_recovertype597, ptr @__UNIQUE_ID_bnad_msix_disable596, ptr @__UNIQUE_ID_bnad_msix_disabletype595, ptr @__UNIQUE_ID_description607, ptr @__UNIQUE_ID_file605, ptr @__UNIQUE_ID_firmware608, ptr @__UNIQUE_ID_firmware609, ptr @__UNIQUE_ID_license606, ptr @__exitcall_bnad_module_exit, ptr @__initcall__kmod_bna__603_3845_bnad_module_init6, ptr @__param_bna_debugfs_enable, ptr @__param_bnad_ioc_auto_recover, ptr @__param_bnad_msix_disable, ptr @bnad_enable_msix._entry, ptr @bnad_enable_msix._entry.53, ptr @bnad_enable_msix._entry_ptr, ptr @bnad_enable_msix._entry_ptr.55, ptr @bnad_init._entry, ptr @bnad_init._entry.41, ptr @bnad_init._entry_ptr, ptr @bnad_init._entry_ptr.44, ptr @bnad_module_exit, ptr @bnad_module_init._entry, ptr @bnad_module_init._entry_ptr, ptr @bnad_pci_probe._entry, ptr @bnad_pci_probe._entry.28, ptr @bnad_pci_probe._entry.31, ptr @bnad_pci_probe._entry_ptr, ptr @bnad_pci_probe._entry_ptr.30, ptr @bnad_pci_probe._entry_ptr.33, ptr @bnad_msix_disable, ptr @bnad_ioc_auto_recover, ptr @bna_debugfs_enable, ptr @.str, ptr @.str.1, ptr @bnad_dim_timer_start.__key, ptr @.str.2, ptr @bnad_setup_tx.tx_cbfn, ptr @bnad_setup_tx.__key, ptr @.str.3, ptr @bnad_setup_tx.__key.4, ptr @.str.5, ptr @bnad_setup_rx.rx_cbfn, ptr @bnad_setup_rx.__key, ptr @.str.6, ptr @bnad_bcast_addr, ptr @bnad_pci_driver, ptr @init_completion.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @bnad_pci_id_table, ptr @bnad_fwimg_mutex, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @bna_id, ptr @bnad_pci_probe.__key, ptr @.str.21, ptr @bnad_pci_probe.__key.22, ptr @.str.23, ptr @bnad_pci_probe.__key.24, ptr @.str.25, ptr @bnad_pci_probe.__key.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @bnad_lock_init.__key, ptr @.str.36, ptr @bnad_lock_init.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @bnad_netdev_ops, ptr @bnad_stats_timer_start.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_msix_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_ioc_auto_recover to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_debugfs_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_dim_timer_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_setup_tx.tx_cbfn to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_setup_tx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_setup_tx.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_setup_rx.rx_cbfn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_setup_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_fwimg_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_pci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_lock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_lock_init.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_stats_timer_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_enable_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_enable_msix._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_mbox_intr_enable(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %run_flags.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %run_flags.i) #13
  %mbox_intr_enabled.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 30
  %0 = ptrtoint ptr %mbox_intr_enabled.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mbox_intr_enabled.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %mbox_intr_enabled.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_mbox_intr_disable(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %run_flags.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %run_flags.i) #13
  %mbox_intr_disabled.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 29
  %0 = ptrtoint ptr %mbox_intr_disabled.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mbox_intr_disabled.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %mbox_intr_disabled.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_ioceth_ready(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bnad_completions = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37
  %ioc_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 8
  %0 = ptrtoint ptr %ioc_comp_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ioc_comp_status, align 16
  tail call void @complete(ptr noundef %bnad_completions) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_ioceth_failed(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bnad_completions = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37
  %ioc_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 8
  %0 = ptrtoint ptr %ioc_comp_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ioc_comp_status, align 16
  tail call void @complete(ptr noundef %bnad_completions) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_ioceth_disabled(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bnad_completions = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37
  %ioc_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 8
  %0 = ptrtoint ptr %ioc_comp_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ioc_comp_status, align 16
  tail call void @complete(ptr noundef %bnad_completions) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_ethport_link_status(ptr noundef %bnad, i32 noundef %link_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %link_status)
  %cmp2 = icmp eq i32 %link_status, 2
  %run_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  %0 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %run_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then3, label %if.then.if.end15.thread_crit_edge

if.then.if.end15.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.thread

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %cee_toggle = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 27
  %2 = ptrtoint ptr %cee_toggle to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cee_toggle, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %cee_toggle, align 8
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.then3, %if.then.if.end15.thread_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %run_flags) #13
  br label %if.then17

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.if.end15_crit_edge, label %if.then8

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %cee_toggle11 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 27
  %4 = ptrtoint ptr %cee_toggle11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cee_toggle11, align 8
  %inc12 = add i64 %5, 1
  store i64 %inc12, ptr %cee_toggle11, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.else.if.end15_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %run_flags) #13
  %link_status.off = add i32 %link_status, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %link_status.off)
  %switch = icmp ult i32 %link_status.off, 2
  br i1 %switch, label %if.end15.if.then17_crit_edge, label %if.else54

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %if.end15.thread
  %6 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bnad, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then17.if.end65_crit_edge, label %if.then19

if.then17.if.end65_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then19:                                        ; preds = %if.then17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str) #16
  %11 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bnad, align 128
  tail call void @netif_carrier_on(ptr noundef %12) #13
  %stats22 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40
  %link_toggle = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 26
  %13 = ptrtoint ptr %link_toggle to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %link_toggle, align 8
  %inc24 = add i64 %14, 1
  store i64 %inc24, ptr %link_toggle, align 8
  %num_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 6
  %15 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25105.not = icmp eq i32 %16, 0
  br i1 %cmp25105.not, label %if.then19.if.end65_crit_edge, label %for.cond26.preheader.lr.ph

if.then19.if.end65_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

for.cond26.preheader.lr.ph:                       ; preds = %if.then19
  %num_txq_per_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 8
  %netif_queue_wakeup = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 1
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.inc50.for.cond26.preheader_crit_edge, %for.cond26.preheader.lr.ph
  %tx_id.0106 = phi i32 [ 0, %for.cond26.preheader.lr.ph ], [ %inc51, %for.inc50.for.cond26.preheader_crit_edge ]
  %17 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_txq_per_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp27103.not = icmp eq i32 %18, 0
  br i1 %cmp27103.not, label %for.cond26.preheader.for.inc50_crit_edge, label %for.cond26.preheader.for.body28_crit_edge

for.cond26.preheader.for.body28_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body28

for.cond26.preheader.for.inc50_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

for.body28:                                       ; preds = %cleanup.for.body28_crit_edge, %for.cond26.preheader.for.body28_crit_edge
  %tcb_id.0104 = phi i32 [ %inc49, %cleanup.for.body28_crit_edge ], [ 0, %for.cond26.preheader.for.body28_crit_edge ]
  %arrayidx30 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id.0106, i32 1, i32 %tcb_id.0104
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %for.body28.cleanup_crit_edge, label %if.end33

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %for.body28
  %id = getelementptr inbounds %struct.bna_tcb, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %flags = getelementptr inbounds %struct.bna_tcb, ptr %20, i32 0, i32 15
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool35.not = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bnad, align 128
  %conv.i97 = and i32 %22, 65535
  %_tx.i.i98 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i98, align 128
  br i1 %tobool35.not, label %if.else41, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %29, i32 %conv.i97
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #13
  br label %cleanup.sink.split

if.else41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %state.i.i = getelementptr %struct.netdev_queue, ptr %29, i32 %conv.i97, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else41, %if.then36
  %netif_queue_wakeup.sink108 = phi ptr [ %netif_queue_wakeup, %if.then36 ], [ %stats22, %if.else41 ]
  %30 = ptrtoint ptr %netif_queue_wakeup.sink108 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %netif_queue_wakeup.sink108, align 8
  %inc40 = add i64 %31, 1
  store i64 %inc40, ptr %netif_queue_wakeup.sink108, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body28.cleanup_crit_edge
  %inc49 = add nuw i32 %tcb_id.0104, 1
  %32 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_txq_per_tx, align 8
  %cmp27 = icmp ult i32 %inc49, %33
  br i1 %cmp27, label %cleanup.for.body28_crit_edge, label %cleanup.for.inc50_crit_edge

cleanup.for.inc50_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50

cleanup.for.body28_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body28

for.inc50:                                        ; preds = %cleanup.for.inc50_crit_edge, %for.cond26.preheader.for.inc50_crit_edge
  %inc51 = add nuw i32 %tx_id.0106, 1
  %34 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx, align 128
  %cmp25 = icmp ult i32 %inc51, %35
  br i1 %cmp25, label %for.inc50.for.cond26.preheader_crit_edge, label %for.inc50.if.end65_crit_edge

for.inc50.if.end65_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

for.inc50.for.cond26.preheader_crit_edge:         ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond26.preheader

if.else54:                                        ; preds = %if.end15
  %36 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bnad, align 128
  %state.i99 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %state.i99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %state.i99, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i100 = icmp eq i32 %40, 0
  br i1 %tobool.not.i100, label %if.then57, label %if.else54.if.end65_crit_edge

if.else54.if.end65_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.1) #16
  %41 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bnad, align 128
  tail call void @netif_carrier_off(ptr noundef %42) #13
  %link_toggle62 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 26
  %43 = ptrtoint ptr %link_toggle62 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %link_toggle62, align 8
  %inc63 = add i64 %44, 1
  store i64 %inc63, ptr %link_toggle62, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %if.else54.if.end65_crit_edge, %for.inc50.if.end65_crit_edge, %if.then19.if.end65_crit_edge, %if.then17.if.end65_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_stats_get(ptr noundef %bnad, i32 noundef %status, ptr nocapture noundef readnone %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw_stats_updates = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 24
  %0 = ptrtoint ptr %hw_stats_updates to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hw_stats_updates, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %hw_stats_updates, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %run_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  %6 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %run_flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %stats_timer = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 100
  %call6 = tail call i32 @mod_timer(ptr noundef %stats_timer, i32 noundef %add) #13
  br label %return

return:                                           ; preds = %if.end4, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_cb_completion(ptr noundef %arg, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %comp_status = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %comp_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %comp_status, align 4
  %comp = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %arg, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_dim_timer_start(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 20
  %0 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %run_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  %2 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %run_flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dim_timer = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %dim_timer, ptr noundef nonnull @bnad_dim_timeout, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @bnad_dim_timer_start.__key) #13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %run_flags) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 100
  %call5 = tail call i32 @mod_timer(ptr noundef %dim_timer, i32 noundef %add) #13
  br label %if.end

if.end:                                           ; preds = %do.body, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_dim_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -15324
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %bna_lock = getelementptr i8, ptr %t, i32 -92
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %num_rx = getelementptr i8, ptr %t, i32 -9816
  %5 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp752.not = icmp eq i32 %6, 0
  br i1 %cmp752.not, label %do.body1.for.end24_crit_edge, label %for.body.lr.ph

do.body1.for.end24_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.body.lr.ph:                                   ; preds = %do.body1
  %rx_info9 = getelementptr i8, ptr %t, i32 -14940
  %num_rxp_per_rx = getelementptr i8, ptr %t, i32 -9808
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr [1 x %struct.bnad_rx_info], ptr %rx_info9, i32 0, i32 %i.053
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 128
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc22_crit_edge, label %for.cond12.preheader

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22

for.cond12.preheader:                             ; preds = %for.body
  %9 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rxp_per_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1350.not = icmp eq i32 %10, 0
  br i1 %cmp1350.not, label %for.cond12.preheader.for.inc22_crit_edge, label %for.cond12.preheader.for.body15_crit_edge

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

for.cond12.preheader.for.inc22_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %j.051 = phi i32 [ %inc, %for.inc.for.body15_crit_edge ], [ 0, %for.cond12.preheader.for.body15_crit_edge ]
  %arrayidx17 = getelementptr %struct.bnad_rx_info, ptr %arrayidx, i32 0, i32 1, i32 %j.051
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17, align 8
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %for.body15.for.inc_crit_edge, label %if.end20

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end20:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bna_rx_dim_update(ptr noundef nonnull %12) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body15.for.inc_crit_edge
  %inc = add nuw i32 %j.051, 1
  %13 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_rxp_per_rx, align 4
  %cmp13 = icmp ult i32 %inc, %14
  br i1 %cmp13, label %for.inc.for.body15_crit_edge, label %for.inc.for.inc22_crit_edge

for.inc.for.inc22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15

for.inc22:                                        ; preds = %for.inc.for.inc22_crit_edge, %for.cond12.preheader.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc23 = add nuw i32 %i.053, 1
  %15 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_rx, align 4
  %cmp7 = icmp ult i32 %inc23, %16
  br i1 %cmp7, label %for.inc22.for.body_crit_edge, label %for.inc22.for.end24_crit_edge

for.inc22.for.end24_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end24:                                        ; preds = %for.inc22.for.end24_crit_edge, %do.body1.for.end24_crit_edge
  %run_flags = getelementptr i8, ptr %t, i32 -288
  %17 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %run_flags, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool26.not = icmp eq i32 %19, 0
  br i1 %tobool26.not, label %for.end24.if.end30_crit_edge, label %if.then27

for.end24.if.end30_crit_edge:                     ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then27:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 100
  %call29 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %for.end24.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_destroy_tx(ptr noundef %bnad, i32 noundef %tx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id
  %arrayidx2 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 35, i32 %tx_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_comp = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 3
  %2 = ptrtoint ptr %tx_comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 128
  tail call void @bna_tx_disable(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @bnad_cb_tx_disabled) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call6) #13
  tail call void @wait_for_completion(ptr noundef %tx_comp) #13
  %tcb = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 1
  %5 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcb, align 4
  %intr_type = getelementptr inbounds %struct.bna_tcb, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %intr_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp14 = icmp eq i32 %8, 2
  br i1 %cmp14, label %if.then16, label %if.end.do.body19_crit_edge

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19

if.then16:                                        ; preds = %if.end
  %num_txq_per_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 8
  %9 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_txq_per_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.i = icmp sgt i32 %10, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.then16.do.body19_crit_edge

if.then16.do.body19_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19

for.body.lr.ph.i:                                 ; preds = %if.then16
  %msix_table.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 1, i32 %i.014.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %12, null
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %intr_vector.i = getelementptr inbounds %struct.bna_tcb, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_vector.i, align 4
  %15 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msix_table.i, align 4
  %arrayidx4.i = getelementptr %struct.msix_entry, ptr %16, i32 %14
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %18, ptr noundef nonnull %12) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.do.body19_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.body19_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19

do.body19:                                        ; preds = %for.inc.i.do.body19_crit_edge, %if.then16.do.body19_crit_edge, %if.end.do.body19_crit_edge
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 128
  tail call void @bna_tx_destroy(ptr noundef %20) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call27) #13
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx, align 128
  %tx_id35 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 2
  %22 = ptrtoint ptr %tx_id35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_id35, align 4
  tail call fastcc void @bnad_tx_res_free(ptr noundef %bnad, ptr noundef %arrayidx2)
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_disable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_tx_disabled(ptr noundef %arg, ptr nocapture noundef readnone %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_comp = getelementptr inbounds %struct.bnad, ptr %arg, i32 0, i32 37, i32 3
  tail call void @complete(ptr noundef %tx_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_tx_res_free(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %res_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.body.for.inc_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %res_u = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.019, i32 1
  %mdl.i = getelementptr inbounds %struct.bna_mem_info, ptr %res_u, i32 0, i32 4
  %3 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdl.i, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.then.for.inc_crit_edge, label %for.cond.preheader.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.then
  %num.i = getelementptr inbounds %struct.bna_mem_info, ptr %res_u, i32 0, i32 2
  %5 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp144.not.i = icmp eq i32 %6, 0
  br i1 %cmp144.not.i, label %for.cond.preheader.i.for.inc.sink.split_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdl.i, align 4
  %arrayidx.i = getelementptr %struct.bna_mem_descr, ptr %8, i32 %i.045.i
  %kva.i = getelementptr %struct.bna_mem_descr, ptr %8, i32 %i.045.i, i32 1
  %9 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kva.i, align 4
  %cmp3.not.i = icmp eq ptr %10, null
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  %11 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp5.i = icmp eq i32 %12, 2
  br i1 %cmp5.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %lsb.i = getelementptr %struct.bna_mem_descr, ptr %8, i32 %i.045.i, i32 2, i32 1
  %13 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lsb.i, align 4
  %15 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev.i, align 64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %18, ptr noundef nonnull %10, i32 noundef %14, i32 noundef 0) #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %20
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc.sink.split_crit_edge

for.inc.i.for.inc.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %idl.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.019, i32 1, i32 0, i32 2
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then6, %for.inc.i.for.inc.sink.split_crit_edge, %for.cond.preheader.i.for.inc.sink.split_crit_edge
  %mdl.i.sink21 = phi ptr [ %idl.i, %if.then6 ], [ %mdl.i, %for.cond.preheader.i.for.inc.sink.split_crit_edge ], [ %mdl.i, %for.inc.i.for.inc.sink.split_crit_edge ]
  %21 = ptrtoint ptr %mdl.i.sink21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdl.i.sink21, align 4
  tail call void @kfree(ptr noundef %22) #13
  %23 = ptrtoint ptr %mdl.i.sink21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mdl.i.sink21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnad_setup_tx(ptr noundef %bnad, i32 noundef %tx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id
  %arrayidx2 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 35, i32 %tx_id
  %res_u = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 6, i32 1
  %arrayidx7 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 17, i32 %tx_id
  %tx_id8 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 2
  %0 = ptrtoint ptr %tx_id8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %tx_id, ptr %tx_id8, align 4
  %num_txq_per_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 8
  %1 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_txq_per_tx, align 8
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx7, align 4
  %txq_depth = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 10
  %4 = ptrtoint ptr %txq_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txq_depth, align 16
  %txq_depth9 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 17, i32 %tx_id, i32 1
  %6 = ptrtoint ptr %txq_depth9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %txq_depth9, align 4
  %tx_type = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 17, i32 %tx_id, i32 3
  %7 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_type, align 4
  %tx_coalescing_timeo = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 12
  %8 = ptrtoint ptr %tx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_coalescing_timeo, align 8
  %conv = zext i8 %9 to i32
  %coalescing_timeo = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 17, i32 %tx_id, i32 2
  %10 = ptrtoint ptr %coalescing_timeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %coalescing_timeo, align 4
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %11 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_txq_per_tx, align 8
  %13 = ptrtoint ptr %txq_depth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txq_depth, align 16
  tail call void @bna_tx_res_req(i32 noundef %12, i32 noundef %14, ptr noundef %arrayidx2) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call12) #13
  %arrayidx19 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 1
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx19, align 4
  %res_u21 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 1, i32 1
  %16 = ptrtoint ptr %res_u21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %res_u21, align 4
  %17 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_txq_per_tx, align 8
  %num = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 1, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num, align 4
  %20 = ptrtoint ptr %txq_depth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txq_depth, align 16
  %mul = mul i32 %21, 40
  %len = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %len, align 4
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %24, label %entry.for.inc.i_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then6.i
  ]

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %res_u.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 0, i32 1
  %call.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u.i) #13
  br label %if.end10.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %res_u8.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 0, i32 1
  %call9.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u8.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.then.i
  %err.1.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool.not.i, label %if.end10.i.for.inc.i_crit_edge, label %if.end10.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.i.bnad_tx_res_alloc.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %27, label %for.inc.i.for.inc.1.i_crit_edge [
    i32 1, label %if.then.1.i
    i32 2, label %if.then6.1.i
  ]

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.then6.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.1.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u21) #13
  br label %if.end10.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.1.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u21) #13
  br label %if.end10.1.i

if.end10.1.i:                                     ; preds = %if.then.1.i, %if.then6.1.i
  %err.1.1.i = phi i32 [ %call.1.i, %if.then.1.i ], [ %call9.1.i, %if.then6.1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.1.i)
  %tobool.not.1.i = icmp eq i32 %err.1.1.i, 0
  br i1 %tobool.not.1.i, label %if.end10.1.i.for.inc.1.i_crit_edge, label %if.end10.1.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.1.i.bnad_tx_res_alloc.exit_crit_edge:    ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end10.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %30, label %for.inc.1.i.for.inc.2.i_crit_edge [
    i32 1, label %if.then.2.i
    i32 2, label %if.then6.2.i
  ]

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then6.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u8.2.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2, i32 1
  %call9.2.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u8.2.i) #13
  br label %if.end10.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u.2.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2, i32 1
  %call.2.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u.2.i) #13
  br label %if.end10.2.i

if.end10.2.i:                                     ; preds = %if.then.2.i, %if.then6.2.i
  %err.1.2.i = phi i32 [ %call.2.i, %if.then.2.i ], [ %call9.2.i, %if.then6.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.2.i)
  %tobool.not.2.i = icmp eq i32 %err.1.2.i, 0
  br i1 %tobool.not.2.i, label %if.end10.2.i.for.inc.2.i_crit_edge, label %if.end10.2.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.2.i.bnad_tx_res_alloc.exit_crit_edge:    ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end10.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.3.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %33, label %for.inc.2.i.for.inc.3.i_crit_edge [
    i32 1, label %if.then.3.i
    i32 2, label %if.then6.3.i
  ]

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.then6.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u8.3.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3, i32 1
  %call9.3.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u8.3.i) #13
  br label %if.end10.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u.3.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3, i32 1
  %call.3.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u.3.i) #13
  br label %if.end10.3.i

if.end10.3.i:                                     ; preds = %if.then.3.i, %if.then6.3.i
  %err.1.3.i = phi i32 [ %call.3.i, %if.then.3.i ], [ %call9.3.i, %if.then6.3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.3.i)
  %tobool.not.3.i = icmp eq i32 %err.1.3.i, 0
  br i1 %tobool.not.3.i, label %if.end10.3.i.for.inc.3.i_crit_edge, label %if.end10.3.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.3.i.bnad_tx_res_alloc.exit_crit_edge:    ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end10.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 4
  %35 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %36, label %for.inc.3.i.for.inc.4.i_crit_edge [
    i32 1, label %if.then.4.i
    i32 2, label %if.then6.4.i
  ]

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

if.then6.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u8.4.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 4, i32 1
  %call9.4.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u8.4.i) #13
  br label %if.end10.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u.4.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 4, i32 1
  %call.4.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u.4.i) #13
  br label %if.end10.4.i

if.end10.4.i:                                     ; preds = %if.then.4.i, %if.then6.4.i
  %err.1.4.i = phi i32 [ %call.4.i, %if.then.4.i ], [ %call9.4.i, %if.then6.4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.4.i)
  %tobool.not.4.i = icmp eq i32 %err.1.4.i, 0
  br i1 %tobool.not.4.i, label %if.end10.4.i.for.inc.4.i_crit_edge, label %if.end10.4.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.4.i.bnad_tx_res_alloc.exit_crit_edge:    ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.4.i.for.inc.4.i_crit_edge:               ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end10.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 5
  %38 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.5.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %39, label %for.inc.4.i.for.inc.5.i_crit_edge [
    i32 1, label %if.then.5.i
    i32 2, label %if.then6.5.i
  ]

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

if.then6.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u8.5.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 5, i32 1
  %call9.5.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u8.5.i) #13
  br label %if.end10.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u.5.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 5, i32 1
  %call.5.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u.5.i) #13
  br label %if.end10.5.i

if.end10.5.i:                                     ; preds = %if.then.5.i, %if.then6.5.i
  %err.1.5.i = phi i32 [ %call.5.i, %if.then.5.i ], [ %call9.5.i, %if.then6.5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.5.i)
  %tobool.not.5.i = icmp eq i32 %err.1.5.i, 0
  br i1 %tobool.not.5.i, label %if.end10.5.i.for.inc.5.i_crit_edge, label %if.end10.5.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.5.i.bnad_tx_res_alloc.exit_crit_edge:    ; preds = %if.end10.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.5.i.for.inc.5.i_crit_edge:               ; preds = %if.end10.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.end10.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 6
  %41 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.6.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %42, label %for.inc.5.i.do.body32_crit_edge [
    i32 1, label %if.then.6.i
    i32 2, label %if.then6.6.i
  ]

for.inc.5.i.do.body32_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

if.then6.6.i:                                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.6.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 1, i32 noundef %tx_id, ptr noundef %res_u) #13
  br label %if.end10.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.6.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u) #13
  br label %if.end10.6.i

if.end10.6.i:                                     ; preds = %if.then.6.i, %if.then6.6.i
  %err.1.6.i = phi i32 [ %call.6.i, %if.then.6.i ], [ %call9.6.i, %if.then6.6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.6.i)
  %tobool.not.6.i = icmp eq i32 %err.1.6.i, 0
  br i1 %tobool.not.6.i, label %if.end10.6.i.do.body32_crit_edge, label %if.end10.6.i.bnad_tx_res_alloc.exit_crit_edge

if.end10.6.i.bnad_tx_res_alloc.exit_crit_edge:    ; preds = %if.end10.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_tx_res_alloc.exit

if.end10.6.i.do.body32_crit_edge:                 ; preds = %if.end10.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

bnad_tx_res_alloc.exit:                           ; preds = %if.end10.6.i.bnad_tx_res_alloc.exit_crit_edge, %if.end10.5.i.bnad_tx_res_alloc.exit_crit_edge, %if.end10.4.i.bnad_tx_res_alloc.exit_crit_edge, %if.end10.3.i.bnad_tx_res_alloc.exit_crit_edge, %if.end10.2.i.bnad_tx_res_alloc.exit_crit_edge, %if.end10.1.i.bnad_tx_res_alloc.exit_crit_edge, %if.end10.i.bnad_tx_res_alloc.exit_crit_edge
  %err.1.lcssa.i = phi i32 [ %err.1.i, %if.end10.i.bnad_tx_res_alloc.exit_crit_edge ], [ %err.1.1.i, %if.end10.1.i.bnad_tx_res_alloc.exit_crit_edge ], [ %err.1.2.i, %if.end10.2.i.bnad_tx_res_alloc.exit_crit_edge ], [ %err.1.3.i, %if.end10.3.i.bnad_tx_res_alloc.exit_crit_edge ], [ %err.1.4.i, %if.end10.4.i.bnad_tx_res_alloc.exit_crit_edge ], [ %err.1.5.i, %if.end10.5.i.bnad_tx_res_alloc.exit_crit_edge ], [ %err.1.6.i, %if.end10.6.i.bnad_tx_res_alloc.exit_crit_edge ]
  tail call fastcc void @bnad_tx_res_free(ptr noundef %bnad, ptr noundef %arrayidx2) #13
  br label %cleanup

do.body32:                                        ; preds = %if.end10.6.i.do.body32_crit_edge, %for.inc.5.i.do.body32_crit_edge
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %bna = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19
  %call45 = tail call ptr @bna_tx_create(ptr noundef %bna, ptr noundef %bnad, ptr noundef %arrayidx7, ptr noundef nonnull @bnad_setup_tx.tx_cbfn, ptr noundef %arrayidx2, ptr noundef %arrayidx) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call40) #13
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %do.body32.err_return_crit_edge, label %if.end49

do.body32.err_return_crit_edge:                   ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

if.end49:                                         ; preds = %do.body32
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call45, ptr %arrayidx, align 128
  %tx_cleanup_work = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 3
  tail call void @__init_work(ptr noundef %tx_cleanup_work, i32 noundef 0) #13
  %45 = ptrtoint ptr %tx_cleanup_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %tx_cleanup_work, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %tx_cleanup_work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @bnad_setup_tx.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry59 = getelementptr inbounds %struct.work_struct, ptr %tx_cleanup_work, i32 0, i32 1
  %46 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %tx_cleanup_work, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry59, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %tx_cleanup_work, i32 0, i32 2
  %48 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bnad_tx_cleanup, ptr %func, align 4
  %timer = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @bnad_setup_tx.__key.4) #13
  %49 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp70 = icmp eq i32 %50, 2
  br i1 %cmp70, label %if.then72, label %if.end49.do.body80_crit_edge

if.end49.do.body80_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

if.then72:                                        ; preds = %if.end49
  %51 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_txq_per_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp38.i = icmp sgt i32 %52, 0
  br i1 %cmp38.i, label %for.body.lr.ph.i, label %if.then72.do.body80_crit_edge

if.then72.do.body80_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

for.body.lr.ph.i:                                 ; preds = %if.then72
  %msix_table.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i180.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i180.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 1, i32 %i.039.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %intr_vector.i = getelementptr inbounds %struct.bna_tcb, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %intr_vector.i, align 4
  %name.i = getelementptr inbounds %struct.bna_tcb, ptr %54, i32 0, i32 17
  %57 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bnad, align 128
  %id.i = getelementptr inbounds %struct.bna_tcb, ptr %54, i32 0, i32 16
  %59 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id.i, align 4
  %add.i = add i32 %60, %tx_id
  %call.i178 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.8, ptr noundef %58, i32 noundef %add.i) #13
  %61 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %msix_table.i, align 4
  %arrayidx7.i = getelementptr %struct.msix_entry, ptr %62, i32 %56
  %63 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx7.i, align 4
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %name10.i = getelementptr inbounds %struct.bna_tcb, ptr %66, i32 0, i32 17
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %64, ptr noundef nonnull @bnad_msix_tx, ptr noundef null, i32 noundef 0, ptr noundef %name10.i, ptr noundef %66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i179 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i179, label %for.inc.i180, label %err_return.i181

for.inc.i180:                                     ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %52
  br i1 %exitcond.not.i, label %for.inc.i180.do.body80_crit_edge, label %for.inc.i180.for.body.i_crit_edge

for.inc.i180.for.body.i_crit_edge:                ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i180.do.body80_crit_edge:                 ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

err_return.i181:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.039.i)
  %cmp15.not.i = icmp eq i32 %i.039.i, 0
  br i1 %cmp15.not.i, label %err_return.i181.do.body95_crit_edge, label %if.then16.i

err_return.i181.do.body95_crit_edge:              ; preds = %err_return.i181
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body95

if.then16.i:                                      ; preds = %err_return.i181
  %sub.i = add nsw i32 %i.039.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp13.i.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp13.i.not.i, label %if.then16.i.do.body95_crit_edge, label %if.then16.i.for.body.i.i_crit_edge

if.then16.i.for.body.i.i_crit_edge:               ; preds = %if.then16.i
  br label %for.body.i.i

if.then16.i.do.body95_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body95

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then16.i.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then16.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %tx_id, i32 1, i32 %i.014.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %68, null
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %intr_vector.i.i = getelementptr inbounds %struct.bna_tcb, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %intr_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %intr_vector.i.i, align 4
  %71 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %msix_table.i, align 4
  %arrayidx4.i.i = getelementptr %struct.msix_entry, ptr %72, i32 %70
  %73 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.i.i, align 4
  %call.i35.i = tail call ptr @free_irq(i32 noundef %74, ptr noundef nonnull %68) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body95_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.do.body95_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body95

do.body80:                                        ; preds = %for.inc.i180.do.body80_crit_edge, %if.then72.do.body80_crit_edge, %if.end49.do.body80_crit_edge
  %call88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  tail call void @bna_tx_enable(ptr noundef nonnull %call45) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call88) #13
  br label %cleanup

do.body95:                                        ; preds = %for.inc.i.i.do.body95_crit_edge, %if.then16.i.do.body95_crit_edge, %err_return.i181.do.body95_crit_edge
  %call103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 128
  tail call void @bna_tx_destroy(ptr noundef %76) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call103) #13
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx, align 128
  %78 = ptrtoint ptr %tx_id8 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %tx_id8, align 4
  br label %err_return

err_return:                                       ; preds = %do.body95, %do.body32.err_return_crit_edge
  %err.0 = phi i32 [ -1, %do.body95 ], [ -12, %do.body32.err_return_crit_edge ]
  tail call fastcc void @bnad_tx_res_free(ptr noundef %bnad, ptr noundef %arrayidx2)
  br label %cleanup

cleanup:                                          ; preds = %err_return, %do.body80, %bnad_tx_res_alloc.exit
  %retval.0 = phi i32 [ %err.0, %err_return ], [ 0, %do.body80 ], [ %err.1.lcssa.i, %bnad_tx_res_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnad_cb_tcb_setup(ptr nocapture noundef readnone %bnad, ptr noundef %tcb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %txq = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 9
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq, align 4
  %tx = getelementptr inbounds %struct.bna_txq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %priv = getelementptr inbounds %struct.bna_tx, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 11
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tcb, ptr %priv1, align 4
  %id = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 16
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.bnad_tx_info, ptr %5, i32 0, i32 1, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tcb, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnad_cb_tcb_destroy(ptr nocapture noundef readnone %bnad, ptr nocapture noundef %tcb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %txq = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 9
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq, align 4
  %tx = getelementptr inbounds %struct.bna_txq, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %priv = getelementptr inbounds %struct.bna_tx, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.bnad_tx_info, ptr %5, i32 0, i32 1, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %priv2 = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 11
  %9 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %priv2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_tx_stall(ptr nocapture noundef readonly %bnad, ptr nocapture noundef readonly %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %arrayidx = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.bna_tcb, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %flags = getelementptr inbounds %struct.bna_tcb, ptr %3, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  %6 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bnad, align 128
  %conv.i = and i32 %5, 65535
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %id.1 = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %id.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.1, align 4
  %flags.1 = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.1) #13
  %14 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bnad, align 128
  %conv.i.1 = and i32 %13, 65535
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i.1, align 128
  %state.i.i.1 = getelementptr %struct.netdev_queue, ptr %17, i32 %conv.i.1, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %19, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %id.2 = getelementptr inbounds %struct.bna_tcb, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %id.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.2, align 4
  %flags.2 = getelementptr inbounds %struct.bna_tcb, ptr %19, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.2) #13
  %22 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bnad, align 128
  %conv.i.2 = and i32 %21, 65535
  %_tx.i.i.2 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i.2, align 128
  %state.i.i.2 = getelementptr %struct.netdev_queue, ptr %25, i32 %conv.i.2, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %27, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %id.3 = getelementptr inbounds %struct.bna_tcb, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %id.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.3, align 4
  %flags.3 = getelementptr inbounds %struct.bna_tcb, ptr %27, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.3) #13
  %30 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bnad, align 128
  %conv.i.3 = and i32 %29, 65535
  %_tx.i.i.3 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i.3, align 128
  %state.i.i.3 = getelementptr %struct.netdev_queue, ptr %33, i32 %conv.i.3, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.3) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %35, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %id.4 = getelementptr inbounds %struct.bna_tcb, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %id.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.4, align 4
  %flags.4 = getelementptr inbounds %struct.bna_tcb, ptr %35, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.4) #13
  %38 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bnad, align 128
  %conv.i.4 = and i32 %37, 65535
  %_tx.i.i.4 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i.4, align 128
  %state.i.i.4 = getelementptr %struct.netdev_queue, ptr %41, i32 %conv.i.4, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.4) #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 5
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %43, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %id.5 = getelementptr inbounds %struct.bna_tcb, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %id.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.5, align 4
  %flags.5 = getelementptr inbounds %struct.bna_tcb, ptr %43, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.5) #13
  %46 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bnad, align 128
  %conv.i.5 = and i32 %45, 65535
  %_tx.i.i.5 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i.5, align 128
  %state.i.i.5 = getelementptr %struct.netdev_queue, ptr %49, i32 %conv.i.5, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.5) #13
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 6
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %51, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %id.6 = getelementptr inbounds %struct.bna_tcb, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %id.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.6, align 4
  %flags.6 = getelementptr inbounds %struct.bna_tcb, ptr %51, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.6) #13
  %54 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bnad, align 128
  %conv.i.6 = and i32 %53, 65535
  %_tx.i.i.6 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i.6, align 128
  %state.i.i.6 = getelementptr %struct.netdev_queue, ptr %57, i32 %conv.i.6, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.6) #13
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 7
  %58 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %59, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %id.7 = getelementptr inbounds %struct.bna_tcb, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %id.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.7, align 4
  %flags.7 = getelementptr inbounds %struct.bna_tcb, ptr %59, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.7) #13
  %62 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bnad, align 128
  %conv.i.7 = and i32 %61, 65535
  %_tx.i.i.7 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 103
  %64 = ptrtoint ptr %_tx.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_tx.i.i.7, align 128
  %state.i.i.7 = getelementptr %struct.netdev_queue, ptr %65, i32 %conv.i.7, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.7) #13
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_tx_resume(ptr noundef %bnad, ptr nocapture noundef readonly %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %netif_queue_wakeup = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc36, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad_tx_info, ptr %1, i32 0, i32 1, i32 %i.055
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %id = getelementptr inbounds %struct.bna_tcb, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %flags = getelementptr inbounds %struct.bna_tcb, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %do.end12, label %do.body6, !prof !173

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bnad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #13, !srcloc !174
  unreachable

do.end12:                                         ; preds = %if.end
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  %hw_consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %hw_consumer_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_consumer_index, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.not = icmp eq i32 %12, 0
  br i1 %cmp15.not, label %do.end31, label %do.body23, !prof !173

do.body23:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bnad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1072, 0\0A.popsection", ""() #13, !srcloc !175
  unreachable

do.end31:                                         ; preds = %do.end12
  %13 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bnad, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then33, label %do.end31.for.inc_crit_edge

do.end31.for.inc_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then33:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = and i32 %5, 65535
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %19, i32 %conv.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #13
  %20 = ptrtoint ptr %netif_queue_wakeup to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %netif_queue_wakeup, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %netif_queue_wakeup, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %do.end31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc36 = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc36, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %perm_addr = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 38
  %22 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 38, i32 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i, align 2
  %conv.i54 = zext i16 %25 to i32
  %or.i = or i32 %23, %conv.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then38, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then38:                                        ; preds = %for.end
  %enet = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19, i32 10
  tail call void @bna_enet_perm_mac_get(ptr noundef %enet, ptr noundef %perm_addr) #13
  %26 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bnad, align 128
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 54
  %28 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %perm_addr, align 4
  %30 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %perm_addr.i, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i.i = getelementptr %struct.net_device, ptr %27, i32 0, i32 54, i32 4
  %33 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr1.i.i, align 2
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr.i, align 64
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %35, i32 4
  %38 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i10.i, align 2
  %conv.i.i = zext i16 %39 to i32
  %or.i.i = or i32 %37, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.then38.if.end41_crit_edge

if.then38.if.end41_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_addr_mod(ptr noundef %27, i32 noundef 0, ptr noundef %perm_addr, i32 noundef 6) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then.i, %if.then38.if.end41_crit_edge, %for.end.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_tx_cleanup(ptr nocapture noundef readonly %bnad, ptr nocapture noundef readonly %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work_q = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 39
  %2 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %work_q, align 32
  %tx_cleanup_work = getelementptr inbounds %struct.bnad_tx_info, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %tx_cleanup_work, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_res_req(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bna_tx_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_tx_cleanup(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcb1 = getelementptr i8, ptr %work, i32 -36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %pending.048 = phi i32 [ 0, %entry ], [ %pending.1, %for.inc.for.body_crit_edge ]
  %i.047 = phi i32 [ 0, %entry ], [ %inc11, %for.inc.for.body_crit_edge ]
  %bnad.046 = phi ptr [ null, %entry ], [ %bnad.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %tcb1, i32 0, i32 %i.047
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bnad2 = getelementptr inbounds %struct.bna_tcb, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bnad2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad2, align 4
  %flags3 = getelementptr inbounds %struct.bna_tcb, ptr %1, i32 0, i32 15
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %pending.048, 1
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %unmap_q1.i = getelementptr inbounds %struct.bna_tcb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %unmap_q1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unmap_q1.i, align 4
  %q_depth.i = getelementptr inbounds %struct.bna_tcb, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not.i = icmp eq i32 %7, 0
  br i1 %cmp12.not.i, label %if.end6.bnad_txq_cleanup.exit_crit_edge, label %if.end6.for.body.i_crit_edge

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

if.end6.bnad_txq_cleanup.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_txq_cleanup.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %8 = phi i32 [ %12, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.end6.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnad_tx_unmap, ptr %5, i32 %i.013.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @bnad_tx_buff_unmap(ptr noundef %3, ptr noundef %5, i32 noundef %8, i32 noundef %i.013.i) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %10, i32 noundef 1) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %11 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q_depth.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.bnad_txq_cleanup.exit_crit_edge

for.inc.i.bnad_txq_cleanup.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_txq_cleanup.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

bnad_txq_cleanup.exit:                            ; preds = %for.inc.i.bnad_txq_cleanup.exit_crit_edge, %if.end6.bnad_txq_cleanup.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags3) #13
  br label %for.inc

for.inc:                                          ; preds = %bnad_txq_cleanup.exit, %if.then5, %for.body.for.inc_crit_edge
  %bnad.1 = phi ptr [ %3, %if.then5 ], [ %3, %bnad_txq_cleanup.exit ], [ %bnad.046, %for.body.for.inc_crit_edge ]
  %pending.1 = phi i32 [ %inc, %if.then5 ], [ %pending.048, %bnad_txq_cleanup.exit ], [ %pending.048, %for.body.for.inc_crit_edge ]
  %inc11 = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc11, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.1)
  %tobool12.not = icmp eq i32 %pending.1, 0
  br i1 %tobool12.not, label %do.body18, label %if.then13

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %work_q = getelementptr inbounds %struct.bnad, ptr %bnad.1, i32 0, i32 39
  %13 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %work_q, align 32
  %call.i45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work, i32 noundef 1) #13
  br label %cleanup

do.body18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad.1, i32 0, i32 29
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 128
  tail call void @bna_tx_cleanup_complete(ptr noundef %16) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call22) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_destroy_rx(ptr noundef %bnad, i32 noundef %rx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id
  %arrayidx4 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 36, i32 %rx_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_id)
  %cmp = icmp eq i32 %rx_id, 0
  br i1 %cmp, label %do.body8, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.body8:                                         ; preds = %if.end
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %cfg_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 20
  %2 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body8.if.end18_crit_edge, label %land.lhs.true

do.body8.if.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %do.body8
  %run_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  %4 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %run_flags, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %run_flags) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call10) #13
  %dim_timer = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 31
  %call22 = tail call i32 @del_timer_sync(ptr noundef %dim_timer) #13
  br label %if.end24

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %do.body8.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call10) #13
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.then16, %if.end.if.end24_crit_edge
  %rx_comp = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 4
  %7 = ptrtoint ptr %rx_comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %bna_lock32 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock32) #13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 128
  tail call void @bna_rx_disable(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @bnad_cb_rx_disabled) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock32, i32 noundef %call34) #13
  tail call void @wait_for_completion(ptr noundef %rx_comp) #13
  %rx_ctrl = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1
  %10 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ctrl, align 8
  %intr_type = getelementptr inbounds %struct.bna_ccb, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %intr_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp44 = icmp eq i32 %13, 2
  br i1 %cmp44, label %if.then46, label %if.end24.if.end47_crit_edge

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then46:                                        ; preds = %if.end24
  %num_paths = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 1
  %14 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.i = icmp sgt i32 %15, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.then46.if.end47_crit_edge

if.then46.if.end47_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

for.body.lr.ph.i:                                 ; preds = %if.then46
  %msix_table.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1, i32 %i.016.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %cmp1.i = icmp eq ptr %17, null
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %intr_vector.i = getelementptr inbounds %struct.bna_ccb, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intr_vector.i, align 4
  %20 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msix_table.i, align 4
  %arrayidx5.i = getelementptr %struct.msix_entry, ptr %21, i32 %19
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %23, ptr noundef nonnull %17) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.if.end47_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end47_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.end47:                                         ; preds = %for.inc.i.if.end47_crit_edge, %if.then46.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  %num_rxp_per_rx.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 9
  %24 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_rxp_per_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5.not.i = icmp eq i32 %25, 0
  br i1 %cmp5.not.i, label %if.end47.bnad_napi_delete.exit_crit_edge, label %if.end47.for.body.i100_crit_edge

if.end47.for.body.i100_crit_edge:                 ; preds = %if.end47
  br label %for.body.i100

if.end47.bnad_napi_delete.exit_crit_edge:         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_napi_delete.exit

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %if.end47.for.body.i100_crit_edge
  %i.06.i = phi i32 [ %inc.i99, %for.body.i100.for.body.i100_crit_edge ], [ 0, %if.end47.for.body.i100_crit_edge ]
  %napi.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1, i32 %i.06.i, i32 3
  tail call void @__netif_napi_del(ptr noundef %napi.i) #13
  tail call void @synchronize_net() #13
  %inc.i99 = add nuw i32 %i.06.i, 1
  %26 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rxp_per_rx.i, align 4
  %cmp.i = icmp ult i32 %inc.i99, %27
  br i1 %cmp.i, label %for.body.i100.for.body.i100_crit_edge, label %for.body.i100.bnad_napi_delete.exit_crit_edge

for.body.i100.bnad_napi_delete.exit_crit_edge:    ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_napi_delete.exit

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i100

bnad_napi_delete.exit:                            ; preds = %for.body.i100.bnad_napi_delete.exit_crit_edge, %if.end47.bnad_napi_delete.exit_crit_edge
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock32) #13
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 128
  tail call void @bna_rx_destroy(ptr noundef %29) #13
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx, align 128
  %rx_id64 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 2
  %31 = ptrtoint ptr %rx_id64 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rx_id64, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock32, i32 noundef %call57) #13
  tail call fastcc void @bnad_rx_res_free(ptr noundef %bnad, ptr noundef %arrayidx4)
  br label %cleanup

cleanup:                                          ; preds = %bnad_napi_delete.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_disable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_rx_disabled(ptr noundef %arg, ptr nocapture noundef readnone %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_comp = getelementptr inbounds %struct.bnad, ptr %arg, i32 0, i32 37, i32 4
  tail call void @complete(ptr noundef %rx_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_rx_res_free(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %res_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %1, label %for.body.for.inc_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %res_u = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.019, i32 1
  %mdl.i = getelementptr inbounds %struct.bna_mem_info, ptr %res_u, i32 0, i32 4
  %3 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdl.i, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.then.for.inc_crit_edge, label %for.cond.preheader.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.then
  %num.i = getelementptr inbounds %struct.bna_mem_info, ptr %res_u, i32 0, i32 2
  %5 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp144.not.i = icmp eq i32 %6, 0
  br i1 %cmp144.not.i, label %for.cond.preheader.i.for.inc.sink.split_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdl.i, align 4
  %arrayidx.i = getelementptr %struct.bna_mem_descr, ptr %8, i32 %i.045.i
  %kva.i = getelementptr %struct.bna_mem_descr, ptr %8, i32 %i.045.i, i32 1
  %9 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kva.i, align 4
  %cmp3.not.i = icmp eq ptr %10, null
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  %11 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp5.i = icmp eq i32 %12, 2
  br i1 %cmp5.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %lsb.i = getelementptr %struct.bna_mem_descr, ptr %8, i32 %i.045.i, i32 2, i32 1
  %13 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lsb.i, align 4
  %15 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev.i, align 64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %18, ptr noundef nonnull %10, i32 noundef %14, i32 noundef 0) #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %20
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc.sink.split_crit_edge

for.inc.i.for.inc.sink.split_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %idl.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.019, i32 1, i32 0, i32 2
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then6, %for.inc.i.for.inc.sink.split_crit_edge, %for.cond.preheader.i.for.inc.sink.split_crit_edge
  %mdl.i.sink21 = phi ptr [ %idl.i, %if.then6 ], [ %mdl.i, %for.cond.preheader.i.for.inc.sink.split_crit_edge ], [ %mdl.i, %for.inc.i.for.inc.sink.split_crit_edge ]
  %21 = ptrtoint ptr %mdl.i.sink21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdl.i.sink21, align 4
  tail call void @kfree(ptr noundef %22) #13
  %23 = ptrtoint ptr %mdl.i.sink21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mdl.i.sink21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnad_setup_rx(ptr noundef %bnad, i32 noundef %rx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id
  %arrayidx2 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 36, i32 %rx_id
  %res_u = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 15, i32 1
  %arrayidx7 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id
  %rx_id8 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 2
  %0 = ptrtoint ptr %rx_id8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rx_id, ptr %rx_id8, align 8
  %num_rxp_per_rx.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 9
  %1 = call ptr @memset(ptr %arrayidx7, i32 0, i32 108)
  %2 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rxp_per_rx.i, align 4
  %num_paths.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 1
  %4 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %num_paths.i, align 4
  %rx_coalescing_timeo.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 13
  %5 = ptrtoint ptr %rx_coalescing_timeo.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_coalescing_timeo.i, align 1
  %conv.i = zext i8 %6 to i32
  %coalescing_timeo.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 3
  %7 = ptrtoint ptr %coalescing_timeo.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %coalescing_timeo.i, align 4
  %8 = load i32, ptr %num_rxp_per_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp ugt i32 %8, 1
  %rss_status.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %rss_status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rss_status.i, align 4
  %rss_config.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 12
  %10 = ptrtoint ptr %rss_config.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15, ptr %rss_config.i, align 4
  %11 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rxp_per_rx.i, align 4
  %13 = trunc i32 %12 to i8
  %conv4.i = add i8 %13, -1
  %hash_mask.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 12, i32 1
  %14 = ptrtoint ptr %hash_mask.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %hash_mask.i, align 4
  %toeplitz_hash_key.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 12, i32 2
  tail call void @netdev_rss_key_fill(ptr noundef %toeplitz_hash_key.i, i32 noundef 40) #13
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %15 = call ptr @memset(ptr %rss_status.i, i32 0, i32 52)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %16 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bnad, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtu.i, align 4
  %add9.i = add i32 %19, 22
  %frame_size.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 4
  %20 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add9.i, ptr %frame_size.i, align 4
  %q0_multi_buf.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 10
  %21 = ptrtoint ptr %q0_multi_buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %q0_multi_buf.i, align 4
  %rxp_type.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 2
  %22 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %rxp_type.i, align 4
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %23 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev.i, align 64
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %26)
  %cmp11.i = icmp eq i16 %26, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add9.i)
  %cmp14.i = icmp ugt i32 %add9.i, 4096
  %or.cond.i = select i1 %cmp11.i, i1 %cmp14.i, i1 false
  %q0_buf_size.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 8
  br i1 %or.cond.i, label %if.then16.i, label %if.else19.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %q0_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2048, ptr %q0_buf_size.i, align 4
  %q0_num_vecs.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 9
  %28 = ptrtoint ptr %q0_num_vecs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %q0_num_vecs.i, align 4
  %rxq_depth.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 11
  %29 = ptrtoint ptr %rxq_depth.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxq_depth.i, align 4
  %mul.i = shl i32 %30, 2
  %31 = ptrtoint ptr %q0_multi_buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %q0_multi_buf.i, align 4
  br label %bnad_init_rx_config.exit

if.else19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %q0_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add9.i, ptr %q0_buf_size.i, align 4
  %q0_num_vecs22.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 9
  %33 = ptrtoint ptr %q0_num_vecs22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %q0_num_vecs22.i, align 4
  %rxq_depth23.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 11
  %34 = ptrtoint ptr %rxq_depth23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rxq_depth23.i, align 4
  br label %bnad_init_rx_config.exit

bnad_init_rx_config.exit:                         ; preds = %if.else19.i, %if.then16.i
  %.sink.i = phi i32 [ %mul.i, %if.then16.i ], [ %35, %if.else19.i ]
  %36 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 7
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i, ptr %36, align 4
  %rxq_depth30.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 11
  %38 = ptrtoint ptr %rxq_depth30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rxq_depth30.i, align 4
  %q1_depth.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 5
  %40 = ptrtoint ptr %q1_depth.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %q1_depth.i, align 4
  %q1_buf_size.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 6
  %41 = ptrtoint ptr %q1_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 128, ptr %q1_buf_size.i, align 4
  %42 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bnad, align 128
  %features.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 23
  %44 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %features.i, align 16
  %46 = trunc i64 %45 to i32
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 1
  %vlan_strip_status.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 15, i32 %rx_id, i32 14
  %49 = ptrtoint ptr %vlan_strip_status.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %vlan_strip_status.i, align 4
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  tail call void @bna_rx_res_req(ptr noundef %arrayidx7, ptr noundef %arrayidx2) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call10) #13
  %arrayidx15 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3
  %50 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %arrayidx15, align 4
  %res_u17 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3, i32 1
  %51 = ptrtoint ptr %res_u17 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %res_u17, align 4
  %52 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_paths.i, align 4
  %num = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %num, align 4
  %55 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %36, align 4
  %mul = mul i32 %56, 20
  %add = add i32 %mul, 128
  %len = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 3, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %len, align 4
  %58 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rxp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp24.not = icmp eq i32 %59, 1
  br i1 %cmp24.not, label %bnad_init_rx_config.exit.for.body.i.preheader_crit_edge, label %do.body26

bnad_init_rx_config.exit.for.body.i.preheader_crit_edge: ; preds = %bnad_init_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

do.body26:                                        ; preds = %bnad_init_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx27 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2
  %60 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %arrayidx27, align 4
  %res_u30 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2, i32 1
  %61 = ptrtoint ptr %res_u30 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %res_u30, align 4
  %62 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_paths.i, align 4
  %num35 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2, i32 1, i32 0, i32 2
  %64 = ptrtoint ptr %num35 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %num35, align 4
  %65 = ptrtoint ptr %q1_depth.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %q1_depth.i, align 4
  %mul36 = mul i32 %66, 20
  %add37 = add i32 %mul36, 128
  %len40 = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 2, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %len40 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add37, ptr %len40, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.body26, %bnad_init_rx_config.exit.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 %i.028.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %69, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %if.then.i178
    i32 2, label %if.then6.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i178:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 %i.028.i, i32 1
  %call.i = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u.i) #13
  br label %if.end10.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %res_u8.i = getelementptr %struct.bna_res_info, ptr %arrayidx2, i32 %i.028.i, i32 1
  %call9.i = tail call fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef 2, i32 noundef %rx_id, ptr noundef %res_u8.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.then.i178
  %err.1.i = phi i32 [ %call.i, %if.then.i178 ], [ %call9.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool.not.i, label %if.end10.i.for.inc.i_crit_edge, label %bnad_rx_res_alloc.exit

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end45, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

bnad_rx_res_alloc.exit:                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bnad_rx_res_free(ptr noundef %bnad, ptr noundef %arrayidx2) #13
  br label %cleanup

if.end45:                                         ; preds = %for.inc.i
  %71 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_rxp_per_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp8.not.i = icmp eq i32 %72, 0
  br i1 %cmp8.not.i, label %if.end45.bnad_rx_ctrl_init.exit_crit_edge, label %if.end45.for.body.i182_crit_edge

if.end45.for.body.i182_crit_edge:                 ; preds = %if.end45
  br label %for.body.i182

if.end45.bnad_rx_ctrl_init.exit_crit_edge:        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_rx_ctrl_init.exit

for.body.i182:                                    ; preds = %for.body.i182.for.body.i182_crit_edge, %if.end45.for.body.i182_crit_edge
  %i.09.i = phi i32 [ %inc.i180, %for.body.i182.for.body.i182_crit_edge ], [ 0, %if.end45.for.body.i182_crit_edge ]
  %bnad3.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1, i32 %i.09.i, i32 1
  %73 = ptrtoint ptr %bnad3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %bnad, ptr %bnad3.i, align 4
  %inc.i180 = add nuw i32 %i.09.i, 1
  %74 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_rxp_per_rx.i, align 4
  %cmp.i181 = icmp ult i32 %inc.i180, %75
  br i1 %cmp.i181, label %for.body.i182.for.body.i182_crit_edge, label %for.body.i182.bnad_rx_ctrl_init.exit_crit_edge

for.body.i182.bnad_rx_ctrl_init.exit_crit_edge:   ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_rx_ctrl_init.exit

for.body.i182.for.body.i182_crit_edge:            ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i182

bnad_rx_ctrl_init.exit:                           ; preds = %for.body.i182.bnad_rx_ctrl_init.exit_crit_edge, %if.end45.bnad_rx_ctrl_init.exit_crit_edge
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %bna = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19
  %call60 = tail call ptr @bna_rx_create(ptr noundef %bna, ptr noundef %bnad, ptr noundef %arrayidx7, ptr noundef nonnull @bnad_setup_rx.rx_cbfn, ptr noundef %arrayidx2, ptr noundef %arrayidx) #13
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %bnad_rx_ctrl_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call55) #13
  br label %err_return

if.end64:                                         ; preds = %bnad_rx_ctrl_init.exit
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call60, ptr %arrayidx, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call55) #13
  %rx_cleanup_work = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 3
  tail call void @__init_work(ptr noundef %rx_cleanup_work, i32 noundef 0) #13
  %77 = ptrtoint ptr %rx_cleanup_work to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -64, ptr %rx_cleanup_work, align 4
  %lockdep_map = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @bnad_setup_rx.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry71 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 3, i32 1
  %78 = ptrtoint ptr %entry71 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %entry71, ptr %entry71, align 4
  %prev.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 3, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %entry71, ptr %prev.i, align 4
  %func = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 3, i32 2
  %80 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @bnad_rx_cleanup, ptr %func, align 4
  %81 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_rxp_per_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp7.not.i = icmp eq i32 %82, 0
  br i1 %cmp7.not.i, label %if.end64.bnad_napi_add.exit_crit_edge, label %if.end64.for.body.i186_crit_edge

if.end64.for.body.i186_crit_edge:                 ; preds = %if.end64
  br label %for.body.i186

if.end64.bnad_napi_add.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_napi_add.exit

for.body.i186:                                    ; preds = %for.body.i186.for.body.i186_crit_edge, %if.end64.for.body.i186_crit_edge
  %i.08.i = phi i32 [ %inc.i184, %for.body.i186.for.body.i186_crit_edge ], [ 0, %if.end64.for.body.i186_crit_edge ]
  %83 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bnad, align 128
  %napi.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1, i32 %i.08.i, i32 3
  tail call void @netif_napi_add(ptr noundef %84, ptr noundef %napi.i, ptr noundef nonnull @bnad_napi_poll_rx, i32 noundef 64) #13
  %inc.i184 = add nuw i32 %i.08.i, 1
  %85 = ptrtoint ptr %num_rxp_per_rx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_rxp_per_rx.i, align 4
  %cmp.i185 = icmp ult i32 %inc.i184, %86
  br i1 %cmp.i185, label %for.body.i186.for.body.i186_crit_edge, label %for.body.i186.bnad_napi_add.exit_crit_edge

for.body.i186.bnad_napi_add.exit_crit_edge:       ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_napi_add.exit

for.body.i186.for.body.i186_crit_edge:            ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i186

bnad_napi_add.exit:                               ; preds = %for.body.i186.bnad_napi_add.exit_crit_edge, %if.end64.bnad_napi_add.exit_crit_edge
  %87 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp75 = icmp eq i32 %88, 2
  br i1 %cmp75, label %if.then77, label %bnad_napi_add.exit.do.body85_crit_edge

bnad_napi_add.exit.do.body85_crit_edge:           ; preds = %bnad_napi_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body85

if.then77:                                        ; preds = %bnad_napi_add.exit
  %89 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_paths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp42.i = icmp sgt i32 %90, 0
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.then77.do.body85_crit_edge

if.then77.do.body85_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body85

for.body.lr.ph.i:                                 ; preds = %if.then77
  %msix_table.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 26
  br label %for.body.i190

for.body.i190:                                    ; preds = %for.inc.i193.for.body.i190_crit_edge, %for.body.lr.ph.i
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i191, %for.inc.i193.for.body.i190_crit_edge ]
  %arrayidx.i187 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1, i32 %i.043.i
  %91 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i187, align 8
  %intr_vector.i = getelementptr inbounds %struct.bna_ccb, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %intr_vector.i, align 4
  %name.i = getelementptr inbounds %struct.bna_ccb, ptr %92, i32 0, i32 18
  %95 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bnad, align 128
  %id.i = getelementptr inbounds %struct.bna_ccb, ptr %92, i32 0, i32 17
  %97 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id.i, align 4
  %add.i = add i32 %98, %rx_id
  %call.i188 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.14, ptr noundef %96, i32 noundef %add.i) #13
  %99 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %msix_table.i, align 4
  %arrayidx9.i = getelementptr %struct.msix_entry, ptr %100, i32 %94
  %101 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx9.i, align 4
  %103 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i187, align 8
  %name13.i = getelementptr inbounds %struct.bna_ccb, ptr %104, i32 0, i32 18
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %102, ptr noundef nonnull @bnad_msix_rx, ptr noundef null, i32 noundef 0, ptr noundef %name13.i, ptr noundef %104) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i189 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i189, label %for.inc.i193, label %err_return.i194

for.inc.i193:                                     ; preds = %for.body.i190
  %inc.i191 = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i192 = icmp eq i32 %inc.i191, %90
  br i1 %exitcond.not.i192, label %for.inc.i193.do.body85_crit_edge, label %for.inc.i193.for.body.i190_crit_edge

for.inc.i193.for.body.i190_crit_edge:             ; preds = %for.inc.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i190

for.inc.i193.do.body85_crit_edge:                 ; preds = %for.inc.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body85

err_return.i194:                                  ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.043.i)
  %cmp19.not.i = icmp eq i32 %i.043.i, 0
  br i1 %cmp19.not.i, label %err_return.i194.err_return_crit_edge, label %if.then20.i

err_return.i194.err_return_crit_edge:             ; preds = %err_return.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

if.then20.i:                                      ; preds = %err_return.i194
  %sub.i = add nsw i32 %i.043.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp15.i.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp15.i.not.i, label %if.then20.i.err_return_crit_edge, label %if.then20.i.for.body.i.i_crit_edge

if.then20.i.for.body.i.i_crit_edge:               ; preds = %if.then20.i
  br label %for.body.i.i

if.then20.i.err_return_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then20.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then20.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id, i32 1, i32 %i.016.i.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i, align 8
  %cmp1.i.i = icmp eq ptr %106, null
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %intr_vector.i.i = getelementptr inbounds %struct.bna_ccb, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %intr_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %intr_vector.i.i, align 4
  %109 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %msix_table.i, align 4
  %arrayidx5.i.i = getelementptr %struct.msix_entry, ptr %110, i32 %108
  %111 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx5.i.i, align 4
  %call.i39.i = tail call ptr @free_irq(i32 noundef %112, ptr noundef nonnull %106) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.err_return_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.err_return_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

do.body85:                                        ; preds = %for.inc.i193.do.body85_crit_edge, %if.then77.do.body85_crit_edge, %bnad_napi_add.exit.do.body85_crit_edge
  %call93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_id)
  %cmp98 = icmp eq i32 %rx_id, 0
  br i1 %cmp98, label %if.then100, label %do.body85.if.end105_crit_edge

do.body85.if.end105_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then100:                                       ; preds = %do.body85
  %cfg_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 20
  %113 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %if.then100.if.end104_crit_edge, label %if.then102

if.then100.if.end104_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then102:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bna_rx_dim_reconfig(ptr noundef %bna, ptr noundef nonnull @bna_napi_dim_vector) #13
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then100.if.end104_crit_edge
  tail call void @bna_rx_vlanfilter_enable(ptr noundef nonnull %call60) #13
  %115 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cfg_flags, align 8
  %and.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i196 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i196, label %if.end104.if.end105_crit_edge, label %land.lhs.true.i

if.end104.if.end105_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

land.lhs.true.i:                                  ; preds = %if.end104
  %run_flags.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  %117 = ptrtoint ptr %run_flags.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %run_flags.i, align 4
  %119 = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool1.not.i = icmp eq i32 %119, 0
  br i1 %tobool1.not.i, label %do.body.i, label %land.lhs.true.i.if.end105_crit_edge

land.lhs.true.i.if.end105_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dim_timer.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %dim_timer.i, ptr noundef nonnull @bnad_dim_timeout, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @bnad_dim_timer_start.__key) #13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %run_flags.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %add.i197 = add i32 %120, 100
  %call5.i = tail call i32 @mod_timer(ptr noundef %dim_timer.i, i32 noundef %add.i197) #13
  br label %if.end105

if.end105:                                        ; preds = %do.body.i, %land.lhs.true.i.if.end105_crit_edge, %if.end104.if.end105_crit_edge, %do.body85.if.end105_crit_edge
  tail call void @bna_rx_enable(ptr noundef nonnull %call60) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call93) #13
  br label %cleanup

err_return:                                       ; preds = %for.inc.i.i.err_return_crit_edge, %if.then20.i.err_return_crit_edge, %err_return.i194.err_return_crit_edge, %if.then62
  %err.0 = phi i32 [ -12, %if.then62 ], [ -1, %err_return.i194.err_return_crit_edge ], [ -1, %if.then20.i.err_return_crit_edge ], [ -1, %for.inc.i.i.err_return_crit_edge ]
  tail call void @bnad_destroy_rx(ptr noundef %bnad, i32 noundef %rx_id)
  br label %cleanup

cleanup:                                          ; preds = %err_return, %if.end105, %bnad_rx_res_alloc.exit
  %retval.0 = phi i32 [ %err.0, %err_return ], [ 0, %if.end105 ], [ %err.1.i, %bnad_rx_res_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnad_cb_ccb_setup(ptr nocapture noundef readnone %bnad, ptr noundef %ccb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cq = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 11
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 4
  %rx = getelementptr inbounds %struct.bna_cq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %priv = getelementptr inbounds %struct.bna_rx, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 17
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.bnad_rx_info, ptr %5, i32 0, i32 1, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ccb, ptr %arrayidx, align 8
  %9 = load i32, ptr %id, align 4
  %arrayidx4 = getelementptr %struct.bnad_rx_info, ptr %5, i32 0, i32 1, i32 %9
  %ctrl = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 7
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx4, ptr %ctrl, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnad_cb_ccb_destroy(ptr nocapture noundef readnone %bnad, ptr nocapture noundef readonly %ccb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cq = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 11
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 4
  %rx = getelementptr inbounds %struct.bna_cq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %priv = getelementptr inbounds %struct.bna_rx, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 17
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.bnad_rx_info, ptr %5, i32 0, i32 1, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_rx_stall(ptr nocapture noundef readnone %bnad, ptr nocapture noundef readonly %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad_rx_info, ptr %1, i32 0, i32 1, i32 %i.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rcb = getelementptr inbounds %struct.bna_ccb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcb, align 4
  %flags = getelementptr inbounds %struct.bna_rcb, ptr %5, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  %arrayidx5 = getelementptr %struct.bna_ccb, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags10 = getelementptr inbounds %struct.bna_rcb, ptr %7, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags10) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_rx_cleanup(ptr nocapture noundef readonly %bnad, ptr nocapture noundef readonly %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad_rx_info, ptr %1, i32 0, i32 1, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rcb = getelementptr inbounds %struct.bna_ccb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcb, align 4
  %flags = getelementptr inbounds %struct.bna_rcb, ptr %5, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  %arrayidx5 = getelementptr %struct.bna_ccb, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags10 = getelementptr inbounds %struct.bna_rcb, ptr %7, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags10) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %work_q = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 39
  %8 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %work_q, align 32
  %rx_cleanup_work = getelementptr inbounds %struct.bnad_rx_info, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %rx_cleanup_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_rx_post(ptr nocapture noundef %bnad, ptr nocapture noundef readonly %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad_rx_info, ptr %1, i32 0, i32 1, i32 %i.028
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc12_crit_edge, label %if.end

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12

if.end:                                           ; preds = %for.body
  %napi = getelementptr %struct.bnad_rx_info, ptr %1, i32 0, i32 1, i32 %i.028, i32 3
  tail call void @napi_enable(ptr noundef %napi) #13
  %arrayidx7 = getelementptr %struct.bna_ccb, ptr %3, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %unmap_q1.i = getelementptr inbounds %struct.bna_rcb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %unmap_q1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unmap_q1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 128
  %alloc_order.i.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %alloc_order.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %alloc_order.i.i, align 4
  %map_size.i.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %map_size.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %map_size.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type.i.i, align 4
  %rxq.i = getelementptr inbounds %struct.bna_rcb, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxq.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.bna_rxq, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 8
  %dec.i.i = add i32 %15, -1
  %shr.i.i = lshr i32 %dec.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %16 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #13, !range !177
  %sub.i.i.i = sub nuw nsw i32 32, %16
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %type.i.i, align 4
  %id.i = getelementptr inbounds %struct.bna_rcb, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %alloc_order.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %alloc_order.i.i, align 4
  %21 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rxq.i, align 4
  %buffer_size3.i = getelementptr inbounds %struct.bna_rxq, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %buffer_size3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_size3.i, align 8
  %25 = ptrtoint ptr %map_size.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %map_size.i.i, align 8
  br label %do.body.i

if.else.i:                                        ; preds = %if.end10
  %26 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq.i, align 4
  %multi_buffer.i = getelementptr inbounds %struct.bna_rxq, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %multi_buffer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %multi_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %if.else12.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %alloc_order.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %alloc_order.i.i, align 4
  %31 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rxq.i, align 4
  %buffer_size9.i = getelementptr inbounds %struct.bna_rxq, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %buffer_size9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_size9.i, align 8
  %35 = ptrtoint ptr %map_size.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %map_size.i.i, align 8
  %36 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %type.i.i, align 4
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %alloc_order.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.i.i.i, ptr %alloc_order.i.i, align 4
  %38 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxq.i, align 4
  %buffer_size15.i = getelementptr inbounds %struct.bna_rxq, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %buffer_size15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_size15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %41)
  %cmp.i = icmp sgt i32 %41, 2048
  %shl.i = shl i32 4096, %cond.i.i.i
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 2048
  %42 = ptrtoint ptr %map_size.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select.i, ptr %map_size.i.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.then6.i, %if.then.i
  %shl18.i = shl i32 4096, %cond.i.i.i
  %43 = ptrtoint ptr %map_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %map_size.i.i, align 8
  %rem.i = urem i32 %shl18.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool20.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool20.not.i, label %bnad_rxq_alloc_init.exit, label %do.body.i.do.body24.i_crit_edge, !prof !173

do.body.i.do.body24.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body.i.1.do.body24.i_crit_edge, %do.body.i.do.body24.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bnad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 286, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

bnad_rxq_alloc_init.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.bna_rcb, ptr %5, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  tail call fastcc void @bnad_rxq_post(ptr noundef %bnad, ptr noundef nonnull %5)
  br label %for.inc

for.inc:                                          ; preds = %bnad_rxq_alloc_init.exit, %if.end.for.inc_crit_edge
  %arrayidx7.1 = getelementptr %struct.bna_ccb, ptr %3, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx7.1, align 4
  %tobool8.not.1 = icmp eq ptr %46, null
  br i1 %tobool8.not.1, label %for.inc.for.inc12_crit_edge, label %if.end10.1

for.inc.for.inc12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12

if.end10.1:                                       ; preds = %for.inc
  %unmap_q1.i.1 = getelementptr inbounds %struct.bna_rcb, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %unmap_q1.i.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %unmap_q1.i.1, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 128
  %alloc_order.i.i.1 = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %alloc_order.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %alloc_order.i.i.1, align 4
  %map_size.i.i.1 = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %map_size.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %map_size.i.i.1, align 8
  %type.i.i.1 = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %48, i32 0, i32 3
  %52 = ptrtoint ptr %type.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %type.i.i.1, align 4
  %rxq.i.1 = getelementptr inbounds %struct.bna_rcb, ptr %46, i32 0, i32 7
  %53 = ptrtoint ptr %rxq.i.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rxq.i.1, align 4
  %buffer_size.i.1 = getelementptr inbounds %struct.bna_rxq, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %buffer_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buffer_size.i.1, align 8
  %dec.i.i.1 = add i32 %56, -1
  %shr.i.i.1 = lshr i32 %dec.i.i.1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.1)
  %tobool.not.i.i.i.1 = icmp ult i32 %dec.i.i.1, 4096
  %57 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i.1, i1 true) #13, !range !177
  %sub.i.i.i.1 = sub nuw nsw i32 32, %57
  %cond.i.i.i.1 = select i1 %tobool.not.i.i.i.1, i32 0, i32 %sub.i.i.i.1
  %58 = ptrtoint ptr %type.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %type.i.i.1, align 4
  %id.i.1 = getelementptr inbounds %struct.bna_rcb, ptr %46, i32 0, i32 12
  %59 = ptrtoint ptr %id.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id.i.1, align 4
  %and.i.1 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %if.else.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %alloc_order.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %alloc_order.i.i.1, align 4
  %62 = ptrtoint ptr %rxq.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rxq.i.1, align 4
  %buffer_size3.i.1 = getelementptr inbounds %struct.bna_rxq, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %buffer_size3.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buffer_size3.i.1, align 8
  %66 = ptrtoint ptr %map_size.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %map_size.i.i.1, align 8
  br label %do.body.i.1

if.else.i.1:                                      ; preds = %if.end10.1
  %67 = ptrtoint ptr %rxq.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rxq.i.1, align 4
  %multi_buffer.i.1 = getelementptr inbounds %struct.bna_rxq, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %multi_buffer.i.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %multi_buffer.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool5.not.i.1 = icmp eq i32 %70, 0
  br i1 %tobool5.not.i.1, label %if.else12.i.1, label %if.then6.i.1

if.then6.i.1:                                     ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %alloc_order.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %alloc_order.i.i.1, align 4
  %72 = ptrtoint ptr %rxq.i.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rxq.i.1, align 4
  %buffer_size9.i.1 = getelementptr inbounds %struct.bna_rxq, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %buffer_size9.i.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buffer_size9.i.1, align 8
  %76 = ptrtoint ptr %map_size.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %map_size.i.i.1, align 8
  %77 = ptrtoint ptr %type.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %type.i.i.1, align 4
  br label %do.body.i.1

if.else12.i.1:                                    ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %alloc_order.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond.i.i.i.1, ptr %alloc_order.i.i.1, align 4
  %79 = ptrtoint ptr %rxq.i.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rxq.i.1, align 4
  %buffer_size15.i.1 = getelementptr inbounds %struct.bna_rxq, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %buffer_size15.i.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buffer_size15.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %82)
  %cmp.i.1 = icmp sgt i32 %82, 2048
  %shl.i.1 = shl i32 4096, %cond.i.i.i.1
  %spec.select.i.1 = select i1 %cmp.i.1, i32 %shl.i.1, i32 2048
  %83 = ptrtoint ptr %map_size.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select.i.1, ptr %map_size.i.i.1, align 8
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %if.else12.i.1, %if.then6.i.1, %if.then.i.1
  %shl18.i.1 = shl i32 4096, %cond.i.i.i.1
  %84 = ptrtoint ptr %map_size.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %map_size.i.i.1, align 8
  %rem.i.1 = urem i32 %shl18.i.1, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1)
  %tobool20.not.i.1 = icmp eq i32 %rem.i.1, 0
  br i1 %tobool20.not.i.1, label %bnad_rxq_alloc_init.exit.1, label %do.body.i.1.do.body24.i_crit_edge, !prof !173

do.body.i.1.do.body24.i_crit_edge:                ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24.i

bnad_rxq_alloc_init.exit.1:                       ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %flags.1 = getelementptr inbounds %struct.bna_rcb, ptr %46, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.1) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.1) #13
  tail call fastcc void @bnad_rxq_post(ptr noundef %bnad, ptr noundef nonnull %46)
  br label %for.inc12

for.inc12:                                        ; preds = %bnad_rxq_alloc_init.exit.1, %for.inc.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %inc13 = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc13, 16
  br i1 %exitcond.not, label %for.end14, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end14:                                        ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_res_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bna_rx_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_rx_cleanup(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ctrl1 = getelementptr i8, ptr %work, i32 -4484
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %bnad.037 = phi ptr [ null, %entry ], [ %bnad.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.bnad_rx_ctrl], ptr %rx_ctrl1, i32 0, i32 %i.038
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %bnad3 = getelementptr inbounds %struct.bna_ccb, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bnad3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad3, align 4
  %napi = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %arrayidx, i32 0, i32 3
  tail call void @napi_disable(ptr noundef %napi) #13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %q_depth.i = getelementptr inbounds %struct.bna_ccb, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %if.end.bnad_cq_cleanup.exit_crit_edge, label %for.body.lr.ph.i

if.end.bnad_cq_cleanup.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %sw_q.i = getelementptr inbounds %struct.bna_ccb, ptr %5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %sw_q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_q.i, align 4
  %valid.i = getelementptr %struct.bna_cq_entry, ptr %9, i32 %i.02.i, i32 4
  %10 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %valid.i, align 4
  %inc.i = add nuw i32 %i.02.i, 1
  %11 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q_depth.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bnad_cq_cleanup.exit_crit_edge

for.body.i.bnad_cq_cleanup.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_cleanup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

bnad_cq_cleanup.exit:                             ; preds = %for.body.i.bnad_cq_cleanup.exit_crit_edge, %if.end.bnad_cq_cleanup.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %rcb = getelementptr inbounds %struct.bna_ccb, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rcb, align 4
  tail call fastcc void @bnad_rxq_cleanup(ptr noundef %3, ptr noundef %16)
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  %arrayidx9 = getelementptr %struct.bna_ccb, ptr %18, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %bnad_cq_cleanup.exit.for.inc_crit_edge, label %if.then11

bnad_cq_cleanup.exit.for.inc_crit_edge:           ; preds = %bnad_cq_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then11:                                        ; preds = %bnad_cq_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bnad_rxq_cleanup(ptr noundef %3, ptr noundef nonnull %20)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %bnad_cq_cleanup.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %bnad.1 = phi ptr [ %3, %if.then11 ], [ %3, %bnad_cq_cleanup.exit.for.inc_crit_edge ], [ %bnad.037, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body16, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body16:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %work, i32 -4492
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad.1, i32 0, i32 29
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 128
  tail call void @bna_rx_cleanup_complete(ptr noundef %22) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call19) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_dim_reconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_vlanfilter_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_tx_coalescing_timeo_set(ptr nocapture noundef readonly %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_info1 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 3
  %0 = ptrtoint ptr %tx_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_info1, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tx_coalescing_timeo = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 12
  %2 = ptrtoint ptr %tx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_coalescing_timeo, align 8
  %conv = zext i8 %3 to i32
  tail call void @bna_tx_coalescing_timeo_set(ptr noundef nonnull %1, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_coalescing_timeo_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_rx_coalescing_timeo_set(ptr nocapture noundef readonly %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 7
  %0 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_coalescing_timeo = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_coalescing_timeo, align 1
  %conv = zext i8 %5 to i32
  tail call void @bna_rx_coalescing_timeo_set(ptr noundef nonnull %3, i32 noundef %conv) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.09, 1
  %6 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rx, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_coalescing_timeo_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnad_mac_addr_set_locked(ptr nocapture noundef readonly %bnad, ptr noundef %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %rx_info = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 4
  %5 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_info, align 128
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @bna_rx_ucast_set(ptr noundef nonnull %6, ptr noundef %mac_addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  %. = select i1 %cmp.not, i32 0, i32 -99
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end2 ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_rx_ucast_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnad_enable_default_bcast(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_info1 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 4
  %mcast_comp = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 2
  %0 = ptrtoint ptr %mcast_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mcast_comp, align 4
  %wait.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %1 = ptrtoint ptr %rx_info1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_info1, align 128
  %call6 = tail call i32 @bna_rx_mcast_add(ptr noundef %2, ptr noundef nonnull @bnad_bcast_addr, ptr noundef nonnull @bnad_cb_rx_mcast_add) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp eq i32 %call6, 0
  br i1 %cmp8, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wait_for_completion(ptr noundef %mcast_comp) #13
  %mcast_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 10
  %3 = ptrtoint ptr %mcast_comp_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mcast_comp_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp14.not = icmp eq i8 %4, 0
  %. = select i1 %cmp14.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_rx_mcast_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_rx_mcast_add(ptr noundef %bnad, ptr nocapture noundef readnone %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mcast_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 10
  %0 = ptrtoint ptr %mcast_comp_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mcast_comp_status, align 2
  %mcast_comp = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 2
  tail call void @complete(ptr noundef %mcast_comp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_restore_vlans(ptr noundef %bnad, i32 noundef %rx_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %active_vlans = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 5
  %call = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef 0) #13
  %conv123 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv123)
  %cmp24 = icmp ult i32 %conv123, 4096
  br i1 %cmp24, label %do.body3.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body3.lr.ph:                                   ; preds = %entry
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %rx_id
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %do.body3.lr.ph
  %conv125 = phi i32 [ %conv123, %do.body3.lr.ph ], [ %conv1, %do.body3.do.body3_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 128
  tail call void @bna_rx_vlan_add(ptr noundef %1, i32 noundef %conv125) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call7) #13
  %add = add nuw nsw i32 %conv125, 1
  %call15 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add) #13
  %conv1 = and i32 %call15, 65535
  %cmp = icmp ult i32 %conv1, 4096
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %do.body3.for.end_crit_edge

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

for.end:                                          ; preds = %do.body3.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_vlan_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_netdev_qstats_fill(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %stats) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 7
  %0 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp145.not = icmp eq i32 %1, 0
  br i1 %cmp145.not, label %entry.for.cond66.preheader_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.cond66.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond66.preheader

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %num_rxp_per_rx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 9
  %rx_bytes20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc63.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.0146 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc64, %for.inc63.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rxp_per_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2143.not = icmp eq i32 %3, 0
  br i1 %cmp2143.not, label %for.cond1.preheader.for.inc63_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.inc63_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc63

for.cond66.preheader:                             ; preds = %for.inc63.for.cond66.preheader_crit_edge, %entry.for.cond66.preheader_crit_edge
  %num_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 6
  %4 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp67150.not = icmp eq i32 %5, 0
  br i1 %cmp67150.not, label %for.cond66.preheader.for.end95_crit_edge, label %for.cond69.preheader.lr.ph

for.cond66.preheader.for.end95_crit_edge:         ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end95

for.cond69.preheader.lr.ph:                       ; preds = %for.cond66.preheader
  %num_txq_per_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 8
  %tx_packets80 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes87 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %for.cond69.preheader

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %j.0144 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 4, i32 %i.0146, i32 1, i32 %j.0144
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.then

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body3
  %rcb = getelementptr inbounds %struct.bna_ccb, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcb, align 4
  %rxq = getelementptr inbounds %struct.bna_rcb, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxq, align 4
  %rx_packets = getelementptr inbounds %struct.bna_rxq, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_packets, align 8
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %stats, align 8
  %add = add i64 %15, %13
  store i64 %add, ptr %stats, align 8
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 8
  %rcb17 = getelementptr inbounds %struct.bna_ccb, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %rcb17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rcb17, align 4
  %rxq19 = getelementptr inbounds %struct.bna_rcb, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %rxq19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxq19, align 4
  %rx_bytes = getelementptr inbounds %struct.bna_rxq, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_bytes, align 8
  %24 = ptrtoint ptr %rx_bytes20 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_bytes20, align 8
  %add21 = add i64 %25, %23
  store i64 %add21, ptr %rx_bytes20, align 8
  %26 = load ptr, ptr %arrayidx4, align 8
  %arrayidx28 = getelementptr %struct.bna_ccb, ptr %26, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %28, null
  br i1 %tobool29.not, label %if.then.for.inc_crit_edge, label %land.lhs.true

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then
  %rxq37 = getelementptr inbounds %struct.bna_rcb, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %rxq37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxq37, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %land.lhs.true.for.inc_crit_edge, label %if.then39

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %rx_packets48 = getelementptr inbounds %struct.bna_rxq, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %rx_packets48 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_packets48, align 8
  %add50 = add i64 %32, %add
  %33 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add50, ptr %stats, align 8
  %34 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx4, align 8
  %arrayidx57 = getelementptr %struct.bna_ccb, ptr %35, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx57, align 4
  %rxq58 = getelementptr inbounds %struct.bna_rcb, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %rxq58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxq58, align 4
  %rx_bytes59 = getelementptr inbounds %struct.bna_rxq, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %rx_bytes59 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_bytes59, align 8
  %add61 = add i64 %41, %add21
  %42 = ptrtoint ptr %rx_bytes20 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add61, ptr %rx_bytes20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %land.lhs.true.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body3.for.inc_crit_edge
  %inc = add nuw i32 %j.0144, 1
  %43 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_rxp_per_rx, align 4
  %cmp2 = icmp ult i32 %inc, %44
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.inc63_crit_edge

for.inc.for.inc63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc63

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.inc63:                                        ; preds = %for.inc.for.inc63_crit_edge, %for.cond1.preheader.for.inc63_crit_edge
  %inc64 = add nuw i32 %i.0146, 1
  %45 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_rx, align 4
  %cmp = icmp ult i32 %inc64, %46
  br i1 %cmp, label %for.inc63.for.cond1.preheader_crit_edge, label %for.inc63.for.cond66.preheader_crit_edge

for.inc63.for.cond66.preheader_crit_edge:         ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond66.preheader

for.inc63.for.cond1.preheader_crit_edge:          ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader

for.cond69.preheader:                             ; preds = %for.inc93.for.cond69.preheader_crit_edge, %for.cond69.preheader.lr.ph
  %i.1151 = phi i32 [ 0, %for.cond69.preheader.lr.ph ], [ %inc94, %for.inc93.for.cond69.preheader_crit_edge ]
  %47 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_txq_per_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp70148.not = icmp eq i32 %48, 0
  br i1 %cmp70148.not, label %for.cond69.preheader.for.inc93_crit_edge, label %for.cond69.preheader.for.body71_crit_edge

for.cond69.preheader.for.body71_crit_edge:        ; preds = %for.cond69.preheader
  br label %for.body71

for.cond69.preheader.for.inc93_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc93

for.body71:                                       ; preds = %for.inc90.for.body71_crit_edge, %for.cond69.preheader.for.body71_crit_edge
  %j.1149 = phi i32 [ %inc91, %for.inc90.for.body71_crit_edge ], [ 0, %for.cond69.preheader.for.body71_crit_edge ]
  %arrayidx73 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 3, i32 %i.1151, i32 1, i32 %j.1149
  %49 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %50, null
  br i1 %tobool74.not, label %for.body71.for.inc90_crit_edge, label %if.then75

for.body71.for.inc90_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc90

if.then75:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #15
  %txq = getelementptr inbounds %struct.bna_tcb, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %txq, align 4
  %tx_packets = getelementptr inbounds %struct.bna_txq, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tx_packets, align 8
  %55 = ptrtoint ptr %tx_packets80 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tx_packets80, align 8
  %add81 = add i64 %56, %54
  store i64 %add81, ptr %tx_packets80, align 8
  %57 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx73, align 4
  %txq86 = getelementptr inbounds %struct.bna_tcb, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %txq86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %txq86, align 4
  %tx_bytes = getelementptr inbounds %struct.bna_txq, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tx_bytes, align 8
  %63 = ptrtoint ptr %tx_bytes87 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %tx_bytes87, align 8
  %add88 = add i64 %64, %62
  store i64 %add88, ptr %tx_bytes87, align 8
  br label %for.inc90

for.inc90:                                        ; preds = %if.then75, %for.body71.for.inc90_crit_edge
  %inc91 = add nuw i32 %j.1149, 1
  %65 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_txq_per_tx, align 8
  %cmp70 = icmp ult i32 %inc91, %66
  br i1 %cmp70, label %for.inc90.for.body71_crit_edge, label %for.inc90.for.inc93_crit_edge

for.inc90.for.inc93_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc93

for.inc90.for.body71_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body71

for.inc93:                                        ; preds = %for.inc90.for.inc93_crit_edge, %for.cond69.preheader.for.inc93_crit_edge
  %inc94 = add nuw i32 %i.1151, 1
  %67 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_tx, align 128
  %cmp67 = icmp ult i32 %inc94, %68
  br i1 %cmp67, label %for.inc93.for.cond69.preheader_crit_edge, label %for.inc93.for.end95_crit_edge

for.inc93.for.end95_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end95

for.inc93.for.cond69.preheader_crit_edge:         ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond69.preheader

for.end95:                                        ; preds = %for.inc93.for.end95_crit_edge, %for.cond66.preheader.for.end95_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_netdev_hwstats_fill(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %stats) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_stats = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %bna_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna_stats, align 8
  %rx_fcs_error = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 10
  %2 = ptrtoint ptr %rx_fcs_error to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %rx_fcs_error, align 1
  %rx_alignment_error = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 16
  %4 = ptrtoint ptr %rx_alignment_error to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rx_alignment_error, align 1
  %add = add i64 %5, %3
  %rx_frame_length_error = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 17
  %6 = ptrtoint ptr %rx_frame_length_error to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %rx_frame_length_error, align 1
  %add3 = add i64 %add, %7
  %rx_code_error = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 18
  %8 = ptrtoint ptr %rx_code_error to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %rx_code_error, align 1
  %add4 = add i64 %add3, %9
  %rx_undersize = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 20
  %10 = ptrtoint ptr %rx_undersize to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %rx_undersize, align 1
  %add5 = add i64 %add4, %11
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %12 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add5, ptr %rx_errors, align 8
  %tx_fcs_error = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 40
  %13 = ptrtoint ptr %tx_fcs_error to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %tx_fcs_error, align 1
  %tx_undersize = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 43
  %15 = ptrtoint ptr %tx_undersize to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %tx_undersize, align 1
  %add6 = add i64 %16, %14
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %17 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add6, ptr %tx_errors, align 8
  %rx_drop = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 24
  %18 = ptrtoint ptr %rx_drop to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %rx_drop, align 1
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %20 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rx_dropped, align 8
  %tx_drop = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 38
  %21 = ptrtoint ptr %tx_drop to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %tx_drop, align 1
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_dropped, align 8
  %rx_multicast = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 11
  %24 = ptrtoint ptr %rx_multicast to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %rx_multicast, align 1
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %26 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %multicast, align 8
  %tx_total_collision = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 36
  %27 = ptrtoint ptr %tx_total_collision to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %tx_total_collision, align 1
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %29 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %collisions, align 8
  %30 = load i64, ptr %rx_frame_length_error, align 1
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %31 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rx_length_errors, align 8
  %32 = load i64, ptr %rx_fcs_error, align 1
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %33 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rx_crc_errors, align 8
  %34 = load i64, ptr %rx_alignment_error, align 1
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %35 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rx_frame_errors, align 8
  %rid_mask = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19, i32 13, i32 15
  %36 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rid_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not43 = icmp eq i32 %37, 0
  br i1 %tobool.not43, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bmap.044 = phi i32 [ %shr, %if.end.for.body_crit_edge ], [ %37, %entry.for.body_crit_edge ]
  %and = and i32 %bmap.044, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %bna_stats to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bna_stats, align 8
  %frame_drops = getelementptr %struct.bna_stats, ptr %39, i32 0, i32 2, i32 6, i32 %i.045, i32 9
  %40 = ptrtoint ptr %frame_drops to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %frame_drops, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %42 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_fifo_errors, align 8
  %add14 = add i64 %43, %41
  store i64 %add14, ptr %rx_fifo_errors, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  %shr = lshr i32 %bmap.044, 1
  %inc = add nuw nsw i32 %i.045, 1
  %tobool.not = icmp ult i32 %bmap.044, 2
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_set_rx_mode(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %rx_info = getelementptr i8, ptr %netdev, i32 2688
  %0 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_info, align 128
  %cmp6 = icmp eq ptr %1, null
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg_flags = getelementptr i8, ptr %netdev, i32 17336
  %2 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %3, -15
  store i32 %and, ptr %cfg_flags, align 8
  %flags9 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags9, align 8
  %and10 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or13 = or i32 %and, 2
  %6 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or13, ptr %cfg_flags, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %count.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.mode_allmulti.i_crit_edge

if.else.mode_allmulti.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_allmulti.i

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.end.i.bnad_set_rx_mcast_fltr.exit_crit_edge, label %if.end5.i

if.end.i.bnad_set_rx_mcast_fltr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_set_rx_mcast_fltr.exit

if.end5.i:                                        ; preds = %if.end.i
  %num_mcmac.i = getelementptr i8, ptr %netdev, i32 15744
  %13 = ptrtoint ptr %num_mcmac.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_mcmac.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp6.i = icmp sgt i32 %10, %14
  br i1 %cmp6.i, label %if.end5.i.mode_allmulti.i_crit_edge, label %if.end8.i

if.end5.i.mode_allmulti.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_allmulti.i

if.end8.i:                                        ; preds = %if.end5.i
  %add.i = add i32 %10, 1
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 6) #13
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end8.i.mode_allmulti.i_crit_edge, label %if.end7.i.i.i, !prof !179

if.end8.i.mode_allmulti.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_allmulti.i

if.end7.i.i.i:                                    ; preds = %if.end8.i
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 2848) #17
  %cmp9.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp9.i, label %if.end7.i.i.i.mode_allmulti.i_crit_edge, label %if.end11.i

if.end7.i.i.i.mode_allmulti.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_allmulti.i

if.end11.i:                                       ; preds = %if.end7.i.i.i
  %18 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %call8.i.i.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %call8.i.i.i, i32 4
  %19 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %add.ptr1.i.i, align 4
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 66
  %20 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %mc_addr.014.i.i = load ptr, ptr %mc.i.i, align 4
  %cmp.not15.i.i = icmp eq ptr %mc_addr.014.i.i, %mc.i.i
  br i1 %cmp.not15.i.i, label %if.end11.i.bnad_netdev_mc_list_get.exit.i_crit_edge, label %if.end11.i.for.body.i.i_crit_edge

if.end11.i.for.body.i.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body.i.i

if.end11.i.bnad_netdev_mc_list_get.exit.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_netdev_mc_list_get.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end11.i.for.body.i.i_crit_edge
  %mc_addr.017.i.i = phi ptr [ %mc_addr.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %mc_addr.014.i.i, %if.end11.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.end11.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.016.i.i, 6
  %arrayidx.i.i = getelementptr i8, ptr %call8.i.i.i, i32 %mul.i.i
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %mc_addr.017.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %mc_addr.017.i.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 4
  %26 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i.i.i, align 2
  %inc.i.i = add i32 %i.016.i.i, 1
  %27 = ptrtoint ptr %mc_addr.017.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %mc_addr.0.i.i = load ptr, ptr %mc_addr.017.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mc_addr.0.i.i, %mc.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.bnad_netdev_mc_list_get.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.bnad_netdev_mc_list_get.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_netdev_mc_list_get.exit.i

bnad_netdev_mc_list_get.exit.i:                   ; preds = %for.body.i.i.bnad_netdev_mc_list_get.exit.i_crit_edge, %if.end11.i.bnad_netdev_mc_list_get.exit.i_crit_edge
  %28 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_info, align 128
  %call14.i = tail call i32 @bna_rx_mcast_listset(ptr noundef %29, i32 noundef %add.i, ptr noundef nonnull %call8.i.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.not.i, label %bnad_netdev_mc_list_get.exit.i.bnad_set_rx_mcast_fltr.exit_crit_edge, label %bnad_netdev_mc_list_get.exit.i.mode_allmulti.i_crit_edge

bnad_netdev_mc_list_get.exit.i.mode_allmulti.i_crit_edge: ; preds = %bnad_netdev_mc_list_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_allmulti.i

bnad_netdev_mc_list_get.exit.i.bnad_set_rx_mcast_fltr.exit_crit_edge: ; preds = %bnad_netdev_mc_list_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_set_rx_mcast_fltr.exit

mode_allmulti.i:                                  ; preds = %bnad_netdev_mc_list_get.exit.i.mode_allmulti.i_crit_edge, %if.end7.i.i.i.mode_allmulti.i_crit_edge, %if.end8.i.mode_allmulti.i_crit_edge, %if.end5.i.mode_allmulti.i_crit_edge, %if.else.mode_allmulti.i_crit_edge
  %30 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg_flags, align 8
  %or.i = or i32 %31, 4
  store i32 %or.i, ptr %cfg_flags, align 8
  %32 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_info, align 128
  tail call void @bna_rx_mcast_delall(ptr noundef %33) #13
  br label %bnad_set_rx_mcast_fltr.exit

bnad_set_rx_mcast_fltr.exit:                      ; preds = %mode_allmulti.i, %bnad_netdev_mc_list_get.exit.i.bnad_set_rx_mcast_fltr.exit_crit_edge, %if.end.i.bnad_set_rx_mcast_fltr.exit_crit_edge
  %34 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cfg_flags, align 8
  %and15 = and i32 %35, 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 128
  %uc.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 65
  %count.i51 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 65, i32 1
  %38 = ptrtoint ptr %count.i51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i52 = icmp eq i32 %39, 0
  br i1 %cmp.i52, label %bnad_set_rx_mcast_fltr.exit.cleanup.sink.split.i_crit_edge, label %if.end.i54

bnad_set_rx_mcast_fltr.exit.cleanup.sink.split.i_crit_edge: ; preds = %bnad_set_rx_mcast_fltr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end.i54:                                       ; preds = %bnad_set_rx_mcast_fltr.exit
  %num_ucmac.i = getelementptr i8, ptr %netdev, i32 15740
  %40 = ptrtoint ptr %num_ucmac.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_ucmac.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp6.i53 = icmp sgt i32 %39, %41
  br i1 %cmp6.i53, label %if.end.i54.mode_default.i_crit_edge, label %if.end8.i55

if.end.i54.mode_default.i_crit_edge:              ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_default.i

if.end8.i55:                                      ; preds = %if.end.i54
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 6) #13
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.end8.i55.mode_default.i_crit_edge, label %if.end7.i.i.i85, !prof !179

if.end8.i55.mode_default.i_crit_edge:             ; preds = %if.end8.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_default.i

if.end7.i.i.i85:                                  ; preds = %if.end8.i55
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i84 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 2848) #17
  %cmp10.i = icmp eq ptr %call8.i.i.i84, null
  br i1 %cmp10.i, label %if.end7.i.i.i85.mode_default.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i85.mode_default.i_crit_edge:         ; preds = %if.end7.i.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_default.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i85
  %45 = ptrtoint ptr %uc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %ha.059.i = load ptr, ptr %uc.i, align 4
  %cmp17.not60.i = icmp eq ptr %ha.059.i, %uc.i
  br i1 %cmp17.not60.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ha.062.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.059.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %entry2.061.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %entry2.061.i, 6
  %arrayidx18.i = getelementptr i8, ptr %call8.i.i.i84, i32 %mul.i
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.062.i, i32 0, i32 2
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i, align 4
  %48 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx18.i, align 4
  %add.ptr.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.062.i, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i88 = getelementptr i8, ptr %arrayidx18.i, i32 4
  %51 = ptrtoint ptr %add.ptr1.i.i88 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i.i88, align 2
  %inc.i = add i32 %entry2.061.i, 1
  %52 = ptrtoint ptr %ha.062.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %ha.0.i = load ptr, ptr %ha.062.i, align 4
  %cmp17.not.i = icmp eq ptr %ha.0.i, %uc.i
  br i1 %cmp17.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %entry2.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %53 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_info, align 128
  %call28.i = tail call i32 @bna_rx_ucast_listset(ptr noundef %54, i32 noundef %entry2.0.lcssa.i, ptr noundef nonnull %call8.i.i.i84) #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i84) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.not.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.not.i, label %for.end.i.bnad_set_rx_ucast_fltr.exit_crit_edge, label %for.end.i.mode_default.i_crit_edge

for.end.i.mode_default.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mode_default.i

for.end.i.bnad_set_rx_ucast_fltr.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_set_rx_ucast_fltr.exit

mode_default.i:                                   ; preds = %for.end.i.mode_default.i_crit_edge, %if.end7.i.i.i85.mode_default.i_crit_edge, %if.end8.i55.mode_default.i_crit_edge, %if.end.i54.mode_default.i_crit_edge
  %55 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cfg_flags, align 8
  %or.i90 = or i32 %56, 8
  store i32 %or.i90, ptr %cfg_flags, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %mode_default.i, %bnad_set_rx_mcast_fltr.exit.cleanup.sink.split.i_crit_edge
  %57 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_info, align 128
  %call35.i = tail call i32 @bna_rx_ucast_listset(ptr noundef %58, i32 noundef 0, ptr noundef null) #13
  br label %bnad_set_rx_ucast_fltr.exit

bnad_set_rx_ucast_fltr.exit:                      ; preds = %cleanup.sink.split.i, %for.end.i.bnad_set_rx_ucast_fltr.exit_crit_edge
  %59 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cfg_flags, align 8
  %and21 = lshr i32 %60, 2
  %61 = and i32 %and21, 2
  %62 = or i32 %61, %and15
  br label %if.end26

if.end26:                                         ; preds = %bnad_set_rx_ucast_fltr.exit, %if.then11
  %new_mode.1 = phi i32 [ 1, %if.then11 ], [ %62, %bnad_set_rx_ucast_fltr.exit ]
  %63 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_info, align 128
  %call30 = tail call i32 @bna_rx_mode_set(ptr noundef %64, i32 noundef %new_mode.1, i32 noundef 7) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_rx_mode_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bnad_module_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @bnad_pci_driver) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bfi_fw to i32))
  %0 = load ptr, ptr @bfi_fw, align 4
  tail call void @release_firmware(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_module_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bnad_ioc_auto_recover, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool = icmp ne i32 %0, 0
  tail call void @bfa_nw_ioc_auto_recover(i1 noundef zeroext %tobool) #13
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @bnad_pci_driver, ptr noundef null, ptr noundef nonnull @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_dim_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_perm_mac_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_set_netdev_perm_addr(ptr noundef %bnad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnad, align 128
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %perm_addr2 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 38
  %2 = ptrtoint ptr %perm_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %perm_addr2, align 4
  %4 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 38, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %add.ptr.i10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i10, align 2
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %11, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef %perm_addr2, i32 noundef 6) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_mem_alloc(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %mem_info) unnamed_addr #0 align 64 {
entry:
  %dma_pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_pa) #13
  %0 = ptrtoint ptr %dma_pa to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_pa, align 4, !annotation !180
  %num = getelementptr inbounds %struct.bna_mem_info, ptr %mem_info, i32 0, i32 2
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.bna_mem_info, ptr %mem_info, i32 0, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %mdl = getelementptr inbounds %struct.bna_mem_info, ptr %mem_info, i32 0, i32 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 16) #13
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !179

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mdl395 = getelementptr inbounds %struct.bna_mem_info, ptr %mem_info, i32 0, i32 4
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #17
  %mdl3 = getelementptr inbounds %struct.bna_mem_info, ptr %mem_info, i32 0, i32 4
  %8 = ptrtoint ptr %mdl3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %mdl3, align 4
  %cmp5 = icmp eq ptr %call8.i.i, null
  br i1 %cmp5, label %if.end7.i.i.cleanup_crit_edge, label %if.end7

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %mem_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mem_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp8 = icmp eq i32 %10, 2
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11108.not = icmp eq i32 %12, 0
  br i1 %cmp8, label %for.cond.preheader, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %if.end7
  br i1 %cmp11108.not, label %for.cond32.preheader.cleanup_crit_edge, label %for.cond32.preheader.for.body36_crit_edge

for.cond32.preheader.for.body36_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body36

for.cond32.preheader.cleanup_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  br i1 %cmp11108.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %15 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdl3, align 4
  %arrayidx = getelementptr %struct.bna_mem_descr, ptr %16, i32 %i.0109
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev, align 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = load i32, ptr %len, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull %dma_pa, i32 noundef 3264, i32 noundef 0) #13
  %21 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdl3, align 4
  %kva = getelementptr %struct.bna_mem_descr, ptr %22, i32 %i.0109, i32 1
  %23 = ptrtoint ptr %kva to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %kva, align 4
  %24 = load ptr, ptr %mdl3, align 4
  %kva21 = getelementptr %struct.bna_mem_descr, ptr %24, i32 %i.0109, i32 1
  %25 = ptrtoint ptr %kva21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kva21, align 4
  %cmp22 = icmp eq ptr %26, null
  br i1 %cmp22, label %for.body.err_return_crit_edge, label %do.body

for.body.err_return_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

do.body:                                          ; preds = %for.body
  %27 = ptrtoint ptr %dma_pa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_pa, align 4
  %dma = getelementptr %struct.bna_mem_descr, ptr %24, i32 %i.0109, i32 2
  %29 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma, align 4
  %30 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdl3, align 4
  %lsb31 = getelementptr %struct.bna_mem_descr, ptr %31, i32 %i.0109, i32 2, i32 1
  %32 = ptrtoint ptr %lsb31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %lsb31, align 4
  %inc = add nuw i32 %i.0109, 1
  %33 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num, align 4
  %cmp11 = icmp ult i32 %inc, %34
  br i1 %cmp11, label %do.body.for.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond32:                                       ; preds = %for.body36
  %inc54 = add nuw i32 %i.1107, 1
  %35 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num, align 4
  %cmp34 = icmp ult i32 %inc54, %36
  br i1 %cmp34, label %for.cond32.for.body36_crit_edge, label %for.cond32.cleanup_crit_edge

for.cond32.cleanup_crit_edge:                     ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond32.for.body36_crit_edge:                  ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36

for.body36:                                       ; preds = %for.cond32.for.body36_crit_edge, %for.cond32.preheader.for.body36_crit_edge
  %i.1107 = phi i32 [ %inc54, %for.cond32.for.body36_crit_edge ], [ 0, %for.cond32.preheader.for.body36_crit_edge ]
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %39 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdl3, align 4
  %arrayidx39 = getelementptr %struct.bna_mem_descr, ptr %40, i32 %i.1107
  %41 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx39, align 4
  %42 = load i32, ptr %len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #17
  %43 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdl3, align 4
  %kva45 = getelementptr %struct.bna_mem_descr, ptr %44, i32 %i.1107, i32 1
  %45 = ptrtoint ptr %kva45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i.i, ptr %kva45, align 4
  %46 = load ptr, ptr %mdl3, align 4
  %kva48 = getelementptr %struct.bna_mem_descr, ptr %46, i32 %i.1107, i32 1
  %47 = ptrtoint ptr %kva48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %kva48, align 4
  %cmp49 = icmp eq ptr %48, null
  br i1 %cmp49, label %for.body36.err_return_crit_edge, label %for.cond32

for.body36.err_return_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

err_return:                                       ; preds = %for.body36.err_return_crit_edge, %for.body.err_return_crit_edge
  %49 = phi ptr [ %24, %for.body.err_return_crit_edge ], [ %46, %for.body36.err_return_crit_edge ]
  %cmp.i = icmp eq ptr %49, null
  br i1 %cmp.i, label %err_return.cleanup_crit_edge, label %for.cond.preheader.i

err_return.cleanup_crit_edge:                     ; preds = %err_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %err_return
  %50 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp144.not.i = icmp eq i32 %51, 0
  br i1 %cmp144.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdl3, align 4
  %arrayidx.i = getelementptr %struct.bna_mem_descr, ptr %53, i32 %i.045.i
  %kva.i = getelementptr %struct.bna_mem_descr, ptr %53, i32 %i.045.i, i32 1
  %54 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %kva.i, align 4
  %cmp3.not.i = icmp eq ptr %55, null
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  %56 = ptrtoint ptr %mem_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp5.i = icmp eq i32 %57, 2
  br i1 %cmp5.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %lsb.i = getelementptr %struct.bna_mem_descr, ptr %53, i32 %i.045.i, i32 2, i32 1
  %58 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lsb.i, align 4
  %60 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev.i, align 64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %63, ptr noundef nonnull %55, i32 noundef %59, i32 noundef 0) #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %55) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %64 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num, align 4
  %cmp1.i = icmp ult i32 %inc.i, %65
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %66 = ptrtoint ptr %mdl3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdl3, align 4
  call void @kfree(ptr noundef %67) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.i, %kcalloc.exit.thread, %if.then
  %mdl3102.sink = phi ptr [ %mdl3, %for.end.i ], [ %mdl395, %kcalloc.exit.thread ], [ %mdl, %if.then ]
  %retval.0.ph = phi i32 [ -12, %for.end.i ], [ -12, %kcalloc.exit.thread ], [ 0, %if.then ]
  %68 = ptrtoint ptr %mdl3102.sink to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %mdl3102.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err_return.cleanup_crit_edge, %for.cond32.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond32.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %err_return.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond32.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.cond32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_pa) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_txrx_irq_alloc(ptr noundef %bnad, i32 noundef %src, i32 noundef %txrx_id, ptr nocapture noundef %intr_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %cfg_flags5 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 20
  %0 = ptrtoint ptr %cfg_flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_flags5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %intr_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %intr_info, align 4
  %num = getelementptr inbounds %struct.bna_intr_info, ptr %intr_info, i32 0, i32 1
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #13
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !179

kcalloc.exit.thread:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %idl79 = getelementptr inbounds %struct.bna_intr_info, ptr %intr_info, i32 0, i32 2
  %7 = ptrtoint ptr %idl79 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %idl79, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #17
  %idl = getelementptr inbounds %struct.bna_intr_info, ptr %intr_info, i32 0, i32 2
  %9 = ptrtoint ptr %idl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %idl, align 4
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %10 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %src, label %do.body14 [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb11
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %num_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 6
  %11 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx, align 128
  %num_txq_per_tx = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 8
  %13 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_txq_per_tx, align 8
  %mul = mul i32 %14, %12
  %add12 = add i32 %mul, 1
  br label %sw.epilog

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bnad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1479, 0\0A.popsection", ""() #13, !srcloc !181
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %if.end.sw.epilog_crit_edge
  %add12.pn = phi i32 [ %add12, %sw.bb11 ], [ %src, %if.end.sw.epilog_crit_edge ]
  %vector_start.0 = add i32 %add12.pn, %txrx_id
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2186 = icmp sgt i32 %16, 0
  br i1 %cmp2186, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %add23 = add i32 %vector_start.0, %i.087
  %17 = ptrtoint ptr %idl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idl, align 4
  %arrayidx = getelementptr %struct.bna_intr_descr, ptr %18, i32 %i.087
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add23, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.087, 1
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num, align 4
  %cmp21 = icmp slt i32 %inc, %21
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %entry
  %22 = ptrtoint ptr %intr_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %intr_info, align 4
  %num26 = getelementptr inbounds %struct.bna_intr_info, ptr %intr_info, i32 0, i32 1
  %23 = ptrtoint ptr %num26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 4) #18
  %idl29 = getelementptr inbounds %struct.bna_intr_info, ptr %intr_info, i32 0, i32 2
  %25 = ptrtoint ptr %idl29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i76, ptr %idl29, align 4
  %tobool31.not = icmp eq ptr %call7.i.i.i76, null
  br i1 %tobool31.not, label %if.else.cleanup_crit_edge, label %if.end33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.else
  %26 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %src, label %if.end33.cleanup_crit_edge [
    i32 1, label %sw.bb34
    i32 2, label %sw.bb38
  ]

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb34:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %call7.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %call7.i.i.i76, align 8
  br label %cleanup

sw.bb38:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %call7.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %call7.i.i.i76, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %sw.bb34, %if.end33.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %sw.bb34 ], [ 0, %sw.bb38 ], [ 0, %if.end33.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_tx_cleanup_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_tx_buff_unmap(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %unmap_q, i32 noundef %q_depth, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bnad_tx_unmap, ptr %unmap_q, i32 %index
  %nvecs1 = getelementptr %struct.bnad_tx_unmap, ptr %unmap_q, i32 %index, i32 1
  %0 = ptrtoint ptr %nvecs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs1, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  store i32 0, ptr %nvecs1, align 4
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %vectors = getelementptr %struct.bnad_tx_unmap, ptr %unmap_q, i32 %index, i32 2
  %6 = ptrtoint ptr %vectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vectors, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %9, %11
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #13
  %12 = ptrtoint ptr %vectors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %vectors, align 4
  %nvecs.045 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvecs.045)
  %tobool.not46 = icmp eq i32 %nvecs.045, 0
  %.pre = add i32 %q_depth, -1
  br i1 %tobool.not46, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %nvecs.050 = phi i32 [ %nvecs.0, %while.body.while.body_crit_edge ], [ %nvecs.045, %entry.while.body_crit_edge ]
  %vector.049 = phi i32 [ %vector.1, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %index.addr.048 = phi i32 [ %index.addr.1, %while.body.while.body_crit_edge ], [ %index, %entry.while.body_crit_edge ]
  %unmap.047 = phi ptr [ %unmap.1, %while.body.while.body_crit_edge ], [ %arrayidx, %entry.while.body_crit_edge ]
  %inc = add i32 %vector.049, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp eq i32 %inc, 4
  %add = add i32 %index.addr.048, 1
  %and = and i32 %add, %.pre
  %arrayidx9 = getelementptr %struct.bnad_tx_unmap, ptr %unmap_q, i32 %and
  %unmap.1 = select i1 %cmp, ptr %arrayidx9, ptr %unmap.047
  %index.addr.1 = select i1 %cmp, i32 %and, i32 %index.addr.048
  %vector.1 = select i1 %cmp, i32 0, i32 %inc
  %13 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev, align 64
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %arrayidx13 = getelementptr %struct.bnad_tx_unmap, ptr %unmap.1, i32 0, i32 2, i32 %vector.1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %dma_len = getelementptr %struct.bnad_tx_unmap, ptr %unmap.1, i32 0, i32 2, i32 %vector.1, i32 1
  %17 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev11, i32 noundef %16, i32 noundef %18, i32 noundef 1, i32 noundef 0) #13
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx13, align 4
  %nvecs.0 = add i32 %nvecs.050, -1
  %tobool.not = icmp eq i32 %nvecs.0, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %index.addr.0.lcssa = phi i32 [ %index, %entry.while.end_crit_edge ], [ %index.addr.1, %while.body.while.end_crit_edge ]
  %add21 = add i32 %index.addr.0.lcssa, 1
  %and23 = and i32 %add21, %.pre
  ret i32 %and23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_msix_tx(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bnad1 = getelementptr inbounds %struct.bna_tcb, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %bnad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnad1, align 4
  tail call fastcc void @bnad_tx_complete(ptr noundef %1, ptr noundef %data)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_tx_complete(ptr nocapture noundef %bnad, ptr noundef %tcb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnad, align 128
  %flags = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 15
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @bnad_txcmpl_process(ptr noundef %bnad, ptr noundef %tcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end17_crit_edge, label %if.then4

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then4:                                         ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then4.if.end17_crit_edge, label %land.lhs.true

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true7, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true7:                                   ; preds = %land.lhs.true
  %consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 4
  %9 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %consumer_index, align 4
  %producer_index = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 3
  %11 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %producer_index, align 4
  %13 = xor i32 %12, -1
  %sub8 = add i32 %10, %13
  %q_depth = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 6
  %14 = ptrtoint ptr %q_depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_depth, align 4
  %sub9 = add i32 %15, -1
  %and = and i32 %sub9, %sub8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp ugt i32 %and, 7
  br i1 %cmp, label %if.then10, label %land.lhs.true7.if.end17_crit_edge

land.lhs.true7.if.end17_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true7
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %3) #13
  %netif_queue_wakeup = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 1
  %19 = ptrtoint ptr %netif_queue_wakeup to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %netif_queue_wakeup, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %netif_queue_wakeup, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then10.if.end17_crit_edge, %land.lhs.true7.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.then4.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %if.end17.do.end29_crit_edge, label %do.body, !prof !179

if.end17.do.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  tail call void @arm_heavy_mb() #13
  %i_dbell = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 8
  %24 = ptrtoint ptr %i_dbell to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_dbell, align 4
  %doorbell_ack = getelementptr inbounds %struct.bna_ib_dbell, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %doorbell_ack to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %doorbell_ack, align 4
  %or = or i32 %27, %call2
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #13, !srcloc !183
  br label %do.end29

do.end29:                                         ; preds = %do.body, %if.end17.do.end29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_txcmpl_process(ptr nocapture noundef readonly %bnad, ptr noundef %tcb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %unmap_q1 = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 2
  %0 = ptrtoint ptr %unmap_q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unmap_q1, align 4
  %flags = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 15
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 5
  %5 = ptrtoint ptr %hw_consumer_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_consumer_index, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  %consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 4
  %9 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %consumer_index, align 4
  %q_depth2 = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 6
  %11 = ptrtoint ptr %q_depth2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q_depth2, align 4
  %sub = sub i32 %8, %10
  %sub3 = add i32 %12, -1
  %and = and i32 %sub3, %sub
  %producer_index = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 3
  %13 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %producer_index, align 4
  %sub5 = sub i32 %14, %10
  %and8 = and i32 %sub5, %sub3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and8)
  %cmp.not = icmp ugt i32 %and, %and8
  br i1 %cmp.not, label %do.body13, label %while.cond.preheader, !prof !179

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not61 = icmp eq i32 %and, 0
  br i1 %tobool20.not61, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bnad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #13, !srcloc !186
  unreachable

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %cons.065 = phi i32 [ %call24, %while.body.while.body_crit_edge ], [ %10, %while.cond.preheader.while.body_crit_edge ]
  %wis.064 = phi i32 [ %sub23, %while.body.while.body_crit_edge ], [ %and, %while.cond.preheader.while.body_crit_edge ]
  %sent_bytes.063 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %sent_packets.062 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad_tx_unmap, ptr %1, i32 %cons.065
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %inc = add i32 %sent_packets.062, 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add = add i32 %18, %sent_bytes.063
  %nvecs = getelementptr %struct.bnad_tx_unmap, ptr %1, i32 %cons.065, i32 1
  %19 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nvecs, align 4
  %add22 = add i32 %20, 3
  %shr = lshr i32 %add22, 2
  %sub23 = sub i32 %wis.064, %shr
  %call24 = tail call fastcc i32 @bnad_tx_buff_unmap(ptr noundef %bnad, ptr noundef %1, i32 noundef %12, i32 noundef %cons.065)
  tail call void @__dev_kfree_skb_any(ptr noundef %16, i32 noundef 1) #13
  %tobool20.not = icmp eq i32 %sub23, 0
  br i1 %tobool20.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %sent_packets.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %sent_bytes.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %21 = ptrtoint ptr %consumer_index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %consumer_index, align 4
  %conv = zext i32 %sent_packets.0.lcssa to i64
  %txq = getelementptr inbounds %struct.bna_tcb, ptr %tcb, i32 0, i32 9
  %22 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %txq, align 4
  %tx_packets = getelementptr inbounds %struct.bna_txq, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_packets, align 8
  %add26 = add i64 %25, %conv
  store i64 %add26, ptr %tx_packets, align 8
  %conv27 = zext i32 %sent_bytes.0.lcssa to i64
  %26 = load ptr, ptr %txq, align 4
  %tx_bytes = getelementptr inbounds %struct.bna_txq, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tx_bytes, align 8
  %add29 = add i64 %28, %conv27
  store i64 %add29, ptr %tx_bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sent_packets.0.lcssa, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_rxq_post(ptr nocapture noundef %bnad, ptr noundef %rcb) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %consumer_index = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 4
  %0 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %consumer_index, align 4
  %producer_index = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 3
  %2 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %producer_index, align 4
  %4 = xor i32 %3, -1
  %sub2 = add i32 %1, %4
  %q_depth = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 5
  %5 = ptrtoint ptr %q_depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %q_depth, align 4
  %sub3 = add i32 %6, -1
  %and = and i32 %sub3, %sub2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %tobool.not = icmp ult i32 %and, 8
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %unmap_q1 = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 2
  %7 = ptrtoint ptr %unmap_q1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unmap_q1, align 4
  %type = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %while.body.lr.ph.i, label %if.else

while.body.lr.ph.i:                               ; preds = %if.end
  %rxq.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 7
  %11 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxq.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.bna_rxq, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size.i, align 8
  %add.i.i.i = add i32 %14, 2
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %sw_q.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec15.in.i = phi i32 [ %and, %while.body.lr.ph.i ], [ %dec15.i, %if.end23.i.while.body.i_crit_edge ]
  %alloced.014.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc31.i, %if.end23.i.while.body.i_crit_edge ]
  %prod.013.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %and.i, %if.end23.i.while.body.i_crit_edge ]
  %dec15.i = add i32 %dec15.in.i, -1
  %15 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bnad, align 128
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %16, i32 noundef %add.i.i.i, i32 noundef 2592) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %rxbuf_alloc_failed.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 33
  %17 = ptrtoint ptr %rxbuf_alloc_failed.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rxbuf_alloc_failed.i, align 8
  %inc.i = add i64 %18, 1
  store i64 %inc.i, ptr %rxbuf_alloc_failed.i, align 8
  %19 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxq.i, align 4
  %rxbuf_alloc_failed9.i = getelementptr inbounds %struct.bna_rxq, ptr %20, i32 0, i32 13
  br label %finishing.i

if.end.i:                                         ; preds = %while.body.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %25 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev.i, align 64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #13
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !173

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #13
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i1.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i1.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %30, %if.end.i.i.i ], [ %28, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %14) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %32, 1073741824
  %shr.i2.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %31, i32 %shr.i2.i
  %and.i.i = and i32 %32, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %14, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %33 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcidev.i, align 64
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev13.i, i32 noundef %retval.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then16.i, label %if.end23.i

if.then16.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #13
  %rxbuf_map_failed.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 34
  %35 = ptrtoint ptr %rxbuf_map_failed.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rxbuf_map_failed.i, align 8
  %inc19.i = add i64 %36, 1
  store i64 %inc19.i, ptr %rxbuf_map_failed.i, align 8
  %37 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rxq.i, align 4
  %rxbuf_map_failed21.i = getelementptr inbounds %struct.bna_rxq, ptr %38, i32 0, i32 14
  br label %finishing.i

if.end23.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %skb24.i = getelementptr %struct.bnad_rx_unmap_q, ptr %8, i32 0, i32 5, i32 %prod.013.i, i32 1
  %39 = ptrtoint ptr %skb24.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i.i, ptr %skb24.i, align 4
  %vector.i = getelementptr %struct.bnad_rx_unmap_q, ptr %8, i32 0, i32 5, i32 %prod.013.i, i32 2
  %40 = ptrtoint ptr %vector.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i.i, ptr %vector.i, align 4
  %len.i = getelementptr %struct.bnad_rx_unmap_q, ptr %8, i32 0, i32 5, i32 %prod.013.i, i32 2, i32 1
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %14, ptr %len.i, align 4
  %42 = ptrtoint ptr %sw_q.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw_q.i, align 4
  %arrayidx27.i = getelementptr %struct.bna_rxq_entry, ptr %43, i32 %prod.013.i
  %44 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx27.i, align 4
  %lsb30.i = getelementptr inbounds %struct.bna_dma_addr, ptr %arrayidx27.i, i32 0, i32 1
  %45 = ptrtoint ptr %lsb30.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i, ptr %lsb30.i, align 4
  %add.i = add i32 %prod.013.i, 1
  %and.i = and i32 %add.i, %sub3
  %inc31.i = add nuw i32 %alloced.014.i, 1
  %tobool.not.i = icmp eq i32 %dec15.i, 0
  br i1 %tobool.not.i, label %if.end23.i.if.then39.i_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end23.i.if.then39.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39.i

finishing.i:                                      ; preds = %if.then16.i, %if.then.i
  %rxbuf_map_failed21.sink39.i = phi ptr [ %rxbuf_map_failed21.i, %if.then16.i ], [ %rxbuf_alloc_failed9.i, %if.then.i ]
  %46 = ptrtoint ptr %rxbuf_map_failed21.sink39.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rxbuf_map_failed21.sink39.i, align 8
  %inc22.i = add i64 %47, 1
  store i64 %inc22.i, ptr %rxbuf_map_failed21.sink39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloced.014.i)
  %tobool32.not.i = icmp eq i32 %alloced.014.i, 0
  br i1 %tobool32.not.i, label %finishing.i.cleanup_crit_edge, label %finishing.i.if.then39.i_crit_edge, !prof !179

finishing.i.if.then39.i_crit_edge:                ; preds = %finishing.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39.i

finishing.i.cleanup_crit_edge:                    ; preds = %finishing.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39.i:                                      ; preds = %finishing.i.if.then39.i_crit_edge, %if.end23.i.if.then39.i_crit_edge
  %prod.0930.i = phi i32 [ %prod.013.i, %finishing.i.if.then39.i_crit_edge ], [ %and.i, %if.end23.i.if.then39.i_crit_edge ]
  %48 = ptrtoint ptr %producer_index to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %prod.0930.i, ptr %producer_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !187
  %flags.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 11
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags.i, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool48.not.i = icmp eq i32 %51, 0
  br i1 %tobool48.not.i, label %if.then39.i.cleanup_crit_edge, label %do.body56.i, !prof !179

if.then39.i.cleanup_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body56.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !188
  tail call void @arm_heavy_mb() #13
  %52 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %producer_index, align 4
  %or.i = or i32 %53, -2147483648
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %q_dbell.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 6
  %55 = ptrtoint ptr %q_dbell.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %q_dbell.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #13, !srcloc !183
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bnad_rxq_refill_page(ptr noundef %bnad, ptr noundef %rcb, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body56.i, %if.then39.i.cleanup_crit_edge, %finishing.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_rxq_refill_page(ptr nocapture noundef %bnad, ptr noundef %rcb, i32 noundef %nalloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %unmap_q1 = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 2
  %0 = ptrtoint ptr %unmap_q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unmap_q1, align 4
  %producer_index = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 3
  %alloc_order = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %alloc_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_order, align 4
  %shl = shl i32 4096, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nalloc)
  %tobool.not19 = icmp eq i32 %nalloc, 0
  br i1 %tobool.not19, label %entry.if.end80_crit_edge, label %while.body.lr.ph

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %producer_index, align 4
  %q_depth2 = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 5
  %6 = ptrtoint ptr %q_depth2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_depth2, align 4
  %map_size = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 2
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %sw_q = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 1
  %sub = add i32 %7, -1
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  %dec22.in = phi i32 [ %nalloc, %while.body.lr.ph ], [ %dec22, %if.end31.while.body_crit_edge ]
  %alloced.021 = phi i32 [ 0, %while.body.lr.ph ], [ %inc50, %if.end31.while.body_crit_edge ]
  %prod.020 = phi i32 [ %5, %while.body.lr.ph ], [ %and, %if.end31.while.body_crit_edge ]
  %dec22 = add i32 %dec22.in, -1
  %arrayidx = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %prod.020
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %alloc_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_order, align 4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 264736, i32 noundef %11, i32 noundef 0, ptr noundef null) #13
  br label %if.end

if.else:                                          ; preds = %while.body
  %arrayidx7 = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %9
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %page_offset9 = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %9, i32 3
  %14 = ptrtoint ptr %page_offset9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_offset9, align 4
  %16 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_size, align 8
  %add = add i32 %17, %15
  %18 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !173

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %24, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !179

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !189
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !190
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@bnad_rxq_refill_page, %if.then.i.i.i.i)) #13
          to label %if.end [label %if.then.i.i.i.i], !srcloc !191

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %22, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then
  %page.0 = phi ptr [ %call38.i.i.i, %if.then ], [ %13, %do.end5.i.i ], [ %13, %if.then.i.i.i.i ]
  %page_offset.0 = phi i32 [ 0, %if.then ], [ %add, %do.end5.i.i ], [ %add, %if.then.i.i.i.i ]
  %tobool10.not = icmp eq ptr %page.0, null
  br i1 %tobool10.not, label %if.then14, label %if.end17, !prof !179

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rxbuf_alloc_failed = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 33
  %27 = ptrtoint ptr %rxbuf_alloc_failed to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rxbuf_alloc_failed, align 8
  %inc = add i64 %28, 1
  store i64 %inc, ptr %rxbuf_alloc_failed, align 8
  %rxq = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 7
  %29 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxq, align 4
  %rxbuf_alloc_failed15 = getelementptr inbounds %struct.bna_rxq, ptr %30, i32 0, i32 13
  br label %finishing

if.end17:                                         ; preds = %if.end
  %31 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev, align 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %map_size, align 8
  %call19 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef nonnull %page.0, i32 noundef %page_offset.0, i32 noundef %34, i32 noundef 2, i32 noundef 0) #13
  %35 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcidev, align 64
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev21, i32 noundef %call19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp.i.not = icmp eq i32 %call19, -1
  br i1 %cmp.i.not, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end17
  %37 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i1 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i5, label %if.then.i.i4, !prof !173

if.then.i.i4:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i3 = add i32 %39, -1
  br label %_compound_head.exit.i7

if.end.i.i5:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i7

_compound_head.exit.i7:                           ; preds = %if.end.i.i5, %if.then.i.i4
  %retval.0.i.i6 = phi i32 [ %sub.i.i3, %if.then.i.i4 ], [ %40, %if.end.i.i5 ]
  %41 = inttoptr i32 %retval.0.i.i6 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %42 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i8, label %do.end5.i.i.i.i, !prof !179

if.then.i.i.i.i8:                                 ; preds = %_compound_head.exit.i7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i7
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !194
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@bnad_rxq_refill_page, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !191

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %41, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %41) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %rxbuf_map_failed = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 34
  %45 = ptrtoint ptr %rxbuf_map_failed to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rxbuf_map_failed, align 8
  %inc27 = add i64 %46, 1
  store i64 %inc27, ptr %rxbuf_map_failed, align 8
  %rxq28 = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 7
  %47 = ptrtoint ptr %rxq28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rxq28, align 4
  %rxbuf_map_failed29 = getelementptr inbounds %struct.bna_rxq, ptr %48, i32 0, i32 14
  br label %finishing

if.end31:                                         ; preds = %if.end17
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %page.0, ptr %arrayidx, align 4
  %page_offset33 = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %prod.020, i32 3
  %50 = ptrtoint ptr %page_offset33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %page_offset.0, ptr %page_offset33, align 4
  %vector = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %prod.020, i32 2
  %51 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call19, ptr %vector, align 4
  %52 = ptrtoint ptr %map_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %map_size, align 8
  %len = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %prod.020, i32 2, i32 1
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %len, align 4
  %55 = load i32, ptr %map_size, align 8
  %add38 = add i32 %55, %page_offset.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %shl)
  %cmp39 = icmp ult i32 %add38, %shl
  %prod.0. = select i1 %cmp39, i32 %prod.020, i32 -1
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %prod.0., ptr %1, align 128
  %57 = ptrtoint ptr %sw_q to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sw_q, align 4
  %arrayidx45 = getelementptr %struct.bna_rxq_entry, ptr %58, i32 %prod.020
  %59 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx45, align 4
  %lsb48 = getelementptr inbounds %struct.bna_dma_addr, ptr %arrayidx45, i32 0, i32 1
  %60 = ptrtoint ptr %lsb48 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call19, ptr %lsb48, align 4
  %add49 = add i32 %prod.020, 1
  %and = and i32 %add49, %sub
  %inc50 = add nuw i32 %alloced.021, 1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %if.end31.if.then58_crit_edge, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end31.if.then58_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

finishing:                                        ; preds = %put_page.exit, %if.then14
  %rxbuf_map_failed29.sink50 = phi ptr [ %rxbuf_map_failed29, %put_page.exit ], [ %rxbuf_alloc_failed15, %if.then14 ]
  %61 = ptrtoint ptr %rxbuf_map_failed29.sink50 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rxbuf_map_failed29.sink50, align 8
  %inc30 = add i64 %62, 1
  store i64 %inc30, ptr %rxbuf_map_failed29.sink50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloced.021)
  %tobool51.not = icmp eq i32 %alloced.021, 0
  br i1 %tobool51.not, label %finishing.if.end80_crit_edge, label %finishing.if.then58_crit_edge, !prof !179

finishing.if.then58_crit_edge:                    ; preds = %finishing
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

finishing.if.end80_crit_edge:                     ; preds = %finishing
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then58:                                        ; preds = %finishing.if.then58_crit_edge, %if.end31.if.then58_crit_edge
  %prod.01639 = phi i32 [ %prod.020, %finishing.if.then58_crit_edge ], [ %and, %if.end31.if.then58_crit_edge ]
  %63 = ptrtoint ptr %producer_index to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %prod.01639, ptr %producer_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %flags = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 11
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags, align 4
  %66 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool67.not = icmp eq i32 %66, 0
  br i1 %tobool67.not, label %if.then58.if.end80_crit_edge, label %do.body75, !prof !179

if.then58.if.end80_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.body75:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !197
  tail call void @arm_heavy_mb() #13
  %67 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %producer_index, align 4
  %or = or i32 %68, -2147483648
  %69 = tail call i32 @llvm.bswap.i32(i32 %or)
  %q_dbell = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 6
  %70 = ptrtoint ptr %q_dbell to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %q_dbell, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #13, !srcloc !183
  br label %if.end80

if.end80:                                         ; preds = %do.body75, %if.then58.if.end80_crit_edge, %finishing.if.end80_crit_edge, %entry.if.end80_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_rxq_cleanup(ptr nocapture noundef readonly %bnad, ptr nocapture noundef readonly %rcb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %unmap_q1 = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 2
  %0 = ptrtoint ptr %unmap_q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unmap_q1, align 4
  %q_depth = getelementptr inbounds %struct.bna_rcb, ptr %rcb, i32 0, i32 5
  %2 = ptrtoint ptr %q_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 3
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %skb.i = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %i.013, i32 1
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev.i, align 64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %vector.i = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %i.013, i32 2
  %10 = ptrtoint ptr %vector.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vector.i, align 4
  %len.i = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %i.013, i32 2, i32 1
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %11, i32 noundef %13, i32 noundef 2, i32 noundef 0) #13
  %14 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %15, i32 noundef 1) #13
  %16 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %skb.i, align 4
  %17 = ptrtoint ptr %vector.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %vector.i, align 4
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %len.i, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.bnad_rx_unmap_q, ptr %1, i32 0, i32 5, i32 %i.013
  tail call fastcc void @bnad_rxq_cleanup_page(ptr noundef %bnad, ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %if.then.if.end_crit_edge
  %inc = add nuw i32 %i.013, 1
  %19 = ptrtoint ptr %q_depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %q_depth, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = ptrtoint ptr %unmap_q1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unmap_q1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 128
  %alloc_order.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %alloc_order.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %alloc_order.i, align 4
  %map_size.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %map_size.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %map_size.i, align 8
  %type.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %type.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_cleanup_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_rxq_cleanup_page(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %unmap) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %vector = getelementptr inbounds %struct.bnad_rx_unmap, ptr %unmap, i32 0, i32 2
  %4 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vector, align 4
  %len = getelementptr inbounds %struct.bnad_rx_unmap, ptr %unmap, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %5, i32 noundef %7, i32 noundef 2, i32 noundef 0) #13
  %8 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unmap, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !173

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !179

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !194
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@bnad_rxq_cleanup_page, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !191

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %14) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %18 = ptrtoint ptr %unmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %unmap, align 4
  %19 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vector, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len, align 4
  br label %return

return:                                           ; preds = %put_page.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_napi_poll_rx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %bnad1 = getelementptr i8, ptr %napi, i32 -12
  %0 = ptrtoint ptr %bnad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bnad1, align 4
  %rx_poll_ctr = getelementptr i8, ptr %napi, i32 232
  %2 = ptrtoint ptr %rx_poll_ctr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rx_poll_ctr, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %rx_poll_ctr, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %entry.poll_exit_crit_edge

entry.poll_exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_exit

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %pkt_rate.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 8
  %ctrl.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #13, !srcloc !198
  %sw_q.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %sw_q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw_q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp267.not.i = icmp eq i32 %budget, 0
  br i1 %cmp267.not.i, label %if.end.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end
  %producer_index.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 2
  %large_pkt_cnt.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 8, i32 1
  %arrayidx10.i = getelementptr %struct.bna_ccb, ptr %10, i32 0, i32 6, i32 1
  %rcb12.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 6
  %napi.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %12, i32 0, i32 3
  %q_depth.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 4
  %pcidev.i.i = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 22
  %bytes_per_intr.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 10
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %for.body.i.while.cond.loopexit.i_crit_edge, %next.i.while.cond.loopexit.i_crit_edge
  %exitcond278.not.i = icmp eq i32 %inc63.i69, %budget
  br i1 %exitcond278.not.i, label %while.cond.loopexit.i.while.end.i_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.loopexit.i.while.end.i_crit_edge:      ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %packets.0269.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc63.i69, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %unmap.0268.i = phi ptr [ null, %while.body.lr.ph.i ], [ %unmap.1.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %producer_index.i, align 4
  %arrayidx.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %16
  %valid.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %16, i32 4
  %17 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i43 = icmp eq i8 %18, 0
  br i1 %tobool.not.i43, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !199
  %length.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %16, i32 2
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %20)
  %cmp1.i = icmp ugt i16 %20, 1000
  %large_pkt_cnt.pkt_rate.i = select i1 %cmp1.i, ptr %large_pkt_cnt.i, ptr %pkt_rate.i
  %21 = ptrtoint ptr %large_pkt_cnt.pkt_rate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %large_pkt_cnt.pkt_rate.i, align 4
  %inc4.i = add i32 %22, 1
  store i32 %inc4.i, ptr %large_pkt_cnt.pkt_rate.i, align 4
  %rxq_id.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %16, i32 7
  %23 = ptrtoint ptr %rxq_id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rxq_id.i, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not.i = icmp eq i8 %25, 0
  %rcb.0.in.i = select i1 %tobool7.not.i, ptr %rcb12.i, ptr %arrayidx10.i
  %26 = ptrtoint ptr %rcb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %rcb.0.i = load ptr, ptr %rcb.0.in.i, align 4
  %unmap_q15.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %unmap_q15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unmap_q15.i, align 4
  %consumer_index.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb.0.i, i32 0, i32 4
  %29 = ptrtoint ptr %consumer_index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %consumer_index.i, align 4
  %type.i = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp16.i = icmp eq i32 %32, 1
  br i1 %cmp16.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx20.i = getelementptr %struct.bnad_rx_unmap_q, ptr %28, i32 0, i32 5, i32 %30
  %skb21.i = getelementptr %struct.bnad_rx_unmap_q, ptr %28, i32 0, i32 5, i32 %30, i32 1
  %33 = ptrtoint ptr %skb21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb21.i, align 4
  br label %if.end29.i

if.else22.i:                                      ; preds = %if.end.i
  %call.i = tail call ptr @napi_get_frags(ptr noundef %napi.i) #13
  %tobool23.not.i = icmp eq ptr %call.i, null
  br i1 %tobool23.not.i, label %if.else22.i.while.end.i_crit_edge, label %if.else22.i.if.end29.i_crit_edge, !prof !179

if.else22.i.if.end29.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.else22.i.while.end.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end29.i:                                       ; preds = %if.else22.i.if.end29.i_crit_edge, %if.then18.i
  %unmap.1.i = phi ptr [ %arrayidx20.i, %if.then18.i ], [ %unmap.0268.i, %if.else22.i.if.end29.i_crit_edge ]
  %skb.0.i = phi ptr [ %34, %if.then18.i ], [ %call.i, %if.else22.i.if.end29.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %skb.0.i) #13, !srcloc !198
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length.i, align 2
  %conv32.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp34.i = icmp eq i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp37.i = icmp sgt i32 %36, -1
  %or.cond.i = select i1 %cmp34.i, i1 %cmp37.i, i1 false
  br i1 %or.cond.i, label %if.then39.i, label %if.end62.i.thread

if.then39.i:                                      ; preds = %if.end29.i
  %41 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %producer_index.i, align 4
  br label %do.body41.i

do.body41.i:                                      ; preds = %if.end47.i.do.body41.i_crit_edge, %if.then39.i
  %totlen.0.i = phi i32 [ %conv32.i, %if.then39.i ], [ %add52.i, %if.end47.i.do.body41.i_crit_edge ]
  %pi.0.i = phi i32 [ %42, %if.then39.i ], [ %and42.i, %if.end47.i.do.body41.i_crit_edge ]
  %nvecs.0.i = phi i32 [ 1, %if.then39.i ], [ %inc51.i, %if.end47.i.do.body41.i_crit_edge ]
  %add.i = add i32 %pi.0.i, 1
  %43 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %q_depth.i, align 4
  %sub.i = add i32 %44, -1
  %and42.i = and i32 %sub.i, %add.i
  %valid44.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %and42.i, i32 4
  %45 = ptrtoint ptr %valid44.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %valid44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool45.not.i = icmp eq i8 %46, 0
  br i1 %tobool45.not.i, label %do.body41.i.while.end.i_crit_edge, label %if.end47.i

do.body41.i.while.end.i_crit_edge:                ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end47.i:                                       ; preds = %do.body41.i
  %arrayidx43.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %and42.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !200
  %length48.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %and42.i, i32 2
  %47 = ptrtoint ptr %length48.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %length48.i, align 2
  %conv49.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx43.i, align 4
  %inc51.i = add i32 %nvecs.0.i, 1
  %add52.i = add i32 %totlen.0.i, %conv49.i
  %cmp55.i = icmp sgt i32 %50, -1
  br i1 %cmp55.i, label %if.end47.i.do.body41.i_crit_edge, label %do.end57.i

if.end47.i.do.body41.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body41.i

do.end57.i:                                       ; preds = %if.end47.i
  %51 = ptrtoint ptr %valid44.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %.pr.i = load i8, ptr %valid44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool59.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool59.not.i, label %do.end57.i.while.end.i_crit_edge, label %if.end62.i

do.end57.i.while.end.i_crit_edge:                 ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end62.i:                                       ; preds = %do.end57.i
  %conv49.i.le = zext i16 %48 to i32
  %inc63.i = add nuw i32 %packets.0269.i, 1
  %and64.i = and i32 %50, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end62.i.if.end74.i_crit_edge, label %if.then72.i, !prof !173

if.end62.i.if.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

if.end62.i.thread:                                ; preds = %if.end29.i
  %inc63.i59 = add nuw i32 %packets.0269.i, 1
  %and64.i60 = and i32 %36, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i60)
  %tobool65.not.i61 = icmp eq i32 %and64.i60, 0
  br i1 %tobool65.not.i61, label %if.end62.i.thread.if.end74.i_crit_edge, label %if.end62.i.thread.for.body.lr.ph.i_crit_edge, !prof !173

if.end62.i.thread.for.body.lr.ph.i_crit_edge:     ; preds = %if.end62.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i

if.end62.i.thread.if.end74.i_crit_edge:           ; preds = %if.end62.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

if.then72.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc51.i)
  %cmp10.not.i = icmp eq i32 %inc51.i, 0
  br i1 %cmp10.not.i, label %if.then72.i.bnad_cq_drop_packet.exit_crit_edge, label %if.then72.i.for.body.lr.ph.i_crit_edge

if.then72.i.for.body.lr.ph.i_crit_edge:           ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i

if.then72.i.bnad_cq_drop_packet.exit_crit_edge:   ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_drop_packet.exit

for.body.lr.ph.i:                                 ; preds = %if.then72.i.for.body.lr.ph.i_crit_edge, %if.end62.i.thread.for.body.lr.ph.i_crit_edge
  %nvecs.2.i6577 = phi i32 [ %inc51.i, %if.then72.i.for.body.lr.ph.i_crit_edge ], [ 1, %if.end62.i.thread.for.body.lr.ph.i_crit_edge ]
  %inc63.i7075 = phi i32 [ %inc63.i, %if.then72.i.for.body.lr.ph.i_crit_edge ], [ %inc63.i59, %if.end62.i.thread.for.body.lr.ph.i_crit_edge ]
  %52 = ptrtoint ptr %unmap_q15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %unmap_q15.i, align 4
  %q_depth.i44 = getelementptr inbounds %struct.bna_rcb, ptr %rcb.0.i, i32 0, i32 5
  %type.i45 = getelementptr inbounds %struct.bnad_rx_unmap_q, ptr %53, i32 0, i32 3
  br label %for.body.i49

for.body.i49:                                     ; preds = %for.inc.i.for.body.i49_crit_edge, %for.body.lr.ph.i
  %vec.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i49_crit_edge ]
  %ci.011.i = phi i32 [ %30, %for.body.lr.ph.i ], [ %and.i, %for.inc.i.for.body.i49_crit_edge ]
  %add.i47 = add i32 %ci.011.i, 1
  %54 = ptrtoint ptr %q_depth.i44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %q_depth.i44, align 4
  %sub.i48 = add i32 %55, -1
  %and.i = and i32 %sub.i48, %add.i47
  %56 = ptrtoint ptr %type.i45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp3.i = icmp eq i32 %57, 1
  br i1 %cmp3.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i49
  %skb.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %53, i32 0, i32 5, i32 %ci.011.i, i32 1
  %58 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i.i50 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i50, label %if.then.i.for.inc.i_crit_edge, label %if.end.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcidev.i.i, align 64
  %dev.i.i51 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %vector.i.i52 = getelementptr %struct.bnad_rx_unmap_q, ptr %53, i32 0, i32 5, i32 %ci.011.i, i32 2
  %62 = ptrtoint ptr %vector.i.i52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vector.i.i52, align 4
  %len.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %53, i32 0, i32 5, i32 %ci.011.i, i32 2, i32 1
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i51, i32 noundef %63, i32 noundef %65, i32 noundef 2, i32 noundef 0) #13
  %66 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %67, i32 noundef 1) #13
  %68 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %skb.i.i, align 4
  %69 = ptrtoint ptr %vector.i.i52 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %vector.i.i52, align 4
  %70 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %len.i.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i53 = getelementptr %struct.bnad_rx_unmap_q, ptr %53, i32 0, i32 5, i32 %ci.011.i
  tail call fastcc void @bnad_rxq_cleanup_page(ptr noundef %1, ptr noundef %arrayidx.i53) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end.i.i, %if.then.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %vec.012.i, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i, %nvecs.2.i6577
  br i1 %exitcond.not.i54, label %for.inc.i.bnad_cq_drop_packet.exit_crit_edge, label %for.inc.i.for.body.i49_crit_edge

for.inc.i.for.body.i49_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i49

for.inc.i.bnad_cq_drop_packet.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_drop_packet.exit

bnad_cq_drop_packet.exit:                         ; preds = %for.inc.i.bnad_cq_drop_packet.exit_crit_edge, %if.then72.i.bnad_cq_drop_packet.exit_crit_edge
  %nvecs.2.i6578 = phi i32 [ 0, %if.then72.i.bnad_cq_drop_packet.exit_crit_edge ], [ %nvecs.2.i6577, %for.inc.i.bnad_cq_drop_packet.exit_crit_edge ]
  %inc63.i7076 = phi i32 [ %inc63.i, %if.then72.i.bnad_cq_drop_packet.exit_crit_edge ], [ %inc63.i7075, %for.inc.i.bnad_cq_drop_packet.exit_crit_edge ]
  %rxq.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb.0.i, i32 0, i32 7
  %71 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rxq.i, align 4
  %rx_packets_with_error.i = getelementptr inbounds %struct.bna_rxq, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %rx_packets_with_error.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %rx_packets_with_error.i, align 8
  %inc73.i = add i64 %74, 1
  store i64 %inc73.i, ptr %rx_packets_with_error.i, align 8
  br label %next.i

if.end74.i:                                       ; preds = %if.end62.i.thread.if.end74.i_crit_edge, %if.end62.i.if.end74.i_crit_edge
  %inc63.i71 = phi i32 [ %inc63.i59, %if.end62.i.thread.if.end74.i_crit_edge ], [ %inc63.i, %if.end62.i.if.end74.i_crit_edge ]
  %flags.2.i67 = phi i32 [ %36, %if.end62.i.thread.if.end74.i_crit_edge ], [ %50, %if.end62.i.if.end74.i_crit_edge ]
  %nvecs.2.i66 = phi i32 [ 1, %if.end62.i.thread.if.end74.i_crit_edge ], [ %inc51.i, %if.end62.i.if.end74.i_crit_edge ]
  %totlen.2.i63 = phi i32 [ %conv32.i, %if.end62.i.thread.if.end74.i_crit_edge ], [ %add52.i, %if.end62.i.if.end74.i_crit_edge ]
  %len.2.i62 = phi i32 [ %conv32.i, %if.end62.i.thread.if.end74.i_crit_edge ], [ %conv49.i.le, %if.end62.i.if.end74.i_crit_edge ]
  %75 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp76.i = icmp eq i32 %76, 1
  br i1 %cmp76.i, label %if.then78.i, label %if.else79.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %77 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %78) #13, !srcloc !198
  %79 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcidev.i.i, align 64
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %vector.i.i = getelementptr inbounds %struct.bnad_rx_unmap, ptr %unmap.1.i, i32 0, i32 2
  %81 = ptrtoint ptr %vector.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vector.i.i, align 4
  %len2.i.i = getelementptr inbounds %struct.bnad_rx_unmap, ptr %unmap.1.i, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len2.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %82, i32 noundef %84, i32 noundef 2, i32 noundef 0) #13
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb.0.i, i32 noundef %len.2.i62) #13
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 128
  %call3.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %86) #13
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %87 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %call3.i.i, ptr %protocol.i.i, align 8
  %skb4.i.i = getelementptr inbounds %struct.bnad_rx_unmap, ptr %unmap.1.i, i32 0, i32 1
  %88 = ptrtoint ptr %skb4.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %skb4.i.i, align 4
  %89 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %len2.i.i, align 4
  br label %if.end80.i

if.else79.i:                                      ; preds = %if.end74.i
  %90 = ptrtoint ptr %sw_q.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sw_q.i, align 4
  %92 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %producer_index.i, align 4
  %rxq_id.i.i = getelementptr %struct.bna_cq_entry, ptr %91, i32 %93, i32 7
  %94 = ptrtoint ptr %rxq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rxq_id.i.i, align 1
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i.i = icmp eq i8 %96, 0
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %rcb12.i, ptr %arrayidx10.i
  %97 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %unmap_q5.i.i = getelementptr inbounds %struct.bna_rcb, ptr %cond.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %unmap_q5.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %unmap_q5.i.i, align 4
  %bnad6.i.i = getelementptr inbounds %struct.bna_rcb, ptr %cond.i.i, i32 0, i32 9
  %100 = ptrtoint ptr %bnad6.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bnad6.i.i, align 4
  %consumer_index.i.i = getelementptr inbounds %struct.bna_rcb, ptr %cond.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %consumer_index.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %consumer_index.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %99, i32 0, i32 5, i32 %103
  %104 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx7.i.i, align 4
  %call.i251.i = tail call ptr @page_address(ptr noundef %105) #13
  %page_offset.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %99, i32 0, i32 5, i32 %103, i32 3
  %106 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %page_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i251.i, i32 %107
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i.i) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvecs.2.i66)
  %tobool10.not66.i.i = icmp eq i32 %nvecs.2.i66, 0
  br i1 %tobool10.not66.i.i, label %if.else79.i.bnad_cq_setup_skb_frags.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.else79.i.bnad_cq_setup_skb_frags.exit.i_crit_edge: ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_setup_skb_frags.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.else79.i
  %q_depth.i.i = getelementptr inbounds %struct.bna_rcb, ptr %cond.i.i, i32 0, i32 5
  %pcidev.i252.i = getelementptr inbounds %struct.bnad, ptr %101, i32 0, i32 22
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 20
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 17
  %pfmemalloc.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %nvecs.addr.070.i.i = phi i32 [ %nvecs.2.i66, %while.body.lr.ph.i.i ], [ %dec.i.i, %skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge ]
  %totlen.069.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add21.i.i, %skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge ]
  %pi.068.i.i = phi i32 [ %93, %while.body.lr.ph.i.i ], [ %and32.i.i, %skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge ]
  %ci.067.i.i = phi i32 [ %103, %while.body.lr.ph.i.i ], [ %and14.i.i, %skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %nvecs.addr.070.i.i, -1
  %arrayidx13.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %99, i32 0, i32 5, i32 %ci.067.i.i
  %add.i.i = add i32 %ci.067.i.i, 1
  %108 = ptrtoint ptr %q_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %q_depth.i.i, align 4
  %sub.i.i = add i32 %109, -1
  %and14.i.i = and i32 %sub.i.i, %add.i.i
  %110 = ptrtoint ptr %pcidev.i252.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pcidev.i252.i, align 64
  %dev.i253.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %vector.i254.i = getelementptr %struct.bnad_rx_unmap_q, ptr %99, i32 0, i32 5, i32 %ci.067.i.i, i32 2
  %112 = ptrtoint ptr %vector.i254.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vector.i254.i, align 4
  %len16.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %99, i32 0, i32 5, i32 %ci.067.i.i, i32 2, i32 1
  %114 = ptrtoint ptr %len16.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len16.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i253.i, i32 noundef %113, i32 noundef %115, i32 noundef 2, i32 noundef 0) #13
  %length.i.i = getelementptr %struct.bna_cq_entry, ptr %91, i32 %pi.068.i.i, i32 2
  %116 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %length.i.i, align 2
  %conv17.i.i = zext i16 %117 to i32
  %118 = ptrtoint ptr %len16.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len16.i.i, align 4
  %120 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %truesize.i.i, align 8
  %add20.i.i = add i32 %121, %119
  store i32 %add20.i.i, ptr %truesize.i.i, align 8
  %add21.i.i = add i32 %totlen.069.i.i, %conv17.i.i
  %122 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nr_frags.i.i, align 2
  %conv23.i.i = zext i8 %125 to i32
  %126 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx13.i.i, align 4
  %page_offset25.i.i = getelementptr %struct.bnad_rx_unmap_q, ptr %99, i32 0, i32 5, i32 %ci.067.i.i, i32 3
  %128 = ptrtoint ptr %page_offset25.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %page_offset25.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %123, i32 0, i32 12, i32 %conv23.i.i
  %130 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %arrayidx.i.i.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %123, i32 0, i32 12, i32 %conv23.i.i, i32 2
  %131 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %bv_offset.i.i.i.i, align 4
  %bv_len.i.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %123, i32 0, i32 12, i32 %conv23.i.i, i32 1
  %132 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv17.i.i, ptr %bv_len.i.i.i.i.i, align 4
  %133 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 1
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %133, align 4
  %and.i.i.i.i.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !173

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i.i = add i32 %135, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %136 = ptrtoint ptr %127 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %136, %if.end.i.i.i.i.i ]
  %137 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %138 = getelementptr inbounds %struct.page, ptr %137, i32 0, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %140 to i32
  %and.i8.i.i.i.i = and i32 %141, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i8.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge, label %if.then.i.i.i.i

_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_fill_page_desc.exit.i.i

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %pfmemalloc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load.i.i.i.i = load i8, ptr %pfmemalloc.i.i.i.i, align 2
  %bf.set.i.i.i.i = or i8 %bf.load.i.i.i.i, 2
  store i8 %bf.set.i.i.i.i, ptr %pfmemalloc.i.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i.i

skb_fill_page_desc.exit.i.i:                      ; preds = %if.then.i.i.i.i, %_compound_head.exit.i.i.i.i.skb_fill_page_desc.exit.i.i_crit_edge
  %conv.i.i.i = add i8 %125, 1
  %143 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv.i.i.i, ptr %nr_frags.i.i.i, align 2
  %146 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %arrayidx13.i.i, align 4
  %147 = ptrtoint ptr %len16.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %len16.i.i, align 4
  %add29.i.i = add i32 %pi.068.i.i, 1
  %148 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %q_depth.i, align 4
  %sub31.i.i = add i32 %149, -1
  %and32.i.i = and i32 %sub31.i.i, %add29.i.i
  %tobool10.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool10.not.i.i, label %skb_fill_page_desc.exit.i.i.bnad_cq_setup_skb_frags.exit.i_crit_edge, label %skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge

skb_fill_page_desc.exit.i.i.while.body.i.i_crit_edge: ; preds = %skb_fill_page_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

skb_fill_page_desc.exit.i.i.bnad_cq_setup_skb_frags.exit.i_crit_edge: ; preds = %skb_fill_page_desc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_setup_skb_frags.exit.i

bnad_cq_setup_skb_frags.exit.i:                   ; preds = %skb_fill_page_desc.exit.i.i.bnad_cq_setup_skb_frags.exit.i_crit_edge, %if.else79.i.bnad_cq_setup_skb_frags.exit.i_crit_edge
  %totlen.0.lcssa.i.i = phi i32 [ 0, %if.else79.i.bnad_cq_setup_skb_frags.exit.i_crit_edge ], [ %add21.i.i, %skb_fill_page_desc.exit.i.i.bnad_cq_setup_skb_frags.exit.i_crit_edge ]
  %len34.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %150 = ptrtoint ptr %len34.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len34.i.i, align 4
  %add35.i.i = add i32 %151, %totlen.0.lcssa.i.i
  store i32 %add35.i.i, ptr %len34.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 7
  %152 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %data_len.i.i, align 8
  %add36.i.i = add i32 %153, %totlen.0.lcssa.i.i
  store i32 %add36.i.i, ptr %data_len.i.i, align 8
  br label %if.end80.i

if.end80.i:                                       ; preds = %bnad_cq_setup_skb_frags.exit.i, %if.then78.i
  %rxq81.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb.0.i, i32 0, i32 7
  %154 = ptrtoint ptr %rxq81.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rxq81.i, align 4
  %rx_packets.i = getelementptr inbounds %struct.bna_rxq, ptr %155, i32 0, i32 10
  %156 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rx_packets.i, align 8
  %inc82.i = add i64 %157, 1
  store i64 %inc82.i, ptr %rx_packets.i, align 8
  %conv83.i = zext i32 %totlen.2.i63 to i64
  %158 = load ptr, ptr %rxq81.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.bna_rxq, ptr %158, i32 0, i32 11
  %159 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %rx_bytes.i, align 8
  %add85.i = add i64 %160, %conv83.i
  store i64 %add85.i, ptr %rx_bytes.i, align 8
  %161 = ptrtoint ptr %bytes_per_intr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bytes_per_intr.i, align 4
  %add86.i = add i32 %162, %totlen.2.i63
  store i32 %add86.i, ptr %bytes_per_intr.i, align 4
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 128
  %features.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 23
  %165 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %features.i, align 16
  %and89.i = and i64 %166, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and89.i)
  %tobool90.not.i = icmp eq i64 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end80.i.if.end108.i_crit_edge, label %land.rhs.i, !prof !179

if.end80.i.if.end108.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

land.rhs.i:                                       ; preds = %if.end80.i
  %and87.i = and i32 %flags.2.i67, 7008
  %167 = zext i32 %and87.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and87.i, label %land.rhs.i.if.end108.i_crit_edge [
    i32 4704, label %land.rhs.i.if.then106.i_crit_edge
    i32 4448, label %land.rhs.i.if.then106.i_crit_edge102
    i32 2592, label %land.rhs.i.if.then106.i_crit_edge103
    i32 2336, label %land.rhs.i.if.then106.i_crit_edge104
  ]

land.rhs.i.if.then106.i_crit_edge104:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106.i

land.rhs.i.if.then106.i_crit_edge103:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106.i

land.rhs.i.if.then106.i_crit_edge102:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106.i

land.rhs.i.if.then106.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106.i

land.rhs.i.if.end108.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

if.then106.i:                                     ; preds = %land.rhs.i.if.then106.i_crit_edge, %land.rhs.i.if.then106.i_crit_edge102, %land.rhs.i.if.then106.i_crit_edge103, %land.rhs.i.if.then106.i_crit_edge104
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15
  %168 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then106.i, %land.rhs.i.if.end108.i_crit_edge, %if.end80.i.if.end108.i_crit_edge
  %and109.i = and i32 %flags.2.i67, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %if.end108.i.if.end117.i_crit_edge, label %land.lhs.true111.i

if.end108.i.if.end117.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117.i

land.lhs.true111.i:                               ; preds = %if.end108.i
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 128
  %features113.i = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 23
  %171 = ptrtoint ptr %features113.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %features113.i, align 16
  %and114.i = and i64 %172, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and114.i)
  %tobool115.not.i = icmp eq i64 %and114.i, 0
  br i1 %tobool115.not.i, label %land.lhs.true111.i.if.end117.i_crit_edge, label %if.then116.i

land.lhs.true111.i.if.end117.i_crit_edge:         ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117.i

if.then116.i:                                     ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tag.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %16, i32 1
  %173 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vlan_tag.i, align 4
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 9
  %175 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 10
  %176 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %174, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 3
  %177 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then116.i, %land.lhs.true111.i.if.end117.i_crit_edge, %if.end108.i.if.end117.i_crit_edge
  %178 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp119.i = icmp eq i32 %179, 1
  br i1 %cmp119.i, label %if.then121.i, label %if.else123.i

if.then121.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  %call122.i = tail call i32 @netif_receive_skb(ptr noundef %skb.0.i) #13
  br label %next.i

if.else123.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  %call125.i = tail call i32 @napi_gro_frags(ptr noundef %napi.i) #13
  br label %next.i

next.i:                                           ; preds = %if.else123.i, %if.then121.i, %bnad_cq_drop_packet.exit
  %inc63.i69 = phi i32 [ %inc63.i71, %if.else123.i ], [ %inc63.i71, %if.then121.i ], [ %inc63.i7076, %bnad_cq_drop_packet.exit ]
  %nvecs.2.i64 = phi i32 [ %nvecs.2.i66, %if.else123.i ], [ %nvecs.2.i66, %if.then121.i ], [ %nvecs.2.i6578, %bnad_cq_drop_packet.exit ]
  %180 = ptrtoint ptr %consumer_index.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %consumer_index.i, align 4
  %add128.i = add i32 %181, %nvecs.2.i64
  %q_depth129.i = getelementptr inbounds %struct.bna_rcb, ptr %rcb.0.i, i32 0, i32 5
  %182 = ptrtoint ptr %q_depth129.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %q_depth129.i, align 4
  %sub130.i = add i32 %183, -1
  %and131.i = and i32 %sub130.i, %add128.i
  store i32 %and131.i, ptr %consumer_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvecs.2.i64)
  %cmp133265.not.i = icmp eq i32 %nvecs.2.i64, 0
  br i1 %cmp133265.not.i, label %next.i.while.cond.loopexit.i_crit_edge, label %next.i.for.body.i_crit_edge

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  br label %for.body.i

next.i.while.cond.loopexit.i_crit_edge:           ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.loopexit.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %next.i.for.body.i_crit_edge
  %vec.0266.i = phi i32 [ %inc144.i, %for.body.i.for.body.i_crit_edge ], [ 0, %next.i.for.body.i_crit_edge ]
  %184 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %producer_index.i, align 4
  %valid137.i = getelementptr %struct.bna_cq_entry, ptr %14, i32 %185, i32 4
  %186 = ptrtoint ptr %valid137.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %valid137.i, align 4
  %187 = load i32, ptr %producer_index.i, align 4
  %add139.i = add i32 %187, 1
  %188 = ptrtoint ptr %q_depth.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %q_depth.i, align 4
  %sub141.i = add i32 %189, -1
  %and142.i = and i32 %sub141.i, %add139.i
  store i32 %and142.i, ptr %producer_index.i, align 4
  %inc144.i = add nuw i32 %vec.0266.i, 1
  %exitcond.not.i = icmp eq i32 %inc144.i, %nvecs.2.i64
  br i1 %exitcond.not.i, label %for.body.i.while.cond.loopexit.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.while.cond.loopexit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.loopexit.i

while.end.i:                                      ; preds = %do.end57.i.while.end.i_crit_edge, %do.body41.i.while.end.i_crit_edge, %if.else22.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.loopexit.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %packets.0263.i = phi i32 [ 0, %if.end.while.end.i_crit_edge ], [ %packets.0269.i, %do.body41.i.while.end.i_crit_edge ], [ %packets.0269.i, %do.end57.i.while.end.i_crit_edge ], [ %packets.0269.i, %if.else22.i.while.end.i_crit_edge ], [ %packets.0269.i, %while.body.i.while.end.i_crit_edge ], [ %budget, %while.cond.loopexit.i.while.end.i_crit_edge ]
  %napi145.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %12, i32 0, i32 3
  tail call void @napi_gro_flush(ptr noundef %napi145.i, i1 noundef zeroext false) #13
  %rcb146.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 6
  %190 = ptrtoint ptr %rcb146.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rcb146.i, align 4
  %flags148.i = getelementptr inbounds %struct.bna_rcb, ptr %191, i32 0, i32 11
  %192 = ptrtoint ptr %flags148.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %flags148.i, align 4
  %and1.i.i = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool150.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool150.not.i, label %while.end.i.if.end161.i_crit_edge, label %do.body158.i, !prof !179

while.end.i.if.end161.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161.i

do.body158.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !201
  tail call void @arm_heavy_mb() #13
  %or.i = or i32 %packets.0263.i, -2147483648
  %194 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %i_dbell.i = getelementptr inbounds %struct.bna_ccb, ptr %10, i32 0, i32 5
  %195 = ptrtoint ptr %i_dbell.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i_dbell.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %194) #13, !srcloc !183
  br label %if.end161.i

if.end161.i:                                      ; preds = %do.body158.i, %while.end.i.if.end161.i_crit_edge
  %199 = ptrtoint ptr %rcb146.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rcb146.i, align 4
  tail call fastcc void @bnad_rxq_post(ptr noundef %1, ptr noundef %200) #13
  %arrayidx165.i = getelementptr %struct.bna_ccb, ptr %10, i32 0, i32 6, i32 1
  %201 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx165.i, align 4
  %tobool166.not.i = icmp eq ptr %202, null
  br i1 %tobool166.not.i, label %if.end161.i.bnad_cq_process.exit_crit_edge, label %if.then167.i

if.end161.i.bnad_cq_process.exit_crit_edge:       ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_cq_process.exit

if.then167.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bnad_rxq_post(ptr noundef %1, ptr noundef nonnull %202) #13
  br label %bnad_cq_process.exit

bnad_cq_process.exit:                             ; preds = %if.then167.i, %if.end161.i.bnad_cq_process.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %packets.0263.i, i32 %budget)
  %cmp.not = icmp slt i32 %packets.0263.i, %budget
  br i1 %cmp.not, label %bnad_cq_process.exit.poll_exit_crit_edge, label %bnad_cq_process.exit.cleanup_crit_edge

bnad_cq_process.exit.cleanup_crit_edge:           ; preds = %bnad_cq_process.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bnad_cq_process.exit.poll_exit_crit_edge:         ; preds = %bnad_cq_process.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_exit

poll_exit:                                        ; preds = %bnad_cq_process.exit.poll_exit_crit_edge, %entry.poll_exit_crit_edge
  %rcvd.0 = phi i32 [ %packets.0263.i, %bnad_cq_process.exit.poll_exit_crit_edge ], [ 0, %entry.poll_exit_crit_edge ]
  %call5 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rcvd.0) #13
  %rx_complete = getelementptr i8, ptr %napi, i32 256
  %203 = ptrtoint ptr %rx_complete to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %rx_complete, align 8
  %inc6 = add i64 %204, 1
  store i64 %inc6, ptr %rx_complete, align 8
  %205 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %206, null
  br i1 %tobool.not, label %poll_exit.cleanup_crit_edge, label %if.then8

poll_exit.cleanup_crit_edge:                      ; preds = %poll_exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %poll_exit
  %rcb = getelementptr inbounds %struct.bna_ccb, ptr %206, i32 0, i32 6
  %207 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rcb, align 4
  %flags = getelementptr inbounds %struct.bna_rcb, ptr %208, i32 0, i32 11
  %209 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool11.not = icmp eq i32 %and1.i, 0
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %if.then14, !prof !179

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %rx_coalescing_timeo = getelementptr inbounds %struct.bna_ccb, ptr %206, i32 0, i32 16
  %211 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %rx_coalescing_timeo, align 4
  %conv = zext i8 %212 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, -2147483648
  %i_dbell = getelementptr inbounds %struct.bna_ccb, ptr %206, i32 0, i32 5
  %213 = ptrtoint ptr %i_dbell to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %i_dbell, align 4
  %doorbell_ack = getelementptr inbounds %struct.bna_ib_dbell, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %doorbell_ack to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %or, ptr %doorbell_ack, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !202
  tail call void @arm_heavy_mb() #13
  %216 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr, align 8
  %i_dbell19 = getelementptr inbounds %struct.bna_ccb, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %i_dbell19 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i_dbell19, align 4
  %doorbell_ack20 = getelementptr inbounds %struct.bna_ib_dbell, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %doorbell_ack20 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %doorbell_ack20, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %221)
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %219, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %222) #13, !srcloc !183
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then8.cleanup_crit_edge, %poll_exit.cleanup_crit_edge, %bnad_cq_process.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %packets.0263.i, %bnad_cq_process.exit.cleanup_crit_edge ], [ %rcvd.0, %if.then8.cleanup_crit_edge ], [ %rcvd.0, %if.then14 ], [ %rcvd.0, %poll_exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_gro_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_msix_rx(i32 noundef %irq, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %ctrl = getelementptr inbounds %struct.bna_ccb, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %rx_intr_ctr = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_intr_ctr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rx_intr_ctr, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %rx_intr_ctr, align 8
  %4 = load ptr, ptr %ctrl, align 4
  %napi1.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %4, i32 0, i32 3
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi1.i) #13
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !173

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi1.i) #13
  %rx_schedule.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %rx_schedule.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_schedule.i, align 8
  %inc.i = add i64 %6, 1
  store i64 %inc.i, ptr %rx_schedule.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_rx_mcast_listset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_mcast_delall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_rx_ucast_listset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %pcidev_id) #0 align 64 {
entry:
  %pcidev_info = alloca %struct.bfa_pcidev, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pcidev_info) #13
  %0 = call ptr @memset(ptr %pcidev_info, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnad_fwimg_mutex, i32 noundef 0) #13
  %call = tail call ptr @cna_get_firmware_buf(ptr noundef %pdev) #13
  %tobool.not = icmp eq ptr %call, null
  tail call void @mutex_unlock(ptr noundef nonnull @bnad_fwimg_mutex) #13
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 17536, i32 noundef 1, i32 noundef 1) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %bna_lock.i = getelementptr i8, ptr %call1, i32 17536
  tail call void @__raw_spin_lock_init(ptr noundef %bna_lock.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @bnad_lock_init.__key, i16 noundef signext 3) #13
  %conf_mutex.i = getelementptr i8, ptr %call1, i32 17376
  tail call void @__mutex_init(ptr noundef %conf_mutex.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @bnad_lock_init.__key.37) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bna_id, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr nonnull @bna_id, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bna_id, ptr nonnull @bna_id, i32 1, ptr nonnull elementtype(i32) @bna_id) #13, !srcloc !204
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  %sub = add i32 %asmresult.i.i.i.i, -1
  %id = getelementptr i8, ptr %call1, i32 2308
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %id, align 4
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex.i, i32 noundef 0) #13
  %call.i = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.unlock_mutex_crit_edge

if.end4.unlock_mutex_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock_mutex

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.disable_device.i_crit_edge

if.end.i.disable_device.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_device.i

if.end4.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i355 = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i355)
  %cmp.i.i = icmp eq i32 %call.i.i355, 0
  br i1 %cmp.i.i, label %if.end10, label %release_regions.i

release_regions.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  br label %disable_device.i

disable_device.i:                                 ; preds = %release_regions.i, %if.end.i.disable_device.i_crit_edge
  %err.0.i = phi i32 [ %call1.i, %if.end.i.disable_device.i_crit_edge ], [ %call.i.i355, %release_regions.i ]
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %unlock_mutex

if.end10:                                         ; preds = %if.end4.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef -1) #13
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev.i, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i.i, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %add.ptr.i, align 128
  %pcidev.i = getelementptr i8, ptr %call1, i32 17344
  %6 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pcidev.i, align 64
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %7 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource.i, align 8
  %conv.i = zext i32 %8 to i64
  %mmio_start.i = getelementptr i8, ptr %call1, i32 17352
  %9 = ptrtoint ptr %mmio_start.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %mmio_start.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.end10.cond.end.i_crit_edge, label %cond.false.i

if.end10.cond.end.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end10.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end10.cond.end.i_crit_edge ]
  %conv12.i = zext i32 %cond.i to i64
  %mmio_len.i = getelementptr i8, ptr %call1, i32 17360
  %14 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv12.i, ptr %mmio_len.i, align 16
  %call.i357 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %cond.i) #13
  %bar0.i = getelementptr i8, ptr %call1, i32 8080
  %15 = ptrtoint ptr %bar0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i357, ptr %bar0.i, align 16
  %tobool.not.i358 = icmp eq ptr %call.i357, null
  br i1 %tobool.not.i358, label %do.end.i, label %do.end21.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #16
  br label %pci_uninit

do.end21.i:                                       ; preds = %cond.end.i
  %16 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mmio_len.i, align 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %call.i357, i64 noundef %17) #16
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %18 = load i32, ptr @bnad_msix_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool35.not.i = icmp eq i32 %18, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %do.end21.i.if.end37.i_crit_edge

do.end21.i.if.end37.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then36.i:                                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %cfg_flags.i = getelementptr i8, ptr %call1, i32 17336
  %19 = ptrtoint ptr %cfg_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %cfg_flags.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %do.end21.i.if.end37.i_crit_edge
  %cfg_flags38.i = getelementptr i8, ptr %call1, i32 17336
  %20 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_flags38.i, align 8
  %or.i = or i32 %21, 1
  store i32 %or.i, ptr %cfg_flags38.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %22 = load volatile i32, ptr @__num_online_cpus, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 16) #13
  %24 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg_flags38.i, align 8
  %and.i.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 %23
  %num_rx.i.i = getelementptr i8, ptr %call1, i32 7812
  %26 = ptrtoint ptr %num_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %num_rx.i.i, align 4
  %num_tx.i.i = getelementptr i8, ptr %call1, i32 7808
  %27 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_tx.i.i, align 128
  %num_rxp_per_rx.i.i = getelementptr i8, ptr %call1, i32 7820
  %28 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select.i.i, ptr %num_rxp_per_rx.i.i, align 4
  %num_txq_per_tx.i.i = getelementptr i8, ptr %call1, i32 7816
  %29 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %num_txq_per_tx.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call30.i) #13
  %30 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx.i.i, align 128
  %32 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_txq_per_tx.i.i, align 8
  %mul.i = mul i32 %33, %31
  %34 = ptrtoint ptr %num_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_rx.i.i, align 4
  %36 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_rxp_per_rx.i.i, align 4
  %mul40.i = mul i32 %37, %35
  %add41.i = add i32 %mul.i, 1
  %add42.i = add i32 %add41.i, %mul40.i
  %msix_num.i = getelementptr i8, ptr %call1, i32 17368
  %38 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add42.i, ptr %msix_num.i, align 8
  %txq_depth.i = getelementptr i8, ptr %call1, i32 7824
  %39 = ptrtoint ptr %txq_depth.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2048, ptr %txq_depth.i, align 16
  %rxq_depth.i = getelementptr i8, ptr %call1, i32 7828
  %40 = ptrtoint ptr %rxq_depth.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2048, ptr %rxq_depth.i, align 4
  %tx_coalescing_timeo.i = getelementptr i8, ptr %call1, i32 7832
  %41 = ptrtoint ptr %tx_coalescing_timeo.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 20, ptr %tx_coalescing_timeo.i, align 8
  %rx_coalescing_timeo.i = getelementptr i8, ptr %call1, i32 7833
  %42 = ptrtoint ptr %rx_coalescing_timeo.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 12, ptr %rx_coalescing_timeo.i, align 1
  %wq_name.i = getelementptr i8, ptr %call1, i32 19660
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  %call43.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %wq_name.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.15, i32 noundef %44) #13
  %call46.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.46, i32 noundef 917514, i32 noundef 1, ptr noundef %wq_name.i) #13
  %work_q.i = getelementptr i8, ptr %call1, i32 19168
  %45 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call46.i, ptr %work_q.i, align 32
  %tobool48.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end14

if.then49.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bar0.i, align 16
  tail call void @iounmap(ptr noundef %47) #13
  br label %pci_uninit

if.end14:                                         ; preds = %if.end37.i
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 128
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 24
  %50 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1099512742291, ptr %hw_features.i, align 8
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 26
  %51 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1114163, ptr %vlan_features.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 23
  %52 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i, align 16
  %or4.i = or i64 %53, 1099512742835
  store i64 %or4.i, ptr %features.i, align 16
  %54 = ptrtoint ptr %mmio_start.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %mmio_start.i, align 8
  %conv.i362 = trunc i64 %55 to i32
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 4
  %56 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv.i362, ptr %mem_start.i, align 4
  %57 = load i64, ptr %mmio_start.i, align 8
  %58 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %mmio_len.i, align 16
  %add.i364 = add i64 %59, %57
  %60 = trunc i64 %add.i364 to i32
  %conv6.i = add i32 %60, -1
  %mem_end.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 3
  %61 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv6.i, ptr %mem_end.i, align 8
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 30
  %62 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 46, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 31
  %63 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9000, ptr %max_mtu.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 16
  %64 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @bnad_netdev_ops, ptr %netdev_ops.i, align 8
  tail call void @bnad_set_ethtool_ops(ptr noundef %49) #13
  tail call void @netif_carrier_off(ptr noundef nonnull %call1) #13
  %65 = load i32, ptr @bna_debugfs_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool15.not = icmp eq i32 %65, 0
  br i1 %tobool15.not, label %if.end14.do.body19_crit_edge, label %if.then16

if.end14.do.body19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bnad_debugfs_init(ptr noundef %add.ptr.i) #13
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %if.end14.do.body19_crit_edge
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %res_info = getelementptr i8, ptr %call1, i32 17724
  tail call void @bna_res_req(ptr noundef %res_info) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call21) #13
  %res_u.i = getelementptr i8, ptr %call1, i32 17728
  %call.i365 = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %add.ptr.i, ptr noundef %res_u.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %tobool.not.i366 = icmp eq i32 %call.i365, 0
  br i1 %tobool.not.i366, label %for.cond.i, label %do.body19.bnad_res_alloc.exit_crit_edge

do.body19.bnad_res_alloc.exit_crit_edge:          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_res_alloc.exit

for.cond.i:                                       ; preds = %do.body19
  %res_u.i.1 = getelementptr i8, ptr %call1, i32 17756
  %call.i365.1 = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %add.ptr.i, ptr noundef %res_u.i.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365.1)
  %tobool.not.i366.1 = icmp eq i32 %call.i365.1, 0
  br i1 %tobool.not.i366.1, label %for.cond.i.1, label %for.cond.i.bnad_res_alloc.exit_crit_edge

for.cond.i.bnad_res_alloc.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_res_alloc.exit

for.cond.i.1:                                     ; preds = %for.cond.i
  %res_u.i.2 = getelementptr i8, ptr %call1, i32 17784
  %call.i365.2 = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %add.ptr.i, ptr noundef %res_u.i.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365.2)
  %tobool.not.i366.2 = icmp eq i32 %call.i365.2, 0
  br i1 %tobool.not.i366.2, label %for.cond.i.2, label %for.cond.i.1.bnad_res_alloc.exit_crit_edge

for.cond.i.1.bnad_res_alloc.exit_crit_edge:       ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_res_alloc.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %res_u.i.3 = getelementptr i8, ptr %call1, i32 17812
  %call.i365.3 = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %add.ptr.i, ptr noundef %res_u.i.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365.3)
  %tobool.not.i366.3 = icmp eq i32 %call.i365.3, 0
  br i1 %tobool.not.i366.3, label %for.cond.i.3, label %for.cond.i.2.bnad_res_alloc.exit_crit_edge

for.cond.i.2.bnad_res_alloc.exit_crit_edge:       ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_res_alloc.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %bna33 = getelementptr i8, ptr %call1, i32 8088
  %66 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcidev.i, align 64
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %69, 3
  %and = and i32 %shr, 31
  %70 = ptrtoint ptr %pcidev_info to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and, ptr %pcidev_info, align 4
  %71 = trunc i32 %69 to i8
  %conv37 = and i8 %71, 7
  %pci_func = getelementptr inbounds %struct.bfa_pcidev, ptr %pcidev_info, i32 0, i32 1
  %72 = ptrtoint ptr %pci_func to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv37, ptr %pci_func, align 4
  %73 = load ptr, ptr %pcidev.i, align 64
  %device = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %device, align 2
  %device_id = getelementptr inbounds %struct.bfa_pcidev, ptr %pcidev_info, i32 0, i32 2
  %76 = ptrtoint ptr %device_id to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %device_id, align 2
  %77 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bar0.i, align 16
  %pci_bar_kva = getelementptr inbounds %struct.bfa_pcidev, ptr %pcidev_info, i32 0, i32 4
  %79 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %pci_bar_kva, align 4
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  call void @bna_init(ptr noundef %bna33, ptr noundef %add.ptr.i, ptr noundef nonnull %pcidev_info, ptr noundef %res_info) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call48) #13
  %stats = getelementptr i8, ptr %call1, i32 8204
  %bna_stats = getelementptr i8, ptr %call1, i32 19456
  %80 = ptrtoint ptr %bna_stats to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %stats, ptr %bna_stats, align 8
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %81 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cfg_flags38.i, align 8
  %and.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i370 = icmp eq i32 %and.i, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i) #13
  br i1 %tobool.not.i370, label %for.cond.i.3.bnad_enable_msix.exit_crit_edge, label %if.end.i371

for.cond.i.3.bnad_enable_msix.exit_crit_edge:     ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_enable_msix.exit

bnad_res_alloc.exit:                              ; preds = %for.cond.i.2.bnad_res_alloc.exit_crit_edge, %for.cond.i.1.bnad_res_alloc.exit_crit_edge, %for.cond.i.bnad_res_alloc.exit_crit_edge, %do.body19.bnad_res_alloc.exit_crit_edge
  %call.i365.lcssa = phi i32 [ %call.i365, %do.body19.bnad_res_alloc.exit_crit_edge ], [ %call.i365.1, %for.cond.i.bnad_res_alloc.exit_crit_edge ], [ %call.i365.2, %for.cond.i.1.bnad_res_alloc.exit_crit_edge ], [ %call.i365.3, %for.cond.i.2.bnad_res_alloc.exit_crit_edge ]
  tail call fastcc void @bnad_res_free(ptr noundef %add.ptr.i, ptr noundef %res_info, i32 noundef 4) #13
  br label %drv_uninit

if.end.i371:                                      ; preds = %for.cond.i.3
  %msix_table.i = getelementptr i8, ptr %call1, i32 17372
  %83 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %msix_table.i, align 4
  %tobool7.not.i = icmp eq ptr %84, null
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i371.bnad_enable_msix.exit_crit_edge

if.end.i371.bnad_enable_msix.exit_crit_edge:      ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_enable_msix.exit

if.end9.i:                                        ; preds = %if.end.i371
  %85 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msix_num.i, align 8
  %87 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 8) #13
  %88 = extractvalue { i32, i1 } %87, 1
  br i1 %88, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !179

kcalloc.exit.thread.i:                            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %msix_table.i, align 4
  br label %do.end68.i

if.end7.i.i.i:                                    ; preds = %if.end9.i
  %90 = extractvalue { i32, i1 } %87, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %90, i32 noundef 3520) #17
  %91 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call8.i.i.i, ptr %msix_table.i, align 4
  %tobool13.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool13.not.i, label %if.end7.i.i.i.do.end68.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.do.end68.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %92 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msix_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp17146.not.i = icmp eq i32 %93, 0
  br i1 %cmp17146.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i374_crit_edge

for.cond.preheader.i.for.body.i374_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i374

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i374:                                    ; preds = %for.body.i374.for.body.i374_crit_edge, %for.cond.preheader.i.for.body.i374_crit_edge
  %i.0147.i = phi i32 [ %inc.i373, %for.body.i374.for.body.i374_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i374_crit_edge ]
  %conv19.i = trunc i32 %i.0147.i to i16
  %94 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %msix_table.i, align 4
  %entry21.i = getelementptr %struct.msix_entry, ptr %95, i32 %i.0147.i, i32 1
  %96 = ptrtoint ptr %entry21.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv19.i, ptr %entry21.i, align 4
  %inc.i373 = add nuw i32 %i.0147.i, 1
  %97 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msix_num.i, align 8
  %cmp17.i = icmp ult i32 %inc.i373, %98
  br i1 %cmp17.i, label %for.body.i374.for.body.i374_crit_edge, label %for.body.i374.for.end.i_crit_edge

for.body.i374.for.end.i_crit_edge:                ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i374.for.body.i374_crit_edge:            ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i374

for.end.i:                                        ; preds = %for.body.i374.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %98, %for.body.i374.for.end.i_crit_edge ]
  %99 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcidev.i, align 64
  %101 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %msix_table.i, align 4
  %call24.i = call i32 @pci_enable_msix_range(ptr noundef %100, ptr noundef %102, i32 noundef 1, i32 noundef %.lcssa.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %for.end.i.do.end68.i_crit_edge, label %if.else.i

for.end.i.do.end68.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

if.else.i:                                        ; preds = %for.end.i
  %103 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msix_num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call24.i, i32 %104)
  %cmp29.i = icmp ult i32 %call24.i, %104
  br i1 %cmp29.i, label %do.end34.i, label %if.else.i.if.end64.i_crit_edge

if.else.i.if.end64.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i

do.end34.i:                                       ; preds = %if.else.i
  %105 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcidev.i, align 64
  %dev.i376 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i376, ptr noundef nonnull @.str.50, i32 noundef %call24.i, i32 noundef %104) #16
  %call46.i377 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %sub.i378 = add nsw i32 %call24.i, -1
  %div.i = sdiv i32 %sub.i378, 2
  %107 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %num_txq_per_tx.i.i, align 8
  %108 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_tx.i.i, align 128
  %add2.i.i = add i32 %109, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %div.i)
  %cmp.not.i.i = icmp ugt i32 %add2.i.i, %div.i
  br i1 %cmp.not.i.i, label %do.end34.i.bnad_q_num_adjust.exit.i_crit_edge, label %land.lhs.true.i.i

do.end34.i.bnad_q_num_adjust.exit.i_crit_edge:    ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_q_num_adjust.exit.i

land.lhs.true.i.i:                                ; preds = %do.end34.i
  %110 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cfg_flags38.i, align 8
  %and.i.i381 = and i32 %111, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i381)
  %tobool.not.i.i382 = icmp eq i32 %and.i.i381, 0
  br i1 %tobool.not.i.i382, label %land.lhs.true.i.i.bnad_q_num_adjust.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.bnad_q_num_adjust.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_q_num_adjust.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %112 = xor i32 %109, -1
  %sub6.i.i = add i32 %div.i, %112
  br label %bnad_q_num_adjust.exit.i

bnad_q_num_adjust.exit.i:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.bnad_q_num_adjust.exit.i_crit_edge, %do.end34.i.bnad_q_num_adjust.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %sub6.i.i, %if.then.i.i ], [ 1, %land.lhs.true.i.i.bnad_q_num_adjust.exit.i_crit_edge ], [ 1, %do.end34.i.bnad_q_num_adjust.exit.i_crit_edge ]
  %113 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink.i.i, ptr %num_rxp_per_rx.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call46.i377) #13
  %114 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_tx.i.i, align 128
  %116 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_txq_per_tx.i.i, align 8
  %mul.i383 = mul i32 %117, %115
  %118 = ptrtoint ptr %num_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_rx.i.i, align 4
  %120 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_rxp_per_rx.i.i, align 4
  %mul54.i = mul i32 %121, %119
  %add.i384 = add i32 %mul.i383, 1
  %add55.i = add i32 %add.i384, %mul54.i
  %122 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add55.i, ptr %msix_num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.i, i32 %call24.i)
  %cmp58.i = icmp ugt i32 %add55.i, %call24.i
  br i1 %cmp58.i, label %if.then60.i, label %bnad_q_num_adjust.exit.i.if.end64.i_crit_edge

bnad_q_num_adjust.exit.i.if.end64.i_crit_edge:    ; preds = %bnad_q_num_adjust.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.i

if.then60.i:                                      ; preds = %bnad_q_num_adjust.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pcidev.i, align 64
  call void @pci_disable_msix(ptr noundef %124) #13
  br label %do.end68.i

if.end64.i:                                       ; preds = %bnad_q_num_adjust.exit.i.if.end64.i_crit_edge, %if.else.i.if.end64.i_crit_edge
  %125 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pcidev.i, align 64
  call void @pci_intx(ptr noundef %126, i32 noundef 0) #13
  br label %bnad_enable_msix.exit

do.end68.i:                                       ; preds = %if.then60.i, %for.end.i.do.end68.i_crit_edge, %if.end7.i.i.i.do.end68.i_crit_edge, %kcalloc.exit.thread.i
  %127 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcidev.i, align 64
  %dev70.i = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev70.i, ptr noundef nonnull @.str.54) #16
  %129 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %msix_table.i, align 4
  call void @kfree(ptr noundef %130) #13
  %131 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %msix_table.i, align 4
  %132 = ptrtoint ptr %msix_num.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %msix_num.i, align 8
  %call83.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %133 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cfg_flags38.i, align 8
  %and89.i = and i32 %134, -17
  store i32 %and89.i, ptr %cfg_flags38.i, align 8
  %call.i.i.i.i.i385 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %135 = load volatile i32, ptr @__num_online_cpus, align 4
  %136 = call i32 @llvm.umin.i32(i32 %135, i32 16) #13
  %137 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cfg_flags38.i, align 8
  %and.i140.i = and i32 %138, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140.i)
  %tobool.not.i141.i = icmp eq i32 %and.i140.i, 0
  %spec.store.select.i.i386 = select i1 %tobool.not.i141.i, i32 1, i32 %136
  %139 = ptrtoint ptr %num_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %num_rx.i.i, align 4
  %140 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %num_tx.i.i, align 128
  %141 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %spec.store.select.i.i386, ptr %num_rxp_per_rx.i.i, align 4
  %142 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %num_txq_per_tx.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call83.i) #13
  br label %bnad_enable_msix.exit

bnad_enable_msix.exit:                            ; preds = %do.end68.i, %if.end64.i, %if.end.i371.bnad_enable_msix.exit_crit_edge, %for.cond.i.3.bnad_enable_msix.exit_crit_edge
  %call2.i390 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %143 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cfg_flags38.i, align 8
  %and.i392 = and i32 %144, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i392)
  %tobool.not.i393 = icmp eq i32 %and.i392, 0
  br i1 %tobool.not.i393, label %if.else.i396, label %if.then.i

if.then.i:                                        ; preds = %bnad_enable_msix.exit
  call void @__sanitizer_cov_trace_pc() #15
  %msix_table.i394 = getelementptr i8, ptr %call1, i32 17372
  %145 = ptrtoint ptr %msix_table.i394 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %msix_table.i394, align 4
  br label %bnad_mbox_irq_alloc.exit

if.else.i396:                                     ; preds = %bnad_enable_msix.exit
  call void @__sanitizer_cov_trace_pc() #15
  %147 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pcidev.i, align 64
  %irq5.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 46
  br label %bnad_mbox_irq_alloc.exit

bnad_mbox_irq_alloc.exit:                         ; preds = %if.else.i396, %if.then.i
  %irq_flags.0.i = phi i32 [ 0, %if.then.i ], [ 128, %if.else.i396 ]
  %irq.0.in.i = phi ptr [ %146, %if.then.i ], [ %irq5.i, %if.else.i396 ]
  %irq_handler.0.i = phi ptr [ @bnad_msix_mbox_handler, %if.then.i ], [ @bnad_isr, %if.else.i396 ]
  %149 = ptrtoint ptr %irq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %irq.0.i = load i32, ptr %irq.0.in.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i390) #13
  %mbox_irq_name.i = getelementptr i8, ptr %call1, i32 19596
  %150 = ptrtoint ptr %mbox_irq_name.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 1651400960, ptr %mbox_irq_name.i, align 1
  %run_flags.i = getelementptr i8, ptr %call1, i32 17340
  call void @_set_bit(i32 noundef 2, ptr noundef %run_flags.i) #13
  %mbox_intr_disabled.i = getelementptr i8, ptr %call1, i32 19408
  %151 = ptrtoint ptr %mbox_intr_disabled.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %mbox_intr_disabled.i, align 8
  %inc.i397 = add i64 %152, 1
  store i64 %inc.i397, ptr %mbox_intr_disabled.i, align 8
  %call.i.i398 = call i32 @request_threaded_irq(i32 noundef %irq.0.i, ptr noundef nonnull %irq_handler.0.i, ptr noundef null, i32 noundef %irq_flags.0.i, ptr noundef %mbox_irq_name.i, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i398)
  %tobool58.not = icmp eq i32 %call.i.i398, 0
  br i1 %tobool58.not, label %do.body61, label %bnad_mbox_irq_alloc.exit.res_free_crit_edge

bnad_mbox_irq_alloc.exit.res_free_crit_edge:      ; preds = %bnad_mbox_irq_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %res_free

do.body61:                                        ; preds = %bnad_mbox_irq_alloc.exit
  %ioc_timer = getelementptr i8, ptr %call1, i32 15000
  call void @init_timer_key(ptr noundef %ioc_timer, ptr noundef nonnull @bnad_ioc_timeout, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @bnad_pci_probe.__key) #13
  %hb_timer = getelementptr i8, ptr %call1, i32 15144
  call void @init_timer_key(ptr noundef %hb_timer, ptr noundef nonnull @bnad_ioc_hb_check, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @bnad_pci_probe.__key.22) #13
  %iocpf_timer = getelementptr i8, ptr %call1, i32 15048
  call void @init_timer_key(ptr noundef %iocpf_timer, ptr noundef nonnull @bnad_iocpf_timeout, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @bnad_pci_probe.__key.24) #13
  %sem_timer = getelementptr i8, ptr %call1, i32 15096
  call void @init_timer_key(ptr noundef %sem_timer, ptr noundef nonnull @bnad_iocpf_sem_timeout, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @bnad_pci_probe.__key.26) #13
  %call83 = call fastcc i32 @bnad_ioceth_enable(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.body92, label %do.end88

do.end88:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %call83) #16
  call void @mutex_unlock(ptr noundef %conf_mutex.i) #13
  br label %cleanup

do.body92:                                        ; preds = %do.body61
  %call100 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %153 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_tx.i.i, align 128
  %155 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_txq_per_tx.i.i, align 8
  %mul = mul i32 %156, %154
  %add = add i32 %mul, 1
  %call105 = call i32 @bna_num_txq_set(ptr noundef %bna33, i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %lor.lhs.false, label %do.body92.if.then111_crit_edge

do.body92.if.then111_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then111

lor.lhs.false:                                    ; preds = %do.body92
  %157 = ptrtoint ptr %num_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_rx.i.i, align 4
  %159 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_rxp_per_rx.i.i, align 4
  %mul107 = mul i32 %160, %158
  %add108 = add i32 %mul107, 1
  %call109 = call i32 @bna_num_rxp_set(ptr noundef %bna33, i32 noundef %add108) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %lor.lhs.false.do.body138_crit_edge, label %lor.lhs.false.if.then111_crit_edge

lor.lhs.false.if.then111_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then111

lor.lhs.false.do.body138_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body138

if.then111:                                       ; preds = %lor.lhs.false.if.then111_crit_edge, %do.body92.if.then111_crit_edge
  %num_txq = getelementptr i8, ptr %call1, i32 15732
  %161 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %num_txq, align 4
  %sub113 = add i32 %162, -1
  %163 = ptrtoint ptr %num_txq_per_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %num_txq_per_tx.i.i, align 8
  %164 = ptrtoint ptr %num_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_tx.i.i, align 128
  %add2.i = add i32 %165, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %sub113)
  %cmp.not.i = icmp ugt i32 %add2.i, %sub113
  br i1 %cmp.not.i, label %if.then111.bnad_q_num_adjust.exit_crit_edge, label %land.lhs.true.i

if.then111.bnad_q_num_adjust.exit_crit_edge:      ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_q_num_adjust.exit

land.lhs.true.i:                                  ; preds = %if.then111
  %166 = ptrtoint ptr %cfg_flags38.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cfg_flags38.i, align 8
  %and.i401 = and i32 %167, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i401)
  %tobool.not.i402 = icmp eq i32 %and.i401, 0
  br i1 %tobool.not.i402, label %land.lhs.true.i.bnad_q_num_adjust.exit_crit_edge, label %if.then.i403

land.lhs.true.i.bnad_q_num_adjust.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_q_num_adjust.exit

if.then.i403:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %168 = xor i32 %165, -1
  %sub6.i = add i32 %sub113, %168
  br label %bnad_q_num_adjust.exit

bnad_q_num_adjust.exit:                           ; preds = %if.then.i403, %land.lhs.true.i.bnad_q_num_adjust.exit_crit_edge, %if.then111.bnad_q_num_adjust.exit_crit_edge
  %.sink.i = phi i32 [ %sub6.i, %if.then.i403 ], [ 1, %land.lhs.true.i.bnad_q_num_adjust.exit_crit_edge ], [ 1, %if.then111.bnad_q_num_adjust.exit_crit_edge ]
  %169 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %.sink.i, ptr %num_rxp_per_rx.i.i, align 4
  %add120 = add i32 %165, 1
  %call121 = call i32 @bna_num_txq_set(ptr noundef %bna33, i32 noundef %add120) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %lor.lhs.false123, label %bnad_q_num_adjust.exit.if.end132_crit_edge

bnad_q_num_adjust.exit.if.end132_crit_edge:       ; preds = %bnad_q_num_adjust.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

lor.lhs.false123:                                 ; preds = %bnad_q_num_adjust.exit
  %170 = ptrtoint ptr %num_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_rx.i.i, align 4
  %172 = ptrtoint ptr %num_rxp_per_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %num_rxp_per_rx.i.i, align 4
  %mul126 = mul i32 %173, %171
  %add127 = add i32 %mul126, 1
  %call128 = call i32 @bna_num_rxp_set(ptr noundef %bna33, i32 noundef %add127) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %lor.lhs.false123.do.body138_crit_edge, label %lor.lhs.false123.if.end132_crit_edge

lor.lhs.false123.if.end132_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

lor.lhs.false123.do.body138_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body138

if.end132:                                        ; preds = %lor.lhs.false123.if.end132_crit_edge, %bnad_q_num_adjust.exit.if.end132_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call100) #13
  br label %disable_ioceth

do.body138:                                       ; preds = %lor.lhs.false123.do.body138_crit_edge, %lor.lhs.false.do.body138_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call100) #13
  %call146 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %mod_res_info = getelementptr i8, ptr %call1, i32 17836
  call void @bna_mod_res_req(ptr noundef %bna33, ptr noundef %mod_res_info) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call146) #13
  %call156 = call fastcc i32 @bnad_res_alloc(ptr noundef %add.ptr.i, ptr noundef %mod_res_info, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %do.body161, label %do.body138.disable_ioceth_crit_edge

do.body138.disable_ioceth_crit_edge:              ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_ioceth

do.body161:                                       ; preds = %do.body138
  %call169 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  call void @bna_mod_init(ptr noundef %bna33, ptr noundef %mod_res_info) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call169) #13
  %call187 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %enet = getelementptr i8, ptr %call1, i32 16836
  %perm_addr = getelementptr i8, ptr %call1, i32 19160
  call void @bna_enet_perm_mac_get(ptr noundef %enet, ptr noundef %perm_addr) #13
  call fastcc void @bnad_set_netdev_perm_addr(ptr noundef %add.ptr.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call187) #13
  call void @mutex_unlock(ptr noundef %conf_mutex.i) #13
  %call194 = call i32 @register_netdev(ptr noundef nonnull %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end201, label %do.end199

do.end199:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #16
  call void @mutex_lock_nested(ptr noundef %conf_mutex.i, i32 noundef 0) #13
  call fastcc void @bnad_res_free(ptr noundef %add.ptr.i, ptr noundef %mod_res_info, i32 noundef 8)
  br label %disable_ioceth

if.end201:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 3, ptr noundef %run_flags.i) #13
  br label %cleanup

disable_ioceth:                                   ; preds = %do.end199, %do.body138.disable_ioceth_crit_edge, %if.end132
  %err.1 = phi i32 [ -5, %if.end132 ], [ %call194, %do.end199 ], [ -5, %do.body138.disable_ioceth_crit_edge ]
  call fastcc void @bnad_ioceth_disable(ptr noundef %add.ptr.i)
  %call211 = call i32 @del_timer_sync(ptr noundef %ioc_timer) #13
  %call216 = call i32 @del_timer_sync(ptr noundef %sem_timer) #13
  %call221 = call i32 @del_timer_sync(ptr noundef %hb_timer) #13
  %call231 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  call void @bna_uninit(ptr noundef %bna33) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call231) #13
  call fastcc void @bnad_mbox_irq_free(ptr noundef %add.ptr.i)
  call fastcc void @bnad_disable_msix(ptr noundef %add.ptr.i)
  br label %res_free

res_free:                                         ; preds = %disable_ioceth, %bnad_mbox_irq_alloc.exit.res_free_crit_edge
  %err.2 = phi i32 [ %call.i.i398, %bnad_mbox_irq_alloc.exit.res_free_crit_edge ], [ %err.1, %disable_ioceth ]
  call fastcc void @bnad_res_free(ptr noundef %add.ptr.i, ptr noundef %res_info, i32 noundef 4)
  br label %drv_uninit

drv_uninit:                                       ; preds = %res_free, %bnad_res_alloc.exit
  %err.3 = phi i32 [ %call.i365.lcssa, %bnad_res_alloc.exit ], [ %err.2, %res_free ]
  %regdata = getelementptr i8, ptr %call1, i32 19724
  %174 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regdata, align 4
  call void @kfree(ptr noundef %175) #13
  call void @bnad_debugfs_uninit(ptr noundef %add.ptr.i) #13
  %176 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %work_q.i, align 32
  %tobool.not.i406 = icmp eq ptr %177, null
  br i1 %tobool.not.i406, label %drv_uninit.if.end.i409_crit_edge, label %if.then.i407

drv_uninit.if.end.i409_crit_edge:                 ; preds = %drv_uninit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i409

if.then.i407:                                     ; preds = %drv_uninit
  call void @__sanitizer_cov_trace_pc() #15
  call void @destroy_workqueue(ptr noundef nonnull %177) #13
  %178 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %work_q.i, align 32
  br label %if.end.i409

if.end.i409:                                      ; preds = %if.then.i407, %drv_uninit.if.end.i409_crit_edge
  %179 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bar0.i, align 16
  %tobool3.not.i = icmp eq ptr %180, null
  br i1 %tobool3.not.i, label %if.end.i409.pci_uninit_crit_edge, label %if.then4.i

if.end.i409.pci_uninit_crit_edge:                 ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_uninit

if.then4.i:                                       ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #15
  call void @iounmap(ptr noundef nonnull %180) #13
  br label %pci_uninit

pci_uninit:                                       ; preds = %if.then4.i, %if.end.i409.pci_uninit_crit_edge, %if.then49.i, %do.end.i
  %err.4 = phi i32 [ %err.3, %if.end.i409.pci_uninit_crit_edge ], [ %err.3, %if.then4.i ], [ -12, %if.then49.i ], [ -12, %do.end.i ]
  call void @pci_release_regions(ptr noundef %pdev) #13
  call void @pci_disable_device(ptr noundef %pdev) #13
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %pci_uninit, %disable_device.i, %if.end4.unlock_mutex_crit_edge
  %err.5 = phi i32 [ %err.4, %pci_uninit ], [ %call.i, %if.end4.unlock_mutex_crit_edge ], [ %err.0.i, %disable_device.i ]
  call void @mutex_unlock(ptr noundef %conf_mutex.i) #13
  call void @mutex_destroy(ptr noundef %conf_mutex.i) #13
  call void @free_netdev(ptr noundef nonnull %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %unlock_mutex, %if.end201, %do.end88, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %err.5, %unlock_mutex ], [ 0, %do.end88 ], [ 0, %if.end201 ], [ -19, %if.then ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pcidev_info) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %bna2 = getelementptr i8, ptr %1, i32 8088
  %run_flags = getelementptr i8, ptr %1, i32 17340
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %run_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_netdev(ptr noundef nonnull %1) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %conf_mutex = getelementptr i8, ptr %1, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #13
  %bna_lock.i = getelementptr i8, ptr %1, i32 17536
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %bnad_completions.i = getelementptr i8, ptr %1, i32 18704
  %2 = ptrtoint ptr %bnad_completions.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bnad_completions.i, align 4
  %wait.i.i = getelementptr i8, ptr %1, i32 18708
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %ioceth.i = getelementptr i8, ptr %1, i32 14968
  tail call void @bna_ioceth_disable(ptr noundef %ioceth.i, i32 noundef 0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i) #13
  %call9.i = tail call i32 @wait_for_completion_timeout(ptr noundef %bnad_completions.i, i32 noundef 1000) #13
  %ioc_timer = getelementptr i8, ptr %1, i32 15000
  %call9 = tail call i32 @del_timer_sync(ptr noundef %ioc_timer) #13
  %sem_timer = getelementptr i8, ptr %1, i32 15096
  %call13 = tail call i32 @del_timer_sync(ptr noundef %sem_timer) #13
  %hb_timer = getelementptr i8, ptr %1, i32 15144
  %call17 = tail call i32 @del_timer_sync(ptr noundef %hb_timer) #13
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  tail call void @bna_uninit(ptr noundef %bna2) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call20) #13
  %mod_res_info = getelementptr i8, ptr %1, i32 17836
  tail call fastcc void @bnad_res_free(ptr noundef %add.ptr.i, ptr noundef %mod_res_info, i32 noundef 8)
  %res_info = getelementptr i8, ptr %1, i32 17724
  tail call fastcc void @bnad_res_free(ptr noundef %add.ptr.i, ptr noundef %res_info, i32 noundef 4)
  %call2.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %run_flags) #13
  %mbox_intr_disabled.i.i = getelementptr i8, ptr %1, i32 19408
  %3 = ptrtoint ptr %mbox_intr_disabled.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mbox_intr_disabled.i.i, align 8
  %inc.i.i = add i64 %4, 1
  store i64 %inc.i.i, ptr %mbox_intr_disabled.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i53) #13
  %cfg_flags.i = getelementptr i8, ptr %1, i32 17336
  %5 = ptrtoint ptr %cfg_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg_flags.i, align 8
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %msix_table.i = getelementptr i8, ptr %1, i32 17372
  %7 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msix_table.i, align 4
  br label %bnad_mbox_irq_free.exit

cond.false.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev.i = getelementptr i8, ptr %1, i32 17344
  %9 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev.i, align 64
  %irq6.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  br label %bnad_mbox_irq_free.exit

bnad_mbox_irq_free.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi ptr [ %8, %cond.true.i ], [ %irq6.i, %cond.false.i ]
  %11 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %call7.i = tail call ptr @free_irq(i32 noundef %cond.i, ptr noundef %add.ptr.i) #13
  %call2.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %12 = ptrtoint ptr %cfg_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_flags.i, align 8
  %and.i56 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i57, label %if.end14.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %bnad_mbox_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and8.i = and i32 %13, -17
  %14 = ptrtoint ptr %cfg_flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and8.i, ptr %cfg_flags.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i55) #13
  %pcidev.i58 = getelementptr i8, ptr %1, i32 17344
  %15 = ptrtoint ptr %pcidev.i58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcidev.i58, align 64
  tail call void @pci_disable_msix(ptr noundef %16) #13
  %msix_table.i59 = getelementptr i8, ptr %1, i32 17372
  %17 = ptrtoint ptr %msix_table.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msix_table.i59, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %msix_table.i59 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %msix_table.i59, align 4
  br label %bnad_disable_msix.exit

if.end14.critedge.i:                              ; preds = %bnad_mbox_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i55) #13
  br label %bnad_disable_msix.exit

bnad_disable_msix.exit:                           ; preds = %if.end14.critedge.i, %if.then.i
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #13
  tail call void @mutex_destroy(ptr noundef %conf_mutex) #13
  %regdata = getelementptr i8, ptr %1, i32 19724
  %20 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regdata, align 4
  tail call void @kfree(ptr noundef %21) #13
  tail call void @bnad_debugfs_uninit(ptr noundef %add.ptr.i) #13
  %work_q.i = getelementptr i8, ptr %1, i32 19168
  %22 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %work_q.i, align 32
  %tobool.not.i60 = icmp eq ptr %23, null
  br i1 %tobool.not.i60, label %bnad_disable_msix.exit.if.end.i_crit_edge, label %if.then.i61

bnad_disable_msix.exit.if.end.i_crit_edge:        ; preds = %bnad_disable_msix.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i61:                                      ; preds = %bnad_disable_msix.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @destroy_workqueue(ptr noundef nonnull %23) #13
  %24 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %work_q.i, align 32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i61, %bnad_disable_msix.exit.if.end.i_crit_edge
  %bar0.i = getelementptr i8, ptr %1, i32 8080
  %25 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bar0.i, align 16
  %tobool3.not.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i, label %if.end.i.bnad_uninit.exit_crit_edge, label %if.then4.i

if.end.i.bnad_uninit.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_uninit.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %26) #13
  br label %bnad_uninit.exit

bnad_uninit.exit:                                 ; preds = %if.then4.i, %if.end.i.bnad_uninit.exit_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %1) #13
  br label %cleanup

cleanup:                                          ; preds = %bnad_uninit.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cna_get_firmware_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_res_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_res_alloc(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %res_info, i32 noundef %res_val_max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res_val_max)
  %cmp8.not = icmp eq i32 %res_val_max, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %res_val_max
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %res_u = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.09, i32 1
  %call = tail call fastcc i32 @bnad_mem_alloc(ptr noundef %bnad, ptr noundef %res_u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %err_return

err_return:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bnad_res_free(ptr noundef %bnad, ptr noundef %res_info, i32 noundef %res_val_max)
  br label %cleanup

cleanup:                                          ; preds = %err_return, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %err_return ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_ioc_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr i8, ptr %t, i32 2536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %ioc = getelementptr i8, ptr %t, i32 -24
  tail call void @bfa_nw_ioc_timeout(ptr noundef %ioc) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_ioc_hb_check(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr i8, ptr %t, i32 2392
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %ioc = getelementptr i8, ptr %t, i32 -168
  tail call void @bfa_nw_ioc_hb_check(ptr noundef %ioc) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_iocpf_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr i8, ptr %t, i32 2488
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %ioc = getelementptr i8, ptr %t, i32 -72
  tail call void @bfa_nw_iocpf_timeout(ptr noundef %ioc) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_iocpf_sem_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr i8, ptr %t, i32 2440
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %ioc = getelementptr i8, ptr %t, i32 -120
  tail call void @bfa_nw_iocpf_sem_timeout(ptr noundef %ioc) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnad_ioceth_enable(ptr noundef %bnad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %bnad_completions = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37
  %0 = ptrtoint ptr %bnad_completions to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bnad_completions, align 4
  %wait.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %ioc_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 8
  %1 = ptrtoint ptr %ioc_comp_status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 7, ptr %ioc_comp_status, align 16
  %ioceth = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19, i32 5
  tail call void @bna_ioceth_enable(ptr noundef %ioceth) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %bnad_completions, i32 noundef 1000) #13
  %2 = ptrtoint ptr %ioc_comp_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ioc_comp_status, align 16
  %conv13 = zext i8 %3 to i32
  ret i32 %conv13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_num_txq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_num_rxp_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_mod_res_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_mod_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_res_free(ptr nocapture noundef readonly %bnad, ptr nocapture noundef %res_info, i32 noundef %res_val_max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res_val_max)
  %cmp3.not = icmp eq i32 %res_val_max, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pcidev.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %bnad_mem_free.exit.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bnad_mem_free.exit.for.body_crit_edge ]
  %res_u = getelementptr %struct.bna_res_info, ptr %res_info, i32 %i.04, i32 1
  %mdl.i = getelementptr inbounds %struct.bna_mem_info, ptr %res_u, i32 0, i32 4
  %0 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdl.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %for.body.bnad_mem_free.exit_crit_edge, label %for.cond.preheader.i

for.body.bnad_mem_free.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mem_free.exit

for.cond.preheader.i:                             ; preds = %for.body
  %num.i = getelementptr inbounds %struct.bna_mem_info, ptr %res_u, i32 0, i32 2
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp144.not.i = icmp eq i32 %3, 0
  br i1 %cmp144.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdl.i, align 4
  %arrayidx.i = getelementptr %struct.bna_mem_descr, ptr %5, i32 %i.045.i
  %kva.i = getelementptr %struct.bna_mem_descr, ptr %5, i32 %i.045.i, i32 1
  %6 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kva.i, align 4
  %cmp3.not.i = icmp eq ptr %7, null
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  %8 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5.i = icmp eq i32 %9, 2
  br i1 %cmp5.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %lsb.i = getelementptr %struct.bna_mem_descr, ptr %5, i32 %i.045.i, i32 2, i32 1
  %10 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lsb.i, align 4
  %12 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev.i, align 64
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %15, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %16 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %17
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdl.i, align 4
  tail call void @kfree(ptr noundef %19) #13
  %20 = ptrtoint ptr %mdl.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mdl.i, align 4
  br label %bnad_mem_free.exit

bnad_mem_free.exit:                               ; preds = %for.end.i, %for.body.bnad_mem_free.exit_crit_edge
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %res_val_max
  br i1 %exitcond.not, label %bnad_mem_free.exit.for.end_crit_edge, label %bnad_mem_free.exit.for.body_crit_edge

bnad_mem_free.exit.for.body_crit_edge:            ; preds = %bnad_mem_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

bnad_mem_free.exit.for.end_crit_edge:             ; preds = %bnad_mem_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %bnad_mem_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_ioceth_disable(ptr noundef %bnad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %bnad_completions = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37
  %0 = ptrtoint ptr %bnad_completions to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bnad_completions, align 4
  %wait.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %ioceth = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 19, i32 5
  tail call void @bna_ioceth_disable(ptr noundef %ioceth, i32 noundef 0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %bnad_completions, i32 noundef 1000) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_mbox_irq_free(ptr noundef %bnad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %run_flags.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %run_flags.i) #13
  %mbox_intr_disabled.i = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 40, i32 0, i32 29
  %0 = ptrtoint ptr %mbox_intr_disabled.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mbox_intr_disabled.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %mbox_intr_disabled.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  %cfg_flags = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 20
  %2 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %msix_table = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 26
  %4 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msix_table, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 64
  %irq6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %5, %cond.true ], [ %irq6, %cond.false ]
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %cond, ptr noundef %bnad) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnad_disable_msix(ptr noundef %bnad) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %cfg_flags5 = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 20
  %0 = ptrtoint ptr %cfg_flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_flags5, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.critedge, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and8 = and i32 %1, -17
  %2 = ptrtoint ptr %cfg_flags5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and8, ptr %cfg_flags5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %3 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcidev, align 64
  tail call void @pci_disable_msix(ptr noundef %4) #13
  %msix_table = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 26
  %5 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msix_table, align 4
  tail call void @kfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %msix_table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %msix_table, align 4
  br label %if.end14

if.end14.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  br label %if.end14

if.end14:                                         ; preds = %if.end14.critedge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_debugfs_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_open(ptr noundef %netdev) #0 align 64 {
entry:
  %pause_config = alloca %struct.bna_pause_config, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pause_config) #13
  %0 = getelementptr inbounds %struct.bna_pause_config, ptr %pause_config, i32 0, i32 1
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #13
  %call1 = tail call i32 @bnad_setup_tx(ptr noundef %add.ptr.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.err_return_crit_edge

entry.err_return_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @bnad_setup_rx(ptr noundef %add.ptr.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup_tx

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %pause_config to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pause_config, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %enet = getelementptr i8, ptr %netdev, i32 16836
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %mtu = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  %add12 = add i32 %6, 22
  tail call void @bna_enet_mtu_set(ptr noundef %enet, i32 noundef %add12, ptr noundef null) #13
  call void @bna_enet_pause_config(ptr noundef %enet, ptr noundef nonnull %pause_config) #13
  call void @bna_enet_enable(ptr noundef %enet) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call8) #13
  %rx_info1.i = getelementptr i8, ptr %netdev, i32 2688
  %mcast_comp.i = getelementptr i8, ptr %netdev, i32 18816
  %7 = ptrtoint ptr %mcast_comp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mcast_comp.i, align 4
  %wait.i.i = getelementptr i8, ptr %netdev, i32 18820
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %8 = ptrtoint ptr %rx_info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_info1.i, align 128
  %call6.i = call i32 @bna_rx_mcast_add(ptr noundef %9, ptr noundef nonnull @bnad_bcast_addr, ptr noundef nonnull @bnad_cb_rx_mcast_add) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp eq i32 %call6.i, 0
  br i1 %cmp8.i, label %if.then.i, label %if.end5.bnad_enable_default_bcast.exit_crit_edge

if.end5.bnad_enable_default_bcast.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_enable_default_bcast.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_for_completion(ptr noundef %mcast_comp.i) #13
  br label %bnad_enable_default_bcast.exit

bnad_enable_default_bcast.exit:                   ; preds = %if.then.i, %if.end5.bnad_enable_default_bcast.exit_crit_edge
  %active_vlans.i = getelementptr i8, ptr %netdev, i32 7296
  %call.i = call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #13
  %conv123.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv123.i)
  %cmp24.i = icmp ult i32 %conv123.i, 4096
  br i1 %cmp24.i, label %bnad_enable_default_bcast.exit.do.body3.i_crit_edge, label %bnad_enable_default_bcast.exit.bnad_restore_vlans.exit_crit_edge

bnad_enable_default_bcast.exit.bnad_restore_vlans.exit_crit_edge: ; preds = %bnad_enable_default_bcast.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_restore_vlans.exit

bnad_enable_default_bcast.exit.do.body3.i_crit_edge: ; preds = %bnad_enable_default_bcast.exit
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %bnad_enable_default_bcast.exit.do.body3.i_crit_edge
  %conv125.i = phi i32 [ %conv1.i, %do.body3.i.do.body3.i_crit_edge ], [ %conv123.i, %bnad_enable_default_bcast.exit.do.body3.i_crit_edge ]
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %10 = ptrtoint ptr %rx_info1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_info1.i, align 128
  call void @bna_rx_vlan_add(ptr noundef %11, i32 noundef %conv125.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call7.i) #13
  %add.i = add nuw nsw i32 %conv125.i, 1
  %call15.i = call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #13
  %conv1.i = and i32 %call15.i, 65535
  %cmp.i = icmp ult i32 %conv1.i, 4096
  br i1 %cmp.i, label %do.body3.i.do.body3.i_crit_edge, label %do.body3.i.bnad_restore_vlans.exit_crit_edge

do.body3.i.bnad_restore_vlans.exit_crit_edge:     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_restore_vlans.exit

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

bnad_restore_vlans.exit:                          ; preds = %do.body3.i.bnad_restore_vlans.exit_crit_edge, %bnad_enable_default_bcast.exit.bnad_restore_vlans.exit_crit_edge
  %call28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %bnad_restore_vlans.exit.bnad_mac_addr_set_locked.exit_crit_edge

bnad_restore_vlans.exit.bnad_mac_addr_set_locked.exit_crit_edge: ; preds = %bnad_restore_vlans.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mac_addr_set_locked.exit

is_valid_ether_addr.exit.i:                       ; preds = %bnad_restore_vlans.exit
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %or.i.i.i = or i32 %15, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.bnad_mac_addr_set_locked.exit_crit_edge, label %if.end.i

is_valid_ether_addr.exit.i.bnad_mac_addr_set_locked.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mac_addr_set_locked.exit

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i
  %19 = ptrtoint ptr %rx_info1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_info1.i, align 128
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i.bnad_mac_addr_set_locked.exit_crit_edge, label %if.end2.i

if.end.i.bnad_mac_addr_set_locked.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mac_addr_set_locked.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i62 = call i32 @bna_rx_ucast_set(ptr noundef nonnull %20, ptr noundef %13) #13
  br label %bnad_mac_addr_set_locked.exit

bnad_mac_addr_set_locked.exit:                    ; preds = %if.end2.i, %if.end.i.bnad_mac_addr_set_locked.exit_crit_edge, %is_valid_ether_addr.exit.i.bnad_mac_addr_set_locked.exit_crit_edge, %bnad_restore_vlans.exit.bnad_mac_addr_set_locked.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call28) #13
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %run_flags.i = getelementptr i8, ptr %netdev, i32 17340
  %call5.i = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %run_flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i66 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i66, label %do.body6.i, label %bnad_mac_addr_set_locked.exit.bnad_stats_timer_start.exit_crit_edge

bnad_mac_addr_set_locked.exit.bnad_stats_timer_start.exit_crit_edge: ; preds = %bnad_mac_addr_set_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_stats_timer_start.exit

do.body6.i:                                       ; preds = %bnad_mac_addr_set_locked.exit
  call void @__sanitizer_cov_trace_pc() #15
  %stats_timer.i = getelementptr i8, ptr %netdev, i32 17676
  call void @init_timer_key(ptr noundef %stats_timer.i, ptr noundef nonnull @bnad_stats_timeout, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @bnad_stats_timer_start.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i67 = add i32 %21, 100
  %call11.i = call i32 @mod_timer(ptr noundef %stats_timer.i, i32 noundef %add.i67) #13
  br label %bnad_stats_timer_start.exit

bnad_stats_timer_start.exit:                      ; preds = %do.body6.i, %bnad_mac_addr_set_locked.exit.bnad_stats_timer_start.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2.i) #13
  call void @mutex_unlock(ptr noundef %conf_mutex) #13
  br label %cleanup

cleanup_tx:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bnad_destroy_tx(ptr noundef %add.ptr.i, i32 noundef 0)
  br label %err_return

err_return:                                       ; preds = %cleanup_tx, %entry.err_return_crit_edge
  %err.0 = phi i32 [ %call1, %entry.err_return_crit_edge ], [ %call2, %cleanup_tx ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %err_return, %bnad_stats_timer_start.exit
  %retval.0 = phi i32 [ %err.0, %err_return ], [ 0, %bnad_stats_timer_start.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pause_config) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_stop(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #13
  %bna_lock.i = getelementptr i8, ptr %netdev, i32 17536
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %run_flags.i = getelementptr i8, ptr %netdev, i32 17340
  %call5.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %run_flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i) #13
  br i1 %tobool.not.i, label %entry.bnad_stats_timer_stop.exit_crit_edge, label %if.then8.i

entry.bnad_stats_timer_stop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_stats_timer_stop.exit

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stats_timer.i = getelementptr i8, ptr %netdev, i32 17676
  %call9.i = tail call i32 @del_timer_sync(ptr noundef %stats_timer.i) #13
  br label %bnad_stats_timer_stop.exit

bnad_stats_timer_stop.exit:                       ; preds = %if.then8.i, %entry.bnad_stats_timer_stop.exit_crit_edge
  %enet_comp = getelementptr i8, ptr %netdev, i32 19040
  %0 = ptrtoint ptr %enet_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %enet_comp, align 4
  %wait.i = getelementptr i8, ptr %netdev, i32 19044
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %enet = getelementptr i8, ptr %netdev, i32 16836
  tail call void @bna_enet_disable(ptr noundef %enet, i32 noundef 0, ptr noundef nonnull @bnad_cb_enet_disabled) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call3) #13
  tail call void @wait_for_completion(ptr noundef %enet_comp) #13
  tail call void @bnad_destroy_tx(ptr noundef %add.ptr.i, i32 noundef 0)
  tail call void @bnad_destroy_rx(ptr noundef %add.ptr.i, i32 noundef 0)
  %call2.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %cfg_flags.i = getelementptr i8, ptr %netdev, i32 17336
  %1 = ptrtoint ptr %cfg_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg_flags.i, align 8
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i22, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %bnad_stats_timer_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %msix_table.i = getelementptr i8, ptr %netdev, i32 17372
  %3 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msix_table.i, align 4
  br label %bnad_mbox_irq_sync.exit

if.else.i:                                        ; preds = %bnad_stats_timer_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev.i = getelementptr i8, ptr %netdev, i32 17344
  %5 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev.i, align 64
  %irq5.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  br label %bnad_mbox_irq_sync.exit

bnad_mbox_irq_sync.exit:                          ; preds = %if.else.i, %if.then.i
  %irq.0.in.i = phi ptr [ %4, %if.then.i ], [ %irq5.i, %if.else.i ]
  %7 = ptrtoint ptr %irq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %irq.0.i = load i32, ptr %irq.0.in.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i21) #13
  tail call void @synchronize_irq(i32 noundef %irq.0.i) #13
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_start_xmit(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ult i32 %1, 15
  br i1 %cmp, label %if.then, label %if.end, !prof !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_too_short = getelementptr i8, ptr %netdev, i32 19248
  %4 = ptrtoint ptr %tx_skb_too_short to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_skb_too_short, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %tx_skb_too_short, align 8
  br label %cleanup293

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i)
  %cmp4 = icmp ugt i32 %sub.i, 65535
  br i1 %cmp4, label %if.then11, label %if.end15, !prof !179

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_headlen_zero = getelementptr i8, ptr %netdev, i32 19336
  %6 = ptrtoint ptr %tx_skb_headlen_zero to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_skb_headlen_zero, align 8
  %inc14 = add i64 %7, 1
  store i64 %inc14, ptr %tx_skb_headlen_zero, align 8
  br label %cleanup293

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16 = icmp eq i32 %sub.i, 0
  br i1 %cmp16, label %if.then23, label %if.end28, !prof !179

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_headlen_zero26 = getelementptr i8, ptr %netdev, i32 19336
  %8 = ptrtoint ptr %tx_skb_headlen_zero26 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_skb_headlen_zero26, align 8
  %inc27 = add i64 %9, 1
  store i64 %inc27, ptr %tx_skb_headlen_zero26, align 8
  br label %cleanup293

if.end28:                                         ; preds = %if.end15
  %tcb29 = getelementptr i8, ptr %netdev, i32 2436
  %10 = ptrtoint ptr %tcb29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcb29, align 4
  %tobool31.not = icmp eq ptr %11, null
  br i1 %tobool31.not, label %if.end28.if.then42_crit_edge, label %lor.rhs, !prof !179

if.end28.if.then42_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

lor.rhs:                                          ; preds = %if.end28
  %flags = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %lor.rhs.if.then42_crit_edge, label %if.end46, !prof !179

lor.rhs.if.then42_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then42:                                        ; preds = %lor.rhs.if.then42_crit_edge, %if.end28.if.then42_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_stopping = getelementptr i8, ptr %netdev, i32 19256
  %15 = ptrtoint ptr %tx_skb_stopping to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_skb_stopping, align 8
  %inc45 = add i64 %16, 1
  store i64 %inc45, ptr %tx_skb_stopping, align 8
  br label %cleanup293

if.end46:                                         ; preds = %lor.rhs
  %q_depth47 = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 6
  %17 = ptrtoint ptr %q_depth47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q_depth47, align 4
  %producer_index = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %producer_index, align 4
  %unmap_q48 = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %unmap_q48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unmap_q48, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %26 to i32
  %add = add i8 %26, 1
  %add50 = add nuw nsw i32 %conv, 4
  %shr = lshr i32 %add50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp51 = icmp eq i8 %26, -1
  br i1 %cmp51, label %if.then59, label %if.end63, !prof !179

if.then59:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_max_vectors = getelementptr i8, ptr %netdev, i32 19264
  %27 = ptrtoint ptr %tx_skb_max_vectors to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tx_skb_max_vectors, align 8
  %inc62 = add i64 %28, 1
  store i64 %inc62, ptr %tx_skb_max_vectors, align 8
  br label %cleanup293

if.end63:                                         ; preds = %if.end46
  %consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 4
  %29 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %consumer_index, align 4
  %31 = xor i32 %20, -1
  %sub65 = add i32 %30, %31
  %sub66 = add i32 %18, -1
  %and = and i32 %sub65, %sub66
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %and)
  %cmp67 = icmp ugt i32 %shr, %and
  br i1 %cmp67, label %if.then75, label %if.end63.if.end137_crit_edge, !prof !179

if.end63.if.end137_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then75:                                        ; preds = %if.end63
  %hw_consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 5
  %32 = ptrtoint ptr %hw_consumer_index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_consumer_index, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %30)
  %cmp77.not = icmp eq i32 %35, %30
  br i1 %cmp77.not, label %if.then75.if.else_crit_edge, label %land.lhs.true

if.then75.if.else_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.then75
  %call80 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then82:                                        ; preds = %land.lhs.true
  %call83 = tail call fastcc i32 @bnad_txcmpl_process(ptr noundef %add.ptr.i, ptr noundef nonnull %11)
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool86.not = icmp eq i32 %38, 0
  br i1 %tobool86.not, label %if.then82.do.end99_crit_edge, label %do.body, !prof !179

if.then82.do.end99_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end99

do.body:                                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !206
  tail call void @arm_heavy_mb() #13
  %i_dbell = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 8
  %39 = ptrtoint ptr %i_dbell to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_dbell, align 4
  %doorbell_ack = getelementptr inbounds %struct.bna_ib_dbell, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %doorbell_ack to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %doorbell_ack, align 4
  %or = or i32 %42, %call83
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #13, !srcloc !183
  br label %do.end99

do.end99:                                         ; preds = %do.body, %if.then82.do.end99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %do.end110

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then75.if.else_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %stats103 = getelementptr i8, ptr %netdev, i32 19176
  %48 = ptrtoint ptr %stats103 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %stats103, align 8
  %inc105 = add i64 %49, 1
  store i64 %inc105, ptr %stats103, align 8
  br label %do.end110

do.end110:                                        ; preds = %if.else, %do.end99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !208
  %50 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %consumer_index, align 4
  %52 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %producer_index, align 4
  %54 = xor i32 %53, -1
  %sub116 = add i32 %51, %54
  %and118 = and i32 %sub116, %sub66
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %and118)
  %cmp119 = icmp ugt i32 %shr, %and118
  br i1 %cmp119, label %if.then127, label %if.else132, !prof !173

if.then127:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #15
  %stats128 = getelementptr i8, ptr %netdev, i32 19176
  %55 = ptrtoint ptr %stats128 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %stats128, align 8
  %inc131 = add i64 %56, 1
  store i64 %inc131, ptr %stats128, align 8
  br label %cleanup293

if.else132:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i437 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %57 = ptrtoint ptr %_tx.i.i437 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i437, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %58) #13
  %netif_queue_wakeup = getelementptr i8, ptr %netdev, i32 19184
  %59 = ptrtoint ptr %netif_queue_wakeup to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %netif_queue_wakeup, align 8
  %inc135 = add i64 %60, 1
  store i64 %inc135, ptr %netif_queue_wakeup, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.else132, %if.end63.if.end137_crit_edge
  %sw_q = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 1
  %61 = ptrtoint ptr %sw_q to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sw_q, align 4
  %arrayidx138 = getelementptr %struct.bna_txq_entry, ptr %62, i32 %20
  %arrayidx139 = getelementptr %struct.bnad_tx_unmap, ptr %22, i32 %20
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %63 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end137.if.end.i_crit_edge, label %if.then.i

if.end137.if.end.i_crit_edge:                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %64 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vlan_tci.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end137.if.end.i_crit_edge
  %flags.0.i = phi i16 [ 24, %if.then.i ], [ 0, %if.end137.if.end.i_crit_edge ]
  %vlan_tag.0.i = phi i16 [ %65, %if.then.i ], [ 0, %if.end137.if.end.i_crit_edge ]
  %run_flags.i = getelementptr i8, ptr %netdev, i32 17340
  %66 = ptrtoint ptr %run_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %run_flags.i, align 4
  %and1.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then3.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %priority.i = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 14
  %68 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %priority.i, align 4
  %and.i = zext i8 %69 to i16
  %shl.i = shl i16 %and.i, 13
  %70 = and i16 %vlan_tag.0.i, 8191
  %or7.i = or i16 %shl.i, %70
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then3.i, %if.end.i.if.end12.i_crit_edge
  %flags.1.i = phi i16 [ 24, %if.then3.i ], [ %flags.0.i, %if.end.i.if.end12.i_crit_edge ]
  %vlan_tag.1.i = phi i16 [ %or7.i, %if.then3.i ], [ %vlan_tag.0.i, %if.end.i.if.end12.i_crit_edge ]
  %vlan_tag13.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 5
  %71 = ptrtoint ptr %vlan_tag13.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %vlan_tag.1.i, ptr %vlan_tag13.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.i.not.i = icmp eq i16 %75, 0
  br i1 %tobool.i.not.i, label %if.else64.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  %conv18.i = zext i16 %75 to i32
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 20
  %78 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv18.i)
  %cmp.i = icmp ult i32 %79, %conv18.i
  br i1 %cmp.i, label %if.then15.i.if.then142_crit_edge, label %if.end23.i, !prof !179

if.then15.i.if.then142_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then142

if.end23.i:                                       ; preds = %if.then15.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %80 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %82 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %83 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %85 to i32
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %87 = lshr i16 %bf.load.i.i.i, 10
  %88 = and i16 %87, 60
  %mul.i.i.i = zext i16 %88 to i32
  %sub.ptr.sub.i.i = sub i32 %conv18.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  %add26.i = add i32 %add.i, %mul.i.i.i
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %90)
  %cmp27.not.i = icmp ult i32 %add26.i, %90
  %opcode42.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 2
  br i1 %cmp27.not.i, label %if.else.i, label %if.then35.i, !prof !173

if.then35.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %opcode42.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1026, ptr %opcode42.i, align 2
  %lso_mss.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 6
  %92 = ptrtoint ptr %lso_mss.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %lso_mss.i, align 2
  %tx_skb_tso_too_short.i = getelementptr i8, ptr %netdev, i32 19280
  %93 = ptrtoint ptr %tx_skb_tso_too_short.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %tx_skb_tso_too_short.i, align 8
  %inc40.i = add i64 %94, 1
  store i64 %inc40.i, ptr %tx_skb_tso_too_short.i, align 8
  br label %if.end46.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %opcode42.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1027, ptr %opcode42.i, align 2
  %lso_mss45.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 6
  %96 = ptrtoint ptr %lso_mss45.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %75, ptr %lso_mss45.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i, %if.then35.i
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %97 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end46.i.if.end.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

if.end46.i.if.end.i.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.end46.i
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %99, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #13
  %100 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %101, 65535
  %shr.i.i.i.i = ashr i32 %101, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.if.end.i.i_crit_edge, label %skb_cow_head.exit.i.i

skb_header_cloned.exit.i.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

skb_cow_head.exit.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i
  %call4.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then49.i, label %skb_cow_head.exit.i.i.if.end.i.i_crit_edge

skb_cow_head.exit.i.i.if.end.i.i_crit_edge:       ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %skb_cow_head.exit.i.i.if.end.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.if.end.i.i_crit_edge, %if.end46.i.if.end.i.i_crit_edge
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %102 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %104 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i248.i = zext i16 %105 to i32
  %106 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %103, label %if.end.i.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %if.end.i.i.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.end.i.i.if.then.i.i.i.i_crit_edge495
  ]

if.end.i.i.if.then.i.i.i.i_crit_edge495:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end.i.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end.i.i.vlan_get_protocol.exit.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i.i_crit_edge495
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not.i.i28.i.i = icmp eq i16 %105, 0
  br i1 %tobool.not.i.i28.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %105)
  %cmp.i.i.i.i = icmp ult i16 %105, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !179

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.else.i.i

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i29.i.i = add nsw i32 %conv.i.i.i248.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i29.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %107 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #13
  %108 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !180
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %107, align 2, !annotation !180
  %110 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len.i, align 4
  %112 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %data_len.i, align 8
  %114 = add i32 %vlan_depth.1.i.i.i.i, %113
  %sub.i1.i.i.i.i.i = sub i32 %111, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !173

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %116, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i30.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i30.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i30.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !179
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %117 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !179
  br i1 %117, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !179

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #13
  br label %if.else.i.i

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #13
  %120 = zext i16 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %119, label %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge496
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge496: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit.i.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge496
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

vlan_get_protocol.exit.i.i:                       ; preds = %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge, %if.end.i.i.vlan_get_protocol.exit.i.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %103, %if.end.i.i.vlan_get_protocol.exit.i.i_crit_edge ], [ %119, %do.cond42.i.i.i.i.vlan_get_protocol.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i.i.i)
  %cmp2.i.i = icmp eq i16 %retval.2.i.i.i.i, 2048
  br i1 %cmp2.i.i, label %if.then4.i.i, label %vlan_get_protocol.exit.i.i.if.else.i.i_crit_edge

vlan_get_protocol.exit.i.i.if.else.i.i_crit_edge: ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then4.i.i:                                     ; preds = %vlan_get_protocol.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %123 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i31.i.i = zext i16 %124 to i32
  %add.ptr.i.i.i250.i = getelementptr i8, ptr %122, i32 %conv.i.i31.i.i
  %tot_len.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i250.i, i32 0, i32 2
  %125 = ptrtoint ptr %tot_len.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %tot_len.i.i, align 2
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i250.i, i32 0, i32 7
  %126 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %check.i.i, align 2
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i250.i, i32 0, i32 8
  %127 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i250.i, i32 0, i32 9
  %129 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %daddr.i.i, align 4
  %131 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %130, i32 %128, i32 6) #19, !srcloc !209
  %132 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %131) #19, !srcloc !210
  %133 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %head.i.i.i, align 8
  %135 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i35.i.i = zext i16 %136 to i32
  %add.ptr.i.i36.i.i = getelementptr i8, ptr %134, i32 %conv.i.i35.i.i
  br label %if.end53.i

if.else.i.i:                                      ; preds = %vlan_get_protocol.exit.i.i.if.else.i.i_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %137 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %139 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %140 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %138, i32 %conv.i.i.i.i.i
  %141 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i8.i.i.i = zext i16 %142 to i32
  %add.ptr.i.i9.i.i.i = getelementptr i8, ptr %138, i32 %conv.i.i8.i.i.i
  %payload_len.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %payload_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %payload_len.i.i.i, align 4
  %saddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 5
  %daddr.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i.i, ptr noundef %daddr.i.i.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #13
  %144 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i.i.i) #19, !srcloc !210
  br label %if.end53.i

if.then49.i:                                      ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tso_err.i.i = getelementptr i8, ptr %netdev, i32 19216
  %145 = ptrtoint ptr %tso_err.i.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %tso_err.i.i, align 8
  %inc13.i.i = add i64 %146, 1
  store i64 %inc13.i.i, ptr %tso_err.i.i, align 8
  br label %if.then142

if.end53.i:                                       ; preds = %if.else.i.i, %if.then4.i.i
  %add.ptr.i.i9.i.i.i.sink = phi ptr [ %add.ptr.i.i9.i.i.i, %if.else.i.i ], [ %add.ptr.i.i36.i.i, %if.then4.i.i ]
  %neg.i.i.i.sink.in.in.in.in = phi i32 [ %144, %if.else.i.i ], [ %132, %if.then4.i.i ]
  %.sink = phi i32 [ 19208, %if.else.i.i ], [ 19200, %if.then4.i.i ]
  %neg.i.i.i.sink.in.in.in = xor i32 %neg.i.i.i.sink.in.in.in.in, -1
  %neg.i.i.i.sink.in.in = lshr i32 %neg.i.i.i.sink.in.in.in, 16
  %neg.i.i.i.sink.in = trunc i32 %neg.i.i.i.sink.in.in to i16
  %neg.i.i.i.sink = xor i16 %neg.i.i.i.sink.in, -1
  %check.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i9.i.i.i.sink, i32 0, i32 6
  %147 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %neg.i.i.i.sink, ptr %check.i.i.i, align 4
  %tso6.i.i = getelementptr i8, ptr %netdev, i32 %.sink
  %148 = ptrtoint ptr %tso6.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %tso6.i.i, align 8
  %inc13.i321.i = add i64 %149, 1
  store i64 %inc13.i321.i, ptr %tso6.i.i, align 8
  %150 = or i16 %flags.1.i, 3
  %151 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %head.i.i.i, align 8
  %153 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i254.i = zext i16 %154 to i32
  %add.ptr.i.i.i255.i = getelementptr i8, ptr %152, i32 %conv.i.i.i254.i
  %doff.i.i256.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i255.i, i32 0, i32 4
  %155 = ptrtoint ptr %doff.i.i256.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load.i.i257.i = load i16, ptr %doff.i.i256.i, align 4
  %156 = lshr i16 %bf.load.i.i257.i, 2
  %157 = and i16 %156, 15360
  %158 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i264.i = ptrtoint ptr %add.ptr.i.i.i255.i to i32
  %sub.ptr.rhs.cast.i265.i = ptrtoint ptr %159 to i32
  %sub.ptr.sub.i266.i = sub i32 %sub.ptr.lhs.cast.i264.i, %sub.ptr.rhs.cast.i265.i
  %160 = trunc i32 %sub.ptr.sub.i266.i to i16
  %161 = and i16 %160, 1023
  %conv62.i = or i16 %161, %157
  br label %if.end184.sink.split.i

if.else64.i:                                      ; preds = %if.end12.i
  %opcode66.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 2
  %162 = ptrtoint ptr %opcode66.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 1026, ptr %opcode66.i, align 2
  %lso_mss68.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 6
  %163 = ptrtoint ptr %lso_mss68.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %lso_mss68.i, align 2
  %164 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len.i, align 4
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 128
  %mtu71.i = getelementptr inbounds %struct.net_device, ptr %167, i32 0, i32 20
  %168 = ptrtoint ptr %mtu71.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mtu71.i, align 4
  %add72.i = add i32 %169, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %add72.i)
  %cmp73.i = icmp ugt i32 %165, %add72.i
  br i1 %cmp73.i, label %if.else64.i.if.then142_crit_edge, label %if.end85.i, !prof !179

if.else64.i.if.then142_crit_edge:                 ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then142

if.end85.i:                                       ; preds = %if.else64.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %170 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load86.i = load i16, ptr %ip_summed.i, align 8
  %171 = and i16 %bf.load86.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %171)
  %cmp90.i = icmp eq i16 %171, 1536
  br i1 %cmp90.i, label %if.then92.i, label %if.end85.i.if.end184.sink.split.i_crit_edge

if.end85.i.if.end184.sink.split.i_crit_edge:      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184.sink.split.i

if.then92.i:                                      ; preds = %if.end85.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %172 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %174 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i267.i = zext i16 %175 to i32
  %176 = zext i16 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %173, label %if.then92.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then92.i.if.then.i.i.i_crit_edge
    i16 -32512, label %if.then92.i.if.then.i.i.i_crit_edge497
  ]

if.then92.i.if.then.i.i.i_crit_edge497:           ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.then92.i.if.then.i.i.i_crit_edge:              ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.then92.i.vlan_get_protocol.exit.i_crit_edge:   ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.then92.i.if.then.i.i.i_crit_edge, %if.then92.i.if.then.i.i.i_crit_edge497
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %175)
  %tobool.not.i.i.i = icmp eq i16 %175, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %175)
  %cmp.i.i.i = icmp ult i16 %175, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !179

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.then142

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add nsw i32 %conv.i.i267.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %177 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #13
  %178 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !180
  %179 = ptrtoint ptr %177 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %177, align 2, !annotation !180
  %180 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %len.i, align 4
  %182 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %data_len.i, align 8
  %184 = add i32 %vlan_depth.1.i.i.i, %183
  %sub.i1.i.i.i.i = sub i32 %181, %184
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !173

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %185 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i268.i = getelementptr i8, ptr %186, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i269.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i269.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i269.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !179
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i268.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %187 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !179
  br i1 %187, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !179

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #13
  br label %if.then142

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %188 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #13
  %190 = zext i16 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %189, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge498
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge498: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge498
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %if.then92.i.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %173, %if.then92.i.vlan_get_protocol.exit.i_crit_edge ], [ %189, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %191 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %retval.2.i.i.i, label %vlan_get_protocol.exit.i.if.then142_crit_edge [
    i16 2048, label %if.then97.i
    i16 -31011, label %if.then103.i
  ]

vlan_get_protocol.exit.i.if.then142_crit_edge:    ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then142

if.then97.i:                                      ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i270.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %192 = ptrtoint ptr %head.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %head.i.i270.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %194 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i271.i = zext i16 %195 to i32
  %add.ptr.i.i272.i = getelementptr i8, ptr %193, i32 %conv.i.i271.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i272.i, i32 0, i32 6
  br label %if.end106.i

if.then103.i:                                     ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i273.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %196 = ptrtoint ptr %head.i.i273.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %head.i.i273.i, align 8
  %network_header.i.i274.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %198 = ptrtoint ptr %network_header.i.i274.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %network_header.i.i274.i, align 4
  %conv.i.i275.i = zext i16 %199 to i32
  %add.ptr.i.i276.i = getelementptr i8, ptr %197, i32 %conv.i.i275.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i276.i, i32 0, i32 3
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then103.i, %if.then97.i
  %proto.0.in.i = phi ptr [ %protocol.i, %if.then97.i ], [ %nexthdr.i, %if.then103.i ]
  %200 = ptrtoint ptr %proto.0.in.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %proto.0.i = load i8, ptr %proto.0.in.i, align 1
  %201 = zext i8 %proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %proto.0.i, label %if.end106.i.if.then142_crit_edge [
    i8 6, label %if.then110.i
    i8 17, label %if.then144.i
  ]

if.end106.i.if.then142_crit_edge:                 ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then142

if.then110.i:                                     ; preds = %if.end106.i
  %202 = or i16 %flags.1.i, 2
  %head.i.i277.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %203 = ptrtoint ptr %head.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %head.i.i277.i, align 8
  %transport_header.i.i278.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %205 = ptrtoint ptr %transport_header.i.i278.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %transport_header.i.i278.i, align 2
  %conv.i.i279.i = zext i16 %206 to i32
  %add.ptr.i.i280.i = getelementptr i8, ptr %204, i32 %conv.i.i279.i
  %data.i281.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %207 = ptrtoint ptr %data.i281.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %data.i281.i, align 4
  %sub.ptr.lhs.cast.i282.i = ptrtoint ptr %add.ptr.i.i280.i to i32
  %sub.ptr.rhs.cast.i283.i = ptrtoint ptr %208 to i32
  %sub.ptr.sub.i284.i = sub i32 %sub.ptr.lhs.cast.i282.i, %sub.ptr.rhs.cast.i283.i
  %209 = trunc i32 %sub.ptr.sub.i284.i to i16
  %conv117.i = and i16 %209, 1023
  %l4_hdr_size_n_offset119.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 4
  %210 = ptrtoint ptr %l4_hdr_size_n_offset119.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv117.i, ptr %l4_hdr_size_n_offset119.i, align 2
  %tcpcsum_offload.i = getelementptr i8, ptr %netdev, i32 19224
  %211 = ptrtoint ptr %tcpcsum_offload.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %tcpcsum_offload.i, align 8
  %inc122.i = add i64 %212, 1
  store i64 %inc122.i, ptr %tcpcsum_offload.i, align 8
  %213 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %len.i, align 4
  %215 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %data_len.i, align 8
  %sub.i.i = sub i32 %214, %216
  %217 = load ptr, ptr %head.i.i277.i, align 8
  %218 = load i16, ptr %transport_header.i.i278.i, align 2
  %conv.i.i287.i = zext i16 %218 to i32
  %add.ptr.i.i288.i = getelementptr i8, ptr %217, i32 %conv.i.i287.i
  %219 = load ptr, ptr %data.i281.i, align 4
  %sub.ptr.lhs.cast.i290.i = ptrtoint ptr %add.ptr.i.i288.i to i32
  %sub.ptr.rhs.cast.i291.i = ptrtoint ptr %219 to i32
  %sub.ptr.sub.i292.i = sub i32 %sub.ptr.lhs.cast.i290.i, %sub.ptr.rhs.cast.i291.i
  %doff.i.i297.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i288.i, i32 0, i32 4
  %220 = ptrtoint ptr %doff.i.i297.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %bf.load.i.i298.i = load i16, ptr %doff.i.i297.i, align 4
  %221 = lshr i16 %bf.load.i.i298.i, 10
  %222 = and i16 %221, 60
  %mul.i.i299.i = zext i16 %222 to i32
  %add126.i = add i32 %sub.ptr.sub.i292.i, %mul.i.i299.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add126.i)
  %cmp127.i = icmp ult i32 %sub.i.i, %add126.i
  br i1 %cmp127.i, label %if.then110.i.if.then142_crit_edge, label %if.then110.i.if.end143_crit_edge, !prof !179

if.then110.i.if.end143_crit_edge:                 ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.then110.i.if.then142_crit_edge:                ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then142

if.then144.i:                                     ; preds = %if.end106.i
  %223 = or i16 %flags.1.i, 4
  %head.i.i300.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %224 = ptrtoint ptr %head.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %head.i.i300.i, align 8
  %transport_header.i.i301.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %226 = ptrtoint ptr %transport_header.i.i301.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %transport_header.i.i301.i, align 2
  %conv.i.i302.i = zext i16 %227 to i32
  %add.ptr.i.i303.i = getelementptr i8, ptr %225, i32 %conv.i.i302.i
  %data.i304.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %228 = ptrtoint ptr %data.i304.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %data.i304.i, align 4
  %sub.ptr.lhs.cast.i305.i = ptrtoint ptr %add.ptr.i.i303.i to i32
  %sub.ptr.rhs.cast.i306.i = ptrtoint ptr %229 to i32
  %sub.ptr.sub.i307.i = sub i32 %sub.ptr.lhs.cast.i305.i, %sub.ptr.rhs.cast.i306.i
  %230 = trunc i32 %sub.ptr.sub.i307.i to i16
  %conv151.i = and i16 %230, 1023
  %l4_hdr_size_n_offset153.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 4
  %231 = ptrtoint ptr %l4_hdr_size_n_offset153.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv151.i, ptr %l4_hdr_size_n_offset153.i, align 2
  %udpcsum_offload.i = getelementptr i8, ptr %netdev, i32 19232
  %232 = ptrtoint ptr %udpcsum_offload.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %udpcsum_offload.i, align 8
  %inc156.i = add i64 %233, 1
  store i64 %inc156.i, ptr %udpcsum_offload.i, align 8
  %234 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %len.i, align 4
  %236 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %data_len.i, align 8
  %sub.i310.i = sub i32 %235, %237
  %238 = load ptr, ptr %head.i.i300.i, align 8
  %239 = load i16, ptr %transport_header.i.i301.i, align 2
  %conv.i.i313.i = zext i16 %239 to i32
  %add.ptr.i.i314.i = getelementptr i8, ptr %238, i32 %conv.i.i313.i
  %240 = load ptr, ptr %data.i304.i, align 4
  %sub.ptr.lhs.cast.i316.i = ptrtoint ptr %add.ptr.i.i314.i to i32
  %sub.ptr.rhs.cast.i317.i = ptrtoint ptr %240 to i32
  %sub.ptr.sub.i318.i = sub i32 8, %sub.ptr.rhs.cast.i317.i
  %add159.i = add i32 %sub.ptr.sub.i318.i, %sub.ptr.lhs.cast.i316.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i310.i, i32 %add159.i)
  %cmp160.i = icmp ult i32 %sub.i310.i, %add159.i
  br i1 %cmp160.i, label %if.then144.i.if.then142_crit_edge, label %if.then144.i.if.end143_crit_edge, !prof !179

if.then144.i.if.end143_crit_edge:                 ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.then144.i.if.then142_crit_edge:                ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then142

if.end184.sink.split.i:                           ; preds = %if.end85.i.if.end184.sink.split.i_crit_edge, %if.end53.i
  %.sink.i = phi i16 [ %conv62.i, %if.end53.i ], [ 0, %if.end85.i.if.end184.sink.split.i_crit_edge ]
  %flags.4.ph.i = phi i16 [ %150, %if.end53.i ], [ %flags.1.i, %if.end85.i.if.end184.sink.split.i_crit_edge ]
  %l4_hdr_size_n_offset182.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 4
  %241 = ptrtoint ptr %l4_hdr_size_n_offset182.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %.sink.i, ptr %l4_hdr_size_n_offset182.i, align 2
  br label %if.end143

if.then142:                                       ; preds = %if.then144.i.if.then142_crit_edge, %if.then110.i.if.then142_crit_edge, %if.end106.i.if.then142_crit_edge, %vlan_get_protocol.exit.i.if.then142_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %if.else64.i.if.then142_crit_edge, %if.then49.i, %if.then15.i.if.then142_crit_edge
  %.sink485 = phi i32 [ 19288, %if.then49.i ], [ 19272, %if.then15.i.if.then142_crit_edge ], [ 19296, %if.else64.i.if.then142_crit_edge ], [ 19304, %if.then110.i.if.then142_crit_edge ], [ 19312, %if.then144.i.if.then142_crit_edge ], [ 19320, %if.end106.i.if.then142_crit_edge ], [ 19320, %vlan_get_protocol.exit.i.if.then142_crit_edge ], [ 19320, %cleanup.thread.i.i.i ], [ 19320, %do.end.i.i.i ]
  %tx_skb_mss_too_long.i = getelementptr i8, ptr %netdev, i32 %.sink485
  %242 = ptrtoint ptr %tx_skb_mss_too_long.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %tx_skb_mss_too_long.i, align 8
  %inc.i = add i64 %243, 1
  store i64 %inc.i, ptr %tx_skb_mss_too_long.i, align 8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup293

if.end143:                                        ; preds = %if.end184.sink.split.i, %if.then144.i.if.end143_crit_edge, %if.then110.i.if.end143_crit_edge
  %flags.4.i = phi i16 [ %202, %if.then110.i.if.end143_crit_edge ], [ %223, %if.then144.i.if.end143_crit_edge ], [ %flags.4.ph.i, %if.end184.sink.split.i ]
  %flags186.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 3
  %244 = ptrtoint ptr %flags186.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %flags.4.i, ptr %flags186.i, align 4
  %245 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len.i, align 4
  %frame_length.i = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 7
  %247 = ptrtoint ptr %frame_length.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %frame_length.i, align 4
  %248 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %arrayidx138, align 4
  %num_vectors = getelementptr inbounds %struct.anon.214, ptr %arrayidx138, i32 0, i32 1
  %249 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %add, ptr %num_vectors, align 1
  %250 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %skb, ptr %arrayidx139, align 4
  %nvecs = getelementptr %struct.bnad_tx_unmap, ptr %22, i32 %20, i32 1
  %251 = ptrtoint ptr %nvecs to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %nvecs, align 4
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %252 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pcidev, align 64
  %dev = getelementptr inbounds %struct.pci_dev, ptr %253, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %254 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %data, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %255) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end143
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i439, !prof !173

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i439:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %dev) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %253, i32 0, i32 44, i32 3
  %256 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %257, null
  br i1 %tobool.not.i.i, label %if.end.i.i440, label %if.then.i439.dev_name.exit.i_crit_edge

if.then.i439.dev_name.exit.i_crit_edge:           ; preds = %if.then.i439
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i440:                                    ; preds = %if.then.i439
  call void @__sanitizer_cov_trace_pc() #15
  %258 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i440, %if.then.i439.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %259, %if.end.i.i440 ], [ %257, %if.then.i439.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %255, i32 noundef %sub.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %260 = load ptr, ptr @mem_map, align 4
  %261 = ptrtoint ptr %255 to i32
  %sub.i441 = add i32 %261, 1073741824
  %shr.i442 = lshr i32 %sub.i441, 12
  %add.ptr.i443 = getelementptr %struct.page, ptr %260, i32 %shr.i442
  %and.i444 = and i32 %261, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i443, i32 noundef %and.i444, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %262 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %pcidev, align 64
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %263, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev149, i32 noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i445 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i445, label %if.then152, label %do.body157

if.then152:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_map_failed = getelementptr i8, ptr %netdev, i32 19360
  %264 = ptrtoint ptr %tx_skb_map_failed to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %tx_skb_map_failed, align 8
  %inc155 = add i64 %265, 1
  store i64 %inc155, ptr %tx_skb_map_failed, align 8
  br label %cleanup293

do.body157:                                       ; preds = %dma_map_single_attrs.exit
  %vector = getelementptr %struct.bna_txq_entry, ptr %62, i32 %20, i32 1
  %host_addr = getelementptr inbounds %struct.bna_txq_wi_vector, ptr %vector, i32 0, i32 2
  %266 = ptrtoint ptr %host_addr to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %host_addr, align 4
  %lsb164 = getelementptr inbounds %struct.bna_txq_wi_vector, ptr %vector, i32 0, i32 2, i32 1
  %267 = ptrtoint ptr %lsb164 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %retval.0.i, ptr %lsb164, align 4
  %conv167 = trunc i32 %sub.i to i16
  %length = getelementptr inbounds %struct.bna_txq_wi_vector, ptr %vector, i32 0, i32 1
  %268 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %conv167, ptr %length, align 2
  %vectors170 = getelementptr %struct.bnad_tx_unmap, ptr %22, i32 %20, i32 2
  %269 = ptrtoint ptr %vectors170 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %retval.0.i, ptr %vectors170, align 4
  %270 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %nvecs, align 4
  %inc174 = add i32 %271, 1
  store i32 %inc174, ptr %nvecs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp176469.not = icmp eq i8 %26, 0
  br i1 %cmp176469.not, label %do.body157.for.end_crit_edge, label %do.body157.for.body_crit_edge

do.body157.for.body_crit_edge:                    ; preds = %do.body157
  br label %for.body

do.body157.for.end_crit_edge:                     ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body157.for.body_crit_edge
  %txqent.0475 = phi ptr [ %txqent.1, %for.inc.for.body_crit_edge ], [ %arrayidx138, %do.body157.for.body_crit_edge ]
  %i.0474 = phi i32 [ %inc251, %for.inc.for.body_crit_edge ], [ 0, %do.body157.for.body_crit_edge ]
  %len.0473 = phi i32 [ %add196, %for.inc.for.body_crit_edge ], [ %sub.i, %do.body157.for.body_crit_edge ]
  %vect_id.0472 = phi i32 [ %vect_id.1, %for.inc.for.body_crit_edge ], [ 0, %do.body157.for.body_crit_edge ]
  %prod.0471 = phi i32 [ %prod.1, %for.inc.for.body_crit_edge ], [ %20, %do.body157.for.body_crit_edge ]
  %unmap.0470 = phi ptr [ %unmap.1, %for.inc.for.body_crit_edge ], [ %arrayidx139, %do.body157.for.body_crit_edge ]
  %272 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %end.i, align 4
  %arrayidx179 = getelementptr %struct.skb_shared_info, ptr %273, i32 0, i32 12, i32 %i.0474
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %273, i32 0, i32 12, i32 %i.0474, i32 1
  %274 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp181 = icmp eq i32 %275, 0
  br i1 %cmp181, label %if.then189, label %if.end195, !prof !179

if.then189:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %276 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %producer_index, align 4
  %call191 = call fastcc i32 @bnad_tx_buff_unmap(ptr noundef %add.ptr.i, ptr noundef %22, i32 noundef %18, i32 noundef %277)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_frag_zero = getelementptr i8, ptr %netdev, i32 19344
  %278 = ptrtoint ptr %tx_skb_frag_zero to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %tx_skb_frag_zero, align 8
  %inc194 = add i64 %279, 1
  store i64 %inc194, ptr %tx_skb_frag_zero, align 8
  br label %cleanup293

if.end195:                                        ; preds = %for.body
  %add196 = add i32 %275, %len.0473
  %inc197 = add i32 %vect_id.0472, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc197)
  %cmp198 = icmp eq i32 %inc197, 4
  br i1 %cmp198, label %if.then200, label %if.end195.if.end208_crit_edge

if.end195.if.end208_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then200:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #15
  %add201 = add i32 %prod.0471, 1
  %and203 = and i32 %add201, %sub66
  %280 = ptrtoint ptr %sw_q to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %sw_q, align 4
  %arrayidx205 = getelementptr %struct.bna_txq_entry, ptr %281, i32 %and203
  %opcode = getelementptr inbounds %struct.anon.215, ptr %arrayidx205, i32 0, i32 1
  %282 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 260, ptr %opcode, align 2
  %arrayidx207 = getelementptr %struct.bnad_tx_unmap, ptr %22, i32 %and203
  br label %if.end208

if.end208:                                        ; preds = %if.then200, %if.end195.if.end208_crit_edge
  %unmap.1 = phi ptr [ %arrayidx207, %if.then200 ], [ %unmap.0470, %if.end195.if.end208_crit_edge ]
  %prod.1 = phi i32 [ %and203, %if.then200 ], [ %prod.0471, %if.end195.if.end208_crit_edge ]
  %vect_id.1 = phi i32 [ 0, %if.then200 ], [ %inc197, %if.end195.if.end208_crit_edge ]
  %txqent.1 = phi ptr [ %arrayidx205, %if.then200 ], [ %txqent.0475, %if.end195.if.end208_crit_edge ]
  %283 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %pcidev, align 64
  %dev210 = getelementptr inbounds %struct.pci_dev, ptr %284, i32 0, i32 44
  %285 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx179, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %273, i32 0, i32 12, i32 %i.0474, i32 2
  %287 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %dev210, ptr noundef %286, i32 noundef %288, i32 noundef %275, i32 noundef 1, i32 noundef 0) #13
  %289 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pcidev, align 64
  %dev213 = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev213, i32 noundef %call2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i447.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i447.not, label %if.then216, label %for.inc

if.then216:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  %291 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %producer_index, align 4
  %call218 = call fastcc i32 @bnad_tx_buff_unmap(ptr noundef %add.ptr.i, ptr noundef %22, i32 noundef %18, i32 noundef %292)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_map_failed221 = getelementptr i8, ptr %netdev, i32 19360
  %293 = ptrtoint ptr %tx_skb_map_failed221 to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %tx_skb_map_failed221, align 8
  %inc222 = add i64 %294, 1
  store i64 %inc222, ptr %tx_skb_map_failed221, align 8
  br label %cleanup293

for.inc:                                          ; preds = %if.end208
  %arrayidx225 = getelementptr %struct.bnad_tx_unmap, ptr %unmap.1, i32 0, i32 2, i32 %vect_id.1
  %dma_len = getelementptr %struct.bnad_tx_unmap, ptr %unmap.1, i32 0, i32 2, i32 %vect_id.1, i32 1
  %295 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %275, ptr %dma_len, align 4
  %host_addr232 = getelementptr %struct.bna_txq_entry, ptr %txqent.1, i32 0, i32 1, i32 %vect_id.1, i32 2
  %296 = ptrtoint ptr %host_addr232 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %host_addr232, align 4
  %lsb238 = getelementptr %struct.bna_txq_entry, ptr %txqent.1, i32 0, i32 1, i32 %vect_id.1, i32 2, i32 1
  %297 = ptrtoint ptr %lsb238 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %call2.i, ptr %lsb238, align 4
  %conv241 = trunc i32 %275 to i16
  %length244 = getelementptr %struct.bna_txq_entry, ptr %txqent.1, i32 0, i32 1, i32 %vect_id.1, i32 1
  %298 = ptrtoint ptr %length244 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv241, ptr %length244, align 2
  %299 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %call2.i, ptr %arrayidx225, align 4
  %300 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %nvecs, align 4
  %inc249 = add i32 %301, 1
  store i32 %inc249, ptr %nvecs, align 4
  %inc251 = add nuw nsw i32 %i.0474, 1
  %exitcond.not = icmp eq i32 %inc251, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body157.for.end_crit_edge
  %prod.0.lcssa = phi i32 [ %20, %do.body157.for.end_crit_edge ], [ %prod.1, %for.inc.for.end_crit_edge ]
  %len.0.lcssa = phi i32 [ %sub.i, %do.body157.for.end_crit_edge ], [ %add196, %for.inc.for.end_crit_edge ]
  %302 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa, i32 %303)
  %cmp253.not = icmp eq i32 %len.0.lcssa, %303
  br i1 %cmp253.not, label %if.end267, label %if.then261, !prof !173

if.then261:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %304 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %producer_index, align 4
  %call263 = call fastcc i32 @bnad_tx_buff_unmap(ptr noundef %add.ptr.i, ptr noundef %22, i32 noundef %18, i32 noundef %305)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_skb_len_mismatch = getelementptr i8, ptr %netdev, i32 19352
  %306 = ptrtoint ptr %tx_skb_len_mismatch to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %tx_skb_len_mismatch, align 8
  %inc266 = add i64 %307, 1
  store i64 %inc266, ptr %tx_skb_len_mismatch, align 8
  br label %cleanup293

if.end267:                                        ; preds = %for.end
  %add268 = add i32 %prod.0.lcssa, 1
  %and270 = and i32 %add268, %sub66
  %308 = ptrtoint ptr %producer_index to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %and270, ptr %producer_index, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !211
  call void @arm_heavy_mb() #13
  %309 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile i32, ptr %flags, align 4
  %311 = and i32 %310, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool277.not = icmp eq i32 %311, 0
  br i1 %tobool277.not, label %if.end267.cleanup293_crit_edge, label %if.end287, !prof !179

if.end267.cleanup293_crit_edge:                   ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup293

if.end287:                                        ; preds = %if.end267
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #13
  %312 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %313, i32 0, i32 3
  %314 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %tx_flags.i, align 1
  %316 = and i8 %315, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool.not.i449 = icmp eq i8 %316, 0
  br i1 %tobool.not.i449, label %if.end287.skb_tx_timestamp.exit_crit_edge, label %if.then.i450

if.end287.skb_tx_timestamp.exit_crit_edge:        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tx_timestamp.exit

if.then.i450:                                     ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #15
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #13
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i450, %if.end287.skb_tx_timestamp.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !212
  call void @arm_heavy_mb() #13
  %317 = ptrtoint ptr %producer_index to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %producer_index, align 4
  %or292 = or i32 %318, -2147483648
  %319 = call i32 @llvm.bswap.i32(i32 %or292)
  %q_dbell = getelementptr inbounds %struct.bna_tcb, ptr %11, i32 0, i32 7
  %320 = ptrtoint ptr %q_dbell to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %q_dbell, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 %319) #13, !srcloc !183
  br label %cleanup293

cleanup293:                                       ; preds = %skb_tx_timestamp.exit, %if.end267.cleanup293_crit_edge, %if.then261, %if.then216, %if.then189, %if.then152, %if.then142, %if.then127, %if.then59, %if.then42, %if.then23, %if.then11, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then23 ], [ 0, %if.then42 ], [ 0, %if.then59 ], [ 16, %if.then127 ], [ 0, %if.then142 ], [ 0, %if.then152 ], [ 0, %if.then261 ], [ 0, %skb_tx_timestamp.exit ], [ 0, %if.end267.cleanup293_crit_edge ], [ 0, %if.then189 ], [ 0, %if.then216 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_set_mac_address(ptr noundef %netdev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

is_valid_ether_addr.exit.i:                       ; preds = %entry
  %add.ptr.i.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %4 to i32
  %or.i.i.i = or i32 %1, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.end_crit_edge, label %if.end.i

is_valid_ether_addr.exit.i.if.end_crit_edge:      ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i
  %rx_info.i = getelementptr i8, ptr %netdev, i32 2688
  %5 = ptrtoint ptr %rx_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_info.i, align 128
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i.if.then_crit_edge, label %if.end2.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end2.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @bna_rx_ucast_set(ptr noundef nonnull %6, ptr noundef %sa_data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.not.i, label %if.end2.i.if.then_crit_edge, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end2.i.if.then_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %if.end2.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end2.i.if.end_crit_edge, %is_valid_ether_addr.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i17 = phi i32 [ 0, %if.then ], [ -99, %is_valid_ether_addr.exit.i.if.end_crit_edge ], [ -99, %if.end2.i.if.end_crit_edge ], [ -99, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret i32 %retval.0.i17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #13
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu1, align 4
  store i32 %new_mtu, ptr %mtu1, align 4
  %add3 = add i32 %1, 22
  %add5 = add i32 %new_mtu, 22
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 64
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %5)
  %cmp = icmp eq i16 %5, 34
  br i1 %cmp, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add3)
  %cmp10 = icmp ult i32 %add3, 4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add5)
  %cmp13 = icmp ugt i32 %add5, 4096
  %or.cond = and i1 %cmp13, %cmp10
  br i1 %or.cond, label %if.then.if.then20_crit_edge, label %lor.lhs.false

if.then.if.then20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add3)
  %cmp15 = icmp ugt i32 %add3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add5)
  %cmp18 = icmp ult i32 %add5, 4097
  %or.cond39 = and i1 %cmp18, %cmp15
  br i1 %or.cond39, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.then.if.then20_crit_edge
  %num_rx.i = getelementptr i8, ptr %netdev, i32 7812
  %10 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not.i = icmp eq i32 %11, 0
  br i1 %cmp6.not.i, label %if.then20.do.body2.i_crit_edge, label %if.then20.for.body.i_crit_edge

if.then20.for.body.i_crit_edge:                   ; preds = %if.then20
  br label %for.body.i

if.then20.do.body2.i_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then20.for.body.i_crit_edge
  %rx_id.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then20.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %rx_id.07.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 128
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bnad_destroy_rx(ptr noundef %add.ptr.i, i32 noundef %rx_id.07.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %rx_id.07.i, 1
  %14 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body2.i_crit_edge

for.inc.i.do.body2.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body2.i:                                       ; preds = %for.inc.i.do.body2.i_crit_edge, %if.then20.do.body2.i_crit_edge
  %bna_lock.i = getelementptr i8, ptr %netdev, i32 17536
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %enet.i = getelementptr i8, ptr %netdev, i32 16836
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtu.i, align 4
  %add8.i = add i32 %19, 22
  tail call void @bna_enet_mtu_set(ptr noundef %enet.i, i32 noundef %add8.i, ptr noundef null) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call4.i) #13
  %20 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp129.not.i = icmp eq i32 %21, 0
  br i1 %cmp129.not.i, label %do.body2.i.for.end23.i_crit_edge, label %do.body2.i.for.body14.i_crit_edge

do.body2.i.for.body14.i_crit_edge:                ; preds = %do.body2.i
  br label %for.body14.i

do.body2.i.for.end23.i_crit_edge:                 ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end23.i

for.body14.i:                                     ; preds = %for.inc21.i.for.body14.i_crit_edge, %do.body2.i.for.body14.i_crit_edge
  %err.012.i = phi i32 [ %err.1.i, %for.inc21.i.for.body14.i_crit_edge ], [ 0, %do.body2.i.for.body14.i_crit_edge ]
  %rx_id.110.i = phi i32 [ %inc22.i, %for.inc21.i.for.body14.i_crit_edge ], [ 0, %do.body2.i.for.body14.i_crit_edge ]
  %call16.i = tail call i32 @bnad_setup_rx(ptr noundef %add.ptr.i, i32 noundef %rx_id.110.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp ne i32 %call16.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.012.i)
  %tobool18.not.i = icmp eq i32 %err.012.i, 0
  %or.cond.i = select i1 %tobool17.not.i, i1 %tobool18.not.i, i1 false
  br i1 %or.cond.i, label %if.then19.i, label %for.body14.i.for.inc21.i_crit_edge

for.body14.i.for.inc21.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc21.i

if.then19.i:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.49, i32 noundef %rx_id.110.i) #16
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then19.i, %for.body14.i.for.inc21.i_crit_edge
  %err.1.i = phi i32 [ %call16.i, %if.then19.i ], [ %err.012.i, %for.body14.i.for.inc21.i_crit_edge ]
  %inc22.i = add nuw i32 %rx_id.110.i, 1
  %22 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rx.i, align 4
  %cmp12.i = icmp ult i32 %inc22.i, %23
  br i1 %cmp12.i, label %for.inc21.i.for.body14.i_crit_edge, label %for.inc21.i.for.end23.i_crit_edge

for.inc21.i.for.end23.i_crit_edge:                ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end23.i

for.inc21.i.for.body14.i_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.i

for.end23.i:                                      ; preds = %for.inc21.i.for.end23.i_crit_edge, %do.body2.i.for.end23.i_crit_edge
  %err.0.lcssa.i = phi i32 [ 0, %do.body2.i.for.end23.i_crit_edge ], [ %err.1.i, %for.inc21.i.for.end23.i_crit_edge ]
  %rx_info24.i = getelementptr i8, ptr %netdev, i32 2688
  %24 = ptrtoint ptr %rx_info24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_info24.i, align 128
  %tobool27.not.i = icmp ne ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.lcssa.i)
  %tobool29.not.i = icmp eq i32 %err.0.lcssa.i, 0
  %or.cond1.i = select i1 %tobool27.not.i, i1 %tobool29.not.i, i1 false
  br i1 %or.cond1.i, label %if.then30.i, label %for.end23.i.if.end22_crit_edge

for.end23.i.if.end22_crit_edge:                   ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then30.i:                                      ; preds = %for.end23.i
  %active_vlans.i.i = getelementptr i8, ptr %netdev, i32 7296
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i.i, i32 noundef 4096, i32 noundef 0) #13
  %conv123.i.i = and i32 %call.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv123.i.i)
  %cmp24.i.i = icmp ult i32 %conv123.i.i, 4096
  br i1 %cmp24.i.i, label %if.then30.i.do.body3.i.i_crit_edge, label %if.then30.i.bnad_restore_vlans.exit.i_crit_edge

if.then30.i.bnad_restore_vlans.exit.i_crit_edge:  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_restore_vlans.exit.i

if.then30.i.do.body3.i.i_crit_edge:               ; preds = %if.then30.i
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %do.body3.i.i.do.body3.i.i_crit_edge, %if.then30.i.do.body3.i.i_crit_edge
  %conv125.i.i = phi i32 [ %conv1.i.i, %do.body3.i.i.do.body3.i.i_crit_edge ], [ %conv123.i.i, %if.then30.i.do.body3.i.i_crit_edge ]
  %call7.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %26 = ptrtoint ptr %rx_info24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_info24.i, align 128
  tail call void @bna_rx_vlan_add(ptr noundef %27, i32 noundef %conv125.i.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call7.i.i) #13
  %add.i.i = add nuw nsw i32 %conv125.i.i, 1
  %call15.i.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i.i, i32 noundef 4096, i32 noundef %add.i.i) #13
  %conv1.i.i = and i32 %call15.i.i, 65535
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4096
  br i1 %cmp.i.i, label %do.body3.i.i.do.body3.i.i_crit_edge, label %do.body3.i.i.bnad_restore_vlans.exit.i_crit_edge

do.body3.i.i.bnad_restore_vlans.exit.i_crit_edge: ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_restore_vlans.exit.i

do.body3.i.i.do.body3.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i.i

bnad_restore_vlans.exit.i:                        ; preds = %do.body3.i.i.bnad_restore_vlans.exit.i_crit_edge, %if.then30.i.bnad_restore_vlans.exit.i_crit_edge
  %mcast_comp.i.i = getelementptr i8, ptr %netdev, i32 18816
  %28 = ptrtoint ptr %mcast_comp.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mcast_comp.i.i, align 4
  %wait.i.i.i = getelementptr i8, ptr %netdev, i32 18820
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %29 = ptrtoint ptr %rx_info24.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_info24.i, align 128
  %call6.i.i = tail call i32 @bna_rx_mcast_add(ptr noundef %30, ptr noundef nonnull @bnad_bcast_addr, ptr noundef nonnull @bnad_cb_rx_mcast_add) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp8.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp8.i.i, label %if.then.i.i, label %bnad_restore_vlans.exit.i.bnad_enable_default_bcast.exit.i_crit_edge

bnad_restore_vlans.exit.i.bnad_enable_default_bcast.exit.i_crit_edge: ; preds = %bnad_restore_vlans.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_enable_default_bcast.exit.i

if.then.i.i:                                      ; preds = %bnad_restore_vlans.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @wait_for_completion(ptr noundef %mcast_comp.i.i) #13
  br label %bnad_enable_default_bcast.exit.i

bnad_enable_default_bcast.exit.i:                 ; preds = %if.then.i.i, %bnad_restore_vlans.exit.i.bnad_enable_default_bcast.exit.i_crit_edge
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #13
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i, label %is_valid_ether_addr.exit.i.i, label %bnad_enable_default_bcast.exit.i.bnad_mac_addr_set_locked.exit.i_crit_edge

bnad_enable_default_bcast.exit.i.bnad_mac_addr_set_locked.exit.i_crit_edge: ; preds = %bnad_enable_default_bcast.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mac_addr_set_locked.exit.i

is_valid_ether_addr.exit.i.i:                     ; preds = %bnad_enable_default_bcast.exit.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %37 to i32
  %or.i.i.i.i = or i32 %34, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %is_valid_ether_addr.exit.i.i.bnad_mac_addr_set_locked.exit.i_crit_edge, label %if.end.i.i

is_valid_ether_addr.exit.i.i.bnad_mac_addr_set_locked.exit.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mac_addr_set_locked.exit.i

if.end.i.i:                                       ; preds = %is_valid_ether_addr.exit.i.i
  %38 = ptrtoint ptr %rx_info24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_info24.i, align 128
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i.bnad_mac_addr_set_locked.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.bnad_mac_addr_set_locked.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_mac_addr_set_locked.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i3.i = tail call i32 @bna_rx_ucast_set(ptr noundef nonnull %39, ptr noundef %32) #13
  br label %bnad_mac_addr_set_locked.exit.i

bnad_mac_addr_set_locked.exit.i:                  ; preds = %if.end2.i.i, %if.end.i.i.bnad_mac_addr_set_locked.exit.i_crit_edge, %is_valid_ether_addr.exit.i.i.bnad_mac_addr_set_locked.exit.i_crit_edge, %bnad_enable_default_bcast.exit.i.bnad_mac_addr_set_locked.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call41.i) #13
  tail call void @bnad_set_rx_mode(ptr noundef %7) #13
  br label %if.end22

if.end22:                                         ; preds = %bnad_mac_addr_set_locked.exit.i, %for.end23.i.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %mtu_comp.i = getelementptr i8, ptr %netdev, i32 19096
  %40 = ptrtoint ptr %mtu_comp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %mtu_comp.i, align 4
  %wait.i.i = getelementptr i8, ptr %netdev, i32 19100
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #13
  %bna_lock.i40 = getelementptr i8, ptr %netdev, i32 17536
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i40) #13
  %enet.i41 = getelementptr i8, ptr %netdev, i32 16836
  tail call void @bna_enet_mtu_set(ptr noundef %enet.i41, i32 noundef %add5, ptr noundef nonnull @bnad_cb_enet_mtu_set) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i40, i32 noundef %call2.i) #13
  tail call void @wait_for_completion(ptr noundef %mtu_comp.i) #13
  %mtu_comp_status.i = getelementptr i8, ptr %netdev, i32 19159
  %41 = ptrtoint ptr %mtu_comp_status.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mtu_comp_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 -16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #13
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_get_stats64(ptr noundef %netdev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  tail call void @bnad_netdev_qstats_fill(ptr noundef %add.ptr.i, ptr noundef %stats)
  %bna_stats.i = getelementptr i8, ptr %netdev, i32 19456
  %0 = ptrtoint ptr %bna_stats.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna_stats.i, align 8
  %rx_fcs_error.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 10
  %2 = ptrtoint ptr %rx_fcs_error.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %rx_fcs_error.i, align 1
  %rx_alignment_error.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 16
  %4 = ptrtoint ptr %rx_alignment_error.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %rx_alignment_error.i, align 1
  %add.i = add i64 %5, %3
  %rx_frame_length_error.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 17
  %6 = ptrtoint ptr %rx_frame_length_error.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %rx_frame_length_error.i, align 1
  %add3.i = add i64 %add.i, %7
  %rx_code_error.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 18
  %8 = ptrtoint ptr %rx_code_error.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %rx_code_error.i, align 1
  %add4.i = add i64 %add3.i, %9
  %rx_undersize.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 20
  %10 = ptrtoint ptr %rx_undersize.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %rx_undersize.i, align 1
  %add5.i = add i64 %add4.i, %11
  %rx_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %12 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add5.i, ptr %rx_errors.i, align 8
  %tx_fcs_error.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 40
  %13 = ptrtoint ptr %tx_fcs_error.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %tx_fcs_error.i, align 1
  %tx_undersize.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 43
  %15 = ptrtoint ptr %tx_undersize.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %tx_undersize.i, align 1
  %add6.i = add i64 %16, %14
  %tx_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %17 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add6.i, ptr %tx_errors.i, align 8
  %rx_drop.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 24
  %18 = ptrtoint ptr %rx_drop.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %rx_drop.i, align 1
  %rx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %20 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rx_dropped.i, align 8
  %tx_drop.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 38
  %21 = ptrtoint ptr %tx_drop.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %tx_drop.i, align 1
  %tx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %23 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_dropped.i, align 8
  %rx_multicast.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 11
  %24 = ptrtoint ptr %rx_multicast.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %rx_multicast.i, align 1
  %multicast.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %26 = ptrtoint ptr %multicast.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %multicast.i, align 8
  %tx_total_collision.i = getelementptr inbounds %struct.bna_stats, ptr %1, i32 0, i32 2, i32 0, i32 36
  %27 = ptrtoint ptr %tx_total_collision.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %tx_total_collision.i, align 1
  %collisions.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %29 = ptrtoint ptr %collisions.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %collisions.i, align 8
  %30 = load i64, ptr %rx_frame_length_error.i, align 1
  %rx_length_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %31 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rx_length_errors.i, align 8
  %32 = load i64, ptr %rx_fcs_error.i, align 1
  %rx_crc_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %33 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rx_crc_errors.i, align 8
  %34 = load i64, ptr %rx_alignment_error.i, align 1
  %rx_frame_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %35 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rx_frame_errors.i, align 8
  %rid_mask.i = getelementptr i8, ptr %netdev, i32 17256
  %36 = ptrtoint ptr %rid_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rid_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not43.i = icmp eq i32 %37, 0
  br i1 %tobool.not43.i, label %entry.bnad_netdev_hwstats_fill.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bnad_netdev_hwstats_fill.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_netdev_hwstats_fill.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bmap.044.i = phi i32 [ %shr.i, %if.end.i.for.body.i_crit_edge ], [ %37, %entry.for.body.i_crit_edge ]
  %and.i = and i32 %bmap.044.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %bna_stats.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bna_stats.i, align 8
  %frame_drops.i = getelementptr %struct.bna_stats, ptr %39, i32 0, i32 2, i32 6, i32 %i.045.i, i32 9
  %40 = ptrtoint ptr %frame_drops.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %frame_drops.i, align 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %42 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_fifo_errors.i, align 8
  %add14.i = add i64 %43, %41
  store i64 %add14.i, ptr %rx_fifo_errors.i, align 8
  br label %bnad_netdev_hwstats_fill.exit

if.end.i:                                         ; preds = %for.body.i
  %shr.i = lshr i32 %bmap.044.i, 1
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %tobool.not.i = icmp ult i32 %bmap.044.i, 2
  br i1 %tobool.not.i, label %if.end.i.bnad_netdev_hwstats_fill.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.bnad_netdev_hwstats_fill.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnad_netdev_hwstats_fill.exit

bnad_netdev_hwstats_fill.exit:                    ; preds = %if.end.i.bnad_netdev_hwstats_fill.exit_crit_edge, %if.then.i, %entry.bnad_netdev_hwstats_fill.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_info = getelementptr i8, ptr %netdev, i32 2688
  %0 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_info, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #13
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %2 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_info, align 128
  %conv9 = zext i16 %vid to i32
  tail call void @bna_rx_vlan_add(ptr noundef %3, i32 noundef %conv9) #13
  %active_vlans = getelementptr i8, ptr %netdev, i32 7296
  tail call void @_set_bit(i32 noundef %conv9, ptr noundef %active_vlans) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_info = getelementptr i8, ptr %netdev, i32 2688
  %0 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_info, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conf_mutex = getelementptr i8, ptr %netdev, i32 17376
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #13
  %bna_lock = getelementptr i8, ptr %netdev, i32 17536
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %conv6 = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %netdev, i32 7296
  tail call void @_clear_bit(i32 noundef %conv6, ptr noundef %active_vlans) #13
  %2 = ptrtoint ptr %rx_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_info, align 128
  tail call void @bna_rx_vlan_del(ptr noundef %3, i32 noundef %conv6) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call3) #13
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_netpoll(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cfg_flags = getelementptr i8, ptr %netdev, i32 17336
  %0 = ptrtoint ptr %cfg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_rx = getelementptr i8, ptr %netdev, i32 7812
  %2 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp46.not = icmp eq i32 %3, 0
  br i1 %cmp46.not, label %for.cond.preheader.if.end28_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end28_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_rxp_per_rx = getelementptr i8, ptr %netdev, i32 7820
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fn_int_mask = getelementptr i8, ptr %netdev, i32 8176
  %4 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fn_int_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !215
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn_int_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #13, !srcloc !183
  %pcidev = getelementptr i8, ptr %netdev, i32 17344
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call6 = tail call i32 @bnad_isr(i32 noundef %12, ptr noundef %netdev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !216
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn_int_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #13, !srcloc !183
  br label %if.end28

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.inc25.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.047
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 128
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %for.body.for.inc25_crit_edge, label %for.cond16.preheader

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc25

for.cond16.preheader:                             ; preds = %for.body
  %17 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rxp_per_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1744.not = icmp eq i32 %18, 0
  br i1 %cmp1744.not, label %for.cond16.preheader.for.inc25_crit_edge, label %for.cond16.preheader.for.body18_crit_edge

for.cond16.preheader.for.body18_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body18

for.cond16.preheader.for.inc25_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc25

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.cond16.preheader.for.body18_crit_edge
  %j.045 = phi i32 [ %inc, %for.inc.for.body18_crit_edge ], [ 0, %for.cond16.preheader.for.body18_crit_edge ]
  %arrayidx20 = getelementptr %struct.bnad, ptr %add.ptr.i, i32 0, i32 4, i32 %i.047, i32 1, i32 %j.045
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20, align 8
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %for.body18.for.inc_crit_edge, label %if.then22

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then22:                                        ; preds = %for.body18
  %ctrl.i = getelementptr inbounds %struct.bna_ccb, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl.i, align 4
  %napi1.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %22, i32 0, i32 3
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi1.i) #13
  br i1 %call.i, label %if.then.i, label %if.then22.for.inc_crit_edge, !prof !173

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi1.i) #13
  %rx_schedule.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %rx_schedule.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_schedule.i, align 8
  %inc.i = add i64 %24, 1
  store i64 %inc.i, ptr %rx_schedule.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then22.for.inc_crit_edge, %for.body18.for.inc_crit_edge
  %inc = add nuw i32 %j.045, 1
  %25 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rxp_per_rx, align 4
  %cmp17 = icmp ult i32 %inc, %26
  br i1 %cmp17, label %for.inc.for.body18_crit_edge, label %for.inc.for.inc25_crit_edge

for.inc.for.inc25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc25

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18

for.inc25:                                        ; preds = %for.inc.for.inc25_crit_edge, %for.cond16.preheader.for.inc25_crit_edge, %for.body.for.inc25_crit_edge
  %inc26 = add nuw i32 %i.047, 1
  %27 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_rx, align 4
  %cmp = icmp ult i32 %inc26, %28
  br i1 %cmp, label %for.inc25.for.body_crit_edge, label %for.inc25.if.end28_crit_edge

for.inc25.if.end28_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end28:                                         ; preds = %for.inc25.if.end28_crit_edge, %if.then, %for.cond.preheader.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_set_features(ptr noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %bna_lock = getelementptr i8, ptr %dev, i32 17536
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %and8 = and i64 %features, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  %rx_info11 = getelementptr i8, ptr %dev, i32 2688
  %4 = ptrtoint ptr %rx_info11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_info11, align 128
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bna_rx_vlan_strip_enable(ptr noundef %5) #13
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bna_rx_vlan_strip_disable(ptr noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call5) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_mtu_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_pause_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_stats_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -15372
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %run_flags = getelementptr i8, ptr %t, i32 -336
  %4 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %run_flags, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body2:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %bna_lock = getelementptr i8, ptr %t, i32 -140
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %bna = getelementptr i8, ptr %t, i32 -9588
  tail call void @bna_hw_stats_get(ptr noundef %bna) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_hw_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_disable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_enet_disabled(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 128
  tail call void @netif_carrier_off(ptr noundef %1) #13
  %enet_comp = getelementptr inbounds %struct.bnad, ptr %arg, i32 0, i32 37, i32 6
  tail call void @complete(ptr noundef %enet_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnad_cb_enet_mtu_set(ptr noundef %bnad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu_comp_status = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 15
  %0 = ptrtoint ptr %mtu_comp_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mtu_comp_status, align 1
  %mtu_comp = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 37, i32 7
  tail call void @complete(ptr noundef %mtu_comp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_vlan_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %run_flags = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %run_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge, !prof !173

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %bna = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19
  %regs = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !213
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end.cleanup.sink.split_crit_edge, label %do.body14

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body14:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  tail call void @arm_heavy_mb() #13
  %bits = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 3
  %7 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %6, %neg
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #13, !srcloc !183
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits, align 4
  %error_status_bits = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 3, i32 2
  %14 = ptrtoint ptr %error_status_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_status_bits, align 4
  %and40148 = or i32 %15, %13
  %or = and i32 %and40148, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool41.not = icmp eq i32 %or, 0
  br i1 %tobool41.not, label %do.body14.if.end44_crit_edge, label %if.then42

do.body14.if.end44_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bna_mbox_handler(ptr noundef %bna, i32 noundef %6) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %do.body14.if.end44_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  %and46 = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.cleanup_crit_edge, label %for.cond.preheader

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end44
  %num_tx = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 6
  %16 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp50153.not = icmp eq i32 %17, 0
  br i1 %cmp50153.not, label %for.cond.preheader.for.cond72.preheader_crit_edge, label %for.cond52.preheader.lr.ph

for.cond.preheader.for.cond72.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond72.preheader

for.cond52.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %num_txq_per_tx = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 8
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.inc69.for.cond52.preheader_crit_edge, %for.cond52.preheader.lr.ph
  %i.0154 = phi i32 [ 0, %for.cond52.preheader.lr.ph ], [ %inc70, %for.inc69.for.cond52.preheader_crit_edge ]
  %18 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_txq_per_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp53151.not = icmp eq i32 %19, 0
  br i1 %cmp53151.not, label %for.cond52.preheader.for.inc69_crit_edge, label %for.cond52.preheader.for.body55_crit_edge

for.cond52.preheader.for.body55_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body55

for.cond52.preheader.for.inc69_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69

for.cond72.preheader:                             ; preds = %for.inc69.for.cond72.preheader_crit_edge, %for.cond.preheader.for.cond72.preheader_crit_edge
  %num_rx = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 7
  %20 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp73158.not = icmp eq i32 %21, 0
  br i1 %cmp73158.not, label %for.cond72.preheader.cleanup_crit_edge, label %for.body75.lr.ph

for.cond72.preheader.cleanup_crit_edge:           ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body75.lr.ph:                                 ; preds = %for.cond72.preheader
  %num_rxp_per_rx = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 9
  br label %for.body75

for.body55:                                       ; preds = %for.inc.for.body55_crit_edge, %for.cond52.preheader.for.body55_crit_edge
  %j.0152 = phi i32 [ %inc, %for.inc.for.body55_crit_edge ], [ 0, %for.cond52.preheader.for.body55_crit_edge ]
  %arrayidx57 = getelementptr %struct.bnad, ptr %data, i32 0, i32 3, i32 %i.0154, i32 1, i32 %j.0152
  %22 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %23, null
  br i1 %tobool58.not, label %for.body55.for.inc_crit_edge, label %land.lhs.true

for.body55.for.inc_crit_edge:                     ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body55
  %flags59 = getelementptr inbounds %struct.bna_tcb, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags59, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool61.not = icmp eq i32 %26, 0
  br i1 %tobool61.not, label %land.lhs.true.for.inc_crit_edge, label %if.then62

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bnad_tx_complete(ptr noundef %data, ptr noundef nonnull %23)
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %land.lhs.true.for.inc_crit_edge, %for.body55.for.inc_crit_edge
  %inc = add nuw i32 %j.0152, 1
  %27 = ptrtoint ptr %num_txq_per_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_txq_per_tx, align 8
  %cmp53 = icmp ult i32 %inc, %28
  br i1 %cmp53, label %for.inc.for.body55_crit_edge, label %for.inc.for.inc69_crit_edge

for.inc.for.inc69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69

for.inc.for.body55_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body55

for.inc69:                                        ; preds = %for.inc.for.inc69_crit_edge, %for.cond52.preheader.for.inc69_crit_edge
  %inc70 = add nuw i32 %i.0154, 1
  %29 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_tx, align 128
  %cmp50 = icmp ult i32 %inc70, %30
  br i1 %cmp50, label %for.inc69.for.cond52.preheader_crit_edge, label %for.inc69.for.cond72.preheader_crit_edge

for.inc69.for.cond72.preheader_crit_edge:         ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond72.preheader

for.inc69.for.cond52.preheader_crit_edge:         ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond52.preheader

for.body75:                                       ; preds = %for.inc94.for.body75_crit_edge, %for.body75.lr.ph
  %i.1159 = phi i32 [ 0, %for.body75.lr.ph ], [ %inc95, %for.inc94.for.body75_crit_edge ]
  %arrayidx77 = getelementptr %struct.bnad, ptr %data, i32 0, i32 4, i32 %i.1159
  %31 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx77, align 128
  %tobool78.not = icmp eq ptr %32, null
  br i1 %tobool78.not, label %for.body75.for.inc94_crit_edge, label %for.cond81.preheader

for.body75.for.inc94_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc94

for.cond81.preheader:                             ; preds = %for.body75
  %33 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_rxp_per_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp82156.not = icmp eq i32 %34, 0
  br i1 %cmp82156.not, label %for.cond81.preheader.for.inc94_crit_edge, label %for.cond81.preheader.for.body84_crit_edge

for.cond81.preheader.for.body84_crit_edge:        ; preds = %for.cond81.preheader
  br label %for.body84

for.cond81.preheader.for.inc94_crit_edge:         ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc94

for.body84:                                       ; preds = %for.inc91.for.body84_crit_edge, %for.cond81.preheader.for.body84_crit_edge
  %j.1157 = phi i32 [ %inc92, %for.inc91.for.body84_crit_edge ], [ 0, %for.cond81.preheader.for.body84_crit_edge ]
  %arrayidx86 = getelementptr %struct.bnad, ptr %data, i32 0, i32 4, i32 %i.1159, i32 1, i32 %j.1157
  %35 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx86, align 8
  %tobool87.not = icmp eq ptr %36, null
  br i1 %tobool87.not, label %for.body84.for.inc91_crit_edge, label %if.then88

for.body84.for.inc91_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc91

if.then88:                                        ; preds = %for.body84
  %ctrl.i = getelementptr inbounds %struct.bna_ccb, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl.i, align 4
  %napi1.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %38, i32 0, i32 3
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi1.i) #13
  br i1 %call.i, label %if.then.i, label %if.then88.for.inc91_crit_edge, !prof !173

if.then88.for.inc91_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc91

if.then.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi1.i) #13
  %rx_schedule.i = getelementptr inbounds %struct.bnad_rx_ctrl, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %rx_schedule.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_schedule.i, align 8
  %inc.i = add i64 %40, 1
  store i64 %inc.i, ptr %rx_schedule.i, align 8
  br label %for.inc91

for.inc91:                                        ; preds = %if.then.i, %if.then88.for.inc91_crit_edge, %for.body84.for.inc91_crit_edge
  %inc92 = add nuw i32 %j.1157, 1
  %41 = ptrtoint ptr %num_rxp_per_rx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_rxp_per_rx, align 4
  %cmp82 = icmp ult i32 %inc92, %42
  br i1 %cmp82, label %for.inc91.for.body84_crit_edge, label %for.inc91.for.inc94_crit_edge

for.inc91.for.inc94_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc94

for.inc91.for.body84_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body84

for.inc94:                                        ; preds = %for.inc91.for.inc94_crit_edge, %for.cond81.preheader.for.inc94_crit_edge, %for.body75.for.inc94_crit_edge
  %inc95 = add nuw i32 %i.1159, 1
  %43 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_rx, align 4
  %cmp73 = icmp ult i32 %inc95, %44
  br i1 %cmp73, label %for.inc94.for.body75_crit_edge, label %for.inc94.cleanup_crit_edge

for.inc94.cleanup_crit_edge:                      ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc94.for.body75_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc94.cleanup_crit_edge, %for.cond72.preheader.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end44.cleanup_crit_edge ], [ 1, %for.cond72.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 1, %for.inc94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_mbox_handler(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_vlan_strip_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_rx_vlan_strip_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_msix_mbox_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #13
  %run_flags = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 21
  %0 = ptrtoint ptr %run_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %run_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !173

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %bna = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19
  %regs = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !213
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end.if.end21_crit_edge, label %do.body14

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !220
  tail call void @arm_heavy_mb() #13
  %bits = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 3
  %7 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %6, %neg
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #13, !srcloc !183
  br label %if.end21

if.end21:                                         ; preds = %do.body14, %if.end.if.end21_crit_edge
  %bits23 = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 3
  %12 = ptrtoint ptr %bits23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits23, align 4
  %error_status_bits = getelementptr inbounds %struct.bnad, ptr %data, i32 0, i32 19, i32 3, i32 2
  %14 = ptrtoint ptr %error_status_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_status_bits, align 4
  %and2850 = or i32 %15, %13
  %or = and i32 %and2850, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool29.not = icmp eq i32 %or, 0
  br i1 %tobool29.not, label %if.end21.cleanup_crit_edge, label %if.then30

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bna_mbox_handler(ptr noundef %bna, i32 noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call2) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_hb_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_iocpf_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_iocpf_sem_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_ioceth_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_ioceth_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_auto_recover(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !52, !53, !55, !56, !58, !60, !61, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !137, !139, !141, !142, !144, !146, !148, !149, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__param_bnad_msix_disable, !1, !"__param_bnad_msix_disable", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_bnad_msix_disabletype595, !1, !"__UNIQUE_ID_bnad_msix_disabletype595", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bnad_msix_disable596, !4, !"__UNIQUE_ID_bnad_msix_disable596", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 34, i32 1}
!5 = !{ptr @__param_bnad_ioc_auto_recover, !6, !"__param_bnad_ioc_auto_recover", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 37, i32 1}
!7 = !{ptr @__UNIQUE_ID_bnad_ioc_auto_recovertype597, !6, !"__UNIQUE_ID_bnad_ioc_auto_recovertype597", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bnad_ioc_auto_recover598, !9, !"__UNIQUE_ID_bnad_ioc_auto_recover598", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 38, i32 1}
!10 = !{ptr @__param_bna_debugfs_enable, !11, !"__param_bna_debugfs_enable", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 41, i32 1}
!12 = !{ptr @__UNIQUE_ID_bna_debugfs_enabletype599, !11, !"__UNIQUE_ID_bna_debugfs_enabletype599", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_bna_debugfs_enable600, !14, !"__UNIQUE_ID_bna_debugfs_enable600", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 42, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 947, i32 30}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 983, i32 30}
!19 = !{ptr @bnad_dim_timer_start.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 1799, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bnad_setup_tx.tx_cbfn, !23, !"tx_cbfn", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 1950, i32 40}
!24 = !{ptr @bnad_setup_tx.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 1996, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bnad_setup_tx.__key.4, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bnad_setup_rx.rx_cbfn, !30, !"rx_cbfn", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 2198, i32 40}
!31 = !{ptr @bnad_setup_rx.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 2253, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_bna__603_3845_bnad_module_init6, !35, !"__initcall__kmod_bna__603_3845_bnad_module_init6", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3845, i32 1}
!36 = !{ptr @__exitcall_bnad_module_exit, !37, !"__exitcall_bnad_module_exit", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3846, i32 1}
!38 = !{ptr @__UNIQUE_ID_author604, !39, !"__UNIQUE_ID_author604", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3848, i32 1}
!40 = !{ptr @__UNIQUE_ID_file605, !41, !"__UNIQUE_ID_file605", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3849, i32 1}
!42 = !{ptr @__UNIQUE_ID_license606, !41, !"__UNIQUE_ID_license606", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_description607, !44, !"__UNIQUE_ID_description607", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3850, i32 1}
!45 = !{ptr @__UNIQUE_ID_firmware608, !46, !"__UNIQUE_ID_firmware608", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3851, i32 1}
!47 = !{ptr @__UNIQUE_ID_firmware609, !48, !"__UNIQUE_ID_firmware609", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3852, i32 1}
!49 = !{ptr @bnad_msix_disable, !50, !"bnad_msix_disable", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 32, i32 13}
!51 = !{ptr @__param_str_bnad_msix_disable, !1, !"__param_str_bnad_msix_disable", i1 false, i1 false}
!52 = !{ptr @__param_str_bnad_ioc_auto_recover, !6, !"__param_str_bnad_ioc_auto_recover", i1 false, i1 false}
!53 = !{ptr @bnad_ioc_auto_recover, !54, !"bnad_ioc_auto_recover", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 36, i32 13}
!55 = !{ptr @__param_str_bna_debugfs_enable, !11, !"__param_str_bna_debugfs_enable", i1 false, i1 false}
!56 = !{ptr @bna_debugfs_enable, !57, !"bna_debugfs_enable", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 40, i32 13}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 1538, i32 34}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!65 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!71 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/mm.h", i32 717, i32 2}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 1589, i32 42}
!75 = !{ptr @bnad_bcast_addr, !76, !"bnad_bcast_addr", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 50, i32 17}
!77 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3816, i32 10}
!79 = !{ptr @bnad_pci_driver, !80, !"bnad_pci_driver", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3815, i32 26}
!81 = !{ptr @bnad_pci_id_table, !82, !"bnad_pci_id_table", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3797, i32 35}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3590, i32 3}
!85 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bnad_pci_probe._entry, !84, !"_entry", i1 false, i1 false}
!90 = !{ptr @bnad_pci_probe._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @bnad_pci_probe.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3662, i32 2}
!93 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @bnad_pci_probe.__key.22, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3663, i32 2}
!96 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @bnad_pci_probe.__key.24, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3664, i32 2}
!99 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @bnad_pci_probe.__key.26, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3665, i32 2}
!102 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3675, i32 3}
!105 = !{ptr @bnad_pci_probe._entry.28, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @bnad_pci_probe._entry_ptr.30, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3717, i32 3}
!109 = !{ptr @bnad_pci_probe._entry.31, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @bnad_pci_probe._entry_ptr.33, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 27, i32 8}
!113 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @bnad_fwimg_mutex, !112, !"bnad_fwimg_mutex", i1 false, i1 false}
!115 = !{ptr @bnad_lock_init.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3533, i32 2}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @bnad_lock_init.__key.37, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3534, i32 2}
!120 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @bna_id, !122, !"bna_id", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 49, i32 17}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3472, i32 3}
!125 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @bnad_init._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @bnad_init._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3475, i32 2}
!130 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @bnad_init._entry.41, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @bnad_init._entry_ptr.44, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3497, i32 25}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3498, i32 17}
!137 = !{ptr @bnad_netdev_ops, !138, !"bnad_netdev_ops", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3406, i32 36}
!139 = !{ptr @bnad_stats_timer_start.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 1817, i32 3}
!141 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!144 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 2125, i32 23}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 2656, i32 3}
!148 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @bnad_enable_msix._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @bnad_enable_msix._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 2680, i32 2}
!154 = !{ptr @bnad_enable_msix._entry.53, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @bnad_enable_msix._entry_ptr.55, !153, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"bnad_rxqs_per_cq", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 48, i32 12}
!158 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/brocade/bna/bnad.c", i32 3831, i32 3}
!160 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bnad_module_init._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @bnad_module_init._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2159341171, i64 2159341676, i64 2159341208, i64 2159341264, i64 2159341298, i64 2159341322, i64 2159341363, i64 2159341384, i64 2159341412, i64 2159341446}
!175 = !{i64 2159342938, i64 2159343443, i64 2159342975, i64 2159343031, i64 2159343065, i64 2159343089, i64 2159343130, i64 2159343151, i64 2159343179, i64 2159343213}
!176 = !{i64 2159345833}
!177 = !{i32 0, i32 33}
!178 = !{i64 2159321622, i64 2159322126, i64 2159321659, i64 2159321715, i64 2159321749, i64 2159321773, i64 2159321814, i64 2159321835, i64 2159321863, i64 2159321897}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{!"auto-init"}
!181 = !{i64 2159352010, i64 2159352515, i64 2159352047, i64 2159352103, i64 2159352137, i64 2159352161, i64 2159352202, i64 2159352223, i64 2159352251, i64 2159352285}
!182 = !{i64 2159320280}
!183 = !{i64 6619666}
!184 = !{i64 2159320767}
!185 = !{i64 2159317518}
!186 = !{i64 2159318226, i64 2159318730, i64 2159318263, i64 2159318319, i64 2159318353, i64 2159318377, i64 2159318418, i64 2159318439, i64 2159318467, i64 2159318501}
!187 = !{i64 2159326646}
!188 = !{i64 2159327106}
!189 = !{i64 2153900180, i64 2153900664, i64 2153900217, i64 2153900273, i64 2153900307, i64 2153900331, i64 2153900372, i64 2153900393, i64 2153900421, i64 2153900455}
!190 = !{i64 2148254825, i64 2148254851, i64 2148254880, i64 2148254914, i64 2148254945, i64 2148254968}
!191 = !{i64 2149131612, i64 2149131617, i64 2149131630, i64 2149131674, i64 2149131708, i64 2149131729}
!192 = !{i64 2153880268, i64 2153880751, i64 2153880305, i64 2153880361, i64 2153880395, i64 2153880419, i64 2153880460, i64 2153880481, i64 2153880509, i64 2153880543}
!193 = !{i64 2148343277}
!194 = !{i64 2148258010, i64 2148258042, i64 2148258071, i64 2148258105, i64 2148258136, i64 2148258159}
!195 = !{i64 2148343506}
!196 = !{i64 2159324957}
!197 = !{i64 2159325417}
!198 = !{i64 752316}
!199 = !{i64 2159328982}
!200 = !{i64 2159329953}
!201 = !{i64 2159334853}
!202 = !{i64 2159371159}
!203 = !{i64 2148340236}
!204 = !{i64 2148255545, i64 2148255577, i64 2148255606, i64 2148255640, i64 2148255671, i64 2148255694}
!205 = !{i64 2148340465}
!206 = !{i64 2159400732}
!207 = !{i64 2159401219}
!208 = !{i64 2159401523}
!209 = !{i64 6978466, i64 6978507, i64 6978552}
!210 = !{i64 6977364}
!211 = !{i64 2159403853}
!212 = !{i64 2159404315}
!213 = !{i64 6620084}
!214 = !{i64 2159413148}
!215 = !{i64 2159413384}
!216 = !{i64 2159413899}
!217 = !{i64 2159338676}
!218 = !{i64 2159338962}
!219 = !{i64 2159336486}
!220 = !{i64 2159336772}
