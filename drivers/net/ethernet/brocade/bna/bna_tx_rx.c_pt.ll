; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bna_tx_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bna_tx_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfi_enet_rsp = type { %struct.bfi_msgq_mhdr, i8, i8, i16 }
%struct.bfi_msgq_mhdr = type { i8, i8, i16, i16, i8, i8 }
%struct.bna_rxf = type { ptr, %struct.bfa_msgq_cmd_entry, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.bna_mac, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i8, i32, [128 x i32], i8, i32, i32, i32, %struct.bna_rss_config, ptr, i32, ptr }
%struct.bfa_msgq_cmd_entry = type { %struct.list_head, ptr, ptr, i32, ptr }
%union.anon = type { %struct.bfi_enet_rx_vlan_req }
%struct.bfi_enet_rx_vlan_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [16 x i32] }
%struct.bna_mac = type { %struct.list_head, [6 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.bna_rss_config = type { i32, i8, [10 x i32] }
%struct.bfi_enet_mcast_add_rsp = type { %struct.bfi_msgq_mhdr, i8, i8, i16, i16, [2 x i8] }
%struct.bna_mcam_handle = type { %struct.list_head, i32, i32 }
%struct.bna_rx = type { %struct.list_head, i32, i32, ptr, i32, i32, %struct.list_head, %struct.bna_hds_config, %struct.bna_rxf, i32, %struct.bfa_msgq_cmd_entry, %union.anon.0, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bna_hds_config = type { i32, i32 }
%union.anon.0 = type { %struct.bfi_enet_rx_cfg_req }
%struct.bfi_enet_rx_cfg_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [16 x %struct.anon], %struct.bfi_enet_ib_cfg, %struct.bfi_enet_rx_cfg }
%struct.anon = type { %struct.bfi_enet_rxq, %struct.bfi_enet_rxq, %struct.bfi_enet_cq, %struct.bfi_enet_ib }
%struct.bfi_enet_rxq = type { %struct.bfi_enet_q, i16, i16 }
%struct.bfi_enet_q = type { %union.bfi_addr_u, %union.bfi_addr_u, i16, i16 }
%union.bfi_addr_u = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.bfi_enet_cq = type { %struct.bfi_enet_q }
%struct.bfi_enet_ib = type { %union.bfi_addr_u, %union.anon.2, i16 }
%union.anon.2 = type { i16 }
%struct.bfi_enet_ib_cfg = type { i8, i8, i8, i8, i8, [3 x i8], i32, i32, i8, [3 x i8] }
%struct.bfi_enet_rx_cfg = type { i8, [1 x i8], i16, %struct.anon.3, i8, i8, i8, i8 }
%struct.anon.3 = type { i8, i8, i8, i8 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon.9] }
%struct.anon.9 = type { ptr, ptr }
%struct.bfa_iocpf = type { ptr, ptr, i8, i8, i32 }
%struct.bna_attr = type { i8, i32, i32, i32, i32, i32 }
%struct.bfi_enet_attr_req = type { %struct.bfi_msgq_mhdr }
%struct.bfa_cee = type { ptr, i8, i8, i8, i32, i32, i32, %struct.bfa_cee_cbfn, %struct.bfa_ioc_notify, ptr, ptr, %struct.bfa_dma, %struct.bfa_dma, ptr, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd }
%struct.bfa_cee_cbfn = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfa_ioc_notify = type { %struct.list_head, ptr, ptr }
%struct.bfa_mbox_cmd = type { %struct.list_head, ptr, ptr, [8 x i32] }
%struct.bfa_flash = type { ptr, i32, i8, [3 x i8], i32, i32, i32, i32, ptr, i64, ptr, ptr, ptr, i32, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify }
%struct.bfa_msgq = type { %struct.bfa_msgq_cmdq, %struct.bfa_msgq_rspq, %struct.bfa_wc, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify, ptr }
%struct.bfa_msgq_cmdq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i16, i32, i32, %struct.bfa_mbox_cmd, %struct.list_head, ptr }
%struct.bfa_msgq_rspq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i32, [34 x %struct.anon.12], ptr }
%struct.anon.12 = type { ptr, ptr }
%struct.bfa_wc = type { ptr, ptr, i32 }
%struct.bna_ethport = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.13, ptr }
%union.anon.13 = type { %struct.bfi_enet_enable_req }
%struct.bfi_enet_enable_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8] }
%struct.bna_enet = type { ptr, i32, i32, %struct.bna_pause_config, i32, ptr, ptr, ptr, %struct.bfa_wc, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_set_pause_req, ptr }
%struct.bna_pause_config = type { i32, i32 }
%struct.bfi_enet_set_pause_req = type { %struct.bfi_msgq_mhdr, [2 x i8], i8, i8 }
%struct.bna_stats_mod = type { i8, i8, i8, %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req }
%struct.bfi_enet_stats_req = type { %struct.bfi_msgq_mhdr, i16, [2 x i8], i32, i32, %union.bfi_addr_u }
%struct.bna_tx_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.bfa_wc, i32, i8, i32, i32, i32, i32, i32, ptr }
%struct.bna_rx_mod = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, i32, i32, ptr, %struct.bfa_wc, [8 x [2 x i32]], i32 }
%struct.bna_ucam_mod = type { ptr, %struct.list_head, %struct.list_head, ptr }
%struct.bna_mcam_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.bna_res_info = type { i32, %union.bna_res_u }
%union.bna_res_u = type { %struct.bna_mem_info }
%struct.bna_mem_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.bna_mem_descr = type { i32, ptr, %struct.bna_dma_addr }
%struct.bna_rxp = type { %struct.list_head, i32, %union.bna_rxq_u, %struct.bna_cq, ptr, i32, i32 }
%union.bna_rxq_u = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr }
%struct.bna_cq = type { %struct.bna_qpt, ptr, %struct.bna_ib, ptr }
%struct.bna_qpt = type { %struct.bna_dma_addr, ptr, i32, i32 }
%struct.bna_ib = type { %struct.bna_dma_addr, ptr, %struct.bna_ib_dbell, i32, i32, i8, i32, i32 }
%struct.bna_ib_dbell = type { ptr, i32 }
%struct.bna_rxq = type { %struct.list_head, i32, i32, i32, i32, %struct.bna_qpt, ptr, ptr, ptr, i32, i64, i64, i64, i64, i64 }
%struct.anon.4 = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.bna_ccb = type { ptr, ptr, i32, ptr, i32, ptr, [2 x ptr], ptr, %struct.bna_pkt_rate, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, [16 x i8] }
%struct.bna_pkt_rate = type { i32, i32 }
%struct.bna_rcb = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bna_rx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bna_rss_config, %struct.bna_hds_config, i32 }
%struct.bna_rx_event_cbfn = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bna_intr_descr = type { i32 }
%struct.bna_tx = type { %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.list_head, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.14, ptr, ptr }
%union.anon.14 = type { %struct.bfi_enet_tx_cfg_req }
%struct.bfi_enet_tx_cfg_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8], [8 x %struct.anon.15], %struct.bfi_enet_ib_cfg, %struct.bfi_enet_tx_cfg }
%struct.anon.15 = type { %struct.bfi_enet_txq, %struct.bfi_enet_ib }
%struct.bfi_enet_txq = type { %struct.bfi_enet_q, i8, [3 x i8] }
%struct.bfi_enet_tx_cfg = type { i8, i8, i16, i8, i8, i8, [1 x i8] }
%struct.anon.16 = type { i32, i32, i8, [3 x i8] }
%struct.bna_txq = type { %struct.list_head, i8, %struct.bna_qpt, ptr, %struct.bna_ib, ptr, i32, i64, i64 }
%struct.bna_tcb = type { ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, [16 x i8] }
%struct.bna_tx_config = type { i32, i32, i32, i32 }
%struct.bna_tx_event_cbfn = type { ptr, ptr, ptr, ptr, ptr }

@bna_napi_dim_vector = dso_local constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 12, i32 12], [2 x i32] [i32 6, i32 10], [2 x i32] [i32 5, i32 10], [2 x i32] [i32 4, i32 8], [2 x i32] [i32 3, i32 6], [2 x i32] [i32 3, i32 6], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 1, i32 2]], [32 x i8] zeroinitializer }, align 32
@bna_rxf_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SM Assertion failure: %s: %d: event = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bna_rxf_sm_stopped\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/brocade/bna/bna_tx_rx.c\00", [51 x i8] zeroinitializer }, align 32
@bna_rxf_sm_stopped._entry_ptr = internal global ptr @bna_rxf_sm_stopped._entry, section ".printk_index", align 4
@bna_rxf_sm_cfg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_rxf_sm_cfg_wait\00", [44 x i8] zeroinitializer }, align 32
@bna_rxf_sm_cfg_wait._entry_ptr = internal global ptr @bna_rxf_sm_cfg_wait._entry, section ".printk_index", align 4
@bna_rxf_sm_last_resp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bna_rxf_sm_last_resp_wait\00", [38 x i8] zeroinitializer }, align 32
@bna_rxf_sm_last_resp_wait._entry_ptr = internal global ptr @bna_rxf_sm_last_resp_wait._entry, section ".printk_index", align 4
@bna_rxf_sm_started._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bna_rxf_sm_started\00", [45 x i8] zeroinitializer }, align 32
@bna_rxf_sm_started._entry_ptr = internal global ptr @bna_rxf_sm_started._entry, section ".printk_index", align 4
@bna_rx_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bna_rx_sm_stopped\00", [46 x i8] zeroinitializer }, align 32
@bna_rx_sm_stopped._entry_ptr = internal global ptr @bna_rx_sm_stopped._entry, section ".printk_index", align 4
@bna_rx_sm_start_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bna_rx_sm_start_wait\00", [43 x i8] zeroinitializer }, align 32
@bna_rx_sm_start_wait._entry_ptr = internal global ptr @bna_rx_sm_start_wait._entry, section ".printk_index", align 4
@bna_rx_sm_start_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bna_rx_sm_start_stop_wait\00", [38 x i8] zeroinitializer }, align 32
@bna_rx_sm_start_stop_wait._entry_ptr = internal global ptr @bna_rx_sm_start_stop_wait._entry, section ".printk_index", align 4
@bna_rx_sm_rxf_start_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bna_rx_sm_rxf_start_wait\00", [39 x i8] zeroinitializer }, align 32
@bna_rx_sm_rxf_start_wait._entry_ptr = internal global ptr @bna_rx_sm_rxf_start_wait._entry, section ".printk_index", align 4
@bna_rx_sm_rxf_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bna_rx_sm_rxf_stop_wait\00", [40 x i8] zeroinitializer }, align 32
@bna_rx_sm_rxf_stop_wait._entry_ptr = internal global ptr @bna_rx_sm_rxf_stop_wait._entry, section ".printk_index", align 4
@bna_rx_sm_cleanup_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bna_rx_sm_cleanup_wait\00", [41 x i8] zeroinitializer }, align 32
@bna_rx_sm_cleanup_wait._entry_ptr = internal global ptr @bna_rx_sm_cleanup_wait._entry, section ".printk_index", align 4
@bna_rx_sm_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_rx_sm_stop_wait\00", [44 x i8] zeroinitializer }, align 32
@bna_rx_sm_stop_wait._entry_ptr = internal global ptr @bna_rx_sm_stop_wait._entry, section ".printk_index", align 4
@bna_rx_sm_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 1581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bna_rx_sm_failed\00", [47 x i8] zeroinitializer }, align 32
@bna_rx_sm_failed._entry_ptr = internal global ptr @bna_rx_sm_failed._entry, section ".printk_index", align 4
@bna_rx_sm_quiesce_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bna_rx_sm_quiesce_wait\00", [41 x i8] zeroinitializer }, align 32
@bna_rx_sm_quiesce_wait._entry_ptr = internal global ptr @bna_rx_sm_quiesce_wait._entry, section ".printk_index", align 4
@bna_rx_sm_started._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bna_rx_sm_started\00", [46 x i8] zeroinitializer }, align 32
@bna_rx_sm_started._entry_ptr = internal global ptr @bna_rx_sm_started._entry, section ".printk_index", align 4
@bna_tx_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 2826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bna_tx_sm_stopped\00", [46 x i8] zeroinitializer }, align 32
@bna_tx_sm_stopped._entry_ptr = internal global ptr @bna_tx_sm_stopped._entry, section ".printk_index", align 4
@bna_tx_sm_start_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 2863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bna_tx_sm_start_wait\00", [43 x i8] zeroinitializer }, align 32
@bna_tx_sm_start_wait._entry_ptr = internal global ptr @bna_tx_sm_start_wait._entry, section ".printk_index", align 4
@bna_tx_sm_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 2934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bna_tx_sm_stop_wait\00", [44 x i8] zeroinitializer }, align 32
@bna_tx_sm_stop_wait._entry_ptr = internal global ptr @bna_tx_sm_stop_wait._entry, section ".printk_index", align 4
@bna_tx_sm_cleanup_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 2957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bna_tx_sm_cleanup_wait\00", [41 x i8] zeroinitializer }, align 32
@bna_tx_sm_cleanup_wait._entry_ptr = internal global ptr @bna_tx_sm_cleanup_wait._entry, section ".printk_index", align 4
@bna_tx_sm_prio_stop_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 2990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bna_tx_sm_prio_stop_wait\00", [39 x i8] zeroinitializer }, align 32
@bna_tx_sm_prio_stop_wait._entry_ptr = internal global ptr @bna_tx_sm_prio_stop_wait._entry, section ".printk_index", align 4
@bna_tx_sm_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 3051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bna_tx_sm_failed\00", [47 x i8] zeroinitializer }, align 32
@bna_tx_sm_failed._entry_ptr = internal global ptr @bna_tx_sm_failed._entry, section ".printk_index", align 4
@bna_tx_sm_quiesce_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.22, ptr @.str.2, i32 3081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bna_tx_sm_quiesce_wait\00", [41 x i8] zeroinitializer }, align 32
@bna_tx_sm_quiesce_wait._entry_ptr = internal global ptr @bna_tx_sm_quiesce_wait._entry, section ".printk_index", align 4
@bna_tx_sm_prio_cleanup_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 3021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bna_tx_sm_prio_cleanup_wait\00", [36 x i8] zeroinitializer }, align 32
@bna_tx_sm_prio_cleanup_wait._entry_ptr = internal global ptr @bna_tx_sm_prio_cleanup_wait._entry, section ".printk_index", align 4
@bna_tx_sm_started._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 2902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bna_tx_sm_started\00", [46 x i8] zeroinitializer }, align 32
@bna_tx_sm_started._entry_ptr = internal global ptr @bna_tx_sm_started._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 7, i64 8]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 7, i64 8]
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"bna_napi_dim_vector\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2745, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 88, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 128, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 174, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 154, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1348, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1400, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1463, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1524, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1438, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1548, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1378, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1581, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1607, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1499, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2826, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2863, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2934, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2957, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2990, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 3051, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 3081, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 3021, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [48 x i8] c"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2902, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @bna_rx_sm_cleanup_wait._entry, ptr @bna_rx_sm_cleanup_wait._entry_ptr, ptr @bna_rx_sm_failed._entry, ptr @bna_rx_sm_failed._entry_ptr, ptr @bna_rx_sm_quiesce_wait._entry, ptr @bna_rx_sm_quiesce_wait._entry_ptr, ptr @bna_rx_sm_rxf_start_wait._entry, ptr @bna_rx_sm_rxf_start_wait._entry_ptr, ptr @bna_rx_sm_rxf_stop_wait._entry, ptr @bna_rx_sm_rxf_stop_wait._entry_ptr, ptr @bna_rx_sm_start_stop_wait._entry, ptr @bna_rx_sm_start_stop_wait._entry_ptr, ptr @bna_rx_sm_start_wait._entry, ptr @bna_rx_sm_start_wait._entry_ptr, ptr @bna_rx_sm_started._entry, ptr @bna_rx_sm_started._entry_ptr, ptr @bna_rx_sm_stop_wait._entry, ptr @bna_rx_sm_stop_wait._entry_ptr, ptr @bna_rx_sm_stopped._entry, ptr @bna_rx_sm_stopped._entry_ptr, ptr @bna_rxf_sm_cfg_wait._entry, ptr @bna_rxf_sm_cfg_wait._entry_ptr, ptr @bna_rxf_sm_last_resp_wait._entry, ptr @bna_rxf_sm_last_resp_wait._entry_ptr, ptr @bna_rxf_sm_started._entry, ptr @bna_rxf_sm_started._entry_ptr, ptr @bna_rxf_sm_stopped._entry, ptr @bna_rxf_sm_stopped._entry_ptr, ptr @bna_tx_sm_cleanup_wait._entry, ptr @bna_tx_sm_cleanup_wait._entry_ptr, ptr @bna_tx_sm_failed._entry, ptr @bna_tx_sm_failed._entry_ptr, ptr @bna_tx_sm_prio_cleanup_wait._entry, ptr @bna_tx_sm_prio_cleanup_wait._entry_ptr, ptr @bna_tx_sm_prio_stop_wait._entry, ptr @bna_tx_sm_prio_stop_wait._entry_ptr, ptr @bna_tx_sm_quiesce_wait._entry, ptr @bna_tx_sm_quiesce_wait._entry_ptr, ptr @bna_tx_sm_start_wait._entry, ptr @bna_tx_sm_start_wait._entry_ptr, ptr @bna_tx_sm_started._entry, ptr @bna_tx_sm_started._entry_ptr, ptr @bna_tx_sm_stop_wait._entry, ptr @bna_tx_sm_stop_wait._entry_ptr, ptr @bna_tx_sm_stopped._entry, ptr @bna_tx_sm_stopped._entry_ptr, ptr @bna_napi_dim_vector, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_napi_dim_vector to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rxf_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rxf_sm_cfg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rxf_sm_last_resp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rxf_sm_started._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_start_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_start_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_rxf_start_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_rxf_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_cleanup_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_quiesce_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_rx_sm_started._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_start_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_cleanup_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_prio_stop_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_quiesce_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_prio_cleanup_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_tx_sm_started._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_rxf_cfg_rsp(ptr noundef %rxf, ptr nocapture noundef readnone %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxf, align 4
  tail call void %1(ptr noundef %rxf, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_rxf_ucast_set_rsp(ptr noundef %rxf, ptr nocapture noundef readonly %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.bfi_enet_rsp, ptr %msghdr, i32 0, i32 1
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_active_set = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 15
  %2 = ptrtoint ptr %ucast_active_set to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ucast_active_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %rxf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxf, align 4
  tail call void %4(ptr noundef %rxf, i32 noundef 7) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_rxf_mcast_add_rsp(ptr noundef %rxf, ptr nocapture noundef readonly %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.bfi_enet_mcast_add_rsp, ptr %msghdr, i32 0, i32 4
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %handle, align 1
  %conv = zext i16 %1 to i32
  %mcast_active_q.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 18
  %add.ptr1.i.i.i = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %mac.0.in.i.i = phi ptr [ %mcast_active_q.i.i, %entry ], [ %mac.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %mac.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mac.0.i.i = load ptr, ptr %mac.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mac.0.i.i, %mcast_active_q.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %addr.i.i = getelementptr inbounds %struct.bna_mac, ptr %mac.0.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i.i, align 4
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac_addr, align 4
  %xor.i.i.i = xor i32 %6, %4
  %add.ptr.i.i.i = getelementptr %struct.bna_mac, ptr %mac.0.i.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %9 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %10, %8
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.bna_rxf_mcmac_get.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.bna_rxf_mcmac_get.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcmac_get.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %mcast_pending_del_q.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 17
  br label %for.cond11.i.i

for.cond11.i.i:                                   ; preds = %for.body16.i.i.for.cond11.i.i_crit_edge, %for.end.i.i
  %mac.1.in.i.i = phi ptr [ %mcast_pending_del_q.i.i, %for.end.i.i ], [ %mac.1.i.i, %for.body16.i.i.for.cond11.i.i_crit_edge ]
  %11 = ptrtoint ptr %mac.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %mac.1.i.i = load ptr, ptr %mac.1.in.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %mac.1.i.i, %mcast_pending_del_q.i.i
  br i1 %cmp14.not.i.i, label %for.cond11.i.i.bna_rxf_mcmac_get.exit.i_crit_edge, label %for.body16.i.i

for.cond11.i.i.bna_rxf_mcmac_get.exit.i_crit_edge: ; preds = %for.cond11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcmac_get.exit.i

for.body16.i.i:                                   ; preds = %for.cond11.i.i
  %addr17.i.i = getelementptr inbounds %struct.bna_mac, ptr %mac.1.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %addr17.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr17.i.i, align 4
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr, align 4
  %xor.i40.i.i = xor i32 %15, %13
  %add.ptr.i41.i.i = getelementptr %struct.bna_mac, ptr %mac.1.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %add.ptr.i41.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i41.i.i, align 2
  %18 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i43.i.i = xor i16 %19, %17
  %xor3.i44.i.i = zext i16 %xor37.i43.i.i to i32
  %or.i45.i.i = or i32 %xor.i40.i.i, %xor3.i44.i.i
  %cmp.i46.i.i = icmp eq i32 %or.i45.i.i, 0
  br i1 %cmp.i46.i.i, label %for.body16.i.i.bna_rxf_mcmac_get.exit.i_crit_edge, label %for.body16.i.i.for.cond11.i.i_crit_edge

for.body16.i.i.for.cond11.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond11.i.i

for.body16.i.i.bna_rxf_mcmac_get.exit.i_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcmac_get.exit.i

bna_rxf_mcmac_get.exit.i:                         ; preds = %for.body16.i.i.bna_rxf_mcmac_get.exit.i_crit_edge, %for.cond11.i.i.bna_rxf_mcmac_get.exit.i_crit_edge, %for.body.i.i.bna_rxf_mcmac_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %for.cond11.i.i.bna_rxf_mcmac_get.exit.i_crit_edge ], [ %mac.1.i.i, %for.body16.i.i.bna_rxf_mcmac_get.exit.i_crit_edge ], [ %mac.0.i.i, %for.body.i.i.bna_rxf_mcmac_get.exit.i_crit_edge ]
  %mcast_handle_q.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 19
  br label %for.cond.i16.i

for.cond.i16.i:                                   ; preds = %for.body.i17.i.for.cond.i16.i_crit_edge, %bna_rxf_mcmac_get.exit.i
  %mchandle.0.in.i.i = phi ptr [ %mcast_handle_q.i.i, %bna_rxf_mcmac_get.exit.i ], [ %mchandle.0.i.i, %for.body.i17.i.for.cond.i16.i_crit_edge ]
  %20 = ptrtoint ptr %mchandle.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %mchandle.0.i.i = load ptr, ptr %mchandle.0.in.i.i, align 4
  %cmp.not.i15.i = icmp eq ptr %mchandle.0.i.i, %mcast_handle_q.i.i
  br i1 %cmp.not.i15.i, label %for.cond.i16.i.if.then.i_crit_edge, label %for.body.i17.i

for.cond.i16.i.if.then.i_crit_edge:               ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.body.i17.i:                                   ; preds = %for.cond.i16.i
  %handle2.i.i = getelementptr inbounds %struct.bna_mcam_handle, ptr %mchandle.0.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %handle2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %handle2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %22, %conv
  br i1 %cmp3.i.i, label %bna_rxf_mchandle_get.exit.i, label %for.body.i17.i.for.cond.i16.i_crit_edge

for.body.i17.i.for.cond.i16.i_crit_edge:          ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i16.i

bna_rxf_mchandle_get.exit.i:                      ; preds = %for.body.i17.i
  %cmp.i = icmp eq ptr %mchandle.0.i.i, null
  br i1 %cmp.i, label %bna_rxf_mchandle_get.exit.i.if.then.i_crit_edge, label %bna_rxf_mchandle_get.exit.i.bna_rxf_mchandle_attach.exit_crit_edge

bna_rxf_mchandle_get.exit.i.bna_rxf_mchandle_attach.exit_crit_edge: ; preds = %bna_rxf_mchandle_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mchandle_attach.exit

bna_rxf_mchandle_get.exit.i.if.then.i_crit_edge:  ; preds = %bna_rxf_mchandle_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %bna_rxf_mchandle_get.exit.i.if.then.i_crit_edge, %for.cond.i16.i.if.then.i_crit_edge
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna.i, align 4
  %mcam_mod.i = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 15
  %call2.i = tail call ptr @bna_mcam_mod_handle_get(ptr noundef %mcam_mod.i) #10
  %handle3.i = getelementptr inbounds %struct.bna_mcam_handle, ptr %call2.i, i32 0, i32 1
  %27 = ptrtoint ptr %handle3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %handle3.i, align 4
  %refcnt.i = getelementptr inbounds %struct.bna_mcam_handle, ptr %call2.i, i32 0, i32 2
  %28 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %refcnt.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call2.i, ptr noundef %30, ptr noundef %mcast_handle_q.i.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.bna_rxf_mchandle_attach.exit_crit_edge

if.then.i.bna_rxf_mchandle_attach.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mchandle_attach.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call2.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mcast_handle_q.i.i, ptr %call2.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call2.i, ptr %30, align 4
  br label %bna_rxf_mchandle_attach.exit

bna_rxf_mchandle_attach.exit:                     ; preds = %if.end.i.i.i, %if.then.i.bna_rxf_mchandle_attach.exit_crit_edge, %bna_rxf_mchandle_get.exit.i.bna_rxf_mchandle_attach.exit_crit_edge
  %mchandle.0.i = phi ptr [ %mchandle.0.i.i, %bna_rxf_mchandle_get.exit.i.bna_rxf_mchandle_attach.exit_crit_edge ], [ %call2.i, %if.then.i.bna_rxf_mchandle_attach.exit_crit_edge ], [ %call2.i, %if.end.i.i.i ]
  %refcnt4.i = getelementptr inbounds %struct.bna_mcam_handle, ptr %mchandle.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %refcnt4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %refcnt4.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %refcnt4.i, align 4
  %handle5.i = getelementptr inbounds %struct.bna_mac, ptr %retval.0.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %handle5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mchandle.0.i, ptr %handle5.i, align 4
  %38 = ptrtoint ptr %rxf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxf, align 4
  tail call void %39(ptr noundef %rxf, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bna_rx_ucast_set(ptr noundef %rx, ptr nocapture noundef readonly %ucmac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %ucast_pending_mac = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 11
  %0 = ptrtoint ptr %ucast_pending_mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucast_pending_mac, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %rx2 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %2 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx2, align 4
  %bna = getelementptr inbounds %struct.bna_rx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bna, align 4
  %free_q = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 14, i32 1
  %call = tail call ptr @bna_cam_mod_mac_get(ptr noundef %free_q) #10
  %6 = ptrtoint ptr %ucast_pending_mac to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ucast_pending_mac, align 4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %7 = ptrtoint ptr %ucast_pending_mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ucast_pending_mac, align 4
  %addr = getelementptr inbounds %struct.bna_mac, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ucmac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ucmac, align 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %ucmac, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bna_mac, ptr %8, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 2
  %ucast_pending_set = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 12
  %15 = ptrtoint ptr %ucast_pending_set to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ucast_pending_set, align 4
  %cam_fltr_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cam_fltr_cbfn, align 4
  %bna9 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %17 = ptrtoint ptr %bna9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna9, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bnad, align 4
  %cam_fltr_cbarg = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 8
  %21 = ptrtoint ptr %cam_fltr_cbarg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cam_fltr_cbarg, align 4
  %22 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxf1, align 4
  tail call void %23(ptr noundef %rxf1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 6, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bna_cam_mod_mac_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bna_rx_mcast_add(ptr noundef %rx, ptr nocapture noundef readonly %addr, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %mcast_active_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 18
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %mac.0.in.i = phi ptr [ %mcast_active_q, %entry ], [ %mac.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mac.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mac.0.i = load ptr, ptr %mac.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mac.0.i, %mcast_active_q
  br i1 %cmp.not.i, label %for.cond.i.lor.lhs.false_crit_edge, label %for.body.i

for.cond.i.lor.lhs.false_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.body.i:                                       ; preds = %for.cond.i
  %addr1.i = getelementptr inbounds %struct.bna_mac, ptr %mac.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr1.i, align 4
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %4, %2
  %add.ptr.i.i = getelementptr %struct.bna_mac, ptr %mac.0.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %8, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %bna_mac_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

bna_mac_find.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mac.0.i, null
  br i1 %tobool.not, label %bna_mac_find.exit.lor.lhs.false_crit_edge, label %bna_mac_find.exit.if.then_crit_edge

bna_mac_find.exit.if.then_crit_edge:              ; preds = %bna_mac_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

bna_mac_find.exit.lor.lhs.false_crit_edge:        ; preds = %bna_mac_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %bna_mac_find.exit.lor.lhs.false_crit_edge, %for.cond.i.lor.lhs.false_crit_edge
  %mcast_pending_add_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 16
  br label %for.cond.i37

for.cond.i37:                                     ; preds = %for.body.i45.for.cond.i37_crit_edge, %lor.lhs.false
  %mac.0.in.i34 = phi ptr [ %mcast_pending_add_q, %lor.lhs.false ], [ %mac.0.i35, %for.body.i45.for.cond.i37_crit_edge ]
  %9 = ptrtoint ptr %mac.0.in.i34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %mac.0.i35 = load ptr, ptr %mac.0.in.i34, align 4
  %cmp.not.i36 = icmp eq ptr %mac.0.i35, %mcast_pending_add_q
  br i1 %cmp.not.i36, label %for.cond.i37.if.end6_crit_edge, label %for.body.i45

for.cond.i37.if.end6_crit_edge:                   ; preds = %for.cond.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.i45:                                     ; preds = %for.cond.i37
  %addr1.i38 = getelementptr inbounds %struct.bna_mac, ptr %mac.0.i35, i32 0, i32 1
  %10 = ptrtoint ptr %addr1.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr1.i38, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %xor.i.i39 = xor i32 %13, %11
  %add.ptr.i.i40 = getelementptr %struct.bna_mac, ptr %mac.0.i35, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i40, align 2
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i41 = xor i16 %17, %15
  %xor3.i.i42 = zext i16 %xor37.i.i41 to i32
  %or.i.i43 = or i32 %xor.i.i39, %xor3.i.i42
  %cmp.i.i44 = icmp eq i32 %or.i.i43, 0
  br i1 %cmp.i.i44, label %bna_mac_find.exit47, label %for.body.i45.for.cond.i37_crit_edge

for.body.i45.for.cond.i37_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i37

bna_mac_find.exit47:                              ; preds = %for.body.i45
  %tobool3.not = icmp eq ptr %mac.0.i35, null
  br i1 %tobool3.not, label %bna_mac_find.exit47.if.end6_crit_edge, label %bna_mac_find.exit47.if.then_crit_edge

bna_mac_find.exit47.if.then_crit_edge:            ; preds = %bna_mac_find.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

bna_mac_find.exit47.if.end6_crit_edge:            ; preds = %bna_mac_find.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %bna_mac_find.exit47.if.then_crit_edge, %bna_mac_find.exit.if.then_crit_edge
  %tobool4.not = icmp eq ptr %cbfn, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %18 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bnad, align 4
  tail call void %cbfn(ptr noundef %21, ptr noundef %rx) #10
  br label %cleanup

if.end6:                                          ; preds = %bna_mac_find.exit47.if.end6_crit_edge, %for.cond.i37.if.end6_crit_edge
  %rx7 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %22 = ptrtoint ptr %rx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx7, align 4
  %bna8 = getelementptr inbounds %struct.bna_rx, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %bna8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bna8, align 4
  %free_q = getelementptr inbounds %struct.bna, ptr %25, i32 0, i32 15, i32 2
  %call9 = tail call ptr @bna_cam_mod_mac_get(ptr noundef %free_q) #10
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %addr12 = getelementptr inbounds %struct.bna_mac, ptr %call9, i32 0, i32 1
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  %28 = ptrtoint ptr %addr12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %addr12, align 4
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i.i, align 2
  %add.ptr1.i = getelementptr %struct.bna_mac, ptr %call9, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %add.ptr1.i, align 2
  %prev.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 16, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9, ptr noundef %33, ptr noundef %mcast_pending_add_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9, ptr %prev.i, align 4
  %35 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mcast_pending_add_q, ptr %call9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call9, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end11.list_add_tail.exit_crit_edge
  %cam_fltr_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 7
  %38 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cbfn, ptr %cam_fltr_cbfn, align 4
  %bna14 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %39 = ptrtoint ptr %bna14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna14, align 4
  %bnad15 = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %bnad15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bnad15, align 4
  %cam_fltr_cbarg = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 8
  %43 = ptrtoint ptr %cam_fltr_cbarg to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %cam_fltr_cbarg, align 4
  %44 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rxf1, align 4
  tail call void %45(ptr noundef %rxf1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end6.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ 0, %if.then5 ], [ 0, %if.then.cleanup_crit_edge ], [ 5, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bna_rx_ucast_listset(ptr noundef %rx, i32 noundef %count, ptr nocapture noundef readonly %uclist) local_unnamed_addr #0 align 64 {
entry:
  %list_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %rxf2 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_head) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %list_head, i32 0, i32 1
  %ucast_pending_add_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 9
  %3 = ptrtoint ptr %ucast_pending_add_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ucast_pending_add_q, align 4
  %cmp.i.not129 = icmp eq ptr %4, %ucast_pending_add_q
  br i1 %cmp.i.not129, label %entry.while.cond4.preheader_crit_edge, label %while.body.lr.ph

entry.while.cond4.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body.lr.ph:                                 ; preds = %entry
  %free_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 1
  %prev.i2.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 1, i32 1
  br label %while.body

while.cond4.preheader:                            ; preds = %list_move_tail.exit.while.cond4.preheader_crit_edge, %entry.while.cond4.preheader_crit_edge
  %ucast_active_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 13
  %5 = ptrtoint ptr %ucast_active_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ucast_active_q, align 4
  %cmp.i83.not130 = icmp eq ptr %6, %ucast_active_q
  br i1 %cmp.i83.not130, label %while.cond4.preheader.while.end21_crit_edge, label %while.body8.lr.ph

while.cond4.preheader.while.end21_crit_edge:      ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end21

while.body8.lr.ph:                                ; preds = %while.cond4.preheader
  %del_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 2
  %ucast_pending_del_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 10
  %prev.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 10, i32 1
  %free_q20 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 1
  %prev.i2.i91 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 1, i32 1
  br label %while.body8

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %7 = phi ptr [ %4, %while.body.lr.ph ], [ %21, %list_move_tail.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %15, ptr noundef %free_q) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %prev.i2.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_q, ptr %7, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %7, ptr %15, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %20 = ptrtoint ptr %ucast_pending_add_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ucast_pending_add_q, align 4
  %cmp.i.not = icmp eq ptr %21, %ucast_pending_add_q
  br i1 %cmp.i.not, label %list_move_tail.exit.while.cond4.preheader_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.cond4.preheader_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body8:                                      ; preds = %list_move_tail.exit96.while.body8_crit_edge, %while.body8.lr.ph
  %22 = phi ptr [ %6, %while.body8.lr.ph ], [ %51, %list_move_tail.exit96.while.body8_crit_edge ]
  %call14 = tail call ptr @bna_cam_mod_mac_get(ptr noundef %del_q) #10
  %addr = getelementptr inbounds %struct.bna_mac, ptr %call14, i32 0, i32 1
  %addr15 = getelementptr inbounds %struct.bna_mac, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %addr15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr15, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.bna_mac, ptr %22, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bna_mac, ptr %call14, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  %handle = getelementptr inbounds %struct.bna_mac, ptr %22, i32 0, i32 2
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 4
  %handle17 = getelementptr inbounds %struct.bna_mac, ptr %call14, i32 0, i32 2
  %31 = ptrtoint ptr %handle17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %handle17, align 4
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i85 = tail call zeroext i1 @__list_add_valid(ptr noundef %call14, ptr noundef %33, ptr noundef %ucast_pending_del_q) #10
  br i1 %call.i.i85, label %if.end.i.i86, label %while.body8.list_add_tail.exit_crit_edge

while.body8.list_add_tail.exit_crit_edge:         ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i86:                                     ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14, ptr %prev.i, align 4
  %35 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ucast_pending_del_q, ptr %call14, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call14, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call14, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i86, %while.body8.list_add_tail.exit_crit_edge
  %call.i.i87 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #10
  br i1 %call.i.i87, label %if.end.i.i90, label %list_add_tail.exit.__list_del_entry.exit.i93_crit_edge

list_add_tail.exit.__list_del_entry.exit.i93_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i93

if.end.i.i90:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i88 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i88, align 4
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %22, align 4
  %prev1.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i89, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i93

__list_del_entry.exit.i93:                        ; preds = %if.end.i.i90, %list_add_tail.exit.__list_del_entry.exit.i93_crit_edge
  %44 = ptrtoint ptr %prev.i2.i91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i2.i91, align 4
  %call.i.i.i92 = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %45, ptr noundef %free_q20) #10
  br i1 %call.i.i.i92, label %if.end.i.i.i95, label %__list_del_entry.exit.i93.list_move_tail.exit96_crit_edge

__list_del_entry.exit.i93.list_move_tail.exit96_crit_edge: ; preds = %__list_del_entry.exit.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit96

if.end.i.i.i95:                                   ; preds = %__list_del_entry.exit.i93
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i2.i91 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %22, ptr %prev.i2.i91, align 4
  %47 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %free_q20, ptr %22, align 4
  %prev3.i.i.i94 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i94, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %22, ptr %45, align 4
  br label %list_move_tail.exit96

list_move_tail.exit96:                            ; preds = %if.end.i.i.i95, %__list_del_entry.exit.i93.list_move_tail.exit96_crit_edge
  %50 = ptrtoint ptr %ucast_active_q to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %ucast_active_q, align 4
  %cmp.i83.not = icmp eq ptr %51, %ucast_active_q
  br i1 %cmp.i83.not, label %list_move_tail.exit96.while.end21_crit_edge, label %list_move_tail.exit96.while.body8_crit_edge

list_move_tail.exit96.while.body8_crit_edge:      ; preds = %list_move_tail.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body8

list_move_tail.exit96.while.end21_crit_edge:      ; preds = %list_move_tail.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end21

while.end21:                                      ; preds = %list_move_tail.exit96.while.end21_crit_edge, %while.cond4.preheader.while.end21_crit_edge
  %52 = ptrtoint ptr %list_head to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list_head, ptr %list_head, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list_head, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp131 = icmp sgt i32 %count, 0
  br i1 %cmp131, label %for.body.lr.ph, label %while.end21.while.cond29.preheader_crit_edge

while.end21.while.cond29.preheader_crit_edge:     ; preds = %while.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond29.preheader

for.body.lr.ph:                                   ; preds = %while.end21
  %free_q22 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 1
  br label %for.body

while.cond29.preheader:                           ; preds = %list_add_tail.exit104.while.cond29.preheader_crit_edge, %while.end21.while.cond29.preheader_crit_edge
  %54 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %list_head, align 4
  %cmp.i105.not134 = icmp eq ptr %55, %list_head
  br i1 %cmp.i105.not134, label %while.cond29.preheader.while.end40_crit_edge, label %while.body33.lr.ph

while.cond29.preheader.while.end40_crit_edge:     ; preds = %while.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end40

while.body33.lr.ph:                               ; preds = %while.cond29.preheader
  %prev.i2.i111 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 9, i32 1
  br label %while.body33

for.body:                                         ; preds = %list_add_tail.exit104.for.body_crit_edge, %for.body.lr.ph
  %mcaddr.0133 = phi ptr [ %uclist, %for.body.lr.ph ], [ %add.ptr28, %list_add_tail.exit104.for.body_crit_edge ]
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit104.for.body_crit_edge ]
  %call23 = call ptr @bna_cam_mod_mac_get(ptr noundef %free_q22) #10
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %while.cond41.preheader, label %if.end

while.cond41.preheader:                           ; preds = %for.body
  %56 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %list_head, align 4
  %cmp.i117.not135 = icmp eq ptr %57, %list_head
  br i1 %cmp.i117.not135, label %while.cond41.preheader.cleanup_crit_edge, label %while.body45.lr.ph

while.cond41.preheader.cleanup_crit_edge:         ; preds = %while.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body45.lr.ph:                               ; preds = %while.cond41.preheader
  %prev.i2.i123 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 14, i32 1, i32 1
  br label %while.body45

if.end:                                           ; preds = %for.body
  %addr25 = getelementptr inbounds %struct.bna_mac, ptr %call23, i32 0, i32 1
  %58 = ptrtoint ptr %mcaddr.0133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mcaddr.0133, align 4
  %60 = ptrtoint ptr %addr25 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %addr25, align 4
  %add.ptr.i98 = getelementptr i8, ptr %mcaddr.0133, i32 4
  %61 = ptrtoint ptr %add.ptr.i98 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr.i98, align 2
  %add.ptr1.i99 = getelementptr %struct.bna_mac, ptr %call23, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %add.ptr1.i99 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %add.ptr1.i99, align 2
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %2, align 4
  %call.i.i101 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call23, ptr noundef %65, ptr noundef nonnull %list_head) #10
  br i1 %call.i.i101, label %if.end.i.i103, label %if.end.list_add_tail.exit104_crit_edge

if.end.list_add_tail.exit104_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit104

if.end.i.i103:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call23, ptr %2, align 4
  %67 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %list_head, ptr %call23, align 4
  %prev3.i.i102 = getelementptr inbounds %struct.list_head, ptr %call23, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i102 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i102, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call23, ptr %65, align 4
  br label %list_add_tail.exit104

list_add_tail.exit104:                            ; preds = %if.end.i.i103, %if.end.list_add_tail.exit104_crit_edge
  %add.ptr28 = getelementptr i8, ptr %mcaddr.0133, i32 6
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %list_add_tail.exit104.while.cond29.preheader_crit_edge, label %list_add_tail.exit104.for.body_crit_edge

list_add_tail.exit104.for.body_crit_edge:         ; preds = %list_add_tail.exit104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit104.while.cond29.preheader_crit_edge: ; preds = %list_add_tail.exit104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond29.preheader

while.body33:                                     ; preds = %list_move_tail.exit116.while.body33_crit_edge, %while.body33.lr.ph
  %70 = phi ptr [ %55, %while.body33.lr.ph ], [ %84, %list_move_tail.exit116.while.body33_crit_edge ]
  %call.i.i107 = call zeroext i1 @__list_del_entry_valid(ptr noundef %70) #10
  br i1 %call.i.i107, label %if.end.i.i110, label %while.body33.__list_del_entry.exit.i113_crit_edge

while.body33.__list_del_entry.exit.i113_crit_edge: ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i113

if.end.i.i110:                                    ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i108 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i108, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i109, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %__list_del_entry.exit.i113

__list_del_entry.exit.i113:                       ; preds = %if.end.i.i110, %while.body33.__list_del_entry.exit.i113_crit_edge
  %77 = ptrtoint ptr %prev.i2.i111 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i2.i111, align 4
  %call.i.i.i112 = call zeroext i1 @__list_add_valid(ptr noundef %70, ptr noundef %78, ptr noundef %ucast_pending_add_q) #10
  br i1 %call.i.i.i112, label %if.end.i.i.i115, label %__list_del_entry.exit.i113.list_move_tail.exit116_crit_edge

__list_del_entry.exit.i113.list_move_tail.exit116_crit_edge: ; preds = %__list_del_entry.exit.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit116

if.end.i.i.i115:                                  ; preds = %__list_del_entry.exit.i113
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %prev.i2.i111 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %70, ptr %prev.i2.i111, align 4
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %ucast_pending_add_q, ptr %70, align 4
  %prev3.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i.i114, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %70, ptr %78, align 4
  br label %list_move_tail.exit116

list_move_tail.exit116:                           ; preds = %if.end.i.i.i115, %__list_del_entry.exit.i113.list_move_tail.exit116_crit_edge
  %83 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %list_head, align 4
  %cmp.i105.not = icmp eq ptr %84, %list_head
  br i1 %cmp.i105.not, label %list_move_tail.exit116.while.end40_crit_edge, label %list_move_tail.exit116.while.body33_crit_edge

list_move_tail.exit116.while.body33_crit_edge:    ; preds = %list_move_tail.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body33

list_move_tail.exit116.while.end40_crit_edge:     ; preds = %list_move_tail.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end40

while.end40:                                      ; preds = %list_move_tail.exit116.while.end40_crit_edge, %while.cond29.preheader.while.end40_crit_edge
  %85 = ptrtoint ptr %rxf2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rxf2, align 4
  call void %86(ptr noundef %rxf2, i32 noundef 4) #10
  br label %cleanup

while.body45:                                     ; preds = %list_move_tail.exit128.while.body45_crit_edge, %while.body45.lr.ph
  %87 = phi ptr [ %57, %while.body45.lr.ph ], [ %101, %list_move_tail.exit128.while.body45_crit_edge ]
  %call.i.i119 = call zeroext i1 @__list_del_entry_valid(ptr noundef %87) #10
  br i1 %call.i.i119, label %if.end.i.i122, label %while.body45.__list_del_entry.exit.i125_crit_edge

while.body45.__list_del_entry.exit.i125_crit_edge: ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i125

if.end.i.i122:                                    ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i120 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i120 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i120, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %87, align 4
  %prev1.i.i.i121 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i121, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %__list_del_entry.exit.i125

__list_del_entry.exit.i125:                       ; preds = %if.end.i.i122, %while.body45.__list_del_entry.exit.i125_crit_edge
  %94 = ptrtoint ptr %prev.i2.i123 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i2.i123, align 4
  %call.i.i.i124 = call zeroext i1 @__list_add_valid(ptr noundef %87, ptr noundef %95, ptr noundef %free_q22) #10
  br i1 %call.i.i.i124, label %if.end.i.i.i127, label %__list_del_entry.exit.i125.list_move_tail.exit128_crit_edge

__list_del_entry.exit.i125.list_move_tail.exit128_crit_edge: ; preds = %__list_del_entry.exit.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit128

if.end.i.i.i127:                                  ; preds = %__list_del_entry.exit.i125
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %prev.i2.i123 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %87, ptr %prev.i2.i123, align 4
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %free_q22, ptr %87, align 4
  %prev3.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i.i126, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %87, ptr %95, align 4
  br label %list_move_tail.exit128

list_move_tail.exit128:                           ; preds = %if.end.i.i.i127, %__list_del_entry.exit.i125.list_move_tail.exit128_crit_edge
  %100 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %list_head, align 4
  %cmp.i117.not = icmp eq ptr %101, %list_head
  br i1 %cmp.i117.not, label %list_move_tail.exit128.cleanup_crit_edge, label %list_move_tail.exit128.while.body45_crit_edge

list_move_tail.exit128.while.body45_crit_edge:    ; preds = %list_move_tail.exit128
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body45

list_move_tail.exit128.cleanup_crit_edge:         ; preds = %list_move_tail.exit128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit128.cleanup_crit_edge, %while.end40, %while.cond41.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end40 ], [ 6, %while.cond41.preheader.cleanup_crit_edge ], [ 6, %list_move_tail.exit128.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_head) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bna_rx_mcast_listset(ptr noundef %rx, i32 noundef %count, ptr nocapture noundef readonly %mclist) local_unnamed_addr #0 align 64 {
entry:
  %list_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %rxf2 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_head) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %list_head, i32 0, i32 1
  %mcast_pending_add_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 16
  %3 = ptrtoint ptr %mcast_pending_add_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %mcast_pending_add_q, align 4
  %cmp.i.not131 = icmp eq ptr %4, %mcast_pending_add_q
  br i1 %cmp.i.not131, label %entry.while.cond4.preheader_crit_edge, label %while.body.lr.ph

entry.while.cond4.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body.lr.ph:                                 ; preds = %entry
  %free_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 2
  %prev.i2.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 2, i32 1
  br label %while.body

while.cond4.preheader:                            ; preds = %list_move_tail.exit.while.cond4.preheader_crit_edge, %entry.while.cond4.preheader_crit_edge
  %mcast_active_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 18
  %5 = ptrtoint ptr %mcast_active_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %mcast_active_q, align 4
  %cmp.i85.not132 = icmp eq ptr %6, %mcast_active_q
  br i1 %cmp.i85.not132, label %while.cond4.preheader.while.end22_crit_edge, label %while.body8.lr.ph

while.cond4.preheader.while.end22_crit_edge:      ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end22

while.body8.lr.ph:                                ; preds = %while.cond4.preheader
  %del_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 3
  %mcast_pending_del_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 17
  %prev.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 17, i32 1
  %free_q21 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 2
  %prev.i2.i93 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 2, i32 1
  br label %while.body8

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %7 = phi ptr [ %4, %while.body.lr.ph ], [ %21, %list_move_tail.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %15, ptr noundef %free_q) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %prev.i2.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_q, ptr %7, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %7, ptr %15, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %20 = ptrtoint ptr %mcast_pending_add_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mcast_pending_add_q, align 4
  %cmp.i.not = icmp eq ptr %21, %mcast_pending_add_q
  br i1 %cmp.i.not, label %list_move_tail.exit.while.cond4.preheader_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.cond4.preheader_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body8:                                      ; preds = %list_move_tail.exit98.while.body8_crit_edge, %while.body8.lr.ph
  %22 = phi ptr [ %6, %while.body8.lr.ph ], [ %52, %list_move_tail.exit98.while.body8_crit_edge ]
  %call14 = tail call ptr @bna_cam_mod_mac_get(ptr noundef %del_q) #10
  %addr = getelementptr inbounds %struct.bna_mac, ptr %call14, i32 0, i32 1
  %addr15 = getelementptr inbounds %struct.bna_mac, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %addr15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr15, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.bna_mac, ptr %22, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bna_mac, ptr %call14, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  %handle = getelementptr inbounds %struct.bna_mac, ptr %22, i32 0, i32 2
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 4
  %handle17 = getelementptr inbounds %struct.bna_mac, ptr %call14, i32 0, i32 2
  %31 = ptrtoint ptr %handle17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %handle17, align 4
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %call14, ptr noundef %33, ptr noundef %mcast_pending_del_q) #10
  br i1 %call.i.i87, label %if.end.i.i88, label %while.body8.list_add_tail.exit_crit_edge

while.body8.list_add_tail.exit_crit_edge:         ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i88:                                     ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14, ptr %prev.i, align 4
  %35 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mcast_pending_del_q, ptr %call14, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call14, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call14, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i88, %while.body8.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %handle, align 4
  %call.i.i89 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #10
  br i1 %call.i.i89, label %if.end.i.i92, label %list_add_tail.exit.__list_del_entry.exit.i95_crit_edge

list_add_tail.exit.__list_del_entry.exit.i95_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i95

if.end.i.i92:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i90 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i90, align 4
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %22, align 4
  %prev1.i.i.i91 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i91, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %__list_del_entry.exit.i95

__list_del_entry.exit.i95:                        ; preds = %if.end.i.i92, %list_add_tail.exit.__list_del_entry.exit.i95_crit_edge
  %45 = ptrtoint ptr %prev.i2.i93 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i2.i93, align 4
  %call.i.i.i94 = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %46, ptr noundef %free_q21) #10
  br i1 %call.i.i.i94, label %if.end.i.i.i97, label %__list_del_entry.exit.i95.list_move_tail.exit98_crit_edge

__list_del_entry.exit.i95.list_move_tail.exit98_crit_edge: ; preds = %__list_del_entry.exit.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit98

if.end.i.i.i97:                                   ; preds = %__list_del_entry.exit.i95
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %prev.i2.i93 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %22, ptr %prev.i2.i93, align 4
  %48 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %free_q21, ptr %22, align 4
  %prev3.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i96, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %22, ptr %46, align 4
  br label %list_move_tail.exit98

list_move_tail.exit98:                            ; preds = %if.end.i.i.i97, %__list_del_entry.exit.i95.list_move_tail.exit98_crit_edge
  %51 = ptrtoint ptr %mcast_active_q to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %mcast_active_q, align 4
  %cmp.i85.not = icmp eq ptr %52, %mcast_active_q
  br i1 %cmp.i85.not, label %list_move_tail.exit98.while.end22_crit_edge, label %list_move_tail.exit98.while.body8_crit_edge

list_move_tail.exit98.while.body8_crit_edge:      ; preds = %list_move_tail.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body8

list_move_tail.exit98.while.end22_crit_edge:      ; preds = %list_move_tail.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end22

while.end22:                                      ; preds = %list_move_tail.exit98.while.end22_crit_edge, %while.cond4.preheader.while.end22_crit_edge
  %53 = ptrtoint ptr %list_head to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list_head, ptr %list_head, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list_head, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp133 = icmp sgt i32 %count, 0
  br i1 %cmp133, label %for.body.lr.ph, label %while.end22.while.cond30.preheader_crit_edge

while.end22.while.cond30.preheader_crit_edge:     ; preds = %while.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond30.preheader

for.body.lr.ph:                                   ; preds = %while.end22
  %free_q23 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 2
  br label %for.body

while.cond30.preheader:                           ; preds = %list_add_tail.exit106.while.cond30.preheader_crit_edge, %while.end22.while.cond30.preheader_crit_edge
  %55 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %list_head, align 4
  %cmp.i107.not136 = icmp eq ptr %56, %list_head
  br i1 %cmp.i107.not136, label %while.cond30.preheader.while.end41_crit_edge, label %while.body34.lr.ph

while.cond30.preheader.while.end41_crit_edge:     ; preds = %while.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end41

while.body34.lr.ph:                               ; preds = %while.cond30.preheader
  %prev.i2.i113 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 16, i32 1
  br label %while.body34

for.body:                                         ; preds = %list_add_tail.exit106.for.body_crit_edge, %for.body.lr.ph
  %mcaddr.0135 = phi ptr [ %mclist, %for.body.lr.ph ], [ %add.ptr29, %list_add_tail.exit106.for.body_crit_edge ]
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit106.for.body_crit_edge ]
  %call24 = call ptr @bna_cam_mod_mac_get(ptr noundef %free_q23) #10
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %while.cond42.preheader, label %if.end

while.cond42.preheader:                           ; preds = %for.body
  %57 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %list_head, align 4
  %cmp.i119.not137 = icmp eq ptr %58, %list_head
  br i1 %cmp.i119.not137, label %while.cond42.preheader.cleanup_crit_edge, label %while.body46.lr.ph

while.cond42.preheader.cleanup_crit_edge:         ; preds = %while.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body46.lr.ph:                               ; preds = %while.cond42.preheader
  %prev.i2.i125 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 15, i32 2, i32 1
  br label %while.body46

if.end:                                           ; preds = %for.body
  %addr26 = getelementptr inbounds %struct.bna_mac, ptr %call24, i32 0, i32 1
  %59 = ptrtoint ptr %mcaddr.0135 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mcaddr.0135, align 4
  %61 = ptrtoint ptr %addr26 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %addr26, align 4
  %add.ptr.i100 = getelementptr i8, ptr %mcaddr.0135, i32 4
  %62 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i100, align 2
  %add.ptr1.i101 = getelementptr %struct.bna_mac, ptr %call24, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %add.ptr1.i101 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i101, align 2
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %2, align 4
  %call.i.i103 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call24, ptr noundef %66, ptr noundef nonnull %list_head) #10
  br i1 %call.i.i103, label %if.end.i.i105, label %if.end.list_add_tail.exit106_crit_edge

if.end.list_add_tail.exit106_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit106

if.end.i.i105:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call24, ptr %2, align 4
  %68 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list_head, ptr %call24, align 4
  %prev3.i.i104 = getelementptr inbounds %struct.list_head, ptr %call24, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i104 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i104, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call24, ptr %66, align 4
  br label %list_add_tail.exit106

list_add_tail.exit106:                            ; preds = %if.end.i.i105, %if.end.list_add_tail.exit106_crit_edge
  %add.ptr29 = getelementptr i8, ptr %mcaddr.0135, i32 6
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %list_add_tail.exit106.while.cond30.preheader_crit_edge, label %list_add_tail.exit106.for.body_crit_edge

list_add_tail.exit106.for.body_crit_edge:         ; preds = %list_add_tail.exit106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit106.while.cond30.preheader_crit_edge: ; preds = %list_add_tail.exit106
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond30.preheader

while.body34:                                     ; preds = %list_move_tail.exit118.while.body34_crit_edge, %while.body34.lr.ph
  %71 = phi ptr [ %56, %while.body34.lr.ph ], [ %85, %list_move_tail.exit118.while.body34_crit_edge ]
  %call.i.i109 = call zeroext i1 @__list_del_entry_valid(ptr noundef %71) #10
  br i1 %call.i.i109, label %if.end.i.i112, label %while.body34.__list_del_entry.exit.i115_crit_edge

while.body34.__list_del_entry.exit.i115_crit_edge: ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i115

if.end.i.i112:                                    ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i110 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i110 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i110, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  %prev1.i.i.i111 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i111, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %__list_del_entry.exit.i115

__list_del_entry.exit.i115:                       ; preds = %if.end.i.i112, %while.body34.__list_del_entry.exit.i115_crit_edge
  %78 = ptrtoint ptr %prev.i2.i113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i2.i113, align 4
  %call.i.i.i114 = call zeroext i1 @__list_add_valid(ptr noundef %71, ptr noundef %79, ptr noundef %mcast_pending_add_q) #10
  br i1 %call.i.i.i114, label %if.end.i.i.i117, label %__list_del_entry.exit.i115.list_move_tail.exit118_crit_edge

__list_del_entry.exit.i115.list_move_tail.exit118_crit_edge: ; preds = %__list_del_entry.exit.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit118

if.end.i.i.i117:                                  ; preds = %__list_del_entry.exit.i115
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %prev.i2.i113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %71, ptr %prev.i2.i113, align 4
  %81 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %mcast_pending_add_q, ptr %71, align 4
  %prev3.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i.i116, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %71, ptr %79, align 4
  br label %list_move_tail.exit118

list_move_tail.exit118:                           ; preds = %if.end.i.i.i117, %__list_del_entry.exit.i115.list_move_tail.exit118_crit_edge
  %84 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %list_head, align 4
  %cmp.i107.not = icmp eq ptr %85, %list_head
  br i1 %cmp.i107.not, label %list_move_tail.exit118.while.end41_crit_edge, label %list_move_tail.exit118.while.body34_crit_edge

list_move_tail.exit118.while.body34_crit_edge:    ; preds = %list_move_tail.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body34

list_move_tail.exit118.while.end41_crit_edge:     ; preds = %list_move_tail.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end41

while.end41:                                      ; preds = %list_move_tail.exit118.while.end41_crit_edge, %while.cond30.preheader.while.end41_crit_edge
  %86 = ptrtoint ptr %rxf2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rxf2, align 4
  call void %87(ptr noundef %rxf2, i32 noundef 4) #10
  br label %cleanup

while.body46:                                     ; preds = %list_move_tail.exit130.while.body46_crit_edge, %while.body46.lr.ph
  %88 = phi ptr [ %58, %while.body46.lr.ph ], [ %102, %list_move_tail.exit130.while.body46_crit_edge ]
  %call.i.i121 = call zeroext i1 @__list_del_entry_valid(ptr noundef %88) #10
  br i1 %call.i.i121, label %if.end.i.i124, label %while.body46.__list_del_entry.exit.i127_crit_edge

while.body46.__list_del_entry.exit.i127_crit_edge: ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i127

if.end.i.i124:                                    ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i122 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i122 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i122, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  %prev1.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i123, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %__list_del_entry.exit.i127

__list_del_entry.exit.i127:                       ; preds = %if.end.i.i124, %while.body46.__list_del_entry.exit.i127_crit_edge
  %95 = ptrtoint ptr %prev.i2.i125 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i2.i125, align 4
  %call.i.i.i126 = call zeroext i1 @__list_add_valid(ptr noundef %88, ptr noundef %96, ptr noundef %free_q23) #10
  br i1 %call.i.i.i126, label %if.end.i.i.i129, label %__list_del_entry.exit.i127.list_move_tail.exit130_crit_edge

__list_del_entry.exit.i127.list_move_tail.exit130_crit_edge: ; preds = %__list_del_entry.exit.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit130

if.end.i.i.i129:                                  ; preds = %__list_del_entry.exit.i127
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %prev.i2.i125 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %88, ptr %prev.i2.i125, align 4
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %free_q23, ptr %88, align 4
  %prev3.i.i.i128 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i.i128, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %88, ptr %96, align 4
  br label %list_move_tail.exit130

list_move_tail.exit130:                           ; preds = %if.end.i.i.i129, %__list_del_entry.exit.i127.list_move_tail.exit130_crit_edge
  %101 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %list_head, align 4
  %cmp.i119.not = icmp eq ptr %102, %list_head
  br i1 %cmp.i119.not, label %list_move_tail.exit130.cleanup_crit_edge, label %list_move_tail.exit130.while.body46_crit_edge

list_move_tail.exit130.while.body46_crit_edge:    ; preds = %list_move_tail.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body46

list_move_tail.exit130.cleanup_crit_edge:         ; preds = %list_move_tail.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit130.cleanup_crit_edge, %while.end41, %while.cond42.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end41 ], [ 5, %while.cond42.preheader.cleanup_crit_edge ], [ 5, %list_move_tail.exit130.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_head) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_mcast_delall(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %mcast_pending_add_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 16
  %0 = ptrtoint ptr %mcast_pending_add_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mcast_pending_add_q, align 4
  %cmp.i.not56 = icmp eq ptr %1, %mcast_pending_add_q
  br i1 %cmp.i.not56, label %entry.while.cond4.preheader_crit_edge, label %while.body.lr.ph

entry.while.cond4.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body.lr.ph:                                 ; preds = %entry
  %rx3 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  br label %while.body

while.cond4.preheader:                            ; preds = %list_move_tail.exit.while.cond4.preheader_crit_edge, %entry.while.cond4.preheader_crit_edge
  %mcast_active_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 18
  %2 = ptrtoint ptr %mcast_active_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mcast_active_q, align 4
  %cmp.i41.not57 = icmp eq ptr %3, %mcast_active_q
  br i1 %cmp.i41.not57, label %while.cond4.preheader.if.end_crit_edge, label %while.body8.lr.ph

while.cond4.preheader.if.end_crit_edge:           ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body8.lr.ph:                                ; preds = %while.cond4.preheader
  %rx15 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %mcast_pending_del_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 17
  %prev.i48 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 17, i32 1
  br label %while.body8

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %22, %list_move_tail.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %rx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx3, align 4
  %bna = getelementptr inbounds %struct.bna_rx, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna, align 4
  %free_q = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 15, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 15, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %16, ptr noundef %free_q) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %4, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_q, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %4, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %21 = ptrtoint ptr %mcast_pending_add_q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %mcast_pending_add_q, align 4
  %cmp.i.not = icmp eq ptr %22, %mcast_pending_add_q
  br i1 %cmp.i.not, label %list_move_tail.exit.while.cond4.preheader_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.cond4.preheader_crit_edge: ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body8:                                      ; preds = %list_add_tail.exit55.while.body8_crit_edge, %while.body8.lr.ph
  %23 = phi ptr [ %3, %while.body8.lr.ph ], [ %55, %list_add_tail.exit55.while.body8_crit_edge ]
  %call.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #10
  br i1 %call.i.i43, label %if.end.i.i46, label %while.body8.list_del.exit_crit_edge

while.body8.list_del.exit_crit_edge:              ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i46:                                     ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i44 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i44, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i45, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i46, %while.body8.list_del.exit_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %32 = ptrtoint ptr %rx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx15, align 4
  %bna16 = getelementptr inbounds %struct.bna_rx, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %bna16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna16, align 4
  %del_q = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 15, i32 3
  %call18 = tail call ptr @bna_cam_mod_mac_get(ptr noundef %del_q) #10
  %36 = call ptr @memcpy(ptr %call18, ptr %23, i32 20)
  %37 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i48, align 4
  %call.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %call18, ptr noundef %38, ptr noundef %mcast_pending_del_q) #10
  br i1 %call.i.i49, label %if.end.i.i50, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i50:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call18, ptr %prev.i48, align 4
  %40 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mcast_pending_del_q, ptr %call18, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call18, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call18, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i50, %list_del.exit.list_add_tail.exit_crit_edge
  %handle = getelementptr inbounds %struct.bna_mac, ptr %23, i32 0, i32 2
  %43 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %handle, align 4
  %44 = ptrtoint ptr %rx15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx15, align 4
  %bna22 = getelementptr inbounds %struct.bna_rx, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %bna22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bna22, align 4
  %free_q24 = getelementptr inbounds %struct.bna, ptr %47, i32 0, i32 15, i32 2
  %prev.i51 = getelementptr inbounds %struct.bna, ptr %47, i32 0, i32 15, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i51, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %23, ptr noundef %49, ptr noundef %free_q24) #10
  br i1 %call.i.i52, label %if.end.i.i54, label %list_add_tail.exit.list_add_tail.exit55_crit_edge

list_add_tail.exit.list_add_tail.exit55_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit55

if.end.i.i54:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %23, ptr %prev.i51, align 4
  %51 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free_q24, ptr %23, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %23, ptr %49, align 4
  br label %list_add_tail.exit55

list_add_tail.exit55:                             ; preds = %if.end.i.i54, %list_add_tail.exit.list_add_tail.exit55_crit_edge
  %54 = ptrtoint ptr %mcast_active_q to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %mcast_active_q, align 4
  %cmp.i41.not = icmp eq ptr %55, %mcast_active_q
  br i1 %cmp.i41.not, label %if.then, label %list_add_tail.exit55.while.body8_crit_edge

list_add_tail.exit55.while.body8_crit_edge:       ; preds = %list_add_tail.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body8

if.then:                                          ; preds = %list_add_tail.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rxf1, align 4
  tail call void %57(ptr noundef %rxf1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond4.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_vlan_add(ptr noundef %rx, i32 noundef %vlan_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %vlan_id, 5
  %and = and i32 %vlan_id, 31
  %shl = shl nuw i32 1, %and
  %arrayidx = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 25, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %arrayidx, align 4
  %vlan_filter_status = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 24
  %2 = ptrtoint ptr %vlan_filter_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlan_filter_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %shr2 = ashr i32 %vlan_id, 9
  %shl3 = shl nuw i32 1, %shr2
  %vlan_pending_bitmask = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 23
  %4 = ptrtoint ptr %vlan_pending_bitmask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vlan_pending_bitmask, align 4
  %6 = trunc i32 %shl3 to i8
  %conv5 = or i8 %5, %6
  store i8 %conv5, ptr %vlan_pending_bitmask, align 4
  %7 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxf1, align 4
  tail call void %8(ptr noundef %rxf1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_vlan_del(ptr noundef %rx, i32 noundef %vlan_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %vlan_id, 5
  %and = and i32 %vlan_id, 31
  %shl = shl nuw i32 1, %and
  %neg = xor i32 %shl, -1
  %arrayidx = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 25, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and3 = and i32 %1, %neg
  store i32 %and3, ptr %arrayidx, align 4
  %vlan_filter_status = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 24
  %2 = ptrtoint ptr %vlan_filter_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlan_filter_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %shr2 = ashr i32 %vlan_id, 9
  %shl4 = shl nuw i32 1, %shr2
  %vlan_pending_bitmask = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 23
  %4 = ptrtoint ptr %vlan_pending_bitmask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vlan_pending_bitmask, align 4
  %6 = trunc i32 %shl4 to i8
  %conv5 = or i8 %5, %6
  store i8 %conv5, ptr %vlan_pending_bitmask, align 4
  %7 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxf1, align 4
  tail call void %8(ptr noundef %rxf1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_mod_start(ptr noundef %rx_mod, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %spec.select.v = select i1 %cmp, i32 3, i32 1
  %spec.select = or i32 %1, %spec.select.v
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %flags, align 4
  %rx_active_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 5
  %3 = ptrtoint ptr %rx_active_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %rx.021 = load ptr, ptr %rx_active_q, align 4
  %cmp4.not22 = icmp eq ptr %rx.021, %rx_active_q
  br i1 %cmp4.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rx.023 = phi ptr [ %rx.0, %for.inc.for.body_crit_edge ], [ %rx.021, %entry.for.body_crit_edge ]
  %type5 = getelementptr inbounds %struct.bna_rx, ptr %rx.023, i32 0, i32 4
  %4 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp6 = icmp eq i32 %5, %type
  br i1 %cmp6, label %if.then7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then7:                                         ; preds = %for.body
  %rx_flags.i = getelementptr inbounds %struct.bna_rx, ptr %rx.023, i32 0, i32 9
  %6 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_flags.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %rx_flags.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.for.inc_crit_edge, label %if.then.i

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %fsm.i = getelementptr inbounds %struct.bna_rx, ptr %rx.023, i32 0, i32 3
  %8 = ptrtoint ptr %fsm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsm.i, align 4
  tail call void %9(ptr noundef %rx.023, i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %rx.023 to i32
  call void @__asan_load4_noabort(i32 %10)
  %rx.0 = load ptr, ptr %rx.023, align 4
  %cmp4.not = icmp eq ptr %rx.0, %rx_active_q
  br i1 %cmp4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_mod_stop(ptr noundef %rx_mod, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and2 = and i32 %1, -4
  store i32 %and2, ptr %flags, align 4
  %stop_cbfn = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 12
  %2 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_enet_cb_rx_stopped, ptr %stop_cbfn, align 4
  %rx_stop_wc = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 13
  %3 = ptrtoint ptr %rx_stop_wc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_rx_mod_cb_rx_stopped_all, ptr %rx_stop_wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_mod, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %wc_count.i, align 4
  %rx_active_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 5
  %6 = ptrtoint ptr %rx_active_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %rx.025 = load ptr, ptr %rx_active_q, align 4
  %cmp.not26 = icmp eq ptr %rx.025, %rx_active_q
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rx.027 = phi ptr [ %rx.0, %for.inc.for.body_crit_edge ], [ %rx.025, %entry.for.body_crit_edge ]
  %type4 = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 4
  %7 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %type)
  %cmp5 = icmp eq i32 %8, %type
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wc_count.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %wc_count.i, align 4
  %rx_flags.i = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 9
  %11 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_flags.i, align 4
  %and.i = and i32 %12, -2
  store i32 %and.i, ptr %rx_flags.i, align 4
  %fsm.i = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 3
  %13 = ptrtoint ptr %fsm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsm.i, align 4
  %cmp.i = icmp eq ptr %14, @bna_rx_sm_stopped
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 21
  %15 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bna.i, align 4
  %wc_count.i.i.i = getelementptr inbounds %struct.bna, ptr %16, i32 0, i32 13, i32 13, i32 2
  %17 = ptrtoint ptr %wc_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wc_count.i.i.i, align 4
  %dec.i.i.i = add i32 %18, -1
  store i32 %dec.i.i.i, ptr %wc_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_stop_wc.i.i = getelementptr inbounds %struct.bna, ptr %16, i32 0, i32 13, i32 13
  %19 = ptrtoint ptr %rx_stop_wc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_stop_wc.i.i, align 4
  %wc_cbarg.i.i.i = getelementptr inbounds %struct.bna, ptr %16, i32 0, i32 13, i32 13, i32 1
  %21 = ptrtoint ptr %wc_cbarg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wc_cbarg.i.i.i, align 4
  tail call void %20(ptr noundef %22) #10
  br label %for.inc

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 19
  %23 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bna_rx_mod_cb_rx_stopped, ptr %stop_cbfn.i, align 4
  %bna1.i = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 21
  %24 = ptrtoint ptr %bna1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bna1.i, align 4
  %rx_mod2.i = getelementptr inbounds %struct.bna, ptr %25, i32 0, i32 13
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx.027, i32 0, i32 20
  %26 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rx_mod2.i, ptr %stop_cbarg.i, align 4
  tail call void %14(ptr noundef %rx.027, i32 noundef 2) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i.i.i, %if.then.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %rx.027 to i32
  call void @__asan_load4_noabort(i32 %27)
  %rx.0 = load ptr, ptr %rx.027, align 4
  %cmp.not = icmp eq ptr %rx.0, %rx_active_q
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %28 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %29, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.bfa_wc_wait.exit_crit_edge

for.end.bfa_wc_wait.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_wc_wait.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %rx_stop_wc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_stop_wc, align 4
  %32 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %31(ptr noundef %33) #10
  br label %bfa_wc_wait.exit

bfa_wc_wait.exit:                                 ; preds = %if.then.i.i, %for.end.bfa_wc_wait.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_cb_rx_stopped(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_mod_cb_rx_stopped_all(ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_cbfn = getelementptr inbounds %struct.bna_rx_mod, ptr %arg, i32 0, i32 12
  %0 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %enet = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 10
  tail call void %1(ptr noundef %enet) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stop_cbfn, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_mod_fail(ptr noundef %rx_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and2 = and i32 %1, -4
  store i32 %and2, ptr %flags, align 4
  %rx_active_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 5
  %2 = ptrtoint ptr %rx_active_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %rx.014 = load ptr, ptr %rx_active_q, align 4
  %cmp.not15 = icmp eq ptr %rx.014, %rx_active_q
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rx.016 = phi ptr [ %rx.0, %for.body.for.body_crit_edge ], [ %rx.014, %entry.for.body_crit_edge ]
  %rx_flags.i = getelementptr inbounds %struct.bna_rx, ptr %rx.016, i32 0, i32 9
  %3 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_flags.i, align 4
  %and.i = and i32 %4, -2
  store i32 %and.i, ptr %rx_flags.i, align 4
  %fsm.i = getelementptr inbounds %struct.bna_rx, ptr %rx.016, i32 0, i32 3
  %5 = ptrtoint ptr %fsm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsm.i, align 4
  tail call void %6(ptr noundef %rx.016, i32 noundef 3) #10
  %7 = ptrtoint ptr %rx.016 to i32
  call void @__asan_load4_noabort(i32 %7)
  %rx.0 = load ptr, ptr %rx.016, align 4
  %cmp.not = icmp eq ptr %rx.0, %rx_active_q
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

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
define dso_local void @bna_rx_mod_init(ptr noundef %rx_mod, ptr noundef %bna, ptr nocapture noundef readonly %res_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_mod to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bna, ptr %rx_mod, align 4
  %flags = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flags, align 4
  %mdl = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %mdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdl, align 4
  %kva = getelementptr inbounds %struct.bna_mem_descr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kva, align 4
  %rx = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 1
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rx, align 4
  %mdl5 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %mdl5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdl5, align 4
  %kva7 = getelementptr inbounds %struct.bna_mem_descr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %kva7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kva7, align 4
  %rxp = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 2
  %11 = ptrtoint ptr %rxp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %rxp, align 4
  %mdl10 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %mdl10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdl10, align 4
  %kva12 = getelementptr inbounds %struct.bna_mem_descr, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %kva12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kva12, align 4
  %rxq = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 3
  %16 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %rxq, align 4
  %rx_free_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 4
  %17 = ptrtoint ptr %rx_free_q to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %rx_free_q, ptr %rx_free_q, align 4
  %prev.i = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_free_q, ptr %prev.i, align 4
  %rx_free_count = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 6
  %19 = ptrtoint ptr %rx_free_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rx_free_count, align 4
  %rxq_free_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 9
  %20 = ptrtoint ptr %rxq_free_q to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %rxq_free_q, ptr %rxq_free_q, align 4
  %prev.i88 = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rxq_free_q, ptr %prev.i88, align 4
  %rxq_free_count = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 10
  %22 = ptrtoint ptr %rxq_free_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rxq_free_count, align 4
  %rxp_free_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 7
  %23 = ptrtoint ptr %rxp_free_q to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rxp_free_q, ptr %rxp_free_q, align 4
  %prev.i89 = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rxp_free_q, ptr %prev.i89, align 4
  %rxp_free_count = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 8
  %25 = ptrtoint ptr %rxp_free_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rxp_free_count, align 4
  %rx_active_q = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 5
  %26 = ptrtoint ptr %rx_active_q to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %rx_active_q, ptr %rx_active_q, align 4
  %prev.i90 = getelementptr inbounds %struct.bna_rx_mod, ptr %rx_mod, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rx_active_q, ptr %prev.i90, align 4
  %num_rxp = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 2
  %28 = ptrtoint ptr %num_rxp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_rxp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp103 = icmp sgt i32 %29, 0
  br i1 %cmp103, label %entry.for.body_crit_edge, label %entry.for.cond34.preheader_crit_edge

entry.for.cond34.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond19.preheader:                             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp23105 = icmp sgt i32 %47, 0
  br i1 %cmp23105, label %for.cond19.preheader.for.body24_crit_edge, label %for.cond19.preheader.for.cond34.preheader_crit_edge

for.cond19.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

for.cond19.preheader.for.body24_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body24

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %index.0104 = phi i32 [ %inc18, %list_add_tail.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx, align 4
  %arrayidx14 = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104
  %rxp_q = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104, i32 6
  %32 = ptrtoint ptr %rxp_q to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %rxp_q, ptr %rxp_q, align 4
  %prev.i91 = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104, i32 6, i32 1
  %33 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rxp_q, ptr %prev.i91, align 4
  %bna15 = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104, i32 21
  %34 = ptrtoint ptr %bna15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bna15, align 4
  %rid = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104, i32 1
  %35 = ptrtoint ptr %rid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %index.0104, ptr %rid, align 4
  %stop_cbfn = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104, i32 19
  %36 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %stop_cbfn, align 4
  %stop_cbarg = getelementptr %struct.bna_rx, ptr %31, i32 %index.0104, i32 20
  %37 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %stop_cbarg, align 4
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx14, ptr noundef %39, ptr noundef %rx_free_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx14, ptr %prev.i, align 4
  %41 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rx_free_q, ptr %arrayidx14, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx14, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx14, ptr %39, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %44 = ptrtoint ptr %rx_free_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_free_count, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %rx_free_count, align 4
  %inc18 = add nuw nsw i32 %index.0104, 1
  %46 = ptrtoint ptr %num_rxp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_rxp, align 8
  %cmp = icmp slt i32 %inc18, %47
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %for.cond19.preheader

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond34.preheader:                             ; preds = %list_add_tail.exit97.for.cond34.preheader_crit_edge, %for.cond19.preheader.for.cond34.preheader_crit_edge, %entry.for.cond34.preheader_crit_edge
  %48 = ptrtoint ptr %num_rxp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_rxp, align 8
  %mul107 = shl i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul107)
  %cmp38108 = icmp sgt i32 %mul107, 0
  br i1 %cmp38108, label %for.cond34.preheader.for.body39_crit_edge, label %for.cond34.preheader.for.end48_crit_edge

for.cond34.preheader.for.end48_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.cond34.preheader.for.body39_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body39

for.body24:                                       ; preds = %list_add_tail.exit97.for.body24_crit_edge, %for.cond19.preheader.for.body24_crit_edge
  %index.1106 = phi i32 [ %inc32, %list_add_tail.exit97.for.body24_crit_edge ], [ 0, %for.cond19.preheader.for.body24_crit_edge ]
  %50 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rxp, align 4
  %arrayidx26 = getelementptr %struct.bna_rxp, ptr %51, i32 %index.1106
  %52 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i89, align 4
  %call.i.i94 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx26, ptr noundef %53, ptr noundef %rxp_free_q) #10
  br i1 %call.i.i94, label %if.end.i.i96, label %for.body24.list_add_tail.exit97_crit_edge

for.body24.list_add_tail.exit97_crit_edge:        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit97

if.end.i.i96:                                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx26, ptr %prev.i89, align 4
  %55 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %rxp_free_q, ptr %arrayidx26, align 4
  %prev3.i.i95 = getelementptr inbounds %struct.list_head, ptr %arrayidx26, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i95 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i95, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %arrayidx26, ptr %53, align 4
  br label %list_add_tail.exit97

list_add_tail.exit97:                             ; preds = %if.end.i.i96, %for.body24.list_add_tail.exit97_crit_edge
  %58 = ptrtoint ptr %rxp_free_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rxp_free_count, align 4
  %inc30 = add i32 %59, 1
  store i32 %inc30, ptr %rxp_free_count, align 4
  %inc32 = add nuw nsw i32 %index.1106, 1
  %60 = ptrtoint ptr %num_rxp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_rxp, align 8
  %cmp23 = icmp slt i32 %inc32, %61
  br i1 %cmp23, label %list_add_tail.exit97.for.body24_crit_edge, label %list_add_tail.exit97.for.cond34.preheader_crit_edge

list_add_tail.exit97.for.cond34.preheader_crit_edge: ; preds = %list_add_tail.exit97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

list_add_tail.exit97.for.body24_crit_edge:        ; preds = %list_add_tail.exit97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.body39:                                       ; preds = %list_add_tail.exit102.for.body39_crit_edge, %for.cond34.preheader.for.body39_crit_edge
  %index.2109 = phi i32 [ %inc47, %list_add_tail.exit102.for.body39_crit_edge ], [ 0, %for.cond34.preheader.for.body39_crit_edge ]
  %62 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rxq, align 4
  %arrayidx41 = getelementptr %struct.bna_rxq, ptr %63, i32 %index.2109
  %64 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i88, align 4
  %call.i.i99 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx41, ptr noundef %65, ptr noundef %rxq_free_q) #10
  br i1 %call.i.i99, label %if.end.i.i101, label %for.body39.list_add_tail.exit102_crit_edge

for.body39.list_add_tail.exit102_crit_edge:       ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit102

if.end.i.i101:                                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx41, ptr %prev.i88, align 4
  %67 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rxq_free_q, ptr %arrayidx41, align 4
  %prev3.i.i100 = getelementptr inbounds %struct.list_head, ptr %arrayidx41, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i100 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i100, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %arrayidx41, ptr %65, align 4
  br label %list_add_tail.exit102

list_add_tail.exit102:                            ; preds = %if.end.i.i101, %for.body39.list_add_tail.exit102_crit_edge
  %70 = ptrtoint ptr %rxq_free_count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rxq_free_count, align 4
  %inc45 = add i32 %71, 1
  store i32 %inc45, ptr %rxq_free_count, align 4
  %inc47 = add nuw nsw i32 %index.2109, 1
  %72 = ptrtoint ptr %num_rxp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_rxp, align 8
  %mul = shl i32 %73, 1
  %cmp38 = icmp slt i32 %inc47, %mul
  br i1 %cmp38, label %list_add_tail.exit102.for.body39_crit_edge, label %list_add_tail.exit102.for.end48_crit_edge

list_add_tail.exit102.for.end48_crit_edge:        ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

list_add_tail.exit102.for.body39_crit_edge:       ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39

for.end48:                                        ; preds = %list_add_tail.exit102.for.end48_crit_edge, %for.cond34.preheader.for.end48_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bna_rx_mod_uninit(ptr nocapture noundef writeonly %rx_mod) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_mod to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rx_mod, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_rx_enet_start_rsp(ptr noundef %rx, ptr nocapture noundef readnone %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfi_enet_cmd = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %msgq = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 8
  tail call void @bfa_msgq_rsp_copy(ptr noundef %msgq, ptr noundef %bfi_enet_cmd, i32 noundef 268) #10
  %hw_id = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %hw_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_id, align 1
  %conv = zext i8 %3 to i32
  %hw_id1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 2
  %4 = ptrtoint ptr %hw_id1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %hw_id1, align 4
  %num_paths = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 5
  %5 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_paths, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp98 = icmp sgt i32 %6, 0
  br i1 %cmp98, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %rxp_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 6
  %q_handles = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %rxp.0103.in = phi ptr [ %rxp_q, %do.body.lr.ph ], [ %rxp.0103, %for.inc.do.body_crit_edge ]
  %q0.0102 = phi ptr [ null, %do.body.lr.ph ], [ %q0.1, %for.inc.do.body_crit_edge ]
  %q1.0101 = phi ptr [ null, %do.body.lr.ph ], [ %q1.1, %for.inc.do.body_crit_edge ]
  %i.099 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  %7 = ptrtoint ptr %rxp.0103.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %rxp.0103 = load ptr, ptr %rxp.0103.in, align 4
  %type = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body.do.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb6
  ]

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rxq = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 2
  %11 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxq, align 4
  br label %do.end

sw.bb3:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rxq4 = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 2
  %large = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %large to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %large, align 4
  %15 = ptrtoint ptr %rxq4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxq4, align 4
  br label %do.end

sw.bb6:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rxq7 = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 2
  %data = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %rxq7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxq7, align 4
  br label %do.end

do.end:                                           ; preds = %sw.bb6, %sw.bb3, %sw.bb, %do.body.do.end_crit_edge
  %q1.1 = phi ptr [ %q1.0101, %do.body.do.end_crit_edge ], [ %20, %sw.bb6 ], [ %16, %sw.bb3 ], [ null, %sw.bb ]
  %q0.1 = phi ptr [ %q0.0102, %do.body.do.end_crit_edge ], [ %18, %sw.bb6 ], [ %14, %sw.bb3 ], [ %12, %sw.bb ]
  %21 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bna, align 4
  %pci_bar_kva = getelementptr inbounds %struct.bna, ptr %22, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_bar_kva, align 4
  %arrayidx = getelementptr [16 x %struct.anon.4], ptr %q_handles, i32 0, i32 %i.099
  %i_dbell = getelementptr [16 x %struct.anon.4], ptr %q_handles, i32 0, i32 %i.099, i32 2
  %25 = ptrtoint ptr %i_dbell to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %i_dbell, align 1
  %add.ptr10 = getelementptr i8, ptr %24, i32 %26
  %ccb = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ccb, align 4
  %i_dbell11 = getelementptr inbounds %struct.bna_ccb, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %i_dbell11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_dbell11, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr10, ptr %30, align 4
  %hw_cqid = getelementptr [16 x %struct.anon.4], ptr %q_handles, i32 0, i32 %i.099, i32 5
  %32 = ptrtoint ptr %hw_cqid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hw_cqid, align 1
  %conv14 = zext i8 %33 to i32
  %hw_id15 = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0103, i32 0, i32 6
  %34 = ptrtoint ptr %hw_id15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv14, ptr %hw_id15, align 4
  %35 = load ptr, ptr %bna, align 4
  %pci_bar_kva18 = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %pci_bar_kva18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_bar_kva18, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx, align 1
  %add.ptr21 = getelementptr i8, ptr %37, i32 %39
  %rcb = getelementptr inbounds %struct.bna_rxq, ptr %q0.1, i32 0, i32 6
  %40 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rcb, align 4
  %q_dbell = getelementptr inbounds %struct.bna_rcb, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %q_dbell to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr21, ptr %q_dbell, align 4
  %hw_lqid = getelementptr [16 x %struct.anon.4], ptr %q_handles, i32 0, i32 %i.099, i32 3
  %43 = ptrtoint ptr %hw_lqid to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hw_lqid, align 1
  %conv24 = zext i8 %44 to i32
  %hw_id25 = getelementptr inbounds %struct.bna_rxq, ptr %q0.1, i32 0, i32 9
  %45 = ptrtoint ptr %hw_id25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv24, ptr %hw_id25, align 8
  %tobool.not = icmp eq ptr %q1.1, null
  br i1 %tobool.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bna, align 4
  %pci_bar_kva28 = getelementptr inbounds %struct.bna, ptr %47, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %pci_bar_kva28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_bar_kva28, align 4
  %qs_dbell = getelementptr [16 x %struct.anon.4], ptr %q_handles, i32 0, i32 %i.099, i32 1
  %50 = ptrtoint ptr %qs_dbell to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %qs_dbell, align 1
  %add.ptr31 = getelementptr i8, ptr %49, i32 %51
  %rcb32 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 6
  %52 = ptrtoint ptr %rcb32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rcb32, align 4
  %q_dbell33 = getelementptr inbounds %struct.bna_rcb, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %q_dbell33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr31, ptr %q_dbell33, align 4
  %hw_sqid = getelementptr [16 x %struct.anon.4], ptr %q_handles, i32 0, i32 %i.099, i32 4
  %55 = ptrtoint ptr %hw_sqid to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hw_sqid, align 1
  %conv36 = zext i8 %56 to i32
  %hw_id37 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 9
  %57 = ptrtoint ptr %hw_id37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv36, ptr %hw_id37, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  %58 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ccb, align 4
  %hw_producer_index = getelementptr inbounds %struct.bna_ccb, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %hw_producer_index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_producer_index, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %61, align 4
  %63 = load ptr, ptr %ccb, align 4
  %producer_index = getelementptr inbounds %struct.bna_ccb, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %producer_index to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %producer_index, align 4
  %65 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rcb, align 4
  %consumer_index = getelementptr inbounds %struct.bna_rcb, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %consumer_index to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %consumer_index, align 4
  %68 = load ptr, ptr %rcb, align 4
  %producer_index44 = getelementptr inbounds %struct.bna_rcb, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %producer_index44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %producer_index44, align 4
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then46

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rcb47 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 6
  %70 = ptrtoint ptr %rcb47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rcb47, align 4
  %consumer_index48 = getelementptr inbounds %struct.bna_rcb, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %consumer_index48 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %consumer_index48, align 4
  %73 = load ptr, ptr %rcb47, align 4
  %producer_index50 = getelementptr inbounds %struct.bna_rcb, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %producer_index50 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %producer_index50, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.099, 1
  %75 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_paths, align 4
  %cmp = icmp slt i32 %inc, %76
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %77 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fsm, align 4
  tail call void %78(ptr noundef %rx, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msgq_rsp_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_rx_enet_stop_rsp(ptr noundef %rx, ptr nocapture noundef readnone %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  tail call void %1(ptr noundef %rx, i32 noundef 5) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bna_rx_res_req(ptr nocapture noundef readonly %q_cfg, ptr noundef writeonly %res_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q0_depth = getelementptr inbounds %struct.bna_rx_config, ptr %q_cfg, i32 0, i32 7
  %0 = ptrtoint ptr %q0_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q0_depth, align 4
  %rxp_type = getelementptr inbounds %struct.bna_rx_config, ptr %q_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %rxp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cond.end29_crit_edge, label %cond.false

entry.cond.end29_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %q1_depth = getelementptr inbounds %struct.bna_rx_config, ptr %q_cfg, i32 0, i32 5
  %4 = ptrtoint ptr %q1_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q1_depth, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false, %entry.cond.end29_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ 0, %entry.cond.end29_crit_edge ]
  %add = add i32 %cond, %1
  %sub.i390 = add i32 %add, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i390)
  %tobool.not.i.i.i = icmp eq i32 %sub.i390, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i390, i1 true) #10, !range !105
  %sub.i.i.i = sub nuw nsw i32 32, %6
  %sub.i.i.op.i.op = shl i32 16, %sub.i.i.i
  %sub.i.i.op.i.op.op = add i32 %sub.i.i.op.i.op, 4095
  %add31 = select i1 %tobool.not.i.i.i, i32 4111, i32 %sub.i.i.op.i.op.op
  %shr = lshr i32 %add31, 12
  %sub.i394 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i394)
  %tobool.not.i.i.i395 = icmp eq i32 %sub.i394, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i394, i1 true) #10, !range !105
  %sub.i.i.i396 = sub nuw nsw i32 32, %7
  %sub.i.i.op.i397.op = shl i32 8, %sub.i.i.i396
  %sub.i.i.op.i397.op.op = add i32 %sub.i.i.op.i397.op, 4095
  %add68 = select i1 %tobool.not.i.i.i395, i32 4103, i32 %sub.i.i.op.i397.op.op
  %shr70 = lshr i32 %add68, 12
  br i1 %cmp, label %cond.end29.if.end_crit_edge, label %cond.end107

cond.end29.if.end_crit_edge:                      ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end107:                                      ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i402 = add i32 %cond, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i402)
  %tobool.not.i.i.i403 = icmp eq i32 %sub.i402, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i402, i1 true) #10, !range !105
  %sub.i.i.i404 = sub nuw nsw i32 32, %8
  %sub.i.i.op.i405.op = shl i32 8, %sub.i.i.i404
  %sub.i.i.op.i405.op.op = add i32 %sub.i.i.op.i405.op, 4095
  %sub.i.i.op.i405.op.op.op = lshr i32 %sub.i.i.op.i405.op.op, 12
  %shr112 = select i1 %tobool.not.i.i.i403, i32 1, i32 %sub.i.i.op.i405.op.op.op
  br label %if.end

if.end:                                           ; preds = %cond.end107, %cond.end29.if.end_crit_edge
  %hpage_count.0 = phi i32 [ %shr112, %cond.end107 ], [ 0, %cond.end29.if.end_crit_edge ]
  %9 = ptrtoint ptr %res_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %res_info, align 4
  %res_u = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1
  %10 = ptrtoint ptr %res_u to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %res_u, align 4
  %len = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 96, ptr %len, align 4
  %num_paths = getelementptr inbounds %struct.bna_rx_config, ptr %q_cfg, i32 0, i32 1
  %12 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_paths, align 4
  %num = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num, align 4
  %arrayidx118 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1
  %15 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %arrayidx118, align 4
  %res_u121 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1
  %16 = ptrtoint ptr %res_u121 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %res_u121, align 4
  %len123 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %len123 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 52, ptr %len123, align 4
  %18 = ptrtoint ptr %rxp_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp125 = icmp ne i32 %19, 1
  %20 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_paths, align 4
  %mul131 = zext i1 %cmp125 to i32
  %cond133 = shl i32 %21, %mul131
  %num134 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %num134 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond133, ptr %num134, align 4
  %arrayidx135 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4
  %23 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx135, align 4
  %res_u138 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1
  %24 = ptrtoint ptr %res_u138 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %res_u138, align 4
  %mul140 = shl nuw nsw i32 %shr, 3
  %len141 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %len141 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul140, ptr %len141, align 4
  %26 = load i32, ptr %num_paths, align 4
  %num143 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %num143 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num143, align 4
  %arrayidx144 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5
  %28 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx144, align 4
  %res_u147 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1
  %29 = ptrtoint ptr %res_u147 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %res_u147, align 4
  %mul149 = shl nuw nsw i32 %shr, 2
  %len150 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %len150 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul149, ptr %len150, align 4
  %31 = load i32, ptr %num_paths, align 4
  %num152 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %num152 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num152, align 4
  %arrayidx153 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6
  %33 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx153, align 4
  %res_u156 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1
  %34 = ptrtoint ptr %res_u156 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %res_u156, align 4
  %mul158 = and i32 %add31, -4096
  %len159 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %len159 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul158, ptr %len159, align 4
  %36 = load i32, ptr %num_paths, align 4
  %num161 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %num161 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %num161, align 4
  %arrayidx162 = getelementptr %struct.bna_res_info, ptr %res_info, i32 8
  %38 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx162, align 4
  %res_u165 = getelementptr %struct.bna_res_info, ptr %res_info, i32 8, i32 1
  %39 = ptrtoint ptr %res_u165 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %res_u165, align 4
  %mul167 = shl nuw nsw i32 %shr70, 3
  %len168 = getelementptr %struct.bna_res_info, ptr %res_info, i32 8, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %len168 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul167, ptr %len168, align 4
  %41 = load i32, ptr %num_paths, align 4
  %num170 = getelementptr %struct.bna_res_info, ptr %res_info, i32 8, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %num170 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %num170, align 4
  %arrayidx171 = getelementptr %struct.bna_res_info, ptr %res_info, i32 10
  %43 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx171, align 4
  %res_u174 = getelementptr %struct.bna_res_info, ptr %res_info, i32 10, i32 1
  %44 = ptrtoint ptr %res_u174 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %res_u174, align 4
  %mul176 = shl nuw nsw i32 %shr70, 2
  %len177 = getelementptr %struct.bna_res_info, ptr %res_info, i32 10, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %len177 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul176, ptr %len177, align 4
  %46 = load i32, ptr %num_paths, align 4
  %num179 = getelementptr %struct.bna_res_info, ptr %res_info, i32 10, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %num179 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %num179, align 4
  %arrayidx180 = getelementptr %struct.bna_res_info, ptr %res_info, i32 11
  %48 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %arrayidx180, align 4
  %res_u183 = getelementptr %struct.bna_res_info, ptr %res_info, i32 11, i32 1
  %49 = ptrtoint ptr %res_u183 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %res_u183, align 4
  %mul185 = and i32 %add68, -4096
  %len186 = getelementptr %struct.bna_res_info, ptr %res_info, i32 11, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %len186 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul185, ptr %len186, align 4
  %51 = load i32, ptr %num_paths, align 4
  %num188 = getelementptr %struct.bna_res_info, ptr %res_info, i32 11, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %num188 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num188, align 4
  %arrayidx189 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7
  %53 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %arrayidx189, align 4
  %res_u192 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1
  %54 = ptrtoint ptr %res_u192 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %res_u192, align 4
  %mul194 = shl nuw nsw i32 %hpage_count.0, 3
  %len195 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %len195 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul194, ptr %len195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hpage_count.0)
  %tobool.not = icmp eq i32 %hpage_count.0, 0
  br i1 %tobool.not, label %cond.end213.critedge, label %cond.true196

cond.true196:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_paths, align 4
  %num201.c380 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %num201.c380 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %num201.c380, align 4
  %arrayidx202.c381 = getelementptr %struct.bna_res_info, ptr %res_info, i32 9
  %59 = ptrtoint ptr %arrayidx202.c381 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %arrayidx202.c381, align 4
  %res_u205.c382 = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1
  %60 = ptrtoint ptr %res_u205.c382 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %res_u205.c382, align 4
  %mul207.c383 = shl nuw nsw i32 %hpage_count.0, 2
  %len208.c384 = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %len208.c384 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul207.c383, ptr %len208.c384, align 4
  %62 = load i32, ptr %num_paths, align 4
  %num215.c385 = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %num215.c385 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %num215.c385, align 4
  %arrayidx216.c386 = getelementptr %struct.bna_res_info, ptr %res_info, i32 12
  %64 = ptrtoint ptr %arrayidx216.c386 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %arrayidx216.c386, align 4
  %res_u219.c387 = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1
  %65 = ptrtoint ptr %res_u219.c387 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %res_u219.c387, align 4
  %mul221.c388 = shl nuw i32 %hpage_count.0, 12
  %len222.c389 = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %len222.c389 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul221.c388, ptr %len222.c389, align 4
  %67 = load i32, ptr %num_paths, align 4
  br label %cond.end227

cond.end213.critedge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %num201.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 2
  %68 = ptrtoint ptr %num201.c to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %num201.c, align 4
  %arrayidx202.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 9
  %69 = ptrtoint ptr %arrayidx202.c to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %arrayidx202.c, align 4
  %res_u205.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1
  %70 = ptrtoint ptr %res_u205.c to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %res_u205.c, align 4
  %len208.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %len208.c to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %len208.c, align 4
  %num215.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1, i32 0, i32 2
  %72 = ptrtoint ptr %num215.c to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %num215.c, align 4
  %arrayidx216.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 12
  %73 = ptrtoint ptr %arrayidx216.c to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %arrayidx216.c, align 4
  %res_u219.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1
  %74 = ptrtoint ptr %res_u219.c to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %res_u219.c, align 4
  %len222.c = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %len222.c to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %len222.c, align 4
  br label %cond.end227

cond.end227:                                      ; preds = %cond.end213.critedge, %cond.true196
  %cond228 = phi i32 [ %67, %cond.true196 ], [ 0, %cond.end213.critedge ]
  %num229 = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %num229 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond228, ptr %num229, align 4
  %arrayidx230 = getelementptr %struct.bna_res_info, ptr %res_info, i32 13
  %77 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %arrayidx230, align 4
  %res_u233 = getelementptr %struct.bna_res_info, ptr %res_info, i32 13, i32 1
  %78 = ptrtoint ptr %res_u233 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %res_u233, align 4
  %len235 = getelementptr %struct.bna_res_info, ptr %res_info, i32 13, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %len235 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %len235, align 4
  %80 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_paths, align 4
  %num237 = getelementptr %struct.bna_res_info, ptr %res_info, i32 13, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %num237 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %num237, align 4
  %arrayidx238 = getelementptr %struct.bna_res_info, ptr %res_info, i32 14
  %83 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %arrayidx238, align 4
  %res_u241 = getelementptr %struct.bna_res_info, ptr %res_info, i32 14, i32 1
  %84 = ptrtoint ptr %res_u241 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %res_u241, align 4
  %len243 = getelementptr %struct.bna_res_info, ptr %res_info, i32 14, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %len243 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 64, ptr %len243, align 4
  %num244 = getelementptr %struct.bna_res_info, ptr %res_info, i32 14, i32 1, i32 0, i32 2
  %86 = ptrtoint ptr %num244 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %num244, align 4
  %arrayidx245 = getelementptr %struct.bna_res_info, ptr %res_info, i32 15
  %87 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %arrayidx245, align 4
  %res_u248 = getelementptr %struct.bna_res_info, ptr %res_info, i32 15, i32 1
  %88 = ptrtoint ptr %res_u248 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %res_u248, align 4
  %89 = load i32, ptr %num_paths, align 4
  %num252 = getelementptr %struct.bna_res_info, ptr %res_info, i32 15, i32 1, i32 0, i32 1
  %90 = ptrtoint ptr %num252 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %num252, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bna_rx_create(ptr noundef %bna, ptr noundef %bnad, ptr nocapture noundef readonly %rx_cfg, ptr nocapture noundef readonly %rx_cbfn, ptr noundef readonly %res_info, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_free_count.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 6
  %0 = ptrtoint ptr %rx_free_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_free_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %rxp_free_count.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 8
  %2 = ptrtoint ptr %rxp_free_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxp_free_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %rxq_free_count.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 10
  %4 = ptrtoint ptr %rxq_free_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxq_free_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %rxp_type.i = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 2
  %6 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.i = icmp eq i32 %7, 1
  %num_paths.i = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_paths.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp7.i = icmp slt i32 %3, %9
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp11.i = icmp slt i32 %5, %9
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %if.then5.i.cleanup_crit_edge, label %if.then5.i.if.end_crit_edge

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %mul.i = shl i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul.i)
  %cmp20.i = icmp slt i32 %5, %mul.i
  %or.cond37.i = select i1 %cmp7.i, i1 true, i1 %cmp20.i
  br i1 %or.cond37.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge
  %res_u = getelementptr %struct.bna_res_info, ptr %res_info, i32 15, i32 1
  %mdl = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %mdl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdl, align 4
  %mdl7 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %mdl7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdl7, align 4
  %mdl11 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %mdl11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdl11, align 4
  %mdl15 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %mdl15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdl15, align 4
  %mdl19 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %mdl19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdl19, align 4
  %mdl23 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %mdl23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdl23, align 4
  %mdl27 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %mdl27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdl27, align 4
  %mdl31 = getelementptr %struct.bna_res_info, ptr %res_info, i32 7, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %mdl31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdl31, align 4
  %mdl35 = getelementptr %struct.bna_res_info, ptr %res_info, i32 8, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %mdl35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdl35, align 4
  %mdl39 = getelementptr %struct.bna_res_info, ptr %res_info, i32 9, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %mdl39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdl39, align 4
  %mdl43 = getelementptr %struct.bna_res_info, ptr %res_info, i32 10, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %mdl43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdl43, align 4
  %mdl47 = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %mdl47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdl47, align 4
  %mdl51 = getelementptr %struct.bna_res_info, ptr %res_info, i32 11, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %mdl51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdl51, align 4
  %len = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %div600 = lshr i32 %37, 12
  %len57 = getelementptr %struct.bna_res_info, ptr %res_info, i32 11, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %len57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len57, align 4
  %div58601 = lshr i32 %39, 12
  %len61 = getelementptr %struct.bna_res_info, ptr %res_info, i32 12, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %len61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len61, align 4
  %div62602 = lshr i32 %41, 12
  %42 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_cfg, align 4
  %rx_free_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 4
  %44 = ptrtoint ptr %rx_free_q.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %rx_free_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %45, %rx_free_q.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !106

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bna_tx_rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1804, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i603 = icmp eq i32 %43, 0
  %prev.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 4, i32 1
  %rx.0.in.i = select i1 %cmp.i603, ptr %rx_free_q.i, ptr %prev.i
  %46 = ptrtoint ptr %rx.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %rx.0.i = load ptr, ptr %rx.0.in.i, align 4
  %dec.i = add i32 %1, -1
  %47 = ptrtoint ptr %rx_free_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dec.i, ptr %rx_free_count.i, align 4
  %rx_active_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx.0.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.__list_del_entry.exit.i.i_crit_edge

do.end8.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rx.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %rx.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %do.end8.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 5, i32 1
  %54 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rx.0.i, ptr noundef %55, ptr noundef %rx_active_q.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.bna_rx_get.exit_crit_edge

__list_del_entry.exit.i.i.bna_rx_get.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rx_get.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rx.0.i, ptr %prev.i2.i.i, align 4
  %57 = ptrtoint ptr %rx.0.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rx_active_q.i, ptr %rx.0.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rx.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %rx.0.i, ptr %55, align 4
  br label %bna_rx_get.exit

bna_rx_get.exit:                                  ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.bna_rx_get.exit_crit_edge
  %type16.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 4
  %60 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %43, ptr %type16.i, align 4
  %bna64 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 21
  %61 = ptrtoint ptr %bna64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %bna, ptr %bna64, align 4
  %rx_flags = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 9
  %62 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rx_flags, align 4
  %rxp_q = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 6
  %63 = ptrtoint ptr %rxp_q to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %rxp_q, ptr %rxp_q, align 4
  %prev.i605 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 6, i32 1
  %64 = ptrtoint ptr %prev.i605 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rxp_q, ptr %prev.i605, align 4
  %stop_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 19
  %65 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %stop_cbfn, align 4
  %stop_cbarg = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 20
  %66 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %stop_cbarg, align 4
  %priv65 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 22
  %67 = ptrtoint ptr %priv65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %priv, ptr %priv65, align 4
  %68 = ptrtoint ptr %rx_cbfn to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_cbfn, align 4
  %rcb_setup_cbfn66 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 12
  %70 = ptrtoint ptr %rcb_setup_cbfn66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %rcb_setup_cbfn66, align 4
  %rcb_destroy_cbfn = getelementptr inbounds %struct.bna_rx_event_cbfn, ptr %rx_cbfn, i32 0, i32 1
  %71 = ptrtoint ptr %rcb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rcb_destroy_cbfn, align 4
  %rcb_destroy_cbfn67 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 13
  %73 = ptrtoint ptr %rcb_destroy_cbfn67 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %rcb_destroy_cbfn67, align 4
  %ccb_setup_cbfn = getelementptr inbounds %struct.bna_rx_event_cbfn, ptr %rx_cbfn, i32 0, i32 2
  %74 = ptrtoint ptr %ccb_setup_cbfn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ccb_setup_cbfn, align 4
  %ccb_setup_cbfn68 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 14
  %76 = ptrtoint ptr %ccb_setup_cbfn68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %ccb_setup_cbfn68, align 4
  %ccb_destroy_cbfn = getelementptr inbounds %struct.bna_rx_event_cbfn, ptr %rx_cbfn, i32 0, i32 3
  %77 = ptrtoint ptr %ccb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ccb_destroy_cbfn, align 4
  %ccb_destroy_cbfn69 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 15
  %79 = ptrtoint ptr %ccb_destroy_cbfn69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %ccb_destroy_cbfn69, align 4
  %rx_stall_cbfn = getelementptr inbounds %struct.bna_rx_event_cbfn, ptr %rx_cbfn, i32 0, i32 4
  %80 = ptrtoint ptr %rx_stall_cbfn to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_stall_cbfn, align 4
  %rx_stall_cbfn70 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 16
  %82 = ptrtoint ptr %rx_stall_cbfn70 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %rx_stall_cbfn70, align 4
  %rx_cleanup_cbfn = getelementptr inbounds %struct.bna_rx_event_cbfn, ptr %rx_cbfn, i32 0, i32 5
  %83 = ptrtoint ptr %rx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx_cleanup_cbfn, align 4
  %rx_cleanup_cbfn71 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 17
  %85 = ptrtoint ptr %rx_cleanup_cbfn71 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %rx_cleanup_cbfn71, align 4
  %rx_post_cbfn = getelementptr inbounds %struct.bna_rx_event_cbfn, ptr %rx_cbfn, i32 0, i32 6
  %86 = ptrtoint ptr %rx_post_cbfn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_post_cbfn, align 4
  %rx_post_cbfn72 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 18
  %88 = ptrtoint ptr %rx_post_cbfn72 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %rx_post_cbfn72, align 4
  %flags = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 11
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %bna_rx_get.exit.if.end95_crit_edge, label %if.then76

bna_rx_get.exit.if.end95_crit_edge:               ; preds = %bna_rx_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then76:                                        ; preds = %bna_rx_get.exit
  %91 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %43, label %if.then76.if.end95_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb85
  ]

if.then76.if.end95_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

sw.bb:                                            ; preds = %if.then76
  %and80 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %sw.bb.if.end95.sink.split_crit_edge, label %sw.bb.if.end95_crit_edge

sw.bb.if.end95_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

sw.bb.if.end95.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.sink.split

sw.bb85:                                          ; preds = %if.then76
  %and89 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %sw.bb85.if.end95_crit_edge, label %sw.bb85.if.end95.sink.split_crit_edge

sw.bb85.if.end95.sink.split_crit_edge:            ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.sink.split

sw.bb85.if.end95_crit_edge:                       ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.end95.sink.split:                              ; preds = %sw.bb85.if.end95.sink.split_crit_edge, %sw.bb.if.end95.sink.split_crit_edge
  %92 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %rx_flags, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %sw.bb85.if.end95_crit_edge, %sw.bb.if.end95_crit_edge, %if.then76.if.end95_crit_edge, %bna_rx_get.exit.if.end95_crit_edge
  %93 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_paths.i, align 4
  %num_paths96 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 5
  %95 = ptrtoint ptr %num_paths96 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %num_paths96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp697.not = icmp eq i32 %94, 0
  br i1 %cmp697.not, label %if.end95.for.end_crit_edge, label %for.body.lr.ph

if.end95.for.end_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end95
  %rxp_free_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 7
  %rxq_free_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 9
  %num = getelementptr %struct.bna_res_info, ptr %res_info, i32 15, i32 1, i32 0, i32 1
  %idl114 = getelementptr %struct.bna_res_info, ptr %res_info, i32 15, i32 1, i32 0, i32 2
  %mdl121 = getelementptr %struct.bna_res_info, ptr %res_info, i32 13, i32 1, i32 0, i32 4
  %coalescing_timeo = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 3
  %q0_depth = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 7
  %q0_multi_buf = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 10
  %q0_buf_size = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 8
  %q0_num_vecs = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 9
  %bnad174 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 19
  %q1_depth = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 5
  %forced_offset = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 13, i32 1
  %q1_buf_size = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0701 = phi i32 [ 0, %for.body.lr.ph ], [ %inc349, %for.inc.for.body_crit_edge ]
  %rcb_idx.0700 = phi i32 [ 0, %for.body.lr.ph ], [ %rcb_idx.1, %for.inc.for.body_crit_edge ]
  %hq_idx.0698 = phi i32 [ 0, %for.body.lr.ph ], [ %hq_idx.1, %for.inc.for.body_crit_edge ]
  %96 = ptrtoint ptr %rxp_free_q.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rxp_free_q.i, align 4
  %call.i.i.i606 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %97) #10
  br i1 %call.i.i.i606, label %if.end.i.i.i609, label %for.body.bna_rxp_get.exit_crit_edge

for.body.bna_rxp_get.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxp_get.exit

if.end.i.i.i609:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i607 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i607 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i607, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %97, align 4
  %prev1.i.i.i.i608 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i.i608 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i.i608, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %bna_rxp_get.exit

bna_rxp_get.exit:                                 ; preds = %if.end.i.i.i609, %for.body.bna_rxp_get.exit_crit_edge
  %104 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 256 to ptr), ptr %97, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %106 = ptrtoint ptr %rxp_free_count.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rxp_free_count.i, align 4
  %dec.i611 = add i32 %107, -1
  store i32 %dec.i611, ptr %rxp_free_count.i, align 4
  %108 = ptrtoint ptr %prev.i605 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i605, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %97, ptr noundef %109, ptr noundef %rxp_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %bna_rxp_get.exit.list_add_tail.exit_crit_edge

bna_rxp_get.exit.list_add_tail.exit_crit_edge:    ; preds = %bna_rxp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %bna_rxp_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %prev.i605 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %97, ptr %prev.i605, align 4
  %111 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %rxp_q, ptr %97, align 4
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %97, ptr %109, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %bna_rxp_get.exit.list_add_tail.exit_crit_edge
  %114 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rxp_type.i, align 4
  %type100 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 1
  %116 = ptrtoint ptr %type100 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %type100, align 4
  %rx101 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 4
  %117 = ptrtoint ptr %rx101 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %rx.0.i, ptr %rx101, align 4
  %cq = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3
  %rx102 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 3
  %118 = ptrtoint ptr %rx102 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %rx.0.i, ptr %rx102, align 4
  %119 = ptrtoint ptr %rxq_free_q.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rxq_free_q.i, align 4
  %call.i.i.i613 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %120) #10
  br i1 %call.i.i.i613, label %if.end.i.i.i616, label %list_add_tail.exit.bna_rxq_get.exit_crit_edge

list_add_tail.exit.bna_rxq_get.exit_crit_edge:    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_get.exit

if.end.i.i.i616:                                  ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i614 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i614 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i614, align 4
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %120, align 4
  %prev1.i.i.i.i615 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i615 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i615, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %bna_rxq_get.exit

bna_rxq_get.exit:                                 ; preds = %if.end.i.i.i616, %list_add_tail.exit.bna_rxq_get.exit_crit_edge
  %127 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %120, align 4
  %prev.i.i617 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i617 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i617, align 4
  %129 = ptrtoint ptr %rxq_free_count.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rxq_free_count.i, align 4
  %dec.i619 = add i32 %130, -1
  store i32 %dec.i619, ptr %rxq_free_count.i, align 4
  %131 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rxp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp105 = icmp eq i32 %132, 1
  br i1 %cmp105, label %bna_rxq_get.exit.if.end108_crit_edge, label %if.else

bna_rxq_get.exit.if.end108_crit_edge:             ; preds = %bna_rxq_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.else:                                          ; preds = %bna_rxq_get.exit
  %133 = ptrtoint ptr %rxq_free_q.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rxq_free_q.i, align 4
  %call.i.i.i621 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %134) #10
  br i1 %call.i.i.i621, label %if.end.i.i.i624, label %if.else.bna_rxq_get.exit628_crit_edge

if.else.bna_rxq_get.exit628_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_get.exit628

if.end.i.i.i624:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i622 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i622 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i.i622, align 4
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %134, align 4
  %prev1.i.i.i.i623 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i.i623 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i.i623, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %bna_rxq_get.exit628

bna_rxq_get.exit628:                              ; preds = %if.end.i.i.i624, %if.else.bna_rxq_get.exit628_crit_edge
  %141 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  %prev.i.i625 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i625 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i625, align 4
  %143 = ptrtoint ptr %rxq_free_count.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rxq_free_count.i, align 4
  %dec.i627 = add i32 %144, -1
  store i32 %dec.i627, ptr %rxq_free_count.i, align 4
  br label %if.end108

if.end108:                                        ; preds = %bna_rxq_get.exit628, %bna_rxq_get.exit.if.end108_crit_edge
  %q1.0 = phi ptr [ %134, %bna_rxq_get.exit628 ], [ null, %bna_rxq_get.exit.if.end108_crit_edge ]
  %145 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp109 = icmp eq i32 %146, 1
  %147 = ptrtoint ptr %idl114 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %idl114, align 4
  %.sink.in.idx = select i1 %cmp109, i32 0, i32 %i.0701
  %.sink.in = getelementptr %struct.bna_intr_descr, ptr %148, i32 %.sink.in.idx
  %149 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %149)
  %.sink = load i32, ptr %.sink.in, align 4
  %150 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 5
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %.sink, ptr %150, align 4
  %152 = ptrtoint ptr %mdl121 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mdl121, align 4
  %lsb = getelementptr %struct.bna_mem_descr, ptr %153, i32 %i.0701, i32 2, i32 1
  %154 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %lsb, align 4
  %ib = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2
  %lsb124 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 0, i32 1
  %156 = ptrtoint ptr %lsb124 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %lsb124, align 4
  %157 = load ptr, ptr %mdl121, align 4
  %dma129 = getelementptr %struct.bna_mem_descr, ptr %157, i32 %i.0701, i32 2
  %158 = ptrtoint ptr %dma129 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dma129, align 4
  %160 = ptrtoint ptr %ib to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %ib, align 4
  %161 = load ptr, ptr %mdl121, align 4
  %kva = getelementptr %struct.bna_mem_descr, ptr %161, i32 %i.0701, i32 1
  %162 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %kva, align 4
  %ib_seg_host_addr_kva = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 1
  %164 = ptrtoint ptr %ib_seg_host_addr_kva to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %ib_seg_host_addr_kva, align 4
  %165 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %res_u, align 4
  %intr_type142 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 3
  %167 = ptrtoint ptr %intr_type142 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %intr_type142, align 4
  %168 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %168)
  %cmp144 = icmp eq i32 %168, 2
  %169 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %150, align 4
  %shl = shl nuw i32 1, %170
  %shl.sink = select i1 %cmp144, i32 %170, i32 %shl
  %171 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %shl.sink, ptr %171, align 4
  %173 = ptrtoint ptr %coalescing_timeo to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %coalescing_timeo, align 4
  %conv = trunc i32 %174 to i8
  %coalescing_timeo157 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 5
  %175 = ptrtoint ptr %coalescing_timeo157 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv, ptr %coalescing_timeo157, align 4
  %interpkt_count = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 6
  %176 = ptrtoint ptr %interpkt_count to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 6, ptr %interpkt_count, align 4
  %interpkt_timeo = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 7
  %177 = ptrtoint ptr %interpkt_timeo to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 3, ptr %interpkt_timeo, align 4
  %178 = ptrtoint ptr %type100 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %type100, align 4
  %180 = zext i32 %179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %179, label %if.end108.bna_rxp_add_rxqs.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
  ]

if.end108.bna_rxp_add_rxqs.exit_crit_edge:        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxp_add_rxqs.exit

sw.bb.i:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %rxq.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 2
  %181 = ptrtoint ptr %rxq.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %120, ptr %rxq.i, align 4
  %reserved.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 2, i32 0, i32 1
  %182 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %reserved.i, align 4
  br label %bna_rxp_add_rxqs.exit

sw.bb2.i:                                         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %rxq3.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 2
  %large.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 2, i32 0, i32 1
  %183 = ptrtoint ptr %large.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %120, ptr %large.i, align 4
  %184 = ptrtoint ptr %rxq3.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %q1.0, ptr %rxq3.i, align 4
  br label %bna_rxp_add_rxqs.exit

sw.bb5.i:                                         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %rxq6.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 2, i32 0, i32 1
  %185 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %120, ptr %data.i, align 4
  %186 = ptrtoint ptr %rxq6.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %q1.0, ptr %rxq6.i, align 4
  br label %bna_rxp_add_rxqs.exit

bna_rxp_add_rxqs.exit:                            ; preds = %sw.bb5.i, %sw.bb2.i, %sw.bb.i, %if.end108.bna_rxp_add_rxqs.exit_crit_edge
  %rx162 = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 8
  %187 = ptrtoint ptr %rx162 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %rx.0.i, ptr %rx162, align 4
  %rxp163 = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 7
  %188 = ptrtoint ptr %rxp163 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %97, ptr %rxp163, align 8
  %kva165 = getelementptr %struct.bna_mem_descr, ptr %13, i32 %rcb_idx.0700, i32 1
  %189 = ptrtoint ptr %kva165 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %kva165, align 4
  %rcb = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 6
  %191 = ptrtoint ptr %rcb to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %rcb, align 4
  %kva167 = getelementptr %struct.bna_mem_descr, ptr %15, i32 %i.0701, i32 1
  %192 = ptrtoint ptr %kva167 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %kva167, align 4
  %unmap_q = getelementptr inbounds %struct.bna_rcb, ptr %190, i32 0, i32 2
  %194 = ptrtoint ptr %unmap_q to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %unmap_q, align 4
  %inc = add i32 %rcb_idx.0700, 1
  %inc349 = add nuw i32 %i.0701, 1
  %195 = ptrtoint ptr %q0_depth to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %q0_depth, align 4
  %197 = load ptr, ptr %rcb, align 4
  %q_depth = getelementptr inbounds %struct.bna_rcb, ptr %197, i32 0, i32 5
  %198 = ptrtoint ptr %q_depth to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %196, ptr %q_depth, align 4
  %199 = load i32, ptr %q0_depth, align 4
  %q_depth172 = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 2
  %200 = ptrtoint ptr %q_depth172 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %q_depth172, align 4
  %201 = ptrtoint ptr %q0_multi_buf to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %q0_multi_buf, align 4
  %multi_buffer = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 4
  %203 = ptrtoint ptr %multi_buffer to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %multi_buffer, align 4
  %204 = ptrtoint ptr %q0_buf_size to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %q0_buf_size, align 4
  %buffer_size = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 1
  %206 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %buffer_size, align 8
  %207 = ptrtoint ptr %q0_num_vecs to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %q0_num_vecs, align 4
  %num_vecs = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 3
  %209 = ptrtoint ptr %num_vecs to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %num_vecs, align 8
  %210 = load ptr, ptr %rcb, align 4
  %rxq = getelementptr inbounds %struct.bna_rcb, ptr %210, i32 0, i32 7
  %211 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %120, ptr %rxq, align 4
  %212 = ptrtoint ptr %bnad174 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bnad174, align 4
  %214 = load ptr, ptr %rcb, align 4
  %bnad176 = getelementptr inbounds %struct.bna_rcb, ptr %214, i32 0, i32 9
  %215 = ptrtoint ptr %bnad176 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %213, ptr %bnad176, align 4
  %216 = load ptr, ptr %rcb, align 4
  %id = getelementptr inbounds %struct.bna_rcb, ptr %216, i32 0, i32 12
  %217 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %id, align 4
  %rx_packets = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 10
  %dma1.i = getelementptr %struct.bna_mem_descr, ptr %27, i32 %i.0701, i32 2
  %lsb.i = getelementptr %struct.bna_mem_descr, ptr %27, i32 %i.0701, i32 2, i32 1
  %218 = call ptr @memset(ptr %rx_packets, i32 0, i32 40)
  %219 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %lsb.i, align 4
  %qpt.i = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 5
  %lsb2.i = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 5, i32 0, i32 1
  %221 = ptrtoint ptr %lsb2.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %lsb2.i, align 4
  %222 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %dma1.i, align 4
  %224 = ptrtoint ptr %qpt.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %qpt.i, align 8
  %kva7.i = getelementptr %struct.bna_mem_descr, ptr %27, i32 %i.0701, i32 1
  %225 = ptrtoint ptr %kva7.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %kva7.i, align 4
  %kv_qpt_ptr.i = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 5, i32 1
  %227 = ptrtoint ptr %kv_qpt_ptr.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %226, ptr %kv_qpt_ptr.i, align 8
  %page_count10.i = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 5, i32 2
  %228 = ptrtoint ptr %page_count10.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %div58601, ptr %page_count10.i, align 4
  %page_size12.i = getelementptr inbounds %struct.bna_rxq, ptr %120, i32 0, i32 5, i32 3
  %229 = ptrtoint ptr %page_size12.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 4096, ptr %page_size12.i, align 8
  %kva13.i = getelementptr %struct.bna_mem_descr, ptr %31, i32 %i.0701, i32 1
  %230 = ptrtoint ptr %kva13.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %kva13.i, align 4
  %232 = load ptr, ptr %rcb, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %231, ptr %232, align 4
  %kva14.i = getelementptr %struct.bna_mem_descr, ptr %35, i32 %i.0701, i32 1
  %234 = ptrtoint ptr %kva14.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %kva14.i, align 4
  %236 = load ptr, ptr %rcb, align 4
  %sw_q.i = getelementptr inbounds %struct.bna_rcb, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %sw_q.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %235, ptr %sw_q.i, align 4
  %238 = load i32, ptr %page_count10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp1.not.i = icmp eq i32 %238, 0
  br i1 %cmp1.not.i, label %bna_rxp_add_rxqs.exit.bna_rxq_qpt_setup.exit_crit_edge, label %for.body.preheader.i

bna_rxp_add_rxqs.exit.bna_rxq_qpt_setup.exit_crit_edge: ; preds = %bna_rxp_add_rxqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_qpt_setup.exit

for.body.preheader.i:                             ; preds = %bna_rxp_add_rxqs.exit
  %dma17.i = getelementptr %struct.bna_mem_descr, ptr %35, i32 %i.0701, i32 2
  %239 = ptrtoint ptr %dma17.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dma17.i, align 4
  %conv.i = zext i32 %240 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %lsb20.i = getelementptr %struct.bna_mem_descr, ptr %35, i32 %i.0701, i32 2, i32 1
  %241 = ptrtoint ptr %lsb20.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %lsb20.i, align 4
  %conv21.i = zext i32 %242 to i64
  %or.i = or i64 %shl.i, %conv21.i
  %243 = ptrtoint ptr %kva14.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %kva14.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %kva.04.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %244, %for.body.preheader.i ]
  %dma.03.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ %or.i, %for.body.preheader.i ]
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %245 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rcb, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %arrayidx.i = getelementptr ptr, ptr %248, i32 %i.02.i
  %249 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %kva.04.i, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %kva.04.i, i32 4096
  %tmp_addr.sroa.0.0.extract.shift.i = lshr i64 %dma.03.i, 32
  %tmp_addr.sroa.0.0.extract.trunc.i = trunc i64 %tmp_addr.sroa.0.0.extract.shift.i to i32
  %tmp_addr.sroa.5.0.extract.trunc.i = trunc i64 %dma.03.i to i32
  %250 = ptrtoint ptr %kv_qpt_ptr.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %kv_qpt_ptr.i, align 8
  %lsb38.i = getelementptr %struct.bna_dma_addr, ptr %251, i32 %i.02.i, i32 1
  %252 = ptrtoint ptr %lsb38.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %tmp_addr.sroa.5.0.extract.trunc.i, ptr %lsb38.i, align 4
  %253 = load ptr, ptr %kv_qpt_ptr.i, align 8
  %arrayidx42.i = getelementptr %struct.bna_dma_addr, ptr %253, i32 %i.02.i
  %254 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %tmp_addr.sroa.0.0.extract.trunc.i, ptr %arrayidx42.i, align 4
  %add.i = add i64 %dma.03.i, 4096
  %inc.i = add nuw i32 %i.02.i, 1
  %255 = ptrtoint ptr %page_count10.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %page_count10.i, align 4
  %cmp.i629 = icmp ult i32 %inc.i, %256
  br i1 %cmp.i629, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bna_rxq_qpt_setup.exit_crit_edge

for.body.i.bna_rxq_qpt_setup.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_qpt_setup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bna_rxq_qpt_setup.exit:                           ; preds = %for.body.i.bna_rxq_qpt_setup.exit_crit_edge, %bna_rxp_add_rxqs.exit.bna_rxq_qpt_setup.exit_crit_edge
  %257 = ptrtoint ptr %rcb_setup_cbfn66 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rcb_setup_cbfn66, align 4
  %tobool182.not = icmp eq ptr %258, null
  br i1 %tobool182.not, label %bna_rxq_qpt_setup.exit.if.end186_crit_edge, label %if.then183

bna_rxq_qpt_setup.exit.if.end186_crit_edge:       ; preds = %bna_rxq_qpt_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then183:                                       ; preds = %bna_rxq_qpt_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %259 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rcb, align 4
  tail call void %258(ptr noundef %bnad, ptr noundef %260) #10
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %bna_rxq_qpt_setup.exit.if.end186_crit_edge
  %tobool187.not = icmp eq ptr %q1.0, null
  br i1 %tobool187.not, label %if.end186.if.end231_crit_edge, label %if.then188

if.end186.if.end231_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then188:                                       ; preds = %if.end186
  %rx189 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 8
  %261 = ptrtoint ptr %rx189 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %rx.0.i, ptr %rx189, align 4
  %rxp190 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 7
  %262 = ptrtoint ptr %rxp190 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %97, ptr %rxp190, align 8
  %kva192 = getelementptr %struct.bna_mem_descr, ptr %13, i32 %inc, i32 1
  %263 = ptrtoint ptr %kva192 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %kva192, align 4
  %rcb193 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 6
  %265 = ptrtoint ptr %rcb193 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %264, ptr %rcb193, align 4
  %kva195 = getelementptr %struct.bna_mem_descr, ptr %17, i32 %hq_idx.0698, i32 1
  %266 = ptrtoint ptr %kva195 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %kva195, align 4
  %unmap_q197 = getelementptr inbounds %struct.bna_rcb, ptr %264, i32 0, i32 2
  %268 = ptrtoint ptr %unmap_q197 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %267, ptr %unmap_q197, align 4
  %inc198 = add i32 %rcb_idx.0700, 2
  %inc199 = add i32 %hq_idx.0698, 1
  %269 = ptrtoint ptr %q1_depth to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %q1_depth, align 4
  %271 = load ptr, ptr %rcb193, align 4
  %q_depth201 = getelementptr inbounds %struct.bna_rcb, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %q_depth201 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %270, ptr %q_depth201, align 4
  %273 = load i32, ptr %q1_depth, align 4
  %q_depth203 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 2
  %274 = ptrtoint ptr %q_depth203 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %q_depth203, align 4
  %multi_buffer204 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 4
  %275 = ptrtoint ptr %multi_buffer204 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %multi_buffer204, align 4
  %num_vecs205 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 3
  %276 = ptrtoint ptr %num_vecs205 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 1, ptr %num_vecs205, align 8
  %277 = load ptr, ptr %rcb193, align 4
  %rxq207 = getelementptr inbounds %struct.bna_rcb, ptr %277, i32 0, i32 7
  %278 = ptrtoint ptr %rxq207 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %q1.0, ptr %rxq207, align 4
  %279 = ptrtoint ptr %bnad174 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %bnad174, align 4
  %281 = load ptr, ptr %rcb193, align 4
  %bnad210 = getelementptr inbounds %struct.bna_rcb, ptr %281, i32 0, i32 9
  %282 = ptrtoint ptr %bnad210 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %280, ptr %bnad210, align 4
  %283 = load ptr, ptr %rcb193, align 4
  %id212 = getelementptr inbounds %struct.bna_rcb, ptr %283, i32 0, i32 12
  %284 = ptrtoint ptr %id212 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 1, ptr %id212, align 4
  %285 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %rxp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %286)
  %cmp214 = icmp eq i32 %286, 3
  %cond.in = select i1 %cmp214, ptr %forced_offset, ptr %q1_buf_size
  %287 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %287)
  %cond = load i32, ptr %cond.in, align 4
  %buffer_size216 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 1
  %288 = ptrtoint ptr %buffer_size216 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %cond, ptr %buffer_size216, align 8
  %rx_packets218 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 10
  %dma1.i630 = getelementptr %struct.bna_mem_descr, ptr %25, i32 %i.0701, i32 2
  %lsb.i631 = getelementptr %struct.bna_mem_descr, ptr %25, i32 %i.0701, i32 2, i32 1
  %289 = call ptr @memset(ptr %rx_packets218, i32 0, i32 40)
  %290 = ptrtoint ptr %lsb.i631 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %lsb.i631, align 4
  %qpt.i632 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 5
  %lsb2.i633 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 5, i32 0, i32 1
  %292 = ptrtoint ptr %lsb2.i633 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %lsb2.i633, align 4
  %293 = ptrtoint ptr %dma1.i630 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %dma1.i630, align 4
  %295 = ptrtoint ptr %qpt.i632 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %qpt.i632, align 8
  %kva7.i634 = getelementptr %struct.bna_mem_descr, ptr %25, i32 %i.0701, i32 1
  %296 = ptrtoint ptr %kva7.i634 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %kva7.i634, align 4
  %kv_qpt_ptr.i635 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 5, i32 1
  %298 = ptrtoint ptr %kv_qpt_ptr.i635 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %297, ptr %kv_qpt_ptr.i635, align 8
  %page_count10.i636 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 5, i32 2
  %299 = ptrtoint ptr %page_count10.i636 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %div62602, ptr %page_count10.i636, align 4
  %page_size12.i637 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 5, i32 3
  %300 = ptrtoint ptr %page_size12.i637 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 4096, ptr %page_size12.i637, align 8
  %kva13.i638 = getelementptr %struct.bna_mem_descr, ptr %29, i32 %i.0701, i32 1
  %301 = ptrtoint ptr %kva13.i638 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %kva13.i638, align 4
  %303 = ptrtoint ptr %rcb193 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %rcb193, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %302, ptr %304, align 4
  %kva14.i640 = getelementptr %struct.bna_mem_descr, ptr %33, i32 %i.0701, i32 1
  %306 = ptrtoint ptr %kva14.i640 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %kva14.i640, align 4
  %308 = load ptr, ptr %rcb193, align 4
  %sw_q.i641 = getelementptr inbounds %struct.bna_rcb, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %sw_q.i641 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %307, ptr %sw_q.i641, align 4
  %310 = load i32, ptr %page_count10.i636, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %cmp1.not.i642 = icmp eq i32 %310, 0
  br i1 %cmp1.not.i642, label %if.then188.bna_rxq_qpt_setup.exit664_crit_edge, label %for.body.preheader.i649

if.then188.bna_rxq_qpt_setup.exit664_crit_edge:   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_qpt_setup.exit664

for.body.preheader.i649:                          ; preds = %if.then188
  %dma17.i643 = getelementptr %struct.bna_mem_descr, ptr %33, i32 %i.0701, i32 2
  %311 = ptrtoint ptr %dma17.i643 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %dma17.i643, align 4
  %conv.i644 = zext i32 %312 to i64
  %shl.i645 = shl nuw i64 %conv.i644, 32
  %lsb20.i646 = getelementptr %struct.bna_mem_descr, ptr %33, i32 %i.0701, i32 2, i32 1
  %313 = ptrtoint ptr %lsb20.i646 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %lsb20.i646, align 4
  %conv21.i647 = zext i32 %314 to i64
  %or.i648 = or i64 %shl.i645, %conv21.i647
  %315 = ptrtoint ptr %kva14.i640 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %kva14.i640, align 4
  br label %for.body.i663

for.body.i663:                                    ; preds = %for.body.i663.for.body.i663_crit_edge, %for.body.preheader.i649
  %kva.04.i650 = phi ptr [ %add.ptr.i654, %for.body.i663.for.body.i663_crit_edge ], [ %316, %for.body.preheader.i649 ]
  %dma.03.i651 = phi i64 [ %add.i660, %for.body.i663.for.body.i663_crit_edge ], [ %or.i648, %for.body.preheader.i649 ]
  %i.02.i652 = phi i32 [ %inc.i661, %for.body.i663.for.body.i663_crit_edge ], [ 0, %for.body.preheader.i649 ]
  %317 = ptrtoint ptr %rcb193 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %rcb193, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %arrayidx.i653 = getelementptr ptr, ptr %320, i32 %i.02.i652
  %321 = ptrtoint ptr %arrayidx.i653 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %kva.04.i650, ptr %arrayidx.i653, align 4
  %add.ptr.i654 = getelementptr i8, ptr %kva.04.i650, i32 4096
  %tmp_addr.sroa.0.0.extract.shift.i655 = lshr i64 %dma.03.i651, 32
  %tmp_addr.sroa.0.0.extract.trunc.i656 = trunc i64 %tmp_addr.sroa.0.0.extract.shift.i655 to i32
  %tmp_addr.sroa.5.0.extract.trunc.i657 = trunc i64 %dma.03.i651 to i32
  %322 = ptrtoint ptr %kv_qpt_ptr.i635 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %kv_qpt_ptr.i635, align 8
  %lsb38.i658 = getelementptr %struct.bna_dma_addr, ptr %323, i32 %i.02.i652, i32 1
  %324 = ptrtoint ptr %lsb38.i658 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %tmp_addr.sroa.5.0.extract.trunc.i657, ptr %lsb38.i658, align 4
  %325 = load ptr, ptr %kv_qpt_ptr.i635, align 8
  %arrayidx42.i659 = getelementptr %struct.bna_dma_addr, ptr %325, i32 %i.02.i652
  %326 = ptrtoint ptr %arrayidx42.i659 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %tmp_addr.sroa.0.0.extract.trunc.i656, ptr %arrayidx42.i659, align 4
  %add.i660 = add i64 %dma.03.i651, 4096
  %inc.i661 = add nuw i32 %i.02.i652, 1
  %327 = ptrtoint ptr %page_count10.i636 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %page_count10.i636, align 4
  %cmp.i662 = icmp ult i32 %inc.i661, %328
  br i1 %cmp.i662, label %for.body.i663.for.body.i663_crit_edge, label %for.body.i663.bna_rxq_qpt_setup.exit664_crit_edge

for.body.i663.bna_rxq_qpt_setup.exit664_crit_edge: ; preds = %for.body.i663
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_qpt_setup.exit664

for.body.i663.for.body.i663_crit_edge:            ; preds = %for.body.i663
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i663

bna_rxq_qpt_setup.exit664:                        ; preds = %for.body.i663.bna_rxq_qpt_setup.exit664_crit_edge, %if.then188.bna_rxq_qpt_setup.exit664_crit_edge
  %329 = ptrtoint ptr %rcb_setup_cbfn66 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %rcb_setup_cbfn66, align 4
  %tobool226.not = icmp eq ptr %330, null
  br i1 %tobool226.not, label %bna_rxq_qpt_setup.exit664.if.end231_crit_edge, label %if.then227

bna_rxq_qpt_setup.exit664.if.end231_crit_edge:    ; preds = %bna_rxq_qpt_setup.exit664
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.then227:                                       ; preds = %bna_rxq_qpt_setup.exit664
  call void @__sanitizer_cov_trace_pc() #12
  %331 = ptrtoint ptr %rcb193 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rcb193, align 4
  tail call void %330(ptr noundef %bnad, ptr noundef %332) #10
  br label %if.end231

if.end231:                                        ; preds = %if.then227, %bna_rxq_qpt_setup.exit664.if.end231_crit_edge, %if.end186.if.end231_crit_edge
  %hq_idx.1 = phi i32 [ %inc199, %if.then227 ], [ %inc199, %bna_rxq_qpt_setup.exit664.if.end231_crit_edge ], [ %hq_idx.0698, %if.end186.if.end231_crit_edge ]
  %rcb_idx.1 = phi i32 [ %inc198, %if.then227 ], [ %inc198, %bna_rxq_qpt_setup.exit664.if.end231_crit_edge ], [ %inc, %if.end186.if.end231_crit_edge ]
  %kva233 = getelementptr %struct.bna_mem_descr, ptr %11, i32 %i.0701, i32 1
  %333 = ptrtoint ptr %kva233 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %kva233, align 4
  %ccb = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 1
  %335 = ptrtoint ptr %ccb to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %334, ptr %ccb, align 4
  %336 = ptrtoint ptr %q0_depth to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %q0_depth, align 4
  %338 = ptrtoint ptr %rxp_type.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %rxp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %339)
  %cmp237 = icmp eq i32 %339, 1
  br i1 %cmp237, label %if.end231.cond.end271_crit_edge, label %cond.false240

if.end231.cond.end271_crit_edge:                  ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end271

cond.false240:                                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  %340 = ptrtoint ptr %q1_depth to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %q1_depth, align 4
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false240, %if.end231.cond.end271_crit_edge
  %cond243 = phi i32 [ %341, %cond.false240 ], [ 0, %if.end231.cond.end271_crit_edge ]
  %add = add i32 %cond243, %337
  %sub.i665 = add i32 %add, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i665)
  %tobool.not.i.i.i = icmp eq i32 %sub.i665, 0
  %342 = tail call i32 @llvm.ctlz.i32(i32 %sub.i665, i1 true) #10, !range !105
  %sub.i.i.i = sub nuw nsw i32 32, %342
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i666 = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %q_depth275 = getelementptr inbounds %struct.bna_ccb, ptr %334, i32 0, i32 4
  %343 = ptrtoint ptr %q_depth275 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %shl.i666, ptr %q_depth275, align 4
  %344 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ccb, align 4
  %cq279 = getelementptr inbounds %struct.bna_ccb, ptr %345, i32 0, i32 11
  %346 = ptrtoint ptr %cq279 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %cq, ptr %cq279, align 4
  %347 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %rcb, align 4
  %349 = load ptr, ptr %ccb, align 4
  %rcb283 = getelementptr inbounds %struct.bna_ccb, ptr %349, i32 0, i32 6
  %350 = ptrtoint ptr %rcb283 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %348, ptr %rcb283, align 4
  %351 = load ptr, ptr %ccb, align 4
  %352 = load ptr, ptr %rcb, align 4
  %ccb288 = getelementptr inbounds %struct.bna_rcb, ptr %352, i32 0, i32 8
  %353 = ptrtoint ptr %ccb288 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %351, ptr %ccb288, align 4
  br i1 %tobool187.not, label %cond.end271.if.end300_crit_edge, label %if.then290

cond.end271.if.end300_crit_edge:                  ; preds = %cond.end271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end300

if.then290:                                       ; preds = %cond.end271
  call void @__sanitizer_cov_trace_pc() #12
  %rcb291 = getelementptr inbounds %struct.bna_rxq, ptr %q1.0, i32 0, i32 6
  %354 = ptrtoint ptr %rcb291 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %rcb291, align 4
  %356 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ccb, align 4
  %arrayidx295 = getelementptr %struct.bna_ccb, ptr %357, i32 0, i32 6, i32 1
  %358 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %355, ptr %arrayidx295, align 4
  %359 = load ptr, ptr %ccb, align 4
  %360 = load ptr, ptr %rcb291, align 4
  %ccb299 = getelementptr inbounds %struct.bna_rcb, ptr %360, i32 0, i32 8
  %361 = ptrtoint ptr %ccb299 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %359, ptr %ccb299, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then290, %cond.end271.if.end300_crit_edge
  %362 = ptrtoint ptr %ib_seg_host_addr_kva to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ib_seg_host_addr_kva, align 4
  %364 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ccb, align 4
  %hw_producer_index = getelementptr inbounds %struct.bna_ccb, ptr %365, i32 0, i32 3
  %366 = ptrtoint ptr %hw_producer_index to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %363, ptr %hw_producer_index, align 4
  %door_bell = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 2, i32 2
  %367 = load ptr, ptr %ccb, align 4
  %i_dbell = getelementptr inbounds %struct.bna_ccb, ptr %367, i32 0, i32 5
  %368 = ptrtoint ptr %i_dbell to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %door_bell, ptr %i_dbell, align 4
  %369 = ptrtoint ptr %intr_type142 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %intr_type142, align 4
  %371 = load ptr, ptr %ccb, align 4
  %intr_type315 = getelementptr inbounds %struct.bna_ccb, ptr %371, i32 0, i32 14
  %372 = ptrtoint ptr %intr_type315 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %370, ptr %intr_type315, align 4
  %373 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %171, align 4
  %375 = load ptr, ptr %ccb, align 4
  %intr_vector321 = getelementptr inbounds %struct.bna_ccb, ptr %375, i32 0, i32 15
  %376 = ptrtoint ptr %intr_vector321 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %374, ptr %intr_vector321, align 4
  %377 = ptrtoint ptr %coalescing_timeo157 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %coalescing_timeo157, align 4
  %379 = load ptr, ptr %ccb, align 4
  %rx_coalescing_timeo = getelementptr inbounds %struct.bna_ccb, ptr %379, i32 0, i32 16
  %380 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %378, ptr %rx_coalescing_timeo, align 4
  %381 = load ptr, ptr %ccb, align 4
  %pkt_rate = getelementptr inbounds %struct.bna_ccb, ptr %381, i32 0, i32 8
  %382 = ptrtoint ptr %pkt_rate to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 0, ptr %pkt_rate, align 4
  %383 = load ptr, ptr %ccb, align 4
  %large_pkt_cnt = getelementptr inbounds %struct.bna_ccb, ptr %383, i32 0, i32 8, i32 1
  %384 = ptrtoint ptr %large_pkt_cnt to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 0, ptr %large_pkt_cnt, align 4
  %385 = ptrtoint ptr %bnad174 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %bnad174, align 4
  %387 = load ptr, ptr %ccb, align 4
  %bnad335 = getelementptr inbounds %struct.bna_ccb, ptr %387, i32 0, i32 12
  %388 = ptrtoint ptr %bnad335 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %386, ptr %bnad335, align 4
  %389 = load ptr, ptr %ccb, align 4
  %id338 = getelementptr inbounds %struct.bna_ccb, ptr %389, i32 0, i32 17
  %390 = ptrtoint ptr %id338 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %i.0701, ptr %id338, align 4
  %dma1.i667 = getelementptr %struct.bna_mem_descr, ptr %19, i32 %i.0701, i32 2
  %lsb.i668 = getelementptr %struct.bna_mem_descr, ptr %19, i32 %i.0701, i32 2, i32 1
  %391 = ptrtoint ptr %lsb.i668 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %lsb.i668, align 4
  %lsb2.i669 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 0, i32 0, i32 1
  %393 = ptrtoint ptr %lsb2.i669 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %392, ptr %lsb2.i669, align 4
  %394 = ptrtoint ptr %dma1.i667 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %dma1.i667, align 4
  %396 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %cq, align 4
  %kva8.i = getelementptr %struct.bna_mem_descr, ptr %19, i32 %i.0701, i32 1
  %397 = ptrtoint ptr %kva8.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %kva8.i, align 4
  %kv_qpt_ptr.i670 = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 0, i32 1
  %399 = ptrtoint ptr %kv_qpt_ptr.i670 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %398, ptr %kv_qpt_ptr.i670, align 4
  %page_count13.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 0, i32 2
  %400 = ptrtoint ptr %page_count13.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %div600, ptr %page_count13.i, align 4
  %page_size16.i = getelementptr inbounds %struct.bna_rxp, ptr %97, i32 0, i32 3, i32 0, i32 3
  %401 = ptrtoint ptr %page_size16.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 4096, ptr %page_size16.i, align 4
  %kva17.i = getelementptr %struct.bna_mem_descr, ptr %21, i32 %i.0701, i32 1
  %402 = ptrtoint ptr %kva17.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %kva17.i, align 4
  %404 = load ptr, ptr %ccb, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %403, ptr %404, align 4
  %kva19.i = getelementptr %struct.bna_mem_descr, ptr %23, i32 %i.0701, i32 1
  %406 = ptrtoint ptr %kva19.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %kva19.i, align 4
  %408 = load ptr, ptr %ccb, align 4
  %sw_q.i671 = getelementptr inbounds %struct.bna_ccb, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %sw_q.i671 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %407, ptr %sw_q.i671, align 4
  %410 = load i32, ptr %page_count13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %cmp1.not.i672 = icmp eq i32 %410, 0
  br i1 %cmp1.not.i672, label %if.end300.bna_rxp_cqpt_setup.exit_crit_edge, label %for.body.preheader.i676

if.end300.bna_rxp_cqpt_setup.exit_crit_edge:      ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxp_cqpt_setup.exit

for.body.preheader.i676:                          ; preds = %if.end300
  %dma23.i = getelementptr %struct.bna_mem_descr, ptr %23, i32 %i.0701, i32 2
  %411 = ptrtoint ptr %dma23.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %dma23.i, align 4
  %conv.i673 = zext i32 %412 to i64
  %shl.i674 = shl nuw i64 %conv.i673, 32
  %lsb26.i = getelementptr %struct.bna_mem_descr, ptr %23, i32 %i.0701, i32 2, i32 1
  %413 = ptrtoint ptr %lsb26.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %lsb26.i, align 4
  %conv27.i = zext i32 %414 to i64
  %or.i675 = or i64 %shl.i674, %conv27.i
  %415 = ptrtoint ptr %kva19.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %kva19.i, align 4
  br label %for.body.i688

for.body.i688:                                    ; preds = %for.body.i688.for.body.i688_crit_edge, %for.body.preheader.i676
  %kva.04.i677 = phi ptr [ %add.ptr.i681, %for.body.i688.for.body.i688_crit_edge ], [ %416, %for.body.preheader.i676 ]
  %dma.03.i678 = phi i64 [ %add.i685, %for.body.i688.for.body.i688_crit_edge ], [ %or.i675, %for.body.preheader.i676 ]
  %i.02.i679 = phi i32 [ %inc.i686, %for.body.i688.for.body.i688_crit_edge ], [ 0, %for.body.preheader.i676 ]
  %417 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %ccb, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %418, align 4
  %arrayidx.i680 = getelementptr ptr, ptr %420, i32 %i.02.i679
  %421 = ptrtoint ptr %arrayidx.i680 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %kva.04.i677, ptr %arrayidx.i680, align 4
  %add.ptr.i681 = getelementptr i8, ptr %kva.04.i677, i32 4096
  %tmp_addr.sroa.0.0.extract.shift.i682 = lshr i64 %dma.03.i678, 32
  %tmp_addr.sroa.0.0.extract.trunc.i683 = trunc i64 %tmp_addr.sroa.0.0.extract.shift.i682 to i32
  %tmp_addr.sroa.5.0.extract.trunc.i684 = trunc i64 %dma.03.i678 to i32
  %422 = ptrtoint ptr %kv_qpt_ptr.i670 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %kv_qpt_ptr.i670, align 4
  %lsb47.i = getelementptr %struct.bna_dma_addr, ptr %423, i32 %i.02.i679, i32 1
  %424 = ptrtoint ptr %lsb47.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %tmp_addr.sroa.5.0.extract.trunc.i684, ptr %lsb47.i, align 4
  %425 = load ptr, ptr %kv_qpt_ptr.i670, align 4
  %arrayidx52.i = getelementptr %struct.bna_dma_addr, ptr %425, i32 %i.02.i679
  %426 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %tmp_addr.sroa.0.0.extract.trunc.i683, ptr %arrayidx52.i, align 4
  %add.i685 = add i64 %dma.03.i678, 4096
  %inc.i686 = add nuw i32 %i.02.i679, 1
  %427 = ptrtoint ptr %page_count13.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %page_count13.i, align 4
  %cmp.i687 = icmp ult i32 %inc.i686, %428
  br i1 %cmp.i687, label %for.body.i688.for.body.i688_crit_edge, label %for.body.i688.bna_rxp_cqpt_setup.exit_crit_edge

for.body.i688.bna_rxp_cqpt_setup.exit_crit_edge:  ; preds = %for.body.i688
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxp_cqpt_setup.exit

for.body.i688.for.body.i688_crit_edge:            ; preds = %for.body.i688
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i688

bna_rxp_cqpt_setup.exit:                          ; preds = %for.body.i688.bna_rxp_cqpt_setup.exit_crit_edge, %if.end300.bna_rxp_cqpt_setup.exit_crit_edge
  %429 = ptrtoint ptr %ccb_setup_cbfn68 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ccb_setup_cbfn68, align 4
  %tobool343.not = icmp eq ptr %430, null
  br i1 %tobool343.not, label %bna_rxp_cqpt_setup.exit.for.inc_crit_edge, label %if.then344

bna_rxp_cqpt_setup.exit.for.inc_crit_edge:        ; preds = %bna_rxp_cqpt_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then344:                                       ; preds = %bna_rxp_cqpt_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %431 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %ccb, align 4
  tail call void %430(ptr noundef %bnad, ptr noundef %432) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then344, %bna_rxp_cqpt_setup.exit.for.inc_crit_edge
  %433 = ptrtoint ptr %num_paths96 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %num_paths96, align 4
  %cmp = icmp ult i32 %inc349, %434
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end95.for.end_crit_edge
  %hds_cfg = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 7
  %hds_config350 = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 13
  %435 = ptrtoint ptr %hds_config350 to i32
  call void @__asan_loadN_noabort(i32 %435, i32 8)
  %436 = load i64, ptr %hds_config350, align 4
  %437 = ptrtoint ptr %hds_cfg to i32
  call void @__asan_storeN_noabort(i32 %437, i32 8)
  store i64 %436, ptr %hds_cfg, align 4
  %rxf = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8
  %rx1.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 33
  %438 = ptrtoint ptr %rx1.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %rx.0.i, ptr %rx1.i, align 4
  %ucast_pending_add_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 9
  %439 = ptrtoint ptr %ucast_pending_add_q.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store volatile ptr %ucast_pending_add_q.i, ptr %ucast_pending_add_q.i, align 4
  %prev.i.i689 = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 9, i32 1
  %440 = ptrtoint ptr %prev.i.i689 to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %ucast_pending_add_q.i, ptr %prev.i.i689, align 4
  %ucast_pending_del_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 10
  %441 = ptrtoint ptr %ucast_pending_del_q.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store volatile ptr %ucast_pending_del_q.i, ptr %ucast_pending_del_q.i, align 4
  %prev.i41.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 10, i32 1
  %442 = ptrtoint ptr %prev.i41.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %ucast_pending_del_q.i, ptr %prev.i41.i, align 4
  %ucast_pending_set.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 12
  %443 = ptrtoint ptr %ucast_pending_set.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 0, ptr %ucast_pending_set.i, align 4
  %ucast_active_set.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 15
  %444 = ptrtoint ptr %ucast_active_set.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 0, ptr %ucast_active_set.i, align 4
  %ucast_active_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 13
  %445 = ptrtoint ptr %ucast_active_q.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store volatile ptr %ucast_active_q.i, ptr %ucast_active_q.i, align 4
  %prev.i42.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 13, i32 1
  %446 = ptrtoint ptr %prev.i42.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %ucast_active_q.i, ptr %prev.i42.i, align 4
  %ucast_pending_mac.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 11
  %447 = ptrtoint ptr %ucast_pending_mac.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr null, ptr %ucast_pending_mac.i, align 4
  %mcast_pending_add_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 16
  %448 = ptrtoint ptr %mcast_pending_add_q.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store volatile ptr %mcast_pending_add_q.i, ptr %mcast_pending_add_q.i, align 4
  %prev.i43.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 16, i32 1
  %449 = ptrtoint ptr %prev.i43.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %mcast_pending_add_q.i, ptr %prev.i43.i, align 4
  %mcast_pending_del_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 17
  %450 = ptrtoint ptr %mcast_pending_del_q.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store volatile ptr %mcast_pending_del_q.i, ptr %mcast_pending_del_q.i, align 4
  %prev.i44.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 17, i32 1
  %451 = ptrtoint ptr %prev.i44.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %mcast_pending_del_q.i, ptr %prev.i44.i, align 4
  %mcast_active_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 18
  %452 = ptrtoint ptr %mcast_active_q.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store volatile ptr %mcast_active_q.i, ptr %mcast_active_q.i, align 4
  %prev.i45.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 18, i32 1
  %453 = ptrtoint ptr %prev.i45.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %mcast_active_q.i, ptr %prev.i45.i, align 4
  %mcast_handle_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 19
  %454 = ptrtoint ptr %mcast_handle_q.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store volatile ptr %mcast_handle_q.i, ptr %mcast_handle_q.i, align 4
  %prev.i46.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 19, i32 1
  %455 = ptrtoint ptr %prev.i46.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %mcast_handle_q.i, ptr %prev.i46.i, align 4
  %mdl.i = getelementptr %struct.bna_res_info, ptr %res_info, i32 14, i32 1, i32 0, i32 4
  %456 = ptrtoint ptr %mdl.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %mdl.i, align 4
  %kva.i = getelementptr inbounds %struct.bna_mem_descr, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %kva.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %kva.i, align 4
  %rit.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 31
  %460 = ptrtoint ptr %rit.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %459, ptr %rit.i, align 4
  %461 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %num_paths.i, align 4
  %rit_size2.i.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 32
  %463 = ptrtoint ptr %rit_size2.i.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %462, ptr %rit_size2.i.i, align 4
  %464 = ptrtoint ptr %rxp_q to i32
  call void @__asan_load4_noabort(i32 %464)
  %rxp.015.i.i = load ptr, ptr %rxp_q, align 4
  %cmp.not16.i.i = icmp eq ptr %rxp.015.i.i, %rxp_q
  br i1 %cmp.not16.i.i, label %for.end.bna_rit_init.exit.i_crit_edge, label %for.end.for.body.i.i_crit_edge

for.end.for.body.i.i_crit_edge:                   ; preds = %for.end
  br label %for.body.i.i

for.end.bna_rit_init.exit.i_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rit_init.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.for.body.i.i_crit_edge
  %rxp.018.i.i = phi ptr [ %rxp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %rxp.015.i.i, %for.end.for.body.i.i_crit_edge ]
  %offset.017.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.for.body.i.i_crit_edge ]
  %ccb.i.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.018.i.i, i32 0, i32 3, i32 1
  %465 = ptrtoint ptr %ccb.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %ccb.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.bna_ccb, ptr %466, i32 0, i32 17
  %467 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %id.i.i, align 4
  %conv.i.i = trunc i32 %468 to i8
  %469 = ptrtoint ptr %rit.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %rit.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %470, i32 %offset.017.i.i
  %471 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add i32 %offset.017.i.i, 1
  %472 = ptrtoint ptr %rxp.018.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %rxp.0.i.i = load ptr, ptr %rxp.018.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %rxp.0.i.i, %rxp_q
  br i1 %cmp.not.i.i, label %for.body.i.i.bna_rit_init.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.bna_rit_init.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rit_init.exit.i

bna_rit_init.exit.i:                              ; preds = %for.body.i.i.bna_rit_init.exit.i_crit_edge, %for.end.bna_rit_init.exit.i_crit_edge
  %rss_status.i = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 11
  %473 = ptrtoint ptr %rss_status.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %rss_status.i, align 4
  %rss_status3.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 29
  %475 = ptrtoint ptr %rss_status3.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %474, ptr %rss_status3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %474)
  %cmp.i691 = icmp eq i32 %474, 1
  br i1 %cmp.i691, label %if.then.i, label %bna_rit_init.exit.i.if.end.i693_crit_edge

bna_rit_init.exit.i.if.end.i693_crit_edge:        ; preds = %bna_rit_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i693

if.then.i:                                        ; preds = %bna_rit_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rss_cfg.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 30
  %rss_config.i = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 12
  %476 = call ptr @memcpy(ptr %rss_cfg.i, ptr %rss_config.i, i32 48)
  %rss_pending.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 28
  %477 = ptrtoint ptr %rss_pending.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %rss_pending.i, align 4
  %or8.i = or i32 %478, 7
  store i32 %or8.i, ptr %rss_pending.i, align 4
  br label %if.end.i693

if.end.i693:                                      ; preds = %if.then.i, %bna_rit_init.exit.i.if.end.i693_crit_edge
  %vlan_filter_status.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 24
  %vlan_filter_table.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 25
  %479 = call ptr @memset(ptr %vlan_filter_status.i, i32 0, i32 516)
  %480 = ptrtoint ptr %vlan_filter_table.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 1, ptr %vlan_filter_table.i, align 4
  %vlan_pending_bitmask.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 23
  %481 = ptrtoint ptr %vlan_pending_bitmask.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 -1, ptr %vlan_pending_bitmask.i, align 4
  %vlan_strip_status.i = getelementptr inbounds %struct.bna_rx_config, ptr %rx_cfg, i32 0, i32 14
  %482 = ptrtoint ptr %vlan_strip_status.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %vlan_strip_status.i, align 4
  %vlan_strip_status12.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 27
  %484 = ptrtoint ptr %vlan_strip_status12.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %483, ptr %vlan_strip_status12.i, align 4
  %485 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr @bna_rxf_sm_stopped, ptr %rxf, align 4
  %stop_cbfn.i.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 5
  %486 = ptrtoint ptr %stop_cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %stop_cbfn.i.i, align 4
  %tobool.not.i.i692 = icmp eq ptr %487, null
  br i1 %tobool.not.i.i692, label %if.end.i693.bna_rxf_init.exit_crit_edge, label %if.then.i.i

if.end.i693.bna_rxf_init.exit_crit_edge:          ; preds = %if.end.i693
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_init.exit

if.then.i.i:                                      ; preds = %if.end.i693
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i.i = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 8, i32 6
  %488 = ptrtoint ptr %stop_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %stop_cbarg.i.i, align 4
  %490 = ptrtoint ptr %stop_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr null, ptr %stop_cbfn.i.i, align 4
  store ptr null, ptr %stop_cbarg.i.i, align 4
  tail call void %487(ptr noundef %489) #10
  br label %bna_rxf_init.exit

bna_rxf_init.exit:                                ; preds = %if.then.i.i, %if.end.i693.bna_rxf_init.exit_crit_edge
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 3
  %491 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr @bna_rx_sm_stopped, ptr %fsm, align 4
  %492 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not.i = icmp eq ptr %493, null
  br i1 %tobool.not.i, label %bna_rxf_init.exit.bna_rx_sm_stopped_entry.exit_crit_edge, label %if.then.i694

bna_rxf_init.exit.bna_rx_sm_stopped_entry.exit_crit_edge: ; preds = %bna_rxf_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rx_sm_stopped_entry.exit

if.then.i694:                                     ; preds = %bna_rxf_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %494 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %stop_cbarg, align 4
  %496 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr null, ptr %stop_cbfn, align 4
  store ptr null, ptr %stop_cbarg, align 4
  tail call void %493(ptr noundef %495, ptr noundef %rx.0.i) #10
  br label %bna_rx_sm_stopped_entry.exit

bna_rx_sm_stopped_entry.exit:                     ; preds = %if.then.i694, %bna_rxf_init.exit.bna_rx_sm_stopped_entry.exit_crit_edge
  %rid = getelementptr inbounds %struct.bna_rx, ptr %rx.0.i, i32 0, i32 1
  %497 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %rid, align 4
  %shl351 = shl nuw i32 1, %498
  %rid_mask = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 13, i32 15
  %499 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %rid_mask, align 4
  %or352 = or i32 %500, %shl351
  store i32 %or352, ptr %rid_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %bna_rx_sm_stopped_entry.exit, %if.else.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rx.0.i, %bna_rx_sm_stopped_entry.exit ], [ null, %lor.lhs.false2.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then5.i.cleanup_crit_edge ], [ null, %if.else.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_stopped(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %event, label %do.end9 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_start_wait, ptr %fsm, align 4
  tail call fastcc void @bna_rx_sm_start_wait_entry(ptr noundef %rx)
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %stop_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 19
  %2 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body2.sw.epilog_crit_edge, label %if.then

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 20
  %4 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg, align 4
  %6 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn, align 4
  store ptr null, ptr %stop_cbarg, align 4
  tail call void %3(ptr noundef %5, ptr noundef %rx) #10
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1348, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %if.then, %do.body2.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_destroy(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %ucast_pending_set.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 12
  %2 = ptrtoint ptr %ucast_pending_set.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ucast_pending_set.i, align 4
  %ucast_active_set.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %ucast_active_set.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ucast_active_set.i, align 4
  %ucast_pending_add_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %ucast_pending_add_q.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ucast_pending_add_q.i, align 4
  %cmp.i.not81.i = icmp eq ptr %5, %ucast_pending_add_q.i
  br i1 %cmp.i.not81.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %rx.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  br label %while.body.i

while.body.i:                                     ; preds = %list_move_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi ptr [ %5, %while.body.lr.ph.i ], [ %24, %list_move_tail.exit.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bna.i, align 4
  %free_q.i = getelementptr inbounds %struct.bna, ptr %10, i32 0, i32 14, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.__list_del_entry.exit.i.i_crit_edge

while.body.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %while.body.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.bna, ptr %10, i32 0, i32 14, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %18, ptr noundef %free_q.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %prev.i2.i.i, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_q.i, ptr %6, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %6, ptr %18, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %23 = ptrtoint ptr %ucast_pending_add_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %ucast_pending_add_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %ucast_pending_add_q.i
  br i1 %cmp.i.not.i, label %list_move_tail.exit.i.while.end.i_crit_edge, label %list_move_tail.exit.i.while.body.i_crit_edge

list_move_tail.exit.i.while.body.i_crit_edge:     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_move_tail.exit.i.while.end.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %list_move_tail.exit.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %ucast_pending_mac.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 11
  %25 = ptrtoint ptr %ucast_pending_mac.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ucast_pending_mac.i, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %while.end.i.if.end.i_crit_edge, label %if.then.i

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  %rx5.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %27 = ptrtoint ptr %rx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx5.i, align 4
  %bna6.i = getelementptr inbounds %struct.bna_rx, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %bna6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bna6.i, align 4
  %free_q8.i = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 14, i32 1
  %prev.i.i = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 14, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i67.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %26, ptr noundef %32, ptr noundef %free_q8.i) #10
  br i1 %call.i.i67.i, label %if.end.i.i68.i, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i68.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %26, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %free_q8.i, ptr %26, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %26, ptr %32, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i68.i, %if.then.i.list_add_tail.exit.i_crit_edge
  %37 = ptrtoint ptr %ucast_pending_mac.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ucast_pending_mac.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_add_tail.exit.i, %while.end.i.if.end.i_crit_edge
  %mcast_pending_add_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 16
  %38 = ptrtoint ptr %mcast_pending_add_q.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %mcast_pending_add_q.i, align 4
  %cmp.i69.not82.i = icmp eq ptr %39, %mcast_pending_add_q.i
  br i1 %cmp.i69.not82.i, label %if.end.i.while.end24.i_crit_edge, label %while.body14.lr.ph.i

if.end.i.while.end24.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end24.i

while.body14.lr.ph.i:                             ; preds = %if.end.i
  %rx21.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  br label %while.body14.i

while.body14.i:                                   ; preds = %list_move_tail.exit80.i.while.body14.i_crit_edge, %while.body14.lr.ph.i
  %40 = phi ptr [ %39, %while.body14.lr.ph.i ], [ %58, %list_move_tail.exit80.i.while.body14.i_crit_edge ]
  %41 = ptrtoint ptr %rx21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx21.i, align 4
  %bna22.i = getelementptr inbounds %struct.bna_rx, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %bna22.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bna22.i, align 4
  %free_q23.i = getelementptr inbounds %struct.bna, ptr %44, i32 0, i32 15, i32 2
  %call.i.i71.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %40) #10
  br i1 %call.i.i71.i, label %if.end.i.i74.i, label %while.body14.i.__list_del_entry.exit.i77.i_crit_edge

while.body14.i.__list_del_entry.exit.i77.i_crit_edge: ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i77.i

if.end.i.i74.i:                                   ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i72.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i72.i, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %40, align 4
  %prev1.i.i.i73.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i73.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %__list_del_entry.exit.i77.i

__list_del_entry.exit.i77.i:                      ; preds = %if.end.i.i74.i, %while.body14.i.__list_del_entry.exit.i77.i_crit_edge
  %prev.i2.i75.i = getelementptr inbounds %struct.bna, ptr %44, i32 0, i32 15, i32 2, i32 1
  %51 = ptrtoint ptr %prev.i2.i75.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i2.i75.i, align 4
  %call.i.i.i76.i = tail call zeroext i1 @__list_add_valid(ptr noundef %40, ptr noundef %52, ptr noundef %free_q23.i) #10
  br i1 %call.i.i.i76.i, label %if.end.i.i.i79.i, label %__list_del_entry.exit.i77.i.list_move_tail.exit80.i_crit_edge

__list_del_entry.exit.i77.i.list_move_tail.exit80.i_crit_edge: ; preds = %__list_del_entry.exit.i77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit80.i

if.end.i.i.i79.i:                                 ; preds = %__list_del_entry.exit.i77.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %prev.i2.i75.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %40, ptr %prev.i2.i75.i, align 4
  %54 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %free_q23.i, ptr %40, align 4
  %prev3.i.i.i78.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i78.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %40, ptr %52, align 4
  br label %list_move_tail.exit80.i

list_move_tail.exit80.i:                          ; preds = %if.end.i.i.i79.i, %__list_del_entry.exit.i77.i.list_move_tail.exit80.i_crit_edge
  %57 = ptrtoint ptr %mcast_pending_add_q.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %mcast_pending_add_q.i, align 4
  %cmp.i69.not.i = icmp eq ptr %58, %mcast_pending_add_q.i
  br i1 %cmp.i69.not.i, label %list_move_tail.exit80.i.while.end24.i_crit_edge, label %list_move_tail.exit80.i.while.body14.i_crit_edge

list_move_tail.exit80.i.while.body14.i_crit_edge: ; preds = %list_move_tail.exit80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body14.i

list_move_tail.exit80.i.while.end24.i_crit_edge:  ; preds = %list_move_tail.exit80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end24.i

while.end24.i:                                    ; preds = %list_move_tail.exit80.i.while.end24.i_crit_edge, %if.end.i.while.end24.i_crit_edge
  %rxmode_pending.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %59 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rxmode_pending.i, align 4
  %rxmode_pending_bitmask.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 21
  %60 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %rxmode_pending_bitmask.i, align 4
  %rx25.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %61 = ptrtoint ptr %rx25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx25.i, align 4
  %bna26.i = getelementptr inbounds %struct.bna_rx, ptr %62, i32 0, i32 21
  %63 = ptrtoint ptr %bna26.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bna26.i, align 4
  %promisc_rid.i = getelementptr inbounds %struct.bna, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %promisc_rid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %promisc_rid.i, align 8
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.i = icmp eq i32 %66, %68
  br i1 %cmp.i, label %if.then28.i, label %while.end24.i.if.end32.i_crit_edge

while.end24.i.if.end32.i_crit_edge:               ; preds = %while.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then28.i:                                      ; preds = %while.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %promisc_rid.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %promisc_rid.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %while.end24.i.if.end32.i_crit_edge
  %70 = ptrtoint ptr %rx25.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx25.i, align 4
  %bna34.i = getelementptr inbounds %struct.bna_rx, ptr %71, i32 0, i32 21
  %72 = ptrtoint ptr %bna34.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bna34.i, align 4
  %default_mode_rid.i = getelementptr inbounds %struct.bna, ptr %73, i32 0, i32 17
  %74 = ptrtoint ptr %default_mode_rid.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %default_mode_rid.i, align 4
  %rid36.i = getelementptr inbounds %struct.bna_rx, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %rid36.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rid36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp37.i = icmp eq i32 %75, %77
  br i1 %cmp37.i, label %if.then38.i, label %if.end32.i.bna_rxf_uninit.exit_crit_edge

if.end32.i.bna_rxf_uninit.exit_crit_edge:         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_uninit.exit

if.then38.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %default_mode_rid.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %default_mode_rid.i, align 4
  br label %bna_rxf_uninit.exit

bna_rxf_uninit.exit:                              ; preds = %if.then38.i, %if.end32.i.bna_rxf_uninit.exit_crit_edge
  %rss_pending.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 28
  %79 = ptrtoint ptr %rss_pending.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %rss_pending.i, align 4
  %vlan_strip_pending.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 26
  %80 = ptrtoint ptr %vlan_strip_pending.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %vlan_strip_pending.i, align 4
  %81 = ptrtoint ptr %rx25.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rx25.i, align 4
  %rxp_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 6
  %82 = ptrtoint ptr %rxp_q to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %rxp_q, align 4
  %cmp.i103.not142 = icmp eq ptr %83, %rxp_q
  br i1 %cmp.i103.not142, label %bna_rxf_uninit.exit.while.end_crit_edge, label %while.body.lr.ph

bna_rxf_uninit.exit.while.end_crit_edge:          ; preds = %bna_rxf_uninit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %bna_rxf_uninit.exit
  %rcb_destroy_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 13
  %rxq_free_q.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 9
  %prev.i.i105 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 9, i32 1
  %rxq_free_count.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 10
  %ccb_destroy_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 15
  %rxp_free_q.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 7
  %prev.i.i119 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 7, i32 1
  %rxp_free_count.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 8
  br label %while.body

while.body:                                       ; preds = %bna_rxp_put.exit.while.body_crit_edge, %while.body.lr.ph
  %84 = phi ptr [ %83, %while.body.lr.ph ], [ %165, %bna_rxp_put.exit.while.body_crit_edge ]
  %q0.0144 = phi ptr [ null, %while.body.lr.ph ], [ %q0.1, %bna_rxp_put.exit.while.body_crit_edge ]
  %q1.0143 = phi ptr [ null, %while.body.lr.ph ], [ %q1.1, %bna_rxp_put.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i104 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i104 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i104, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 1
  %93 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %94, label %list_del.exit.do.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ]

list_del.exit.do.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb:                                            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rxq = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2
  %96 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rxq, align 4
  br label %do.end

sw.bb4:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rxq5 = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2
  %large = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2, i32 0, i32 1
  %98 = ptrtoint ptr %large to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %large, align 4
  %100 = ptrtoint ptr %rxq5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rxq5, align 4
  br label %do.end

sw.bb7:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rxq8 = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2
  %data = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2, i32 0, i32 1
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %104 = ptrtoint ptr %rxq8 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rxq8, align 4
  br label %do.end

do.end:                                           ; preds = %sw.bb7, %sw.bb4, %sw.bb, %list_del.exit.do.end_crit_edge
  %q1.1 = phi ptr [ %q1.0143, %list_del.exit.do.end_crit_edge ], [ %105, %sw.bb7 ], [ %101, %sw.bb4 ], [ null, %sw.bb ]
  %q0.1 = phi ptr [ %q0.0144, %list_del.exit.do.end_crit_edge ], [ %103, %sw.bb7 ], [ %99, %sw.bb4 ], [ %97, %sw.bb ]
  %106 = ptrtoint ptr %rcb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rcb_destroy_cbfn, align 4
  %tobool10.not = icmp eq ptr %107, null
  br i1 %tobool10.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %109, i32 0, i32 19
  %110 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bnad, align 4
  %rcb = getelementptr inbounds %struct.bna_rxq, ptr %q0.1, i32 0, i32 6
  %112 = ptrtoint ptr %rcb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rcb, align 4
  tail call void %107(ptr noundef %111, ptr noundef %113) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  %rcb13 = getelementptr inbounds %struct.bna_rxq, ptr %q0.1, i32 0, i32 6
  %114 = ptrtoint ptr %rcb13 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %rcb13, align 4
  %rxp14 = getelementptr inbounds %struct.bna_rxq, ptr %q0.1, i32 0, i32 7
  %115 = ptrtoint ptr %rxp14 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %rxp14, align 8
  %rx15 = getelementptr inbounds %struct.bna_rxq, ptr %q0.1, i32 0, i32 8
  %116 = ptrtoint ptr %rx15 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %rx15, align 4
  %117 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i105, align 4
  %call.i.i.i106 = tail call zeroext i1 @__list_add_valid(ptr noundef %q0.1, ptr noundef %118, ptr noundef %rxq_free_q.i) #10
  br i1 %call.i.i.i106, label %if.end.i.i.i108, label %if.end.bna_rxq_put.exit_crit_edge

if.end.bna_rxq_put.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_put.exit

if.end.i.i.i108:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %q0.1, ptr %prev.i.i105, align 4
  %120 = ptrtoint ptr %q0.1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %rxq_free_q.i, ptr %q0.1, align 4
  %prev3.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %q0.1, i32 0, i32 1
  %121 = ptrtoint ptr %prev3.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i.i107, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %q0.1, ptr %118, align 4
  br label %bna_rxq_put.exit

bna_rxq_put.exit:                                 ; preds = %if.end.i.i.i108, %if.end.bna_rxq_put.exit_crit_edge
  %123 = ptrtoint ptr %rxq_free_count.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rxq_free_count.i, align 4
  %inc.i = add i32 %124, 1
  store i32 %inc.i, ptr %rxq_free_count.i, align 4
  %tobool16.not = icmp eq ptr %q1.1, null
  br i1 %tobool16.not, label %bna_rxq_put.exit.if.end29_crit_edge, label %if.then17

bna_rxq_put.exit.if.end29_crit_edge:              ; preds = %bna_rxq_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then17:                                        ; preds = %bna_rxq_put.exit
  %125 = ptrtoint ptr %rcb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rcb_destroy_cbfn, align 4
  %tobool19.not = icmp eq ptr %126, null
  br i1 %tobool19.not, label %if.then17.if.end25_crit_edge, label %if.then20

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bna, align 4
  %bnad23 = getelementptr inbounds %struct.bna, ptr %128, i32 0, i32 19
  %129 = ptrtoint ptr %bnad23 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bnad23, align 4
  %rcb24 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 6
  %131 = ptrtoint ptr %rcb24 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rcb24, align 4
  tail call void %126(ptr noundef %130, ptr noundef %132) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then17.if.end25_crit_edge
  %rcb26 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 6
  %133 = ptrtoint ptr %rcb26 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %rcb26, align 4
  %rxp27 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 7
  %134 = ptrtoint ptr %rxp27 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %rxp27, align 8
  %rx28 = getelementptr inbounds %struct.bna_rxq, ptr %q1.1, i32 0, i32 8
  %135 = ptrtoint ptr %rx28 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %rx28, align 4
  %136 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i105, align 4
  %call.i.i.i112 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %q1.1, ptr noundef %137, ptr noundef %rxq_free_q.i) #10
  br i1 %call.i.i.i112, label %if.end.i.i.i114, label %if.end25.bna_rxq_put.exit118_crit_edge

if.end25.bna_rxq_put.exit118_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxq_put.exit118

if.end.i.i.i114:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %q1.1, ptr %prev.i.i105, align 4
  %139 = ptrtoint ptr %q1.1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %rxq_free_q.i, ptr %q1.1, align 4
  %prev3.i.i.i113 = getelementptr inbounds %struct.list_head, ptr %q1.1, i32 0, i32 1
  %140 = ptrtoint ptr %prev3.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev3.i.i.i113, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %q1.1, ptr %137, align 4
  br label %bna_rxq_put.exit118

bna_rxq_put.exit118:                              ; preds = %if.end.i.i.i114, %if.end25.bna_rxq_put.exit118_crit_edge
  %142 = ptrtoint ptr %rxq_free_count.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rxq_free_count.i, align 4
  %inc.i116 = add i32 %143, 1
  store i32 %inc.i116, ptr %rxq_free_count.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %bna_rxq_put.exit118, %bna_rxq_put.exit.if.end29_crit_edge
  %rxq30 = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2
  %large31 = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 2, i32 0, i32 1
  %144 = ptrtoint ptr %large31 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %large31, align 4
  %145 = ptrtoint ptr %rxq30 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %rxq30, align 4
  %146 = ptrtoint ptr %ccb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ccb_destroy_cbfn, align 4
  %tobool34.not = icmp eq ptr %147, null
  br i1 %tobool34.not, label %if.end29.if.end39_crit_edge, label %if.then35

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bna, align 4
  %bnad38 = getelementptr inbounds %struct.bna, ptr %149, i32 0, i32 19
  %150 = ptrtoint ptr %bnad38 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bnad38, align 4
  %ccb = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 3, i32 1
  %152 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ccb, align 4
  tail call void %147(ptr noundef %151, ptr noundef %153) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end29.if.end39_crit_edge
  %ccb41 = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 3, i32 1
  %154 = ptrtoint ptr %ccb41 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %ccb41, align 4
  %rx42 = getelementptr inbounds %struct.bna_rxp, ptr %84, i32 0, i32 4
  %155 = ptrtoint ptr %rx42 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %rx42, align 4
  %156 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i.i119, align 4
  %call.i.i.i120 = tail call zeroext i1 @__list_add_valid(ptr noundef %84, ptr noundef %157, ptr noundef %rxp_free_q.i) #10
  br i1 %call.i.i.i120, label %if.end.i.i.i122, label %if.end39.bna_rxp_put.exit_crit_edge

if.end39.bna_rxp_put.exit_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxp_put.exit

if.end.i.i.i122:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %84, ptr %prev.i.i119, align 4
  %159 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %rxp_free_q.i, ptr %84, align 4
  %160 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev.i, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %84, ptr %157, align 4
  br label %bna_rxp_put.exit

bna_rxp_put.exit:                                 ; preds = %if.end.i.i.i122, %if.end39.bna_rxp_put.exit_crit_edge
  %162 = ptrtoint ptr %rxp_free_count.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rxp_free_count.i, align 4
  %inc.i123 = add i32 %163, 1
  store i32 %inc.i123, ptr %rxp_free_count.i, align 4
  %164 = ptrtoint ptr %rxp_q to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %rxp_q, align 4
  %cmp.i103.not = icmp eq ptr %165, %rxp_q
  br i1 %cmp.i103.not, label %bna_rxp_put.exit.while.end_crit_edge, label %bna_rxp_put.exit.while.body_crit_edge

bna_rxp_put.exit.while.body_crit_edge:            ; preds = %bna_rxp_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

bna_rxp_put.exit.while.end_crit_edge:             ; preds = %bna_rxp_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %bna_rxp_put.exit.while.end_crit_edge, %bna_rxf_uninit.exit.while.end_crit_edge
  %rx_active_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %while.end
  %qe.0.in = phi ptr [ %rx_active_q, %while.end ], [ %qe.0, %for.body.for.cond_crit_edge ]
  %166 = ptrtoint ptr %qe.0.in to i32
  call void @__asan_load4_noabort(i32 %166)
  %qe.0 = load ptr, ptr %qe.0.in, align 4
  %cmp.i125.not = icmp eq ptr %qe.0, %rx_active_q
  br i1 %cmp.i125.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq ptr %qe.0, %rx
  br i1 %cmp, label %if.then49, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then49:                                        ; preds = %for.body
  %call.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rx) #10
  br i1 %call.i.i127, label %if.end.i.i130, label %if.then49.list_del.exit132_crit_edge

if.then49.list_del.exit132_crit_edge:             ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit132

if.end.i.i130:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i128 = getelementptr inbounds %struct.list_head, ptr %rx, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i128 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i128, align 4
  %169 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rx, align 4
  %prev1.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %prev1.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev1.i.i.i129, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %170, ptr %168, align 4
  br label %list_del.exit132

list_del.exit132:                                 ; preds = %if.end.i.i130, %if.then49.list_del.exit132_crit_edge
  %173 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 256 to ptr), ptr %rx, align 4
  %prev.i131 = getelementptr inbounds %struct.list_head, ptr %rx, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i131, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit132, %for.cond.for.end_crit_edge
  %rid = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 1
  %175 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rid, align 4
  %shl = shl nuw i32 1, %176
  %neg = xor i32 %shl, -1
  %rid_mask = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 15
  %177 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rid_mask, align 4
  %and = and i32 %178, %neg
  store i32 %and, ptr %rid_mask, align 4
  %179 = ptrtoint ptr %bna to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %bna, align 4
  %priv = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 22
  %180 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %priv, align 4
  %rx_free_q.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 4
  %prev.i133 = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 4, i32 1
  %181 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_load4_noabort(i32 %181)
  %qe.011.i = load ptr, ptr %prev.i133, align 4
  %cmp.i.not12.i = icmp eq ptr %qe.011.i, %rx_free_q.i
  br i1 %cmp.i.not12.i, label %for.end.for.end.i_crit_edge, label %for.body.lr.ph.i

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %182 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rid, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %qe.013.i = phi ptr [ %qe.011.i, %for.body.lr.ph.i ], [ %qe.0.i, %for.inc.i.for.body.i_crit_edge ]
  %rid.i134 = getelementptr inbounds %struct.bna_rx, ptr %qe.013.i, i32 0, i32 1
  %184 = ptrtoint ptr %rid.i134 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rid.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %183)
  %cmp.i135 = icmp slt i32 %185, %183
  br i1 %cmp.i135, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %prev3.i = getelementptr inbounds %struct.list_head, ptr %qe.013.i, i32 0, i32 1
  %186 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %qe.0.i = load ptr, ptr %prev3.i, align 4
  %cmp.i.not.i136 = icmp eq ptr %qe.0.i, %rx_free_q.i
  br i1 %cmp.i.not.i136, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.end.for.end.i_crit_edge
  %qe.0.lcssa.i = phi ptr [ %rx_free_q.i, %for.end.for.end.i_crit_edge ], [ %rx_free_q.i, %for.inc.i.for.end.i_crit_edge ], [ %qe.013.i, %for.body.i.for.end.i_crit_edge ]
  %187 = ptrtoint ptr %qe.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %qe.0.lcssa.i, align 4
  %call.i.i.i137 = tail call zeroext i1 @__list_add_valid(ptr noundef %rx, ptr noundef %qe.0.lcssa.i, ptr noundef %188) #10
  br i1 %call.i.i.i137, label %if.end.i.i.i140, label %for.end.i.bna_rx_put.exit_crit_edge

for.end.i.bna_rx_put.exit_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rx_put.exit

if.end.i.i.i140:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i138 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %prev1.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %rx, ptr %prev1.i.i.i138, align 4
  %190 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %188, ptr %rx, align 4
  %prev3.i.i.i139 = getelementptr inbounds %struct.list_head, ptr %rx, i32 0, i32 1
  %191 = ptrtoint ptr %prev3.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %qe.0.lcssa.i, ptr %prev3.i.i.i139, align 4
  %192 = ptrtoint ptr %qe.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %rx, ptr %qe.0.lcssa.i, align 4
  br label %bna_rx_put.exit

bna_rx_put.exit:                                  ; preds = %if.end.i.i.i140, %for.end.i.bna_rx_put.exit_crit_edge
  %rx_free_count.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 13, i32 6
  %193 = ptrtoint ptr %rx_free_count.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rx_free_count.i, align 4
  %inc.i141 = add i32 %194, 1
  store i32 %inc.i141, ptr %rx_free_count.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_enable(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  %cmp.not = icmp eq ptr %1, @bna_rx_sm_stopped
  br i1 %cmp.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end:                                           ; preds = %entry
  %rx_flags = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 9
  %2 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_flags, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %rx_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bna_rx_sm_start_wait, ptr %fsm, align 4
  tail call fastcc void @bna_rx_sm_start_wait_entry(ptr noundef %rx) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_disable(ptr noundef %rx, i32 noundef %type, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad, align 4
  tail call void %cbfn(ptr noundef %3, ptr noundef %rx) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 19
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cbfn, ptr %stop_cbfn, align 4
  %bna1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %5 = ptrtoint ptr %bna1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna1, align 4
  %bnad2 = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad2, align 4
  %stop_cbarg = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 20
  %9 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %stop_cbarg, align 4
  %rx_flags = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 9
  %10 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_flags, align 4
  %and = and i32 %11, -3
  store i32 %and, ptr %rx_flags, align 4
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %12 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsm, align 4
  tail call void %13(ptr noundef %rx, i32 noundef 2) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_cleanup_complete(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  tail call void %1(ptr noundef %rx, i32 noundef 8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_vlan_strip_enable(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_strip_status = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 27
  %0 = ptrtoint ptr %vlan_strip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlan_strip_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %2 = ptrtoint ptr %vlan_strip_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vlan_strip_status, align 4
  %vlan_strip_pending = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 26
  %3 = ptrtoint ptr %vlan_strip_pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %vlan_strip_pending, align 4
  %4 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxf1, align 4
  tail call void %5(ptr noundef %rxf1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_vlan_strip_disable(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_strip_status = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 27
  %0 = ptrtoint ptr %vlan_strip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlan_strip_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %2 = ptrtoint ptr %vlan_strip_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vlan_strip_status, align 4
  %vlan_strip_pending = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 26
  %3 = ptrtoint ptr %vlan_strip_pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %vlan_strip_pending, align 4
  %4 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxf1, align 4
  tail call void %5(ptr noundef %rxf1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bna_rx_mode_set(ptr noundef %rx, i32 noundef %new_mode, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %and = and i32 %bitmask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and2 = and i32 %new_mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %0 = and i32 %bitmask, %new_mode
  %1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %.not.not = icmp eq i32 %1, 0
  br i1 %.not.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 4
  %promisc_rid = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %promisc_rid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %promisc_rid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %land.lhs.true4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true4:                                   ; preds = %if.then
  %rx7 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %6 = ptrtoint ptr %rx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx7, align 4
  %rid = getelementptr inbounds %struct.bna_rx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp8.not = icmp eq i32 %5, %9
  br i1 %cmp8.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %if.then.if.end_crit_edge
  %default_mode_rid = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %default_mode_rid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %default_mode_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11.not = icmp eq i32 %11, -1
  %12 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %.not.not202 = icmp eq i32 %12, 0
  %or.cond = and i1 %cmp11.not, %.not.not202
  br i1 %or.cond, label %if.then50, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %entry
  %.pre = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %.not.not203 = icmp eq i32 %.pre, 0
  br i1 %.not.not203, label %if.end21.if.else_crit_edge, label %if.then27

if.end21.if.else_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then27:                                        ; preds = %if.end21
  %bna28 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %13 = ptrtoint ptr %bna28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bna28, align 4
  %default_mode_rid29 = getelementptr inbounds %struct.bna, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %default_mode_rid29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %default_mode_rid29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp30.not = icmp eq i32 %16, -1
  br i1 %cmp30.not, label %if.then27.if.end38_crit_edge, label %land.lhs.true31

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true31:                                  ; preds = %if.then27
  %rx34 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %17 = ptrtoint ptr %rx34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx34, align 4
  %rid35 = getelementptr inbounds %struct.bna_rx, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %rid35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rid35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp36.not = icmp eq i32 %16, %20
  br i1 %cmp36.not, label %land.lhs.true31.if.end38_crit_edge, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true31.if.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true31.if.end38_crit_edge, %if.then27.if.end38_crit_edge
  %promisc_rid40 = getelementptr inbounds %struct.bna, ptr %14, i32 0, i32 18
  %21 = ptrtoint ptr %promisc_rid40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %promisc_rid40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp41.not = icmp eq i32 %22, -1
  br i1 %cmp41.not, label %if.end38.if.else_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38.if.else_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then50:                                        ; preds = %if.end
  %rx.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx.i, align 4
  %bna1.i = getelementptr inbounds %struct.bna_rx, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %bna1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna1.i, align 4
  %rxmode_pending_bitmask.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 21
  %27 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then50
  %rxmode_pending.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %29 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxmode_pending.i, align 4
  %and2.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.thread.i, label %land.lhs.true.i.if.end65_crit_edge

land.lhs.true.i.if.end65_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

lor.lhs.false.i:                                  ; preds = %if.then50
  %rxmode_active.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %31 = ptrtoint ptr %rxmode_active.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rxmode_active.i, align 4
  %and4.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %bna_rxf_promisc_enable.exit, label %lor.lhs.false.i.if.end65_crit_edge

lor.lhs.false.i.if.end65_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

lor.lhs.false.thread.i:                           ; preds = %land.lhs.true.i
  %rxmode_active37.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %33 = ptrtoint ptr %rxmode_active37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rxmode_active37.i, align 4
  %and438.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and438.i)
  %tobool5.not39.i = icmp eq i32 %and438.i, 0
  br i1 %tobool5.not39.i, label %do.body.i, label %lor.lhs.false.thread.i.if.end65_crit_edge

lor.lhs.false.thread.i.if.end65_crit_edge:        ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.body.i:                                        ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %and15.i = and i32 %28, -2
  %35 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and15.i, ptr %rxmode_pending_bitmask.i, align 4
  %and17.i = and i32 %30, -2
  %36 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and17.i, ptr %rxmode_pending.i, align 4
  br label %if.end65

bna_rxf_promisc_enable.exit:                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %28, 1
  %37 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i, ptr %rxmode_pending_bitmask.i, align 4
  %rxmode_pending21.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %38 = ptrtoint ptr %rxmode_pending21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rxmode_pending21.i, align 4
  %or22.i = or i32 %39, 1
  store i32 %or22.i, ptr %rxmode_pending21.i, align 4
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %24, i32 0, i32 1
  %40 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rid.i, align 4
  %promisc_rid.i = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 18
  %42 = ptrtoint ptr %promisc_rid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %promisc_rid.i, align 8
  br label %if.end65

if.else:                                          ; preds = %if.end38.if.else_crit_edge, %if.end21.if.else_crit_edge
  %or.cond126 = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond126, label %if.then59, label %if.else.if.end65_crit_edge

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then59:                                        ; preds = %if.else
  %rx.i132 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %43 = ptrtoint ptr %rx.i132 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx.i132, align 4
  %bna1.i133 = getelementptr inbounds %struct.bna_rx, ptr %44, i32 0, i32 21
  %45 = ptrtoint ptr %bna1.i133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bna1.i133, align 4
  %rxmode_pending_bitmask.i134 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 21
  %47 = ptrtoint ptr %rxmode_pending_bitmask.i134 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxmode_pending_bitmask.i134, align 4
  %and.i135 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136, label %lor.lhs.false.i144, label %land.lhs.true.i140

land.lhs.true.i140:                               ; preds = %if.then59
  %rxmode_pending.i137 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %49 = ptrtoint ptr %rxmode_pending.i137 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rxmode_pending.i137, align 4
  %and2.i138 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i138)
  %tobool3.not.i139 = icmp eq i32 %and2.i138, 0
  br i1 %tobool3.not.i139, label %land.lhs.true.i140.if.end65_crit_edge, label %lor.lhs.false.thread.i145

land.lhs.true.i140.if.end65_crit_edge:            ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

lor.lhs.false.i144:                               ; preds = %if.then59
  %rxmode_active.i141 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %51 = ptrtoint ptr %rxmode_active.i141 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rxmode_active.i141, align 4
  %and4.i142 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i142)
  %tobool5.not.i143 = icmp eq i32 %and4.i142, 0
  br i1 %tobool5.not.i143, label %lor.lhs.false.i144.if.end65_crit_edge, label %bna_rxf_promisc_disable.exit

lor.lhs.false.i144.if.end65_crit_edge:            ; preds = %lor.lhs.false.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

lor.lhs.false.thread.i145:                        ; preds = %land.lhs.true.i140
  %rxmode_active41.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %53 = ptrtoint ptr %rxmode_active41.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rxmode_active41.i, align 4
  %and442.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and442.i)
  %tobool5.not43.i = icmp eq i32 %and442.i, 0
  br i1 %tobool5.not43.i, label %lor.lhs.false.thread.i145.if.end65_crit_edge, label %do.body.i152

lor.lhs.false.thread.i145.if.end65_crit_edge:     ; preds = %lor.lhs.false.thread.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.body.i152:                                     ; preds = %lor.lhs.false.thread.i145
  call void @__sanitizer_cov_trace_pc() #12
  %and15.i149 = and i32 %48, -2
  %55 = ptrtoint ptr %rxmode_pending_bitmask.i134 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and15.i149, ptr %rxmode_pending_bitmask.i134, align 4
  %and17.i150 = and i32 %50, -2
  %56 = ptrtoint ptr %rxmode_pending.i137 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and17.i150, ptr %rxmode_pending.i137, align 4
  %promisc_rid.i151 = getelementptr inbounds %struct.bna, ptr %46, i32 0, i32 18
  %57 = ptrtoint ptr %promisc_rid.i151 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %promisc_rid.i151, align 8
  br label %if.end65

bna_rxf_promisc_disable.exit:                     ; preds = %lor.lhs.false.i144
  call void @__sanitizer_cov_trace_pc() #12
  %or.i153 = or i32 %48, 1
  %58 = ptrtoint ptr %rxmode_pending_bitmask.i134 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i153, ptr %rxmode_pending_bitmask.i134, align 4
  %rxmode_pending25.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %59 = ptrtoint ptr %rxmode_pending25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxmode_pending25.i, align 4
  %and26.i = and i32 %60, -2
  store i32 %and26.i, ptr %rxmode_pending25.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %bna_rxf_promisc_disable.exit, %do.body.i152, %lor.lhs.false.thread.i145.if.end65_crit_edge, %lor.lhs.false.i144.if.end65_crit_edge, %land.lhs.true.i140.if.end65_crit_edge, %if.else.if.end65_crit_edge, %bna_rxf_promisc_enable.exit, %do.body.i, %lor.lhs.false.thread.i.if.end65_crit_edge, %lor.lhs.false.i.if.end65_crit_edge, %land.lhs.true.i.if.end65_crit_edge
  %tobool89.not = phi i1 [ false, %bna_rxf_promisc_disable.exit ], [ true, %do.body.i152 ], [ true, %lor.lhs.false.i144.if.end65_crit_edge ], [ true, %land.lhs.true.i140.if.end65_crit_edge ], [ true, %lor.lhs.false.thread.i145.if.end65_crit_edge ], [ false, %bna_rxf_promisc_enable.exit ], [ true, %land.lhs.true.i.if.end65_crit_edge ], [ true, %lor.lhs.false.i.if.end65_crit_edge ], [ true, %do.body.i ], [ true, %lor.lhs.false.thread.i.if.end65_crit_edge ], [ true, %if.else.if.end65_crit_edge ]
  %61 = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %.not.not204 = icmp eq i32 %61, 0
  br i1 %.not.not204, label %if.else76, label %if.then71

if.then71:                                        ; preds = %if.end65
  %rxmode_pending_bitmask.i155 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 21
  %62 = ptrtoint ptr %rxmode_pending_bitmask.i155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rxmode_pending_bitmask.i155, align 4
  %and.i156 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool.not.i157 = icmp eq i32 %and.i156, 0
  br i1 %tobool.not.i157, label %lor.lhs.false.i161, label %land.lhs.true.i159

land.lhs.true.i159:                               ; preds = %if.then71
  %rxmode_pending.i158 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %64 = ptrtoint ptr %rxmode_pending.i158 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rxmode_pending.i158, align 4
  %and1.i = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.thread.i162, label %land.lhs.true.i159.if.end88_crit_edge

land.lhs.true.i159.if.end88_crit_edge:            ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

lor.lhs.false.i161:                               ; preds = %if.then71
  %rxmode_active.i160 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %66 = ptrtoint ptr %rxmode_active.i160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rxmode_active.i160, align 4
  %and3.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %bna_rxf_allmulti_enable.exit, label %lor.lhs.false.i161.if.end88_crit_edge

lor.lhs.false.i161.if.end88_crit_edge:            ; preds = %lor.lhs.false.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

lor.lhs.false.thread.i162:                        ; preds = %land.lhs.true.i159
  %rxmode_active33.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %68 = ptrtoint ptr %rxmode_active33.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rxmode_active33.i, align 4
  %and334.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334.i)
  %tobool4.not35.i = icmp eq i32 %and334.i, 0
  br i1 %tobool4.not35.i, label %lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge, label %lor.lhs.false.thread.i162.if.end88_crit_edge

lor.lhs.false.thread.i162.if.end88_crit_edge:     ; preds = %lor.lhs.false.thread.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge: ; preds = %lor.lhs.false.thread.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.sink.split

bna_rxf_allmulti_enable.exit:                     ; preds = %lor.lhs.false.i161
  call void @__sanitizer_cov_trace_pc() #12
  %or.i164 = or i32 %63, 4
  %70 = ptrtoint ptr %rxmode_pending_bitmask.i155 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i164, ptr %rxmode_pending_bitmask.i155, align 4
  %rxmode_pending20.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %71 = ptrtoint ptr %rxmode_pending20.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rxmode_pending20.i, align 4
  %or21.i = or i32 %72, 4
  store i32 %or21.i, ptr %rxmode_pending20.i, align 4
  br label %if.then90

if.else76:                                        ; preds = %if.end65
  %and69 = and i32 %new_mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %and66 = and i32 %bitmask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp ne i32 %and66, 0
  %or.cond130 = and i1 %tobool70.not, %tobool67.not
  br i1 %or.cond130, label %if.then82, label %if.else76.if.end88_crit_edge

if.else76.if.end88_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then82:                                        ; preds = %if.else76
  %rxmode_pending_bitmask.i166 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 21
  %73 = ptrtoint ptr %rxmode_pending_bitmask.i166 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rxmode_pending_bitmask.i166, align 4
  %and.i167 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %lor.lhs.false.i176, label %land.lhs.true.i172

land.lhs.true.i172:                               ; preds = %if.then82
  %rxmode_pending.i169 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %75 = ptrtoint ptr %rxmode_pending.i169 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rxmode_pending.i169, align 4
  %and1.i170 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i170)
  %tobool2.not.i171 = icmp eq i32 %and1.i170, 0
  br i1 %tobool2.not.i171, label %land.lhs.true.i172.if.end88_crit_edge, label %lor.lhs.false.thread.i177

land.lhs.true.i172.if.end88_crit_edge:            ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

lor.lhs.false.i176:                               ; preds = %if.then82
  %rxmode_active.i173 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %77 = ptrtoint ptr %rxmode_active.i173 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rxmode_active.i173, align 4
  %and3.i174 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i174)
  %tobool4.not.i175 = icmp eq i32 %and3.i174, 0
  br i1 %tobool4.not.i175, label %lor.lhs.false.i176.if.end88_crit_edge, label %bna_rxf_allmulti_disable.exit

lor.lhs.false.i176.if.end88_crit_edge:            ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

lor.lhs.false.thread.i177:                        ; preds = %land.lhs.true.i172
  %rxmode_active39.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 22
  %79 = ptrtoint ptr %rxmode_active39.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rxmode_active39.i, align 4
  %and340.i = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340.i)
  %tobool4.not41.i = icmp eq i32 %and340.i, 0
  br i1 %tobool4.not41.i, label %lor.lhs.false.thread.i177.if.end88_crit_edge, label %lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge

lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge: ; preds = %lor.lhs.false.thread.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.sink.split

lor.lhs.false.thread.i177.if.end88_crit_edge:     ; preds = %lor.lhs.false.thread.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

bna_rxf_allmulti_disable.exit:                    ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #12
  %or.i183 = or i32 %74, 4
  %81 = ptrtoint ptr %rxmode_pending_bitmask.i166 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i183, ptr %rxmode_pending_bitmask.i166, align 4
  %rxmode_pending24.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 20
  %82 = ptrtoint ptr %rxmode_pending24.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rxmode_pending24.i, align 4
  %and16.i184 = and i32 %83, -5
  store i32 %and16.i184, ptr %rxmode_pending24.i, align 4
  br label %if.then90

if.end88.sink.split:                              ; preds = %lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge, %lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge
  %.sink207 = phi i32 [ %63, %lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge ], [ %74, %lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge ]
  %rxmode_pending_bitmask.i166.sink = phi ptr [ %rxmode_pending_bitmask.i155, %lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge ], [ %rxmode_pending_bitmask.i166, %lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge ]
  %.sink = phi i32 [ %65, %lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge ], [ %76, %lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge ]
  %rxmode_pending.i169.sink = phi ptr [ %rxmode_pending.i158, %lor.lhs.false.thread.i162.if.end88.sink.split_crit_edge ], [ %rxmode_pending.i169, %lor.lhs.false.thread.i177.if.end88.sink.split_crit_edge ]
  %and14.i181 = and i32 %.sink207, -5
  %84 = ptrtoint ptr %rxmode_pending_bitmask.i166.sink to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and14.i181, ptr %rxmode_pending_bitmask.i166.sink, align 4
  %and16.i184198 = and i32 %.sink, -5
  %85 = ptrtoint ptr %rxmode_pending.i169.sink to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and16.i184198, ptr %rxmode_pending.i169.sink, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %lor.lhs.false.thread.i177.if.end88_crit_edge, %lor.lhs.false.i176.if.end88_crit_edge, %land.lhs.true.i172.if.end88_crit_edge, %if.else76.if.end88_crit_edge, %lor.lhs.false.thread.i162.if.end88_crit_edge, %lor.lhs.false.i161.if.end88_crit_edge, %land.lhs.true.i159.if.end88_crit_edge
  br i1 %tobool89.not, label %if.end88.cleanup_crit_edge, label %if.end88.if.then90_crit_edge

if.end88.if.then90_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then90

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90:                                        ; preds = %if.end88.if.then90_crit_edge, %bna_rxf_allmulti_disable.exit, %bna_rxf_allmulti_enable.exit
  %cam_fltr_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 7
  %86 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %cam_fltr_cbfn, align 4
  %bna91 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %87 = ptrtoint ptr %bna91 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bna91, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %88, i32 0, i32 19
  %89 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bnad, align 4
  %cam_fltr_cbarg = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 8
  %91 = ptrtoint ptr %cam_fltr_cbarg to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %cam_fltr_cbarg, align 4
  %92 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rxf1, align 4
  tail call void %93(ptr noundef %rxf1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.end88.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then90 ], [ 0, %if.end88.cleanup_crit_edge ], [ 1, %if.end38.cleanup_crit_edge ], [ 1, %land.lhs.true31.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_vlanfilter_enable(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_filter_status = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 24
  %0 = ptrtoint ptr %vlan_filter_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vlan_filter_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rxf1 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %2 = ptrtoint ptr %vlan_filter_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vlan_filter_status, align 4
  %vlan_pending_bitmask = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 23
  %3 = ptrtoint ptr %vlan_pending_bitmask to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %vlan_pending_bitmask, align 4
  %4 = ptrtoint ptr %rxf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxf1, align 4
  tail call void %5(ptr noundef %rxf1, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_coalescing_timeo_set(ptr noundef readonly %rx, i32 noundef %coalescing_timeo) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxp_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 6
  %0 = ptrtoint ptr %rxp_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %rxp.014 = load ptr, ptr %rxp_q, align 4
  %cmp.not15 = icmp eq ptr %rxp.014, %rxp_q
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = trunc i32 %coalescing_timeo to i8
  %conv.i = shl i32 %coalescing_timeo, 16
  %shl.i = and i32 %conv.i, 16711680
  %or.i = or i32 %shl.i, -2147483648
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %rxp.016 = phi ptr [ %rxp.014, %for.body.lr.ph ], [ %rxp.0, %for.body.for.body_crit_edge ]
  %ccb = getelementptr inbounds %struct.bna_rxp, ptr %rxp.016, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ccb, align 4
  %rx_coalescing_timeo = getelementptr inbounds %struct.bna_ccb, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %rx_coalescing_timeo, align 4
  %coalescing_timeo1.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.016, i32 0, i32 3, i32 2, i32 5
  %4 = ptrtoint ptr %coalescing_timeo1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %coalescing_timeo1.i, align 4
  %doorbell_ack.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.016, i32 0, i32 3, i32 2, i32 2, i32 1
  %5 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %doorbell_ack.i, align 4
  %6 = ptrtoint ptr %rxp.016 to i32
  call void @__asan_load4_noabort(i32 %6)
  %rxp.0 = load ptr, ptr %rxp.016, align 4
  %cmp.not = icmp eq ptr %rxp.0, %rxp_q
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_rx_dim_reconfig(ptr nocapture noundef writeonly %bna, ptr nocapture noundef readonly %vector) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vector, align 4
  %arrayidx6 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 0, i32 0
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx6, align 4
  %arrayidx4.1 = getelementptr [2 x i32], ptr %vector, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4.1, align 4
  %arrayidx6.1 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx6.1, align 4
  %arrayidx4.119 = getelementptr [2 x i32], ptr %vector, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx4.119 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.119, align 4
  %arrayidx6.120 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx6.120 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx6.120, align 4
  %arrayidx4.1.1 = getelementptr [2 x i32], ptr %vector, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx4.1.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.1.1, align 4
  %arrayidx6.1.1 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx6.1.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx6.1.1, align 4
  %arrayidx4.2 = getelementptr [2 x i32], ptr %vector, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.2, align 4
  %arrayidx6.2 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx6.2, align 4
  %arrayidx4.1.2 = getelementptr [2 x i32], ptr %vector, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx4.1.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.1.2, align 4
  %arrayidx6.1.2 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx6.1.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx6.1.2, align 4
  %arrayidx4.3 = getelementptr [2 x i32], ptr %vector, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.3, align 4
  %arrayidx6.3 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 3, i32 0
  %20 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx6.3, align 4
  %arrayidx4.1.3 = getelementptr [2 x i32], ptr %vector, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx4.1.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.1.3, align 4
  %arrayidx6.1.3 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx6.1.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx6.1.3, align 4
  %arrayidx4.4 = getelementptr [2 x i32], ptr %vector, i32 4, i32 0
  %24 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.4, align 4
  %arrayidx6.4 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 4, i32 0
  %26 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx6.4, align 4
  %arrayidx4.1.4 = getelementptr [2 x i32], ptr %vector, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx4.1.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.1.4, align 4
  %arrayidx6.1.4 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx6.1.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx6.1.4, align 4
  %arrayidx4.5 = getelementptr [2 x i32], ptr %vector, i32 5, i32 0
  %30 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.5, align 4
  %arrayidx6.5 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 5, i32 0
  %32 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx6.5, align 4
  %arrayidx4.1.5 = getelementptr [2 x i32], ptr %vector, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx4.1.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.1.5, align 4
  %arrayidx6.1.5 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx6.1.5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx6.1.5, align 4
  %arrayidx4.6 = getelementptr [2 x i32], ptr %vector, i32 6, i32 0
  %36 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.6, align 4
  %arrayidx6.6 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 6, i32 0
  %38 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx6.6, align 4
  %arrayidx4.1.6 = getelementptr [2 x i32], ptr %vector, i32 6, i32 1
  %39 = ptrtoint ptr %arrayidx4.1.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.1.6, align 4
  %arrayidx6.1.6 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 6, i32 1
  %41 = ptrtoint ptr %arrayidx6.1.6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx6.1.6, align 4
  %arrayidx4.7 = getelementptr [2 x i32], ptr %vector, i32 7, i32 0
  %42 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.7, align 4
  %arrayidx6.7 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 7, i32 0
  %44 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx6.7, align 4
  %arrayidx4.1.7 = getelementptr [2 x i32], ptr %vector, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx4.1.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx4.1.7, align 4
  %arrayidx6.1.7 = getelementptr %struct.bna, ptr %bna, i32 0, i32 13, i32 14, i32 7, i32 1
  %47 = ptrtoint ptr %arrayidx6.1.7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx6.1.7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bna_rx_dim_update(ptr nocapture noundef %ccb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cq = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 11
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 4
  %rx = getelementptr inbounds %struct.bna_cq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %bna1 = getelementptr inbounds %struct.bna_rx, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bna1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bna1, align 4
  %pkt_rate = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 8
  %6 = ptrtoint ptr %pkt_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pkt_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %large_pkt_cnt = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %large_pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %large_pkt_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %large_pkt_cnt7 = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %large_pkt_cnt7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %large_pkt_cnt7, align 4
  %add = add i32 %11, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %add)
  %cmp8 = icmp ult i32 %add, 10000
  br i1 %cmp8, label %if.end.if.end34_crit_edge, label %if.else

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %add)
  %cmp10 = icmp ult i32 %add, 20000
  br i1 %cmp10, label %if.else.if.end34_crit_edge, label %if.else12

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %add)
  %cmp13 = icmp ult i32 %add, 30000
  br i1 %cmp13, label %if.else12.if.end34_crit_edge, label %if.else15

if.else12.if.end34_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %add)
  %cmp16 = icmp ult i32 %add, 40000
  br i1 %cmp16, label %if.else15.if.end34_crit_edge, label %if.else18

if.else15.if.end34_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %add)
  %cmp19 = icmp ult i32 %add, 50000
  br i1 %cmp19, label %if.else18.if.end34_crit_edge, label %if.else21

if.else18.if.end34_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %add)
  %cmp22 = icmp ult i32 %add, 60000
  br i1 %cmp22, label %if.else21.if.end34_crit_edge, label %if.else24

if.else21.if.end34_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %add)
  %cmp25 = icmp ult i32 %add, 80000
  %. = zext i1 %cmp25 to i32
  br label %if.end34

if.end34:                                         ; preds = %if.else24, %if.else21.if.end34_crit_edge, %if.else18.if.end34_crit_edge, %if.else15.if.end34_crit_edge, %if.else12.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %load.0 = phi i32 [ 7, %if.end.if.end34_crit_edge ], [ 6, %if.else.if.end34_crit_edge ], [ 5, %if.else12.if.end34_crit_edge ], [ 4, %if.else15.if.end34_crit_edge ], [ 3, %if.else18.if.end34_crit_edge ], [ 2, %if.else21.if.end34_crit_edge ], [ %., %if.else24 ]
  %shl = shl i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp35 = icmp ule i32 %7, %shl
  %.68 = zext i1 %cmp35 to i32
  %12 = ptrtoint ptr %pkt_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pkt_rate, align 4
  %13 = ptrtoint ptr %large_pkt_cnt7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %large_pkt_cnt7, align 4
  %arrayidx43 = getelementptr %struct.bna, ptr %5, i32 0, i32 13, i32 14, i32 %load.0, i32 %.68
  %14 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx43, align 4
  %conv = trunc i32 %15 to i8
  %rx_coalescing_timeo = getelementptr inbounds %struct.bna_ccb, ptr %ccb, i32 0, i32 16
  %16 = ptrtoint ptr %rx_coalescing_timeo to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %rx_coalescing_timeo, align 4
  %coalescing_timeo1.i = getelementptr inbounds %struct.bna_cq, ptr %1, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %coalescing_timeo1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %coalescing_timeo1.i, align 4
  %conv.i = shl i32 %15, 16
  %shl.i = and i32 %conv.i, 16711680
  %or.i = or i32 %shl.i, -2147483648
  %doorbell_ack.i = getelementptr inbounds %struct.bna_cq, ptr %1, i32 0, i32 2, i32 2, i32 1
  %18 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %doorbell_ack.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_tx_enet_start_rsp(ptr noundef %tx, ptr nocapture noundef readnone %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfi_enet_cmd = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %msgq = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 8
  tail call void @bfa_msgq_rsp_copy(ptr noundef %msgq, ptr noundef %bfi_enet_cmd, i32 noundef 108) #10
  %hw_id = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 2
  %2 = ptrtoint ptr %hw_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_id, align 1
  %conv = zext i8 %3 to i32
  %hw_id1 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 2
  %4 = ptrtoint ptr %hw_id1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %hw_id1, align 4
  %num_txq = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 6
  %5 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_txq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp47 = icmp sgt i32 %6, 0
  br i1 %cmp47, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %txq_q = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  %q_handles = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %txq.0.in49 = phi ptr [ %txq_q, %for.body.lr.ph ], [ %txq.0, %for.body.for.body_crit_edge ]
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %txq.0.in49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %txq.0 = load ptr, ptr %txq.0.in49, align 4
  %8 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bna, align 4
  %pci_bar_kva = getelementptr inbounds %struct.bna, ptr %9, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_bar_kva, align 4
  %arrayidx = getelementptr [8 x %struct.anon.16], ptr %q_handles, i32 0, i32 %i.048
  %i_dbell = getelementptr [8 x %struct.anon.16], ptr %q_handles, i32 0, i32 %i.048, i32 1
  %12 = ptrtoint ptr %i_dbell to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %i_dbell, align 1
  %add.ptr4 = getelementptr i8, ptr %11, i32 %13
  %tcb = getelementptr inbounds %struct.bna_txq, ptr %txq.0, i32 0, i32 3
  %14 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcb, align 8
  %i_dbell5 = getelementptr inbounds %struct.bna_tcb, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_dbell5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_dbell5, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr4, ptr %17, align 4
  %19 = load ptr, ptr %bna, align 4
  %pci_bar_kva8 = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %pci_bar_kva8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_bar_kva8, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx, align 1
  %add.ptr11 = getelementptr i8, ptr %21, i32 %23
  %24 = load ptr, ptr %tcb, align 8
  %q_dbell13 = getelementptr inbounds %struct.bna_tcb, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %q_dbell13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr11, ptr %q_dbell13, align 4
  %hw_qid = getelementptr [8 x %struct.anon.16], ptr %q_handles, i32 0, i32 %i.048, i32 2
  %26 = ptrtoint ptr %hw_qid to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hw_qid, align 1
  %conv16 = zext i8 %27 to i32
  %hw_id17 = getelementptr inbounds %struct.bna_txq, ptr %txq.0, i32 0, i32 6
  %28 = ptrtoint ptr %hw_id17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv16, ptr %hw_id17, align 8
  %29 = load ptr, ptr %tcb, align 8
  %hw_consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %hw_consumer_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_consumer_index, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %31, align 4
  %33 = load ptr, ptr %tcb, align 8
  %consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %consumer_index to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %consumer_index, align 4
  %35 = load ptr, ptr %tcb, align 8
  %producer_index = getelementptr inbounds %struct.bna_tcb, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %producer_index to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %producer_index, align 4
  %inc = add nuw nsw i32 %i.048, 1
  %37 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_txq, align 4
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %39 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fsm, align 4
  tail call void %40(ptr noundef %tx, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_tx_enet_stop_rsp(ptr noundef %tx, ptr nocapture noundef readnone %msghdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  tail call void %1(ptr noundef %tx, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_bfi_bw_update_aen(ptr noundef readonly %tx_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_active_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 3
  %0 = ptrtoint ptr %tx_active_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %tx.011 = load ptr, ptr %tx_active_q, align 4
  %cmp.not12 = icmp eq ptr %tx.011, %tx_active_q
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tx.013 = phi ptr [ %tx.0, %for.body.for.body_crit_edge ], [ %tx.011, %entry.for.body_crit_edge ]
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx.013, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fsm, align 4
  tail call void %2(ptr noundef %tx.013, i32 noundef 8) #10
  %3 = ptrtoint ptr %tx.013 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tx.0 = load ptr, ptr %tx.013, align 4
  %cmp.not = icmp eq ptr %tx.0, %tx_active_q
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bna_tx_res_req(i32 noundef %num_txq, i32 noundef %txq_depth, ptr noundef writeonly %res_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %res_info, align 4
  %res_u = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1
  %1 = ptrtoint ptr %res_u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %res_u, align 4
  %len = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 84, ptr %len, align 4
  %num = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_txq, ptr %num, align 4
  %mul = shl i32 %txq_depth, 6
  %add = add i32 %mul, 4095
  %shr = lshr i32 %add, 12
  %arrayidx2 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx2, align 4
  %res_u5 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1
  %5 = ptrtoint ptr %res_u5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %res_u5, align 4
  %mul7 = shl nuw nsw i32 %shr, 3
  %len8 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul7, ptr %len8, align 4
  %num9 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %num9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_txq, ptr %num9, align 4
  %arrayidx10 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx10, align 4
  %res_u13 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1
  %9 = ptrtoint ptr %res_u13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %res_u13, align 4
  %mul15 = shl nuw nsw i32 %shr, 2
  %len16 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul15, ptr %len16, align 4
  %num17 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %num17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num_txq, ptr %num17, align 4
  %arrayidx18 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx18, align 4
  %res_u21 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1
  %13 = ptrtoint ptr %res_u21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %res_u21, align 4
  %mul23 = and i32 %add, -4096
  %len24 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %len24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul23, ptr %len24, align 4
  %num25 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %num25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %num_txq, ptr %num25, align 4
  %arrayidx26 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx26, align 4
  %res_u29 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1
  %17 = ptrtoint ptr %res_u29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %res_u29, align 4
  %len31 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %len31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %len31, align 4
  %num32 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %num32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %num_txq, ptr %num32, align 4
  %arrayidx33 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %arrayidx33, align 4
  %res_u36 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1
  %21 = ptrtoint ptr %res_u36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %res_u36, align 4
  %num39 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %num39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %num_txq, ptr %num39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bna_tx_create(ptr noundef %bna, ptr noundef %bnad, ptr nocapture noundef readonly %tx_cfg, ptr nocapture noundef readonly %tx_cbfn, ptr nocapture noundef readonly %res_info, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %res_u = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1
  %len = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %div282 = lshr i32 %1, 12
  %num = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_cfg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp5.not = icmp eq i32 %3, %5
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_type = getelementptr inbounds %struct.bna_tx_config, ptr %tx_cfg, i32 0, i32 3
  %6 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_type, align 4
  %tx_free_q.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %tx_free_q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_free_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %tx_free_q.i
  br i1 %cmp.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %prev.i = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 2, i32 1
  %tx.0.in.i = select i1 %cmp.i, ptr %tx_free_q.i, ptr %prev.i
  %10 = ptrtoint ptr %tx.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tx.0.i = load ptr, ptr %tx.0.in.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tx.0.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.bna_tx_get.exit_crit_edge

if.end.i.bna_tx_get.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_tx_get.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tx.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %tx.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %bna_tx_get.exit

bna_tx_get.exit:                                  ; preds = %if.end.i.i.i, %if.end.i.bna_tx_get.exit_crit_edge
  %17 = ptrtoint ptr %tx.0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %tx.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tx.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %type8.i = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 5
  %19 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %type8.i, align 4
  %tobool.not = icmp eq ptr %tx.0.i, null
  br i1 %tobool.not, label %bna_tx_get.exit.cleanup_crit_edge, label %if.end7

bna_tx_get.exit.cleanup_crit_edge:                ; preds = %bna_tx_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %bna_tx_get.exit
  %bna8 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 18
  %20 = ptrtoint ptr %bna8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bna, ptr %bna8, align 4
  %priv9 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 19
  %21 = ptrtoint ptr %priv9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %priv, ptr %priv9, align 4
  %txq_q = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 7
  %22 = ptrtoint ptr %txq_q to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %txq_q, ptr %txq_q, align 4
  %prev.i283 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %prev.i283 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %txq_q, ptr %prev.i283, align 4
  %24 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp11295 = icmp sgt i32 %25, 0
  br i1 %cmp11295, label %for.body.lr.ph, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %txq_free_q = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 4
  br label %for.body

for.body:                                         ; preds = %list_move_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0296 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_move_tail.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %txq_free_q to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %txq_free_q, align 4
  %cmp.i284.not = icmp eq ptr %27, %txq_free_q
  br i1 %cmp.i284.not, label %err_return, label %if.end15

if.end15:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.__list_del_entry.exit.i_crit_edge

if.end15.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i285 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i285 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i285, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end15.__list_del_entry.exit.i_crit_edge
  %34 = ptrtoint ptr %prev.i283 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i283, align 4
  %call.i.i.i286 = tail call zeroext i1 @__list_add_valid(ptr noundef %27, ptr noundef %35, ptr noundef %txq_q) #10
  br i1 %call.i.i.i286, label %if.end.i.i.i287, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i287:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %prev.i283 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %27, ptr %prev.i283, align 4
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %txq_q, ptr %27, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %27, ptr %35, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i287, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tx18 = getelementptr inbounds %struct.bna_txq, ptr %27, i32 0, i32 5
  %40 = ptrtoint ptr %tx18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx.0.i, ptr %tx18, align 4
  %inc = add nuw nsw i32 %i.0296, 1
  %41 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_cfg, align 4
  %cmp11 = icmp slt i32 %inc, %42
  br i1 %cmp11, label %list_move_tail.exit.for.body_crit_edge, label %list_move_tail.exit.for.end_crit_edge

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

list_move_tail.exit.for.body_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %if.end7.for.end_crit_edge
  %43 = ptrtoint ptr %tx_cbfn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_cbfn, align 4
  %tcb_setup_cbfn19 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 9
  %45 = ptrtoint ptr %tcb_setup_cbfn19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %tcb_setup_cbfn19, align 4
  %tcb_destroy_cbfn = getelementptr inbounds %struct.bna_tx_event_cbfn, ptr %tx_cbfn, i32 0, i32 1
  %46 = ptrtoint ptr %tcb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tcb_destroy_cbfn, align 4
  %tcb_destroy_cbfn20 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 10
  %48 = ptrtoint ptr %tcb_destroy_cbfn20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %tcb_destroy_cbfn20, align 4
  %tx_stall_cbfn = getelementptr inbounds %struct.bna_tx_event_cbfn, ptr %tx_cbfn, i32 0, i32 2
  %49 = ptrtoint ptr %tx_stall_cbfn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_stall_cbfn, align 4
  %tx_stall_cbfn21 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 11
  %51 = ptrtoint ptr %tx_stall_cbfn21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %tx_stall_cbfn21, align 4
  %tx_resume_cbfn = getelementptr inbounds %struct.bna_tx_event_cbfn, ptr %tx_cbfn, i32 0, i32 3
  %52 = ptrtoint ptr %tx_resume_cbfn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_resume_cbfn, align 4
  %tx_resume_cbfn22 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 12
  %54 = ptrtoint ptr %tx_resume_cbfn22 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %tx_resume_cbfn22, align 4
  %tx_cleanup_cbfn = getelementptr inbounds %struct.bna_tx_event_cbfn, ptr %tx_cbfn, i32 0, i32 4
  %55 = ptrtoint ptr %tx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_cleanup_cbfn, align 4
  %tx_cleanup_cbfn23 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 13
  %57 = ptrtoint ptr %tx_cleanup_cbfn23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %tx_cleanup_cbfn23, align 4
  %tx_active_q = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 3
  %prev.i288 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 3, i32 1
  %58 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i288, align 4
  %call.i.i289 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tx.0.i, ptr noundef %59, ptr noundef %tx_active_q) #10
  br i1 %call.i.i289, label %if.end.i.i290, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i290:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tx.0.i, ptr %prev.i288, align 4
  %61 = ptrtoint ptr %tx.0.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx_active_q, ptr %tx.0.i, align 4
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %tx.0.i, ptr %59, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i290, %for.end.list_add_tail.exit_crit_edge
  %64 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_cfg, align 4
  %num_txq26 = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 6
  %66 = ptrtoint ptr %num_txq26 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %num_txq26, align 4
  %flags = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 4
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %flags, align 4
  %68 = ptrtoint ptr %bna8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bna8, align 4
  %flags29 = getelementptr inbounds %struct.bna, ptr %69, i32 0, i32 12, i32 7
  %70 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags29, align 8
  %and = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %list_add_tail.exit.if.end50_crit_edge, label %if.then31

list_add_tail.exit.if.end50_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then31:                                        ; preds = %list_add_tail.exit
  %72 = ptrtoint ptr %type8.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type8.i, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %73, label %if.then31.if.end50_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
  ]

if.then31.if.end50_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

sw.bb:                                            ; preds = %if.then31
  %and35 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %sw.bb.if.end50.sink.split_crit_edge, label %sw.bb.if.end50_crit_edge

sw.bb.if.end50_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

sw.bb.if.end50.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.sink.split

sw.bb40:                                          ; preds = %if.then31
  %and44 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %sw.bb40.if.end50_crit_edge, label %sw.bb40.if.end50.sink.split_crit_edge

sw.bb40.if.end50.sink.split_crit_edge:            ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.sink.split

sw.bb40.if.end50_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50.sink.split:                              ; preds = %sw.bb40.if.end50.sink.split_crit_edge, %sw.bb.if.end50.sink.split_crit_edge
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %flags, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %sw.bb40.if.end50_crit_edge, %sw.bb.if.end50_crit_edge, %if.then31.if.end50_crit_edge, %list_add_tail.exit.if.end50_crit_edge
  %76 = ptrtoint ptr %txq_q to i32
  call void @__asan_load4_noabort(i32 %76)
  %txq.0297 = load ptr, ptr %txq_q, align 4
  %cmp59.not298 = icmp eq ptr %txq.0297, %txq_q
  br i1 %cmp59.not298, label %if.end50.for.end165_crit_edge, label %for.body60.lr.ph

if.end50.for.end165_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end165

for.body60.lr.ph:                                 ; preds = %if.end50
  %mdl = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 4
  %mdl66 = getelementptr %struct.bna_res_info, ptr %res_info, i32 5, i32 1, i32 0, i32 4
  %idl88 = getelementptr %struct.bna_res_info, ptr %res_info, i32 6, i32 1, i32 0, i32 2
  %coalescing_timeo = getelementptr inbounds %struct.bna_tx_config, ptr %tx_cfg, i32 0, i32 2
  %txq_depth = getelementptr inbounds %struct.bna_tx_config, ptr %tx_cfg, i32 0, i32 1
  %mdl107 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 4
  %mdl131 = getelementptr %struct.bna_res_info, ptr %res_info, i32 2, i32 1, i32 0, i32 4
  %mdl135 = getelementptr %struct.bna_res_info, ptr %res_info, i32 3, i32 1, i32 0, i32 4
  %mdl139 = getelementptr %struct.bna_res_info, ptr %res_info, i32 4, i32 1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp1.i.not = icmp ult i32 %1, 4096
  %bnad145 = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 19
  %default_prio = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 9
  br label %for.body60

for.body60:                                       ; preds = %if.end157.for.body60_crit_edge, %for.body60.lr.ph
  %txq.0301 = phi ptr [ %txq.0297, %for.body60.lr.ph ], [ %txq.0, %if.end157.for.body60_crit_edge ]
  %i.1299 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc158, %if.end157.for.body60_crit_edge ]
  %77 = ptrtoint ptr %mdl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdl, align 4
  %kva = getelementptr %struct.bna_mem_descr, ptr %78, i32 %i.1299, i32 1
  %79 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %kva, align 4
  %tcb = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 3
  %81 = ptrtoint ptr %tcb to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %tcb, align 8
  %tx_packets = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 7
  %82 = call ptr @memset(ptr %tx_packets, i32 0, i32 16)
  %83 = ptrtoint ptr %mdl66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mdl66, align 4
  %lsb = getelementptr %struct.bna_mem_descr, ptr %84, i32 %i.1299, i32 2, i32 1
  %85 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %lsb, align 4
  %ib = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4
  %lsb68 = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 0, i32 1
  %87 = ptrtoint ptr %lsb68 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %lsb68, align 4
  %88 = load ptr, ptr %mdl66, align 4
  %dma73 = getelementptr %struct.bna_mem_descr, ptr %88, i32 %i.1299, i32 2
  %89 = ptrtoint ptr %dma73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma73, align 4
  %91 = ptrtoint ptr %ib to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %ib, align 4
  %92 = load ptr, ptr %mdl66, align 4
  %kva81 = getelementptr %struct.bna_mem_descr, ptr %92, i32 %i.1299, i32 1
  %93 = ptrtoint ptr %kva81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %kva81, align 4
  %ib_seg_host_addr_kva = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %ib_seg_host_addr_kva to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %ib_seg_host_addr_kva, align 4
  %96 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %res_u, align 4
  %intr_type84 = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 3
  %98 = ptrtoint ptr %intr_type84 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %intr_type84, align 4
  %99 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp86 = icmp eq i32 %100, 1
  %101 = ptrtoint ptr %idl88 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %idl88, align 4
  %cond.in.idx = select i1 %cmp86, i32 0, i32 %i.1299
  %cond.in = getelementptr %struct.bna_intr_descr, ptr %102, i32 %cond.in.idx
  %103 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %103)
  %cond = load i32, ptr %cond.in, align 4
  %intr_vector = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 4
  %104 = ptrtoint ptr %intr_vector to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %cond, ptr %intr_vector, align 4
  %105 = ptrtoint ptr %res_u to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %res_u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp93 = icmp eq i32 %106, 1
  br i1 %cmp93, label %if.then94, label %for.body60.if.end99_crit_edge

for.body60.if.end99_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then94:                                        ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %cond
  %107 = ptrtoint ptr %intr_vector to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %shl, ptr %intr_vector, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %for.body60.if.end99_crit_edge
  %108 = ptrtoint ptr %coalescing_timeo to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %coalescing_timeo, align 4
  %conv = trunc i32 %109 to i8
  %coalescing_timeo101 = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 5
  %110 = ptrtoint ptr %coalescing_timeo101 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv, ptr %coalescing_timeo101, align 4
  %interpkt_timeo = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 7
  %111 = ptrtoint ptr %interpkt_timeo to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 15, ptr %interpkt_timeo, align 4
  %interpkt_count = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 6
  %112 = ptrtoint ptr %interpkt_count to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 12, ptr %interpkt_count, align 4
  %113 = ptrtoint ptr %txq_depth to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %txq_depth, align 4
  %115 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tcb, align 8
  %q_depth = getelementptr inbounds %struct.bna_tcb, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %q_depth to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %114, ptr %q_depth, align 4
  %118 = ptrtoint ptr %mdl107 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mdl107, align 4
  %kva109 = getelementptr %struct.bna_mem_descr, ptr %119, i32 %i.1299, i32 1
  %120 = ptrtoint ptr %kva109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %kva109, align 4
  %122 = load ptr, ptr %tcb, align 8
  %unmap_q = getelementptr inbounds %struct.bna_tcb, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %unmap_q to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %121, ptr %unmap_q, align 4
  %124 = ptrtoint ptr %ib_seg_host_addr_kva to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ib_seg_host_addr_kva, align 4
  %126 = load ptr, ptr %tcb, align 8
  %hw_consumer_index = getelementptr inbounds %struct.bna_tcb, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %hw_consumer_index to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %125, ptr %hw_consumer_index, align 4
  %door_bell = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 4, i32 2
  %128 = load ptr, ptr %tcb, align 8
  %i_dbell = getelementptr inbounds %struct.bna_tcb, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %i_dbell to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %door_bell, ptr %i_dbell, align 4
  %130 = ptrtoint ptr %intr_type84 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %intr_type84, align 4
  %132 = load ptr, ptr %tcb, align 8
  %intr_type119 = getelementptr inbounds %struct.bna_tcb, ptr %132, i32 0, i32 12
  %133 = ptrtoint ptr %intr_type119 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %131, ptr %intr_type119, align 4
  %134 = ptrtoint ptr %intr_vector to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %intr_vector, align 4
  %136 = load ptr, ptr %tcb, align 8
  %intr_vector123 = getelementptr inbounds %struct.bna_tcb, ptr %136, i32 0, i32 13
  %137 = ptrtoint ptr %intr_vector123 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %135, ptr %intr_vector123, align 4
  %138 = load ptr, ptr %tcb, align 8
  %txq125 = getelementptr inbounds %struct.bna_tcb, ptr %138, i32 0, i32 9
  %139 = ptrtoint ptr %txq125 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %txq.0301, ptr %txq125, align 4
  %140 = load ptr, ptr %tcb, align 8
  %bnad127 = getelementptr inbounds %struct.bna_tcb, ptr %140, i32 0, i32 10
  %141 = ptrtoint ptr %bnad127 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %bnad, ptr %bnad127, align 4
  %142 = load ptr, ptr %tcb, align 8
  %id = getelementptr inbounds %struct.bna_tcb, ptr %142, i32 0, i32 16
  %143 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %i.1299, ptr %id, align 4
  %144 = ptrtoint ptr %mdl131 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mdl131, align 4
  %146 = ptrtoint ptr %mdl135 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mdl135, align 4
  %148 = ptrtoint ptr %mdl139 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mdl139, align 4
  %dma1.i = getelementptr %struct.bna_mem_descr, ptr %145, i32 %i.1299, i32 2
  %lsb.i = getelementptr %struct.bna_mem_descr, ptr %145, i32 %i.1299, i32 2, i32 1
  %150 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %lsb.i, align 4
  %qpt.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 2
  %lsb2.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 2, i32 0, i32 1
  %152 = ptrtoint ptr %lsb2.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %lsb2.i, align 4
  %153 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma1.i, align 4
  %155 = ptrtoint ptr %qpt.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %qpt.i, align 4
  %kva7.i = getelementptr %struct.bna_mem_descr, ptr %145, i32 %i.1299, i32 1
  %156 = ptrtoint ptr %kva7.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %kva7.i, align 4
  %kv_qpt_ptr.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 2, i32 1
  %158 = ptrtoint ptr %kv_qpt_ptr.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %kv_qpt_ptr.i, align 4
  %page_count10.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 2, i32 2
  %159 = ptrtoint ptr %page_count10.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %div282, ptr %page_count10.i, align 4
  %page_size12.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 2, i32 3
  %160 = ptrtoint ptr %page_size12.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 4096, ptr %page_size12.i, align 4
  %kva13.i = getelementptr %struct.bna_mem_descr, ptr %147, i32 %i.1299, i32 1
  %161 = ptrtoint ptr %kva13.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %kva13.i, align 4
  %163 = load ptr, ptr %tcb, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %162, ptr %163, align 4
  %kva14.i = getelementptr %struct.bna_mem_descr, ptr %149, i32 %i.1299, i32 1
  %165 = ptrtoint ptr %kva14.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %kva14.i, align 4
  %167 = load ptr, ptr %tcb, align 8
  %sw_q.i = getelementptr inbounds %struct.bna_tcb, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %sw_q.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %166, ptr %sw_q.i, align 4
  br i1 %cmp1.i.not, label %if.end99.bna_txq_qpt_setup.exit_crit_edge, label %for.body.preheader.i

if.end99.bna_txq_qpt_setup.exit_crit_edge:        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_txq_qpt_setup.exit

for.body.preheader.i:                             ; preds = %if.end99
  %dma17.i = getelementptr %struct.bna_mem_descr, ptr %149, i32 %i.1299, i32 2
  %169 = ptrtoint ptr %dma17.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dma17.i, align 4
  %conv.i291 = zext i32 %170 to i64
  %shl.i = shl nuw i64 %conv.i291, 32
  %lsb20.i = getelementptr %struct.bna_mem_descr, ptr %149, i32 %i.1299, i32 2, i32 1
  %171 = ptrtoint ptr %lsb20.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %lsb20.i, align 4
  %conv21.i = zext i32 %172 to i64
  %or.i = or i64 %shl.i, %conv21.i
  %173 = ptrtoint ptr %kva14.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %kva14.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %kva.04.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %174, %for.body.preheader.i ]
  %dma.03.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ %or.i, %for.body.preheader.i ]
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %175 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tcb, align 8
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %arrayidx.i = getelementptr ptr, ptr %178, i32 %i.02.i
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %kva.04.i, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %kva.04.i, i32 4096
  %tmp_addr.sroa.0.0.extract.shift.i = lshr i64 %dma.03.i, 32
  %tmp_addr.sroa.0.0.extract.trunc.i = trunc i64 %tmp_addr.sroa.0.0.extract.shift.i to i32
  %tmp_addr.sroa.5.0.extract.trunc.i = trunc i64 %dma.03.i to i32
  %180 = ptrtoint ptr %kv_qpt_ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %kv_qpt_ptr.i, align 4
  %lsb36.i = getelementptr %struct.bna_dma_addr, ptr %181, i32 %i.02.i, i32 1
  %182 = ptrtoint ptr %lsb36.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %tmp_addr.sroa.5.0.extract.trunc.i, ptr %lsb36.i, align 4
  %183 = load ptr, ptr %kv_qpt_ptr.i, align 4
  %arrayidx40.i = getelementptr %struct.bna_dma_addr, ptr %183, i32 %i.02.i
  %184 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %tmp_addr.sroa.0.0.extract.trunc.i, ptr %arrayidx40.i, align 4
  %add.i = add i64 %dma.03.i, 4096
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div282
  br i1 %exitcond.not.i, label %for.body.i.bna_txq_qpt_setup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.bna_txq_qpt_setup.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_txq_qpt_setup.exit

bna_txq_qpt_setup.exit:                           ; preds = %for.body.i.bna_txq_qpt_setup.exit_crit_edge, %if.end99.bna_txq_qpt_setup.exit_crit_edge
  %185 = ptrtoint ptr %tcb_setup_cbfn19 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tcb_setup_cbfn19, align 4
  %tobool142.not = icmp eq ptr %186, null
  br i1 %tobool142.not, label %bna_txq_qpt_setup.exit.if.end147_crit_edge, label %if.then143

bna_txq_qpt_setup.exit.if.end147_crit_edge:       ; preds = %bna_txq_qpt_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then143:                                       ; preds = %bna_txq_qpt_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %bnad145 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bnad145, align 4
  %189 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tcb, align 8
  tail call void %186(ptr noundef %188, ptr noundef %190) #10
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %bna_txq_qpt_setup.exit.if.end147_crit_edge
  %191 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tx_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %192)
  %cmp149 = icmp eq i32 %192, 8
  br i1 %cmp149, label %if.then151, label %if.end147.if.end157_crit_edge

if.end147.if.end157_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %193 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tcb, align 8
  %id153 = getelementptr inbounds %struct.bna_tcb, ptr %194, i32 0, i32 16
  br label %if.end157

if.end157:                                        ; preds = %if.then151, %if.end147.if.end157_crit_edge
  %conv155.sink.in.in = phi ptr [ %id153, %if.then151 ], [ %default_prio, %if.end147.if.end157_crit_edge ]
  %195 = ptrtoint ptr %conv155.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %195)
  %conv155.sink.in = load i32, ptr %conv155.sink.in.in, align 4
  %conv155.sink = trunc i32 %conv155.sink.in to i8
  %196 = getelementptr inbounds %struct.bna_txq, ptr %txq.0301, i32 0, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv155.sink, ptr %196, align 8
  %inc158 = add i32 %i.1299, 1
  %198 = ptrtoint ptr %txq.0301 to i32
  call void @__asan_load4_noabort(i32 %198)
  %txq.0 = load ptr, ptr %txq.0301, align 4
  %cmp59.not = icmp eq ptr %txq.0, %txq_q
  br i1 %cmp59.not, label %if.end157.for.end165_crit_edge, label %if.end157.for.body60_crit_edge

if.end157.for.body60_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

if.end157.for.end165_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end165

for.end165:                                       ; preds = %if.end157.for.end165_crit_edge, %if.end50.for.end165_crit_edge
  %txf_vlan_id = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 8
  %199 = ptrtoint ptr %txf_vlan_id to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %txf_vlan_id, align 4
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 3
  %200 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @bna_tx_sm_stopped, ptr %fsm, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 14
  %201 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %202, null
  br i1 %tobool.not.i, label %for.end165.bna_tx_sm_stopped_entry.exit_crit_edge, label %if.then.i

for.end165.bna_tx_sm_stopped_entry.exit_crit_edge: ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_tx_sm_stopped_entry.exit

if.then.i:                                        ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 15
  %203 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %stop_cbarg.i, align 4
  %205 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %202(ptr noundef %204, ptr noundef nonnull %tx.0.i) #10
  br label %bna_tx_sm_stopped_entry.exit

bna_tx_sm_stopped_entry.exit:                     ; preds = %if.then.i, %for.end165.bna_tx_sm_stopped_entry.exit_crit_edge
  %rid = getelementptr inbounds %struct.bna_tx, ptr %tx.0.i, i32 0, i32 1
  %206 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %rid, align 4
  %shl166 = shl nuw i32 1, %207
  %rid_mask = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 12, i32 13
  %208 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rid_mask, align 4
  %or167 = or i32 %209, %shl166
  store i32 %or167, ptr %rid_mask, align 4
  br label %cleanup

err_return:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bna_tx_free(ptr noundef nonnull %tx.0.i)
  br label %cleanup

cleanup:                                          ; preds = %err_return, %bna_tx_sm_stopped_entry.exit, %bna_tx_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_return ], [ %tx.0.i, %bna_tx_sm_stopped_entry.exit ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %bna_tx_get.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_stopped(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %event, label %do.end9 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
    i32 8, label %entry.sw.epilog_crit_edge19
  ]

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_start_wait, ptr %fsm, align 4
  tail call fastcc void @bna_tx_sm_start_wait_entry(ptr noundef %tx)
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %stop_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 14
  %2 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body2.sw.epilog_crit_edge, label %if.then

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 15
  %4 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg, align 4
  %6 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn, align 4
  store ptr null, ptr %stop_cbarg, align 4
  tail call void %3(ptr noundef %5, ptr noundef %tx) #10
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 2826, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %if.then, %do.body2.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bna_tx_free(ptr noundef %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %txq_q = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  %2 = ptrtoint ptr %txq_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %txq_q, align 4
  %cmp.i.not59 = icmp eq ptr %3, %txq_q
  br i1 %cmp.i.not59, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %txq_free_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 12, i32 4
  %prev.i2.i = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 12, i32 4, i32 1
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %20, %list_move_tail.exit.while.body_crit_edge ]
  %tcb = getelementptr inbounds %struct.bna_txq, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %tcb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tcb, align 8
  %tx3 = getelementptr inbounds %struct.bna_txq, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %tx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx3, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %14, ptr noundef %txq_free_q) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %4, ptr %prev.i2.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %txq_free_q, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %4, ptr %14, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %19 = ptrtoint ptr %txq_q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %txq_q, align 4
  %cmp.i.not = icmp eq ptr %20, %txq_q
  br i1 %cmp.i.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_active_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 12, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %while.end
  %qe.0.in = phi ptr [ %tx_active_q, %while.end ], [ %qe.0, %for.body.for.cond_crit_edge ]
  %21 = ptrtoint ptr %qe.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %qe.0 = load ptr, ptr %qe.0.in, align 4
  %cmp.i48.not = icmp eq ptr %qe.0, %tx_active_q
  br i1 %cmp.i48.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq ptr %qe.0, %tx
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tx) #10
  br i1 %call.i.i50, label %if.end.i.i53, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i53:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i51 = getelementptr inbounds %struct.list_head, ptr %tx, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i51, align 4
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx, align 4
  %prev1.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i52, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i53, %if.then.list_del.exit_crit_edge
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %tx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tx, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %30 = ptrtoint ptr %bna to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %bna, align 4
  %priv = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 19
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %priv, align 4
  %tx_free_q = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 12, i32 2
  %prev = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 12, i32 2, i32 1
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %32)
  %qe.160 = load ptr, ptr %prev, align 4
  %cmp.i55.not61 = icmp eq ptr %qe.160, %tx_free_q
  br i1 %cmp.i55.not61, label %for.end.for.end26_crit_edge, label %for.body19.lr.ph

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body19.lr.ph:                                 ; preds = %for.end
  %rid20 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 1
  %33 = ptrtoint ptr %rid20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rid20, align 4
  br label %for.body19

for.body19:                                       ; preds = %for.inc24.for.body19_crit_edge, %for.body19.lr.ph
  %qe.162 = phi ptr [ %qe.160, %for.body19.lr.ph ], [ %qe.1, %for.inc24.for.body19_crit_edge ]
  %rid = getelementptr inbounds %struct.bna_tx, ptr %qe.162, i32 0, i32 1
  %35 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp21 = icmp slt i32 %36, %34
  br i1 %cmp21, label %for.body19.for.end26_crit_edge, label %for.inc24

for.body19.for.end26_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.inc24:                                        ; preds = %for.body19
  %prev25 = getelementptr inbounds %struct.list_head, ptr %qe.162, i32 0, i32 1
  %37 = ptrtoint ptr %prev25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %qe.1 = load ptr, ptr %prev25, align 4
  %cmp.i55.not = icmp eq ptr %qe.1, %tx_free_q
  br i1 %cmp.i55.not, label %for.inc24.for.end26_crit_edge, label %for.inc24.for.body19_crit_edge

for.inc24.for.body19_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

for.inc24.for.end26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.end26:                                        ; preds = %for.inc24.for.end26_crit_edge, %for.body19.for.end26_crit_edge, %for.end.for.end26_crit_edge
  %qe.1.lcssa = phi ptr [ %tx_free_q, %for.end.for.end26_crit_edge ], [ %qe.162, %for.body19.for.end26_crit_edge ], [ %tx_free_q, %for.inc24.for.end26_crit_edge ]
  %38 = ptrtoint ptr %qe.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qe.1.lcssa, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %tx, ptr noundef %qe.1.lcssa, ptr noundef %39) #10
  br i1 %call.i.i57, label %if.end.i.i58, label %for.end26.list_add.exit_crit_edge

for.end26.list_add.exit_crit_edge:                ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i58:                                     ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx, ptr %prev1.i.i, align 4
  %41 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %tx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %tx, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %qe.1.lcssa, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %qe.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %tx, ptr %qe.1.lcssa, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i58, %for.end26.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_destroy(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_q = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  %0 = ptrtoint ptr %txq_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %txq.018 = load ptr, ptr %txq_q, align 4
  %cmp.not19 = icmp eq ptr %txq.018, %txq_q
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tcb_destroy_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 10
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %txq.020 = phi ptr [ %txq.018, %for.body.lr.ph ], [ %txq.0, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %tcb_destroy_cbfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tcb_destroy_cbfn, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bnad, align 4
  %tcb = getelementptr inbounds %struct.bna_txq, ptr %txq.020, i32 0, i32 3
  %7 = ptrtoint ptr %tcb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcb, align 8
  tail call void %2(ptr noundef %6, ptr noundef %8) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %txq.020 to i32
  call void @__asan_load4_noabort(i32 %9)
  %txq.0 = load ptr, ptr %txq.020, align 4
  %cmp.not = icmp eq ptr %txq.0, %txq_q
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rid = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 1
  %10 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rid, align 4
  %shl = shl nuw i32 1, %11
  %neg = xor i32 %shl, -1
  %bna8 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %12 = ptrtoint ptr %bna8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bna8, align 4
  %rid_mask = getelementptr inbounds %struct.bna, ptr %13, i32 0, i32 12, i32 13
  %14 = ptrtoint ptr %rid_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rid_mask, align 8
  %and = and i32 %15, %neg
  store i32 %and, ptr %rid_mask, align 8
  tail call fastcc void @bna_tx_free(ptr noundef %tx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_enable(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  %cmp.not = icmp eq ptr %1, @bna_tx_sm_stopped
  br i1 %cmp.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bna_tx_sm_start_wait, ptr %fsm, align 4
  tail call fastcc void @bna_tx_sm_start_wait_entry(ptr noundef %tx) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_disable(ptr noundef %tx, i32 noundef %type, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bnad, align 4
  tail call void %cbfn(ptr noundef %3, ptr noundef %tx) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 14
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cbfn, ptr %stop_cbfn, align 4
  %bna1 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %5 = ptrtoint ptr %bna1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna1, align 4
  %bnad2 = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad2, align 4
  %stop_cbarg = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 15
  %9 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %stop_cbarg, align 4
  %flags = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -3
  store i32 %and, ptr %flags, align 4
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %12 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsm, align 4
  tail call void %13(ptr noundef %tx, i32 noundef 2) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_cleanup_complete(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  tail call void %1(ptr noundef %tx, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_mod_init(ptr noundef %tx_mod, ptr noundef %bna, ptr nocapture noundef readonly %res_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bna1 = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 14
  %0 = ptrtoint ptr %bna1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bna, ptr %bna1, align 4
  %flags = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 7
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flags, align 4
  %mdl = getelementptr inbounds %struct.bna_res_info, ptr %res_info, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %mdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdl, align 4
  %kva = getelementptr inbounds %struct.bna_mem_descr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kva, align 4
  %6 = ptrtoint ptr %tx_mod to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tx_mod, align 4
  %mdl5 = getelementptr %struct.bna_res_info, ptr %res_info, i32 1, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %mdl5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdl5, align 4
  %kva7 = getelementptr inbounds %struct.bna_mem_descr, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %kva7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kva7, align 4
  %txq = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 1
  %11 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %txq, align 4
  %tx_free_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 2
  %12 = ptrtoint ptr %tx_free_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %tx_free_q, ptr %tx_free_q, align 4
  %prev.i = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx_free_q, ptr %prev.i, align 4
  %tx_active_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 3
  %14 = ptrtoint ptr %tx_active_q to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tx_active_q, ptr %tx_active_q, align 4
  %prev.i39 = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_active_q, ptr %prev.i39, align 4
  %txq_free_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 4
  %16 = ptrtoint ptr %txq_free_q to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %txq_free_q, ptr %txq_free_q, align 4
  %prev.i40 = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %txq_free_q, ptr %prev.i40, align 4
  %num_txq = getelementptr inbounds %struct.bna, ptr %bna, i32 0, i32 5, i32 2, i32 1
  %18 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_txq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp47 = icmp sgt i32 %19, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit46.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %list_add_tail.exit46.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %20 = ptrtoint ptr %tx_mod to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_mod, align 4
  %rid = getelementptr %struct.bna_tx, ptr %21, i32 %i.048, i32 1
  %22 = ptrtoint ptr %rid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.048, ptr %rid, align 4
  %23 = load ptr, ptr %tx_mod, align 4
  %arrayidx11 = getelementptr %struct.bna_tx, ptr %23, i32 %i.048
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx11, ptr noundef %25, ptr noundef %tx_free_q) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx11, ptr %prev.i, align 4
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tx_free_q, ptr %arrayidx11, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx11, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx11, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %30 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %txq, align 4
  %arrayidx14 = getelementptr %struct.bna_txq, ptr %31, i32 %i.048
  %32 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i40, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx14, ptr noundef %33, ptr noundef %txq_free_q) #10
  br i1 %call.i.i43, label %if.end.i.i45, label %list_add_tail.exit.list_add_tail.exit46_crit_edge

list_add_tail.exit.list_add_tail.exit46_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit46

if.end.i.i45:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx14, ptr %prev.i40, align 4
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %txq_free_q, ptr %arrayidx14, align 4
  %prev3.i.i44 = getelementptr inbounds %struct.list_head, ptr %arrayidx14, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i44, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx14, ptr %33, align 4
  br label %list_add_tail.exit46

list_add_tail.exit46:                             ; preds = %if.end.i.i45, %list_add_tail.exit.list_add_tail.exit46_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %38 = ptrtoint ptr %num_txq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_txq, align 4
  %cmp = icmp slt i32 %inc, %39
  br i1 %cmp, label %list_add_tail.exit46.for.body_crit_edge, label %list_add_tail.exit46.for.end_crit_edge

list_add_tail.exit46.for.end_crit_edge:           ; preds = %list_add_tail.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

list_add_tail.exit46.for.body_crit_edge:          ; preds = %list_add_tail.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit46.for.end_crit_edge, %entry.for.end_crit_edge
  %prio_map = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 8
  %40 = ptrtoint ptr %prio_map to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %prio_map, align 4
  %default_prio = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 9
  %41 = ptrtoint ptr %default_prio to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %default_prio, align 4
  %iscsi_over_cee = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 10
  %42 = ptrtoint ptr %iscsi_over_cee to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %iscsi_over_cee, align 4
  %iscsi_prio = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 11
  %43 = ptrtoint ptr %iscsi_prio to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %iscsi_prio, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bna_tx_mod_uninit(ptr nocapture noundef writeonly %tx_mod) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bna = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 14
  %0 = ptrtoint ptr %bna to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bna, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_mod_start(ptr noundef %tx_mod, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %spec.select.v = select i1 %cmp, i32 3, i32 1
  %spec.select = or i32 %1, %spec.select.v
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %flags, align 4
  %tx_active_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 3
  %3 = ptrtoint ptr %tx_active_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %tx.021 = load ptr, ptr %tx_active_q, align 4
  %cmp4.not22 = icmp eq ptr %tx.021, %tx_active_q
  br i1 %cmp4.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tx.023 = phi ptr [ %tx.0, %for.inc.for.body_crit_edge ], [ %tx.021, %entry.for.body_crit_edge ]
  %type5 = getelementptr inbounds %struct.bna_tx, ptr %tx.023, i32 0, i32 5
  %4 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %type)
  %cmp6 = icmp eq i32 %5, %type
  br i1 %cmp6, label %if.then7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then7:                                         ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.bna_tx, ptr %tx.023, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %flags.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.for.inc_crit_edge, label %if.then.i

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %fsm.i = getelementptr inbounds %struct.bna_tx, ptr %tx.023, i32 0, i32 3
  %8 = ptrtoint ptr %fsm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsm.i, align 4
  tail call void %9(ptr noundef %tx.023, i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %tx.023 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tx.0 = load ptr, ptr %tx.023, align 4
  %cmp4.not = icmp eq ptr %tx.0, %tx_active_q
  br i1 %cmp4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_mod_stop(ptr noundef %tx_mod, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and2 = and i32 %1, -4
  store i32 %and2, ptr %flags, align 4
  %stop_cbfn = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 5
  %2 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_enet_cb_tx_stopped, ptr %stop_cbfn, align 4
  %tx_stop_wc = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 6
  %3 = ptrtoint ptr %tx_stop_wc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_tx_mod_cb_tx_stopped_all, ptr %tx_stop_wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_mod, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %wc_count.i, align 4
  %tx_active_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 3
  %6 = ptrtoint ptr %tx_active_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %tx.025 = load ptr, ptr %tx_active_q, align 4
  %cmp.not26 = icmp eq ptr %tx.025, %tx_active_q
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tx.027 = phi ptr [ %tx.0, %for.inc.for.body_crit_edge ], [ %tx.025, %entry.for.body_crit_edge ]
  %type4 = getelementptr inbounds %struct.bna_tx, ptr %tx.027, i32 0, i32 5
  %7 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %type)
  %cmp5 = icmp eq i32 %8, %type
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wc_count.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %wc_count.i, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx.027, i32 0, i32 14
  %11 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bna_tx_mod_cb_tx_stopped, ptr %stop_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_tx, ptr %tx.027, i32 0, i32 18
  %12 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bna.i, align 4
  %tx_mod.i = getelementptr inbounds %struct.bna, ptr %13, i32 0, i32 12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx.027, i32 0, i32 15
  %14 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_mod.i, ptr %stop_cbarg.i, align 4
  %flags.i = getelementptr inbounds %struct.bna_tx, ptr %tx.027, i32 0, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, -2
  store i32 %and.i, ptr %flags.i, align 4
  %fsm.i = getelementptr inbounds %struct.bna_tx, ptr %tx.027, i32 0, i32 3
  %17 = ptrtoint ptr %fsm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fsm.i, align 4
  tail call void %18(ptr noundef %tx.027, i32 noundef 2) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %tx.027 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tx.0 = load ptr, ptr %tx.027, align 4
  %cmp.not = icmp eq ptr %tx.0, %tx_active_q
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %21, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.bfa_wc_wait.exit_crit_edge

for.end.bfa_wc_wait.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_wc_wait.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %tx_stop_wc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_stop_wc, align 4
  %24 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %23(ptr noundef %25) #10
  br label %bfa_wc_wait.exit

bfa_wc_wait.exit:                                 ; preds = %if.then.i.i, %for.end.bfa_wc_wait.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_enet_cb_tx_stopped(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_mod_cb_tx_stopped_all(ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_cbfn = getelementptr inbounds %struct.bna_tx_mod, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bna = getelementptr inbounds %struct.bna_tx_mod, ptr %arg, i32 0, i32 14
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 4
  %enet = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 10
  tail call void %1(ptr noundef %enet) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stop_cbfn, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_mod_fail(ptr noundef %tx_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and2 = and i32 %1, -4
  store i32 %and2, ptr %flags, align 4
  %tx_active_q = getelementptr inbounds %struct.bna_tx_mod, ptr %tx_mod, i32 0, i32 3
  %2 = ptrtoint ptr %tx_active_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %tx.014 = load ptr, ptr %tx_active_q, align 4
  %cmp.not15 = icmp eq ptr %tx.014, %tx_active_q
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tx.016 = phi ptr [ %tx.0, %for.body.for.body_crit_edge ], [ %tx.014, %entry.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.bna_tx, ptr %tx.016, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, -2
  store i32 %and.i, ptr %flags.i, align 4
  %fsm.i = getelementptr inbounds %struct.bna_tx, ptr %tx.016, i32 0, i32 3
  %5 = ptrtoint ptr %fsm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsm.i, align 4
  tail call void %6(ptr noundef %tx.016, i32 noundef 3) #10
  %7 = ptrtoint ptr %tx.016 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tx.0 = load ptr, ptr %tx.016, align 4
  %cmp.not = icmp eq ptr %tx.0, %tx_active_q
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bna_tx_coalescing_timeo_set(ptr noundef readonly %tx, i32 noundef %coalescing_timeo) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_q = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  %0 = ptrtoint ptr %txq_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %txq.010 = load ptr, ptr %txq_q, align 4
  %cmp.not11 = icmp eq ptr %txq.010, %txq_q
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = trunc i32 %coalescing_timeo to i8
  %conv.i = shl i32 %coalescing_timeo, 16
  %shl.i = and i32 %conv.i, 16711680
  %or.i = or i32 %shl.i, -2147483648
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %txq.012 = phi ptr [ %txq.010, %for.body.lr.ph ], [ %txq.0, %for.body.for.body_crit_edge ]
  %coalescing_timeo1.i = getelementptr inbounds %struct.bna_txq, ptr %txq.012, i32 0, i32 4, i32 5
  %1 = ptrtoint ptr %coalescing_timeo1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %coalescing_timeo1.i, align 4
  %doorbell_ack.i = getelementptr inbounds %struct.bna_txq, ptr %txq.012, i32 0, i32 4, i32 2, i32 1
  %2 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %doorbell_ack.i, align 4
  %3 = ptrtoint ptr %txq.012 to i32
  call void @__asan_load4_noabort(i32 %3)
  %txq.0 = load ptr, ptr %txq.012, align 4
  %cmp.not = icmp eq ptr %txq.0, %txq_q
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bna_mcam_mod_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_mod_cb_rx_stopped(ptr nocapture noundef %arg, ptr nocapture noundef readnone %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wc_count.i = getelementptr inbounds %struct.bna_rx_mod, ptr %arg, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bfa_wc_down.exit_crit_edge

entry.bfa_wc_down.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_wc_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_stop_wc = getelementptr inbounds %struct.bna_rx_mod, ptr %arg, i32 0, i32 13
  %2 = ptrtoint ptr %rx_stop_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_stop_wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bna_rx_mod, ptr %arg, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #10
  br label %bfa_wc_down.exit

bfa_wc_down.exit:                                 ; preds = %if.then.i, %entry.bfa_wc_down.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rxf_sm_stopped(ptr noundef %rxf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %event, label %do.end20 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %do.body8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rxf_sm_cfg_wait, ptr %rxf, align 4
  %call.i = tail call fastcc i32 @bna_rxf_cfg_apply(ptr noundef %rxf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.i:                                        ; preds = %do.body
  %2 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_rxf_sm_started, ptr %rxf, align 4
  %start_cbfn.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 3
  %3 = ptrtoint ptr %start_cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %start_cbfn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.body.i.do.body4.i.i_crit_edge, label %if.then.i.i

do.body.i.do.body4.i.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_cbarg.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 4
  %5 = ptrtoint ptr %start_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start_cbarg.i.i, align 4
  %7 = ptrtoint ptr %start_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %start_cbfn.i.i, align 4
  store ptr null, ptr %start_cbarg.i.i, align 4
  tail call void %4(ptr noundef %6) #10
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %if.then.i.i, %do.body.i.do.body4.i.i_crit_edge
  %cam_fltr_cbfn.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 7
  %8 = ptrtoint ptr %cam_fltr_cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cam_fltr_cbfn.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i.i, label %do.body4.i.i.sw.epilog_crit_edge, label %if.then6.i.i

do.body4.i.i.sw.epilog_crit_edge:                 ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then6.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cam_fltr_cbarg.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 8
  %10 = ptrtoint ptr %cam_fltr_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cam_fltr_cbarg.i.i, align 4
  %12 = ptrtoint ptr %cam_fltr_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cam_fltr_cbfn.i.i, align 4
  store ptr null, ptr %cam_fltr_cbarg.i.i, align 4
  %rx.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %13 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx.i.i, align 4
  tail call void %9(ptr noundef %11, ptr noundef %14) #10
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %stop_cbfn = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 5
  %15 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop_cbfn, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.body2.sw.epilog_crit_edge, label %if.then

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 6
  %17 = ptrtoint ptr %stop_cbarg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop_cbarg, align 4
  %19 = ptrtoint ptr %stop_cbfn to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %stop_cbfn, align 4
  store ptr null, ptr %stop_cbarg, align 4
  tail call void %16(ptr noundef %18) #10
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  %cam_fltr_cbfn = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 7
  %20 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cam_fltr_cbfn, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %do.body8.sw.epilog_crit_edge, label %if.then10

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %cam_fltr_cbarg = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 8
  %22 = ptrtoint ptr %cam_fltr_cbarg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cam_fltr_cbarg, align 4
  %24 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cam_fltr_cbfn, align 4
  store ptr null, ptr %cam_fltr_cbarg, align 4
  %rx = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %25 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx, align 4
  tail call void %21(ptr noundef %23, ptr noundef %26) #10
  br label %sw.epilog

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 88, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end20, %if.then10, %do.body8.sw.epilog_crit_edge, %if.then, %do.body2.sw.epilog_crit_edge, %if.then6.i.i, %do.body4.i.i.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rxf_sm_cfg_wait(ptr noundef %rxf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %event, label %do.end29 [
    i32 2, label %do.body
    i32 3, label %sw.bb1
    i32 4, label %entry.sw.epilog_crit_edge
    i32 7, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rxf_sm_last_resp_wait, ptr %rxf, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call fastcc void @bna_rxf_cfg_reset(ptr noundef %rxf)
  %start_cbfn = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 3
  %2 = ptrtoint ptr %start_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_cbfn, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.bb1.do.body7_crit_edge, label %if.then

sw.bb1.do.body7_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %start_cbarg = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 4
  %4 = ptrtoint ptr %start_cbarg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_cbarg, align 4
  %6 = ptrtoint ptr %start_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %start_cbfn, align 4
  store ptr null, ptr %start_cbarg, align 4
  tail call void %3(ptr noundef %5) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %sw.bb1.do.body7_crit_edge
  %cam_fltr_cbfn = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 7
  %7 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cam_fltr_cbfn, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %do.body7.do.body17_crit_edge, label %if.then9

do.body7.do.body17_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

if.then9:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %cam_fltr_cbarg = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 8
  %9 = ptrtoint ptr %cam_fltr_cbarg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cam_fltr_cbarg, align 4
  %11 = ptrtoint ptr %cam_fltr_cbfn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cam_fltr_cbfn, align 4
  store ptr null, ptr %cam_fltr_cbarg, align 4
  %rx = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx, align 4
  tail call void %8(ptr noundef %10, ptr noundef %13) #10
  br label %do.body17

do.body17:                                        ; preds = %if.then9, %do.body7.do.body17_crit_edge
  %14 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bna_rxf_sm_stopped, ptr %rxf, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 5
  %15 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.body17.sw.epilog_crit_edge, label %if.then.i

do.body17.sw.epilog_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 6
  %17 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop_cbarg.i, align 4
  %19 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %16(ptr noundef %18) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %call = tail call fastcc i32 @bna_rxf_cfg_apply(ptr noundef %rxf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %do.body23, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body23:                                        ; preds = %sw.bb20
  %20 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bna_rxf_sm_started, ptr %rxf, align 4
  %start_cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 3
  %21 = ptrtoint ptr %start_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %start_cbfn.i, align 4
  %tobool.not.i52 = icmp eq ptr %22, null
  br i1 %tobool.not.i52, label %do.body23.do.body4.i_crit_edge, label %if.then.i53

do.body23.do.body4.i_crit_edge:                   ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

if.then.i53:                                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %start_cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 4
  %23 = ptrtoint ptr %start_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %start_cbarg.i, align 4
  %25 = ptrtoint ptr %start_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %start_cbfn.i, align 4
  store ptr null, ptr %start_cbarg.i, align 4
  tail call void %22(ptr noundef %24) #10
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i53, %do.body23.do.body4.i_crit_edge
  %cam_fltr_cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 7
  %26 = ptrtoint ptr %cam_fltr_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cam_fltr_cbfn.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  br i1 %tobool5.not.i, label %do.body4.i.sw.epilog_crit_edge, label %if.then6.i

do.body4.i.sw.epilog_crit_edge:                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then6.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %cam_fltr_cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 8
  %28 = ptrtoint ptr %cam_fltr_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cam_fltr_cbarg.i, align 4
  %30 = ptrtoint ptr %cam_fltr_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cam_fltr_cbfn.i, align 4
  store ptr null, ptr %cam_fltr_cbarg.i, align 4
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %31 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx.i, align 4
  tail call void %27(ptr noundef %29, ptr noundef %32) #10
  br label %sw.epilog

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end29, %if.then6.i, %do.body4.i.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %if.then.i, %do.body17.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rxf_sm_last_resp_wait(ptr noundef %rxf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %event, label %do.end3 [
    i32 3, label %entry.sw.bb_crit_edge
    i32 7, label %entry.sw.bb_crit_edge8
  ]

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8
  tail call fastcc void @bna_rxf_cfg_reset(ptr noundef %rxf)
  %1 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rxf_sm_stopped, ptr %rxf, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 5
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 6
  %4 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg.i, align 4
  %6 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #10
  br label %sw.epilog

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 174, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end3, %if.then.i, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bna_rxf_cfg_reset(ptr noundef %rxf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucast_pending_del_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 10
  %0 = ptrtoint ptr %ucast_pending_del_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ucast_pending_del_q.i, align 4
  %cmp.i.not13.i = icmp eq ptr %1, %ucast_pending_del_q.i
  br i1 %cmp.i.not13.i, label %entry.while.cond7.preheader.i_crit_edge, label %if.then.lr.ph.i

entry.while.cond7.preheader.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond7.preheader.i

if.then.lr.ph.i:                                  ; preds = %entry
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  br label %if.then.i

while.cond7.preheader.i:                          ; preds = %list_move_tail.exit.i.while.cond7.preheader.i_crit_edge, %entry.while.cond7.preheader.i_crit_edge
  %ucast_active_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 13
  %2 = ptrtoint ptr %ucast_active_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ucast_active_q.i, align 4
  %cmp.i1.not14.i = icmp eq ptr %3, %ucast_active_q.i
  br i1 %cmp.i1.not14.i, label %while.cond7.preheader.i.while.end21.i_crit_edge, label %while.body11.lr.ph.i

while.cond7.preheader.i.while.end21.i_crit_edge:  ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end21.i

while.body11.lr.ph.i:                             ; preds = %while.cond7.preheader.i
  %ucast_pending_add_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 9
  %prev.i2.i7.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 9, i32 1
  br label %while.body11.i

if.then.i:                                        ; preds = %list_move_tail.exit.i.if.then.i_crit_edge, %if.then.lr.ph.i
  %4 = phi ptr [ %1, %if.then.lr.ph.i ], [ %22, %list_move_tail.exit.i.if.then.i_crit_edge ]
  %5 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna.i, align 4
  %del_q.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 14, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 14, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %16, ptr noundef %del_q.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %4, ptr %prev.i2.i.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %del_q.i, ptr %4, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %4, ptr %16, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %21 = ptrtoint ptr %ucast_pending_del_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ucast_pending_del_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %ucast_pending_del_q.i
  br i1 %cmp.i.not.i, label %list_move_tail.exit.i.while.cond7.preheader.i_crit_edge, label %list_move_tail.exit.i.if.then.i_crit_edge

list_move_tail.exit.i.if.then.i_crit_edge:        ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

list_move_tail.exit.i.while.cond7.preheader.i_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond7.preheader.i

while.body11.i:                                   ; preds = %list_move_tail.exit12.i.while.body11.i_crit_edge, %while.body11.lr.ph.i
  %23 = phi ptr [ %3, %while.body11.lr.ph.i ], [ %37, %list_move_tail.exit12.i.while.body11.i_crit_edge ]
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #10
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %while.body11.i.__list_del_entry.exit.i9.i_crit_edge

while.body11.i.__list_del_entry.exit.i9.i_crit_edge: ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i9.i

if.end.i.i6.i:                                    ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i4.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i4.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i5.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i9.i

__list_del_entry.exit.i9.i:                       ; preds = %if.end.i.i6.i, %while.body11.i.__list_del_entry.exit.i9.i_crit_edge
  %30 = ptrtoint ptr %prev.i2.i7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i2.i7.i, align 4
  %call.i.i.i8.i = tail call zeroext i1 @__list_add_valid(ptr noundef %23, ptr noundef %31, ptr noundef %ucast_pending_add_q.i) #10
  br i1 %call.i.i.i8.i, label %if.end.i.i.i11.i, label %__list_del_entry.exit.i9.i.list_move_tail.exit12.i_crit_edge

__list_del_entry.exit.i9.i.list_move_tail.exit12.i_crit_edge: ; preds = %__list_del_entry.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit12.i

if.end.i.i.i11.i:                                 ; preds = %__list_del_entry.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %prev.i2.i7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %23, ptr %prev.i2.i7.i, align 4
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ucast_pending_add_q.i, ptr %23, align 4
  %prev3.i.i.i10.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i10.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %23, ptr %31, align 4
  br label %list_move_tail.exit12.i

list_move_tail.exit12.i:                          ; preds = %if.end.i.i.i11.i, %__list_del_entry.exit.i9.i.list_move_tail.exit12.i_crit_edge
  %36 = ptrtoint ptr %ucast_active_q.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %ucast_active_q.i, align 4
  %cmp.i1.not.i = icmp eq ptr %37, %ucast_active_q.i
  br i1 %cmp.i1.not.i, label %list_move_tail.exit12.i.while.end21.i_crit_edge, label %list_move_tail.exit12.i.while.body11.i_crit_edge

list_move_tail.exit12.i.while.body11.i_crit_edge: ; preds = %list_move_tail.exit12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body11.i

list_move_tail.exit12.i.while.end21.i_crit_edge:  ; preds = %list_move_tail.exit12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end21.i

while.end21.i:                                    ; preds = %list_move_tail.exit12.i.while.end21.i_crit_edge, %while.cond7.preheader.i.while.end21.i_crit_edge
  %ucast_active_set.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 15
  %38 = ptrtoint ptr %ucast_active_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucast_active_set.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool22.not.i = icmp eq i32 %39, 0
  br i1 %tobool22.not.i, label %while.end21.i.bna_rxf_ucast_cfg_reset.exit_crit_edge, label %if.then23.i

while.end21.i.bna_rxf_ucast_cfg_reset.exit_crit_edge: ; preds = %while.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_ucast_cfg_reset.exit

if.then23.i:                                      ; preds = %while.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_pending_set.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 12
  %40 = ptrtoint ptr %ucast_pending_set.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %ucast_pending_set.i, align 4
  %41 = ptrtoint ptr %ucast_active_set.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ucast_active_set.i, align 4
  br label %bna_rxf_ucast_cfg_reset.exit

bna_rxf_ucast_cfg_reset.exit:                     ; preds = %if.then23.i, %while.end21.i.bna_rxf_ucast_cfg_reset.exit_crit_edge
  %mcast_pending_del_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 17
  %42 = ptrtoint ptr %mcast_pending_del_q.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %mcast_pending_del_q.i, align 4
  %cmp.i.not35.i = icmp eq ptr %43, %mcast_pending_del_q.i
  br i1 %cmp.i.not35.i, label %bna_rxf_ucast_cfg_reset.exit.while.cond4.preheader.i_crit_edge, label %while.body.lr.ph.i

bna_rxf_ucast_cfg_reset.exit.while.cond4.preheader.i_crit_edge: ; preds = %bna_rxf_ucast_cfg_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader.i

while.body.lr.ph.i:                               ; preds = %bna_rxf_ucast_cfg_reset.exit
  %rx.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  br label %while.body.i

while.cond4.preheader.i:                          ; preds = %list_move_tail.exit.i25.while.cond4.preheader.i_crit_edge, %bna_rxf_ucast_cfg_reset.exit.while.cond4.preheader.i_crit_edge
  %mcast_active_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 18
  %44 = ptrtoint ptr %mcast_active_q.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %mcast_active_q.i, align 4
  %cmp.i5.not36.i = icmp eq ptr %45, %mcast_active_q.i
  br i1 %cmp.i5.not36.i, label %while.cond4.preheader.i.bna_rxf_mcast_cfg_reset.exit_crit_edge, label %while.body8.lr.ph.i

while.cond4.preheader.i.bna_rxf_mcast_cfg_reset.exit_crit_edge: ; preds = %while.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcast_cfg_reset.exit

while.body8.lr.ph.i:                              ; preds = %while.cond4.preheader.i
  %mcast_pending_add_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 16
  %prev.i2.i11.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 16, i32 1
  %rx.i29.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  br label %while.body8.i

while.body.i:                                     ; preds = %list_move_tail.exit.i25.while.body.i_crit_edge, %while.body.lr.ph.i
  %46 = phi ptr [ %43, %while.body.lr.ph.i ], [ %81, %list_move_tail.exit.i25.while.body.i_crit_edge ]
  %handle.i.i = getelementptr inbounds %struct.bna_mac, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handle.i.i, align 4
  %cmp.i1.i = icmp eq ptr %48, null
  br i1 %cmp.i1.i, label %while.body.i.bna_rxf_mcast_del.exit.i_crit_edge, label %if.end.i.i

while.body.i.bna_rxf_mcast_del.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcast_del.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %refcnt.i.i = getelementptr inbounds %struct.bna_mcam_handle, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %refcnt.i.i, align 4
  %dec.i.i = add i32 %50, -1
  store i32 %dec.i.i, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp2.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i.i13 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %48) #10
  br i1 %call.i.i.i.i13, label %if.end.i.i.i.i14, label %if.then3.i.i.list_del.exit.i.i_crit_edge

if.then3.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i14:                                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i, align 4
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i14, %if.then3.i.i.list_del.exit.i.i_crit_edge
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  %prev.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i15, align 4
  %59 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx.i.i, align 4
  %bna.i.i = getelementptr inbounds %struct.bna_rx, ptr %60, i32 0, i32 21
  %61 = ptrtoint ptr %bna.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bna.i.i, align 4
  %mcam_mod.i.i = getelementptr inbounds %struct.bna, ptr %62, i32 0, i32 15
  tail call void @bna_mcam_mod_handle_put(ptr noundef %mcam_mod.i.i, ptr noundef nonnull %48) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %list_del.exit.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %63 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %handle.i.i, align 4
  br label %bna_rxf_mcast_del.exit.i

bna_rxf_mcast_del.exit.i:                         ; preds = %if.end8.i.i, %while.body.i.bna_rxf_mcast_del.exit.i_crit_edge
  %64 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx.i.i, align 4
  %bna.i16 = getelementptr inbounds %struct.bna_rx, ptr %65, i32 0, i32 21
  %66 = ptrtoint ptr %bna.i16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bna.i16, align 4
  %del_q.i17 = getelementptr inbounds %struct.bna, ptr %67, i32 0, i32 15, i32 3
  %call.i.i.i18 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #10
  br i1 %call.i.i.i18, label %if.end.i.i.i20, label %bna_rxf_mcast_del.exit.i.__list_del_entry.exit.i.i22_crit_edge

bna_rxf_mcast_del.exit.i.__list_del_entry.exit.i.i22_crit_edge: ; preds = %bna_rxf_mcast_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i22

if.end.i.i.i20:                                   ; preds = %bna_rxf_mcast_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i2.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i2.i, align 4
  %70 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %46, align 4
  %prev1.i.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i19, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %__list_del_entry.exit.i.i22

__list_del_entry.exit.i.i22:                      ; preds = %if.end.i.i.i20, %bna_rxf_mcast_del.exit.i.__list_del_entry.exit.i.i22_crit_edge
  %prev.i2.i.i21 = getelementptr inbounds %struct.bna, ptr %67, i32 0, i32 15, i32 3, i32 1
  %74 = ptrtoint ptr %prev.i2.i.i21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i2.i.i21, align 4
  %call.i.i.i3.i = tail call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %75, ptr noundef %del_q.i17) #10
  br i1 %call.i.i.i3.i, label %if.end.i.i.i4.i, label %__list_del_entry.exit.i.i22.list_move_tail.exit.i25_crit_edge

__list_del_entry.exit.i.i22.list_move_tail.exit.i25_crit_edge: ; preds = %__list_del_entry.exit.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i25

if.end.i.i.i4.i:                                  ; preds = %__list_del_entry.exit.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %prev.i2.i.i21 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %46, ptr %prev.i2.i.i21, align 4
  %77 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %del_q.i17, ptr %46, align 4
  %prev3.i.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i.i23, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %46, ptr %75, align 4
  br label %list_move_tail.exit.i25

list_move_tail.exit.i25:                          ; preds = %if.end.i.i.i4.i, %__list_del_entry.exit.i.i22.list_move_tail.exit.i25_crit_edge
  %80 = ptrtoint ptr %mcast_pending_del_q.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %mcast_pending_del_q.i, align 4
  %cmp.i.not.i24 = icmp eq ptr %81, %mcast_pending_del_q.i
  br i1 %cmp.i.not.i24, label %list_move_tail.exit.i25.while.cond4.preheader.i_crit_edge, label %list_move_tail.exit.i25.while.body.i_crit_edge

list_move_tail.exit.i25.while.body.i_crit_edge:   ; preds = %list_move_tail.exit.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_move_tail.exit.i25.while.cond4.preheader.i_crit_edge: ; preds = %list_move_tail.exit.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader.i

while.body8.i:                                    ; preds = %bna_rxf_mcast_del.exit34.i.while.body8.i_crit_edge, %while.body8.lr.ph.i
  %82 = phi ptr [ %45, %while.body8.lr.ph.i ], [ %113, %bna_rxf_mcast_del.exit34.i.while.body8.i_crit_edge ]
  %call.i.i7.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %82) #10
  br i1 %call.i.i7.i, label %if.end.i.i10.i, label %while.body8.i.__list_del_entry.exit.i13.i_crit_edge

while.body8.i.__list_del_entry.exit.i13.i_crit_edge: ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i13.i

if.end.i.i10.i:                                   ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i8.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i8.i, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  %prev1.i.i.i9.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i9.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %__list_del_entry.exit.i13.i

__list_del_entry.exit.i13.i:                      ; preds = %if.end.i.i10.i, %while.body8.i.__list_del_entry.exit.i13.i_crit_edge
  %89 = ptrtoint ptr %prev.i2.i11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i2.i11.i, align 4
  %call.i.i.i12.i = tail call zeroext i1 @__list_add_valid(ptr noundef %82, ptr noundef %90, ptr noundef %mcast_pending_add_q.i) #10
  br i1 %call.i.i.i12.i, label %if.end.i.i.i15.i, label %__list_del_entry.exit.i13.i.list_move_tail.exit16.i_crit_edge

__list_del_entry.exit.i13.i.list_move_tail.exit16.i_crit_edge: ; preds = %__list_del_entry.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit16.i

if.end.i.i.i15.i:                                 ; preds = %__list_del_entry.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %prev.i2.i11.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %82, ptr %prev.i2.i11.i, align 4
  %92 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %mcast_pending_add_q.i, ptr %82, align 4
  %prev3.i.i.i14.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i.i14.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %82, ptr %90, align 4
  br label %list_move_tail.exit16.i

list_move_tail.exit16.i:                          ; preds = %if.end.i.i.i15.i, %__list_del_entry.exit.i13.i.list_move_tail.exit16.i_crit_edge
  %handle.i17.i = getelementptr inbounds %struct.bna_mac, ptr %82, i32 0, i32 2
  %95 = ptrtoint ptr %handle.i17.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %handle.i17.i, align 4
  %cmp.i18.i = icmp eq ptr %96, null
  br i1 %cmp.i18.i, label %list_move_tail.exit16.i.bna_rxf_mcast_del.exit34.i_crit_edge, label %if.end.i22.i

list_move_tail.exit16.i.bna_rxf_mcast_del.exit34.i_crit_edge: ; preds = %list_move_tail.exit16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcast_del.exit34.i

if.end.i22.i:                                     ; preds = %list_move_tail.exit16.i
  %refcnt.i19.i = getelementptr inbounds %struct.bna_mcam_handle, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %refcnt.i19.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %refcnt.i19.i, align 4
  %dec.i20.i = add i32 %98, -1
  store i32 %dec.i20.i, ptr %refcnt.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i20.i)
  %cmp2.i21.i = icmp eq i32 %dec.i20.i, 0
  br i1 %cmp2.i21.i, label %if.then3.i23.i, label %if.end.i22.i.if.end8.i33.i_crit_edge

if.end.i22.i.if.end8.i33.i_crit_edge:             ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i33.i

if.then3.i23.i:                                   ; preds = %if.end.i22.i
  %call.i.i.i24.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %96) #10
  br i1 %call.i.i.i24.i, label %if.end.i.i.i27.i, label %if.then3.i23.i.list_del.exit.i32.i_crit_edge

if.then3.i23.i.list_del.exit.i32.i_crit_edge:     ; preds = %if.then3.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i32.i

if.end.i.i.i27.i:                                 ; preds = %if.then3.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i25.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i25.i, align 4
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %96, align 4
  %prev1.i.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i.i26.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del.exit.i32.i

list_del.exit.i32.i:                              ; preds = %if.end.i.i.i27.i, %if.then3.i23.i.list_del.exit.i32.i_crit_edge
  %105 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %96, align 4
  %prev.i.i28.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i28.i, align 4
  %107 = ptrtoint ptr %rx.i29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rx.i29.i, align 4
  %bna.i30.i = getelementptr inbounds %struct.bna_rx, ptr %108, i32 0, i32 21
  %109 = ptrtoint ptr %bna.i30.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bna.i30.i, align 4
  %mcam_mod.i31.i = getelementptr inbounds %struct.bna, ptr %110, i32 0, i32 15
  tail call void @bna_mcam_mod_handle_put(ptr noundef %mcam_mod.i31.i, ptr noundef nonnull %96) #10
  br label %if.end8.i33.i

if.end8.i33.i:                                    ; preds = %list_del.exit.i32.i, %if.end.i22.i.if.end8.i33.i_crit_edge
  %111 = ptrtoint ptr %handle.i17.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %handle.i17.i, align 4
  br label %bna_rxf_mcast_del.exit34.i

bna_rxf_mcast_del.exit34.i:                       ; preds = %if.end8.i33.i, %list_move_tail.exit16.i.bna_rxf_mcast_del.exit34.i_crit_edge
  %112 = ptrtoint ptr %mcast_active_q.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %mcast_active_q.i, align 4
  %cmp.i5.not.i = icmp eq ptr %113, %mcast_active_q.i
  br i1 %cmp.i5.not.i, label %bna_rxf_mcast_del.exit34.i.bna_rxf_mcast_cfg_reset.exit_crit_edge, label %bna_rxf_mcast_del.exit34.i.while.body8.i_crit_edge

bna_rxf_mcast_del.exit34.i.while.body8.i_crit_edge: ; preds = %bna_rxf_mcast_del.exit34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body8.i

bna_rxf_mcast_del.exit34.i.bna_rxf_mcast_cfg_reset.exit_crit_edge: ; preds = %bna_rxf_mcast_del.exit34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_mcast_cfg_reset.exit

bna_rxf_mcast_cfg_reset.exit:                     ; preds = %bna_rxf_mcast_del.exit34.i.bna_rxf_mcast_cfg_reset.exit_crit_edge, %while.cond4.preheader.i.bna_rxf_mcast_cfg_reset.exit_crit_edge
  %rx.i26 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %114 = ptrtoint ptr %rx.i26 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rx.i26, align 4
  %bna1.i = getelementptr inbounds %struct.bna_rx, ptr %115, i32 0, i32 21
  %116 = ptrtoint ptr %bna1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bna1.i, align 4
  %rxmode_pending_bitmask.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 21
  %118 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %and.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bna_rxf_mcast_cfg_reset.exit.if.end10.i_crit_edge, label %land.lhs.true.i

bna_rxf_mcast_cfg_reset.exit.if.end10.i_crit_edge: ; preds = %bna_rxf_mcast_cfg_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %bna_rxf_mcast_cfg_reset.exit
  %rxmode_pending.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 20
  %120 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rxmode_pending.i, align 4
  %and2.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %119, -2
  %122 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and5.i, ptr %rxmode_pending_bitmask.i, align 4
  %and7.i = and i32 %121, -2
  %123 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and7.i, ptr %rxmode_pending.i, align 4
  %rxmode_active.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 22
  %124 = ptrtoint ptr %rxmode_active.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rxmode_active.i, align 4
  %and8.i = and i32 %125, -2
  store i32 %and8.i, ptr %rxmode_active.i, align 4
  %promisc_rid.i = getelementptr inbounds %struct.bna, ptr %117, i32 0, i32 18
  %126 = ptrtoint ptr %promisc_rid.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %promisc_rid.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.body.i, %land.lhs.true.i.if.end10.i_crit_edge, %bna_rxf_mcast_cfg_reset.exit.if.end10.i_crit_edge
  %rxmode_active11.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 22
  %127 = ptrtoint ptr %rxmode_active11.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rxmode_active11.i, align 4
  %and12.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.bna_rxf_promisc_cfg_reset.exit_crit_edge, label %do.body15.i

if.end10.i.bna_rxf_promisc_cfg_reset.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_promisc_cfg_reset.exit

do.body15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %or.i = or i32 %130, 1
  store i32 %or.i, ptr %rxmode_pending_bitmask.i, align 4
  %rxmode_pending17.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 20
  %131 = ptrtoint ptr %rxmode_pending17.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rxmode_pending17.i, align 4
  %or18.i = or i32 %132, 1
  store i32 %or18.i, ptr %rxmode_pending17.i, align 4
  %and22.i = and i32 %128, -2
  %133 = ptrtoint ptr %rxmode_active11.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and22.i, ptr %rxmode_active11.i, align 4
  br label %bna_rxf_promisc_cfg_reset.exit

bna_rxf_promisc_cfg_reset.exit:                   ; preds = %do.body15.i, %if.end10.i.bna_rxf_promisc_cfg_reset.exit_crit_edge
  %134 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %and.i28 = and i32 %135, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %bna_rxf_promisc_cfg_reset.exit.if.end9.i_crit_edge, label %land.lhs.true.i31

bna_rxf_promisc_cfg_reset.exit.if.end9.i_crit_edge: ; preds = %bna_rxf_promisc_cfg_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i31:                                ; preds = %bna_rxf_promisc_cfg_reset.exit
  %rxmode_pending.i30 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 20
  %136 = ptrtoint ptr %rxmode_pending.i30 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rxmode_pending.i30, align 4
  %and1.i = and i32 %137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i34, label %land.lhs.true.i31.if.end9.i_crit_edge

land.lhs.true.i31.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.body.i34:                                      ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #12
  %and4.i = and i32 %135, -5
  %138 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and4.i, ptr %rxmode_pending_bitmask.i, align 4
  %and6.i = and i32 %137, -5
  %139 = ptrtoint ptr %rxmode_pending.i30 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and6.i, ptr %rxmode_pending.i30, align 4
  %140 = ptrtoint ptr %rxmode_active11.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rxmode_active11.i, align 4
  %and7.i33 = and i32 %141, -5
  store i32 %and7.i33, ptr %rxmode_active11.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.body.i34, %land.lhs.true.i31.if.end9.i_crit_edge, %bna_rxf_promisc_cfg_reset.exit.if.end9.i_crit_edge
  %142 = ptrtoint ptr %rxmode_active11.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rxmode_active11.i, align 4
  %and11.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.bna_rxf_allmulti_cfg_reset.exit_crit_edge, label %do.body14.i

if.end9.i.bna_rxf_allmulti_cfg_reset.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rxf_allmulti_cfg_reset.exit

do.body14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %or.i35 = or i32 %145, 4
  store i32 %or.i35, ptr %rxmode_pending_bitmask.i, align 4
  %rxmode_pending16.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 20
  %146 = ptrtoint ptr %rxmode_pending16.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rxmode_pending16.i, align 4
  %or17.i = or i32 %147, 4
  store i32 %or17.i, ptr %rxmode_pending16.i, align 4
  %and20.i = and i32 %143, -5
  %148 = ptrtoint ptr %rxmode_active11.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %and20.i, ptr %rxmode_active11.i, align 4
  br label %bna_rxf_allmulti_cfg_reset.exit

bna_rxf_allmulti_cfg_reset.exit:                  ; preds = %do.body14.i, %if.end9.i.bna_rxf_allmulti_cfg_reset.exit_crit_edge
  %vlan_pending_bitmask = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 23
  %149 = ptrtoint ptr %vlan_pending_bitmask to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -1, ptr %vlan_pending_bitmask, align 4
  %vlan_strip_pending = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 26
  %150 = ptrtoint ptr %vlan_strip_pending to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %vlan_strip_pending, align 4
  %rss_status = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 29
  %151 = ptrtoint ptr %rss_status to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rss_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp = icmp eq i32 %152, 1
  br i1 %cmp, label %if.then, label %bna_rxf_allmulti_cfg_reset.exit.do.end5_crit_edge

bna_rxf_allmulti_cfg_reset.exit.do.end5_crit_edge: ; preds = %bna_rxf_allmulti_cfg_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

if.then:                                          ; preds = %bna_rxf_allmulti_cfg_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rss_pending = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 28
  %153 = ptrtoint ptr %rss_pending to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 7, ptr %rss_pending, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.then, %bna_rxf_allmulti_cfg_reset.exit.do.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bna_rxf_cfg_apply(ptr noundef %rxf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucast_pending_del_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 10
  %0 = ptrtoint ptr %ucast_pending_del_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ucast_pending_del_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %ucast_pending_del_q.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %bfi_enet_cmd.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %2 = ptrtoint ptr %bfi_enet_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 24, ptr %bfi_enet_cmd.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 11, ptr %msg_id.i.i, align 1
  %msg_token.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %msg_token.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %msg_token.i.i, align 1
  %rx.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %5 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx.i.i, align 4
  %rid.i.i = getelementptr inbounds %struct.bna_rx, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rid.i.i, align 4
  %conv3.i.i = trunc i32 %8 to i8
  %enet_id.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %enet_id.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3.i.i, ptr %enet_id.i.i, align 1
  %num_entries.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 1, ptr %num_entries.i.i, align 1
  %mac_addr.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.bna_mac, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i, align 4
  %13 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mac_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.bna_mac, ptr %1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i.i.i, align 2
  %msgq_cmd.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cbfn.i.i, align 4
  %cbarg.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %cbarg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cbarg.i.i, align 4
  %msg_size.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %msg_size.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %msg_size.i.i, align 4
  %msg_hdr.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %msg_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bfi_enet_cmd.i.i, ptr %msg_hdr.i.i, align 4
  %bna.i.i = getelementptr inbounds %struct.bna_rx, ptr %6, i32 0, i32 21
  %21 = ptrtoint ptr %bna.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bna.i.i, align 4
  %msgq.i.i = getelementptr inbounds %struct.bna, ptr %22, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i.i, ptr noundef %msgq_cmd.i.i) #10
  %23 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx.i.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna.i, align 4
  %del_q.i = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 14, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 14, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %34, ptr noundef %del_q.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.return_crit_edge

__list_del_entry.exit.i.i.return_crit_edge:       ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %prev.i2.i.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %del_q.i, ptr %1, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %1, ptr %34, align 4
  br label %return

if.end.i:                                         ; preds = %entry
  %ucast_pending_set.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 12
  %39 = ptrtoint ptr %ucast_pending_set.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ucast_pending_set.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool2.not.i = icmp eq i32 %40, 0
  br i1 %tobool2.not.i, label %if.end8.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %ucast_pending_set.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ucast_pending_set.i, align 4
  %addr.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 14, i32 1
  %ucast_pending_mac.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 11
  %42 = ptrtoint ptr %ucast_pending_mac.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ucast_pending_mac.i, align 4
  %addr5.i = getelementptr inbounds %struct.bna_mac, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %addr5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr5.i, align 4
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.bna_mac, ptr %43, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 14, i32 1, i32 4
  %49 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %add.ptr1.i.i, align 2
  %ucast_active_set.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 15
  %50 = ptrtoint ptr %ucast_active_set.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %ucast_active_set.i, align 4
  %bfi_enet_cmd.i36.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %51 = ptrtoint ptr %bfi_enet_cmd.i36.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 24, ptr %bfi_enet_cmd.i36.i, align 1
  %msg_id.i37.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %msg_id.i37.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %msg_id.i37.i, align 1
  %msg_token.i38.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %msg_token.i38.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 0, ptr %msg_token.i38.i, align 1
  %rx.i39.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %54 = ptrtoint ptr %rx.i39.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx.i39.i, align 4
  %rid.i40.i = getelementptr inbounds %struct.bna_rx, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %rid.i40.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rid.i40.i, align 4
  %conv3.i41.i = trunc i32 %57 to i8
  %enet_id.i42.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %enet_id.i42.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv3.i41.i, ptr %enet_id.i42.i, align 1
  %num_entries.i43.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %num_entries.i43.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 1, ptr %num_entries.i43.i, align 1
  %mac_addr.i44.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %60 = ptrtoint ptr %mac_addr.i44.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %45, ptr %mac_addr.i44.i, align 4
  %add.ptr1.i.i47.i = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  %61 = ptrtoint ptr %add.ptr1.i.i47.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %48, ptr %add.ptr1.i.i47.i, align 2
  %msgq_cmd.i48.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i49.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %cbfn.i49.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %cbfn.i49.i, align 4
  %cbarg.i50.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %cbarg.i50.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %cbarg.i50.i, align 4
  %msg_size.i51.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %msg_size.i51.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16, ptr %msg_size.i51.i, align 4
  %msg_hdr.i52.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %65 = ptrtoint ptr %msg_hdr.i52.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %bfi_enet_cmd.i36.i, ptr %msg_hdr.i52.i, align 4
  %bna.i53.i = getelementptr inbounds %struct.bna_rx, ptr %55, i32 0, i32 21
  %66 = ptrtoint ptr %bna.i53.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bna.i53.i, align 4
  %msgq.i54.i = getelementptr inbounds %struct.bna, ptr %67, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i54.i, ptr noundef %msgq_cmd.i48.i) #10
  br label %return

if.end8.i:                                        ; preds = %if.end.i
  %ucast_pending_add_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 9
  %68 = ptrtoint ptr %ucast_pending_add_q.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %ucast_pending_add_q.i, align 4
  %cmp.i55.not.i = icmp eq ptr %69, %ucast_pending_add_q.i
  br i1 %cmp.i55.not.i, label %if.end, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  %ucast_active_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 13
  %call.i.i57.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %69) #10
  br i1 %call.i.i57.i, label %if.end.i.i60.i, label %if.then11.i.__list_del_entry.exit.i63.i_crit_edge

if.then11.i.__list_del_entry.exit.i63.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i63.i

if.end.i.i60.i:                                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i58.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i58.i, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  %prev1.i.i.i59.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i59.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %__list_del_entry.exit.i63.i

__list_del_entry.exit.i63.i:                      ; preds = %if.end.i.i60.i, %if.then11.i.__list_del_entry.exit.i63.i_crit_edge
  %prev.i2.i61.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 13, i32 1
  %76 = ptrtoint ptr %prev.i2.i61.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i2.i61.i, align 4
  %call.i.i.i62.i = tail call zeroext i1 @__list_add_valid(ptr noundef %69, ptr noundef %77, ptr noundef %ucast_active_q.i) #10
  br i1 %call.i.i.i62.i, label %if.end.i.i.i65.i, label %__list_del_entry.exit.i63.i.list_move_tail.exit66.i_crit_edge

__list_del_entry.exit.i63.i.list_move_tail.exit66.i_crit_edge: ; preds = %__list_del_entry.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit66.i

if.end.i.i.i65.i:                                 ; preds = %__list_del_entry.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %prev.i2.i61.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %69, ptr %prev.i2.i61.i, align 4
  %79 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ucast_active_q.i, ptr %69, align 4
  %prev3.i.i.i64.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i64.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %69, ptr %77, align 4
  br label %list_move_tail.exit66.i

list_move_tail.exit66.i:                          ; preds = %if.end.i.i.i65.i, %__list_del_entry.exit.i63.i.list_move_tail.exit66.i_crit_edge
  %bfi_enet_cmd.i67.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %82 = ptrtoint ptr %bfi_enet_cmd.i67.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 24, ptr %bfi_enet_cmd.i67.i, align 1
  %msg_id.i68.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %msg_id.i68.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 10, ptr %msg_id.i68.i, align 1
  %msg_token.i69.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %84 = ptrtoint ptr %msg_token.i69.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 0, ptr %msg_token.i69.i, align 1
  %rx.i70.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %85 = ptrtoint ptr %rx.i70.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx.i70.i, align 4
  %rid.i71.i = getelementptr inbounds %struct.bna_rx, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %rid.i71.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rid.i71.i, align 4
  %conv3.i72.i = trunc i32 %88 to i8
  %enet_id.i73.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %89 = ptrtoint ptr %enet_id.i73.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv3.i72.i, ptr %enet_id.i73.i, align 1
  %num_entries.i74.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %90 = ptrtoint ptr %num_entries.i74.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 1, ptr %num_entries.i74.i, align 1
  %mac_addr.i75.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %addr.i76.i = getelementptr inbounds %struct.bna_mac, ptr %69, i32 0, i32 1
  %91 = ptrtoint ptr %addr.i76.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %addr.i76.i, align 4
  %93 = ptrtoint ptr %mac_addr.i75.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %mac_addr.i75.i, align 4
  %add.ptr.i.i77.i = getelementptr %struct.bna_mac, ptr %69, i32 0, i32 1, i32 4
  %94 = ptrtoint ptr %add.ptr.i.i77.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr.i.i77.i, align 2
  %add.ptr1.i.i78.i = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  %96 = ptrtoint ptr %add.ptr1.i.i78.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %add.ptr1.i.i78.i, align 2
  %msgq_cmd.i79.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i80.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %cbfn.i80.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %cbfn.i80.i, align 4
  %cbarg.i81.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %98 = ptrtoint ptr %cbarg.i81.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %cbarg.i81.i, align 4
  %msg_size.i82.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %msg_size.i82.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 16, ptr %msg_size.i82.i, align 4
  %msg_hdr.i83.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %100 = ptrtoint ptr %msg_hdr.i83.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %bfi_enet_cmd.i67.i, ptr %msg_hdr.i83.i, align 4
  %bna.i84.i = getelementptr inbounds %struct.bna_rx, ptr %86, i32 0, i32 21
  %101 = ptrtoint ptr %bna.i84.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bna.i84.i, align 4
  %msgq.i85.i = getelementptr inbounds %struct.bna, ptr %102, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i85.i, ptr noundef %msgq_cmd.i79.i) #10
  br label %return

if.end:                                           ; preds = %if.end8.i
  %mcast_pending_del_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 17
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  br label %while.cond.i

while.cond.i:                                     ; preds = %list_move_tail.exit.i.while.cond.i_crit_edge, %if.end
  %103 = ptrtoint ptr %mcast_pending_del_q.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %mcast_pending_del_q.i, align 4
  %cmp.i.not.i31 = icmp eq ptr %104, %mcast_pending_del_q.i
  br i1 %cmp.i.not.i31, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call2.i = tail call fastcc i32 @bna_rxf_mcast_del(ptr noundef %rxf, ptr noundef %104, i32 noundef 0) #10
  %105 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx.i, align 4
  %bna.i32 = getelementptr inbounds %struct.bna_rx, ptr %106, i32 0, i32 21
  %107 = ptrtoint ptr %bna.i32 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bna.i32, align 4
  %del_q.i33 = getelementptr inbounds %struct.bna, ptr %108, i32 0, i32 15, i32 3
  %call.i.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %104) #10
  br i1 %call.i.i.i34, label %if.end.i.i.i37, label %while.body.i.__list_del_entry.exit.i.i40_crit_edge

while.body.i.__list_del_entry.exit.i.i40_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i40

if.end.i.i.i37:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i.i35, align 4
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %104, align 4
  %prev1.i.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev1.i.i.i.i36, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %110, align 4
  br label %__list_del_entry.exit.i.i40

__list_del_entry.exit.i.i40:                      ; preds = %if.end.i.i.i37, %while.body.i.__list_del_entry.exit.i.i40_crit_edge
  %prev.i2.i.i38 = getelementptr inbounds %struct.bna, ptr %108, i32 0, i32 15, i32 3, i32 1
  %115 = ptrtoint ptr %prev.i2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i2.i.i38, align 4
  %call.i.i.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef %104, ptr noundef %116, ptr noundef %del_q.i33) #10
  br i1 %call.i.i.i.i39, label %if.end.i.i.i.i42, label %__list_del_entry.exit.i.i40.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i40.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i42:                                 ; preds = %__list_del_entry.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %prev.i2.i.i38 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %104, ptr %prev.i2.i.i38, align 4
  %118 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %del_q.i33, ptr %104, align 4
  %prev3.i.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %119 = ptrtoint ptr %prev3.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev3.i.i.i.i41, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %104, ptr %116, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i42, %__list_del_entry.exit.i.i40.list_move_tail.exit.i_crit_edge
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %list_move_tail.exit.i.while.cond.i_crit_edge, label %list_move_tail.exit.i.return_crit_edge

list_move_tail.exit.i.return_crit_edge:           ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

list_move_tail.exit.i.while.cond.i_crit_edge:     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %mcast_pending_add_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 16
  %121 = ptrtoint ptr %mcast_pending_add_q.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %mcast_pending_add_q.i, align 4
  %cmp.i26.not.i = icmp eq ptr %122, %mcast_pending_add_q.i
  br i1 %cmp.i26.not.i, label %if.end4, label %if.then6.i

if.then6.i:                                       ; preds = %while.end.i
  %mcast_active_q.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 18
  %call.i.i28.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %122) #10
  br i1 %call.i.i28.i, label %if.end.i.i31.i, label %if.then6.i.__list_del_entry.exit.i34.i_crit_edge

if.then6.i.__list_del_entry.exit.i34.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i34.i

if.end.i.i31.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i29.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i29.i, align 4
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %122, align 4
  %prev1.i.i.i30.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev1.i.i.i30.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %126, ptr %124, align 4
  br label %__list_del_entry.exit.i34.i

__list_del_entry.exit.i34.i:                      ; preds = %if.end.i.i31.i, %if.then6.i.__list_del_entry.exit.i34.i_crit_edge
  %prev.i2.i32.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 18, i32 1
  %129 = ptrtoint ptr %prev.i2.i32.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i2.i32.i, align 4
  %call.i.i.i33.i = tail call zeroext i1 @__list_add_valid(ptr noundef %122, ptr noundef %130, ptr noundef %mcast_active_q.i) #10
  br i1 %call.i.i.i33.i, label %if.end.i.i.i36.i, label %__list_del_entry.exit.i34.i.list_move_tail.exit37.i_crit_edge

__list_del_entry.exit.i34.i.list_move_tail.exit37.i_crit_edge: ; preds = %__list_del_entry.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit37.i

if.end.i.i.i36.i:                                 ; preds = %__list_del_entry.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %prev.i2.i32.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %122, ptr %prev.i2.i32.i, align 4
  %132 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %mcast_active_q.i, ptr %122, align 4
  %prev3.i.i.i35.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %133 = ptrtoint ptr %prev3.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev3.i.i.i35.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %122, ptr %130, align 4
  br label %list_move_tail.exit37.i

list_move_tail.exit37.i:                          ; preds = %if.end.i.i.i36.i, %__list_del_entry.exit.i34.i.list_move_tail.exit37.i_crit_edge
  %bfi_enet_cmd.i.i43 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %135 = ptrtoint ptr %bfi_enet_cmd.i.i43 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 24, ptr %bfi_enet_cmd.i.i43, align 1
  %msg_id.i.i44 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %136 = ptrtoint ptr %msg_id.i.i44 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 12, ptr %msg_id.i.i44, align 1
  %msg_token.i.i45 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %137 = ptrtoint ptr %msg_token.i.i45 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 2)
  store i16 0, ptr %msg_token.i.i45, align 1
  %138 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rx.i, align 4
  %rid.i.i46 = getelementptr inbounds %struct.bna_rx, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %rid.i.i46 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rid.i.i46, align 4
  %conv.i38.i = trunc i32 %141 to i8
  %enet_id.i.i47 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %142 = ptrtoint ptr %enet_id.i.i47 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv.i38.i, ptr %enet_id.i.i47, align 1
  %num_entries.i.i48 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %143 = ptrtoint ptr %num_entries.i.i48 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 2)
  store i16 1, ptr %num_entries.i.i48, align 1
  %mac_addr.i.i49 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %addr.i.i50 = getelementptr inbounds %struct.bna_mac, ptr %122, i32 0, i32 1
  %144 = ptrtoint ptr %addr.i.i50 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %addr.i.i50, align 4
  %146 = ptrtoint ptr %mac_addr.i.i49 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %mac_addr.i.i49, align 4
  %add.ptr.i.i.i51 = getelementptr %struct.bna_mac, ptr %122, i32 0, i32 1, i32 4
  %147 = ptrtoint ptr %add.ptr.i.i.i51 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %add.ptr.i.i.i51, align 2
  %add.ptr1.i.i.i52 = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  %149 = ptrtoint ptr %add.ptr1.i.i.i52 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %add.ptr1.i.i.i52, align 2
  %msgq_cmd.i.i53 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i.i54 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %150 = ptrtoint ptr %cbfn.i.i54 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %cbfn.i.i54, align 4
  %cbarg.i.i55 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %151 = ptrtoint ptr %cbarg.i.i55 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %cbarg.i.i55, align 4
  %msg_size.i.i56 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %152 = ptrtoint ptr %msg_size.i.i56 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 16, ptr %msg_size.i.i56, align 4
  %msg_hdr.i.i57 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %153 = ptrtoint ptr %msg_hdr.i.i57 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %bfi_enet_cmd.i.i43, ptr %msg_hdr.i.i57, align 4
  %bna.i.i58 = getelementptr inbounds %struct.bna_rx, ptr %139, i32 0, i32 21
  %154 = ptrtoint ptr %bna.i.i58 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bna.i.i58, align 4
  %msgq.i.i59 = getelementptr inbounds %struct.bna, ptr %155, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i.i59, ptr noundef %msgq_cmd.i.i53) #10
  br label %return

if.end4:                                          ; preds = %while.end.i
  %156 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rx.i, align 4
  %bna1.i = getelementptr inbounds %struct.bna_rx, ptr %157, i32 0, i32 21
  %158 = ptrtoint ptr %bna1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bna1.i, align 4
  %rxmode_pending_bitmask.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 21
  %160 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %and.i = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end4
  %rxmode_pending.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 20
  %162 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rxmode_pending.i, align 4
  %and2.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i62 = icmp eq i32 %and2.i, 0
  %and18.i = and i32 %161, -2
  %164 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %and18.i, ptr %rxmode_pending_bitmask.i, align 4
  %and20.i = and i32 %163, -2
  %165 = ptrtoint ptr %rxmode_pending.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %and20.i, ptr %rxmode_pending.i, align 4
  %rxmode_active23.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 22
  %166 = ptrtoint ptr %rxmode_active23.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rxmode_active23.i, align 4
  br i1 %tobool3.not.i62, label %do.body16.i, label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %167, 1
  %168 = ptrtoint ptr %rxmode_active23.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.i, ptr %rxmode_active23.i, align 4
  %bfi_enet_cmd.i.i63 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %169 = ptrtoint ptr %bfi_enet_cmd.i.i63 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 24, ptr %bfi_enet_cmd.i.i63, align 1
  %msg_id.i.i64 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %170 = ptrtoint ptr %msg_id.i.i64 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 6, ptr %msg_id.i.i64, align 1
  %msg_token.i.i65 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %171 = ptrtoint ptr %msg_token.i.i65 to i32
  call void @__asan_storeN_noabort(i32 %171, i32 2)
  store i16 0, ptr %msg_token.i.i65, align 1
  br label %bna_rxf_promisc_cfg_apply.exit

do.body16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %and24.i = and i32 %167, -2
  %172 = ptrtoint ptr %rxmode_active23.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and24.i, ptr %rxmode_active23.i, align 4
  %promisc_rid.i = getelementptr inbounds %struct.bna, ptr %159, i32 0, i32 18
  %173 = ptrtoint ptr %promisc_rid.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %promisc_rid.i, align 8
  %bfi_enet_cmd.i38.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %174 = ptrtoint ptr %bfi_enet_cmd.i38.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 24, ptr %bfi_enet_cmd.i38.i, align 1
  %msg_id.i39.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %175 = ptrtoint ptr %msg_id.i39.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 6, ptr %msg_id.i39.i, align 1
  %msg_token.i40.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %176 = ptrtoint ptr %msg_token.i40.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 0, ptr %msg_token.i40.i, align 1
  %177 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rx.i, align 4
  %bna.i52.i = getelementptr inbounds %struct.bna_rx, ptr %178, i32 0, i32 21
  br label %bna_rxf_promisc_cfg_apply.exit

bna_rxf_promisc_cfg_apply.exit:                   ; preds = %do.body16.i, %do.body.i
  %.pn = phi ptr [ %178, %do.body16.i ], [ %157, %do.body.i ]
  %.sink = phi i8 [ 0, %do.body16.i ], [ 1, %do.body.i ]
  %bfi_enet_cmd.i.i63.sink = phi ptr [ %bfi_enet_cmd.i38.i, %do.body16.i ], [ %bfi_enet_cmd.i.i63, %do.body.i ]
  %bna.i52.sink.i = phi ptr [ %bna.i52.i, %do.body16.i ], [ %bna1.i, %do.body.i ]
  %conv.i.i.sink.in.in = getelementptr inbounds %struct.bna_rx, ptr %.pn, i32 0, i32 1
  %179 = ptrtoint ptr %conv.i.i.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %179)
  %conv.i.i.sink.in = load i32, ptr %conv.i.i.sink.in.in, align 4
  %conv.i.i.sink = trunc i32 %conv.i.i.sink.in to i8
  %180 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv.i.i.sink, ptr %180, align 1
  %182 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_storeN_noabort(i32 %183, i32 2)
  store i16 1, ptr %182, align 1
  %184 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %.sink, ptr %184, align 1
  %186 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %186, align 4
  %188 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %188, align 4
  %190 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 12, ptr %190, align 4
  %192 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %bfi_enet_cmd.i.i63.sink, ptr %192, align 4
  %msgq_cmd.i47.sink.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %194 = ptrtoint ptr %bna.i52.sink.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bna.i52.sink.i, align 4
  %msgq.i53.i = getelementptr inbounds %struct.bna, ptr %195, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i53.i, ptr noundef %msgq_cmd.i47.sink.i) #10
  br label %return

if.end8:                                          ; preds = %if.end4
  %196 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rxmode_pending_bitmask.i, align 4
  %and.i75 = and i32 %197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76, label %if.end12, label %land.lhs.true.i79

land.lhs.true.i79:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %rxmode_pending.i77 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 20
  %198 = ptrtoint ptr %rxmode_pending.i77 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rxmode_pending.i77, align 4
  %and1.i = and i32 %199, 4
  %and17.i = and i32 %197, -5
  %200 = ptrtoint ptr %rxmode_pending_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %and17.i, ptr %rxmode_pending_bitmask.i, align 4
  %and19.i = and i32 %199, -5
  store i32 %and19.i, ptr %rxmode_pending.i77, align 4
  %rxmode_active21.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 22
  %201 = ptrtoint ptr %rxmode_active21.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %rxmode_active21.i, align 4
  %and22.i = and i32 %202, -5
  %or.i81.sink = or i32 %and22.i, %and1.i
  %and1.i.lobit = lshr exact i32 %and1.i, 2
  %203 = trunc i32 %and1.i.lobit to i8
  %204 = xor i8 %203, 1
  store i32 %or.i81.sink, ptr %rxmode_active21.i, align 4
  %bfi_enet_cmd.i.sink.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %205 = ptrtoint ptr %bfi_enet_cmd.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 24, ptr %bfi_enet_cmd.i.sink.i, align 1
  %msg_id.i.i83 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %206 = ptrtoint ptr %msg_id.i.i83 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 14, ptr %msg_id.i.i83, align 1
  %msg_token.i.i84 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %207 = ptrtoint ptr %msg_token.i.i84 to i32
  call void @__asan_storeN_noabort(i32 %207, i32 2)
  store i16 0, ptr %msg_token.i.i84, align 1
  %208 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rx.i, align 4
  %rid.i39.i = getelementptr inbounds %struct.bna_rx, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %rid.i39.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rid.i39.i, align 4
  %conv.i40.i = trunc i32 %211 to i8
  %enet_id.i41.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %212 = ptrtoint ptr %enet_id.i41.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv.i40.i, ptr %enet_id.i41.i, align 1
  %num_entries.i42.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %213 = ptrtoint ptr %num_entries.i42.i to i32
  call void @__asan_storeN_noabort(i32 %213, i32 2)
  store i16 1, ptr %num_entries.i42.i, align 1
  %enable.i43.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %214 = ptrtoint ptr %enable.i43.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %204, ptr %enable.i43.i, align 1
  %msgq_cmd.i44.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i45.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %215 = ptrtoint ptr %cbfn.i45.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %cbfn.i45.i, align 4
  %cbarg.i46.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %216 = ptrtoint ptr %cbarg.i46.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %cbarg.i46.i, align 4
  %msg_size.i47.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %217 = ptrtoint ptr %msg_size.i47.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 12, ptr %msg_size.i47.i, align 4
  %msg_hdr.i48.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %218 = ptrtoint ptr %msg_hdr.i48.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %bfi_enet_cmd.i.sink.i, ptr %msg_hdr.i48.i, align 4
  %bna.i49.i = getelementptr inbounds %struct.bna_rx, ptr %209, i32 0, i32 21
  %219 = ptrtoint ptr %bna.i49.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %bna.i49.i, align 4
  %msgq.i50.i = getelementptr inbounds %struct.bna, ptr %220, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i50.i, ptr noundef %msgq_cmd.i44.i) #10
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @bna_rxf_vlan_cfg_apply(ptr noundef %rxf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.return_crit_edge

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @bna_rxf_vlan_strip_cfg_apply(ptr noundef %rxf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call fastcc i32 @bna_rxf_rss_cfg_apply(ptr noundef %rxf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp ne i32 %call21, 0
  %. = zext i1 %tobool22.not to i32
  br label %return

return:                                           ; preds = %if.end20, %if.end16.return_crit_edge, %if.end12.return_crit_edge, %land.lhs.true.i79, %bna_rxf_promisc_cfg_apply.exit, %list_move_tail.exit37.i, %list_move_tail.exit.i.return_crit_edge, %list_move_tail.exit66.i, %if.then3.i, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.return_crit_edge
  %retval.0 = phi i32 [ 1, %bna_rxf_promisc_cfg_apply.exit ], [ 1, %land.lhs.true.i79 ], [ 1, %if.end12.return_crit_edge ], [ 1, %if.end16.return_crit_edge ], [ %., %if.end20 ], [ 1, %if.then3.i ], [ 1, %list_move_tail.exit66.i ], [ 1, %__list_del_entry.exit.i.i.return_crit_edge ], [ 1, %if.end.i.i.i.i ], [ 1, %list_move_tail.exit37.i ], [ 1, %list_move_tail.exit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rxf_sm_started(ptr noundef %rxf, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %do.end7 [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge15
    i32 4, label %do.body2
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  tail call fastcc void @bna_rxf_cfg_reset(ptr noundef %rxf)
  %1 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rxf_sm_stopped, ptr %rxf, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 5
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 6
  %4 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg.i, align 4
  %6 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #10
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %7 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bna_rxf_sm_cfg_wait, ptr %rxf, align 4
  %call.i = tail call fastcc i32 @bna_rxf_cfg_apply(ptr noundef %rxf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i14 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i14, label %do.body.i, label %do.body2.sw.epilog_crit_edge

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.i:                                        ; preds = %do.body2
  %8 = ptrtoint ptr %rxf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bna_rxf_sm_started, ptr %rxf, align 4
  %start_cbfn.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 3
  %9 = ptrtoint ptr %start_cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %start_cbfn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.body.i.do.body4.i.i_crit_edge, label %if.then.i.i

do.body.i.do.body4.i.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %start_cbarg.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 4
  %11 = ptrtoint ptr %start_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start_cbarg.i.i, align 4
  %13 = ptrtoint ptr %start_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %start_cbfn.i.i, align 4
  store ptr null, ptr %start_cbarg.i.i, align 4
  tail call void %10(ptr noundef %12) #10
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %if.then.i.i, %do.body.i.do.body4.i.i_crit_edge
  %cam_fltr_cbfn.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 7
  %14 = ptrtoint ptr %cam_fltr_cbfn.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cam_fltr_cbfn.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i.i, label %do.body4.i.i.sw.epilog_crit_edge, label %if.then6.i.i

do.body4.i.i.sw.epilog_crit_edge:                 ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then6.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cam_fltr_cbarg.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 8
  %16 = ptrtoint ptr %cam_fltr_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cam_fltr_cbarg.i.i, align 4
  %18 = ptrtoint ptr %cam_fltr_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cam_fltr_cbfn.i.i, align 4
  store ptr null, ptr %cam_fltr_cbarg.i.i, align 4
  %rx.i.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %19 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx.i.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %20) #10
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 154, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %if.then6.i.i, %do.body4.i.i.sw.epilog_crit_edge, %do.body2.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msgq_cmd_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bna_rxf_mcast_del(ptr noundef %rxf, ptr nocapture noundef %mac, i32 noundef %cleanup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.bna_mac, ptr %mac, i32 0, i32 2
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup10_crit_edge, label %if.end

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.bna_mcam_handle, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp2 = icmp eq i32 %dec, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleanup)
  %cmp4 = icmp eq i32 %cleanup, 0
  br i1 %cmp4, label %if.then5, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %handle6 = getelementptr inbounds %struct.bna_mcam_handle, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle6, align 4
  %conv = trunc i32 %5 to i16
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %6 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %9 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx.i, align 4
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %12 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %handle5.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %handle5.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %handle5.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %10, i32 0, i32 21
  %20 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %21, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3.if.end7_crit_edge
  %ret.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.then3.if.end7_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del.exit_crit_edge

if.end7.list_del.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end7.list_del.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rx = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx, align 4
  %bna = getelementptr inbounds %struct.bna_rx, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bna, align 4
  %mcam_mod = getelementptr inbounds %struct.bna, ptr %33, i32 0, i32 15
  tail call void @bna_mcam_mod_handle_put(ptr noundef %mcam_mod, ptr noundef nonnull %1) #10
  br label %if.end8

if.end8:                                          ; preds = %list_del.exit, %if.end.if.end8_crit_edge
  %ret.1 = phi i32 [ %ret.0, %list_del.exit ], [ 0, %if.end.if.end8_crit_edge ]
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %handle, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.end8, %entry.cleanup10_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end8 ], [ 0, %entry.cleanup10_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_mcam_mod_handle_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bna_rxf_vlan_cfg_apply(ptr noundef %rxf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_pending_bitmask1 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 23
  %0 = ptrtoint ptr %vlan_pending_bitmask1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vlan_pending_bitmask1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not18 = icmp eq i8 %2, 0
  br i1 %tobool3.not18, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %block_idx.020 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %vlan_pending_bitmask.019 = phi i8 [ %3, %while.body.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %block_idx.020, 1
  %3 = lshr i8 %vlan_pending_bitmask.019, 1
  %4 = and i8 %vlan_pending_bitmask.019, 2
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %block_idx.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %shl = shl nuw i32 1, %block_idx.0.lcssa
  %5 = trunc i32 %shl to i8
  %6 = xor i8 %5, -1
  %conv9 = and i8 %1, %6
  %7 = ptrtoint ptr %vlan_pending_bitmask1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %vlan_pending_bitmask1, align 4
  %conv10 = trunc i32 %block_idx.0.lcssa to i8
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %8 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 15, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %11 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx.i, align 4
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %14 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %15 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 2, ptr %num_entries.i, align 1
  %block_idx5.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %block_idx5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10, ptr %block_idx5.i, align 1
  %vlan_filter_status.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 24
  %conv7.i = shl i32 %block_idx.0.lcssa, 4
  %mul.i = and i32 %conv7.i, 4080
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end
  %i.044.i = phi i32 [ 0, %while.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %vlan_filter_status.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vlan_filter_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp8.i = icmp eq i32 %19, 1
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw nsw i32 %i.044.i, %mul.i
  %arrayidx.i = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 25, i32 %add.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi i32 [ %21, %if.then.i ], [ -1, %for.body.i.for.inc.i_crit_edge ]
  %22 = getelementptr %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3, i32 %i.044.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %.sink.i, ptr %22, align 1
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %bna_bfi_rx_vlan_filter_set.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bna_bfi_rx_vlan_filter_set.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %msgq_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 76, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %28 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %29, i32 0, i32 21
  %30 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %31, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  br label %cleanup

cleanup:                                          ; preds = %bna_bfi_rx_vlan_filter_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %bna_bfi_rx_vlan_filter_set.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bna_rxf_vlan_strip_cfg_apply(ptr noundef %rxf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_strip_pending = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 26
  %0 = ptrtoint ptr %vlan_strip_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vlan_strip_pending, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vlan_strip_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vlan_strip_pending, align 4
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %3 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %6 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx.i, align 4
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %9 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %vlan_strip_status.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 27
  %12 = ptrtoint ptr %vlan_strip_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vlan_strip_status.i, align 4
  %conv5.i = trunc i32 %13 to i8
  %enable.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.i, ptr %enable.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %7, i32 0, i32 21
  %19 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %20, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bna_rxf_rss_cfg_apply(ptr noundef %rxf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_pending = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 28
  %0 = ptrtoint ptr %rss_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and5 = and i32 %1, -2
  %2 = ptrtoint ptr %rss_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and5, ptr %rss_pending, align 4
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %3 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rx.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %6 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx.i, align 4
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %9 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2, ptr %num_entries.i, align 1
  %rit_size.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 32
  %12 = ptrtoint ptr %rit_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rit_size.i, align 4
  %conv5.i = trunc i32 %13 to i16
  %size.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %conv5.i, ptr %size.i, align 1
  %table.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  %rit.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 31
  %15 = ptrtoint ptr %rit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rit.i, align 4
  %17 = call ptr @memcpy(ptr %table.i, ptr %16, i32 %13)
  %cbfn.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 76, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %22 = load ptr, ptr %rx.i, align 4
  br label %return.sink.split

if.end:                                           ; preds = %if.then
  %and7 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i32 %1, -3
  %23 = ptrtoint ptr %rss_pending to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and11, ptr %rss_pending, align 4
  %bfi_enet_cmd.i30 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %24 = ptrtoint ptr %bfi_enet_cmd.i30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 24, ptr %bfi_enet_cmd.i30, align 1
  %msg_id.i31 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %msg_id.i31 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %msg_id.i31, align 1
  %msg_token.i32 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %msg_token.i32 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %msg_token.i32, align 1
  %rx.i33 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %27 = ptrtoint ptr %rx.i33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx.i33, align 4
  %rid.i34 = getelementptr inbounds %struct.bna_rx, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %rid.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rid.i34, align 4
  %conv.i35 = trunc i32 %30 to i8
  %enet_id.i36 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %enet_id.i36 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i35, ptr %enet_id.i36, align 1
  %num_entries.i37 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %num_entries.i37 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 1, ptr %num_entries.i37, align 1
  %rss_cfg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 30
  %33 = ptrtoint ptr %rss_cfg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rss_cfg.i, align 4
  %conv5.i38 = trunc i32 %34 to i8
  %cfg.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv5.i38, ptr %cfg.i, align 1
  %hash_mask.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 30, i32 1
  %36 = ptrtoint ptr %hash_mask.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hash_mask.i, align 4
  %mask.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 2
  %38 = ptrtoint ptr %mask.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %mask.i, align 1
  %key.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 3
  %uglygep.i = getelementptr i8, ptr %rxf, i32 772
  %39 = call ptr @memcpy(ptr %key.i, ptr %uglygep.i, i32 40)
  %cbfn.i40 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %cbfn.i40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %cbfn.i40, align 4
  %cbarg.i41 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %cbarg.i41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %cbarg.i41, align 4
  %msg_size.i42 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %msg_size.i42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 52, ptr %msg_size.i42, align 4
  %msg_hdr.i43 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %msg_hdr.i43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bfi_enet_cmd.i30, ptr %msg_hdr.i43, align 4
  br label %return.sink.split

if.end12:                                         ; preds = %if.end
  %and14 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.return_crit_edge, label %if.then16

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %and18 = and i32 %1, -5
  %44 = ptrtoint ptr %rss_pending to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and18, ptr %rss_pending, align 4
  %bfi_enet_cmd.i46 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2
  %45 = ptrtoint ptr %bfi_enet_cmd.i46 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 24, ptr %bfi_enet_cmd.i46, align 1
  %msg_id.i47 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %msg_id.i47 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %msg_id.i47, align 1
  %msg_token.i48 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %msg_token.i48 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 0, ptr %msg_token.i48, align 1
  %rx.i49 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 33
  %48 = ptrtoint ptr %rx.i49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx.i49, align 4
  %rid.i50 = getelementptr inbounds %struct.bna_rx, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %rid.i50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rid.i50, align 4
  %conv.i51 = trunc i32 %51 to i8
  %enet_id.i52 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 4
  %52 = ptrtoint ptr %enet_id.i52 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i51, ptr %enet_id.i52, align 1
  %num_entries.i53 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %num_entries.i53 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 1, ptr %num_entries.i53, align 1
  %rss_status.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 29
  %54 = ptrtoint ptr %rss_status.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rss_status.i, align 4
  %conv5.i54 = trunc i32 %55 to i8
  %enable.i = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 2, i32 0, i32 1
  %56 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv5.i54, ptr %enable.i, align 1
  %cbfn.i56 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %cbfn.i56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %cbfn.i56, align 4
  %cbarg.i57 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %cbarg.i57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %cbarg.i57, align 4
  %msg_size.i58 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %msg_size.i58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 12, ptr %msg_size.i58, align 4
  %msg_hdr.i59 = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %msg_hdr.i59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %bfi_enet_cmd.i46, ptr %msg_hdr.i59, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then16, %if.then9, %if.then3
  %.sink = phi ptr [ %49, %if.then16 ], [ %28, %if.then9 ], [ %22, %if.then3 ]
  %msgq_cmd.i55.sink = getelementptr inbounds %struct.bna_rxf, ptr %rxf, i32 0, i32 1
  %bna.i60 = getelementptr inbounds %struct.bna_rx, ptr %.sink, i32 0, i32 21
  %61 = ptrtoint ptr %bna.i60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bna.i60, align 4
  %msgq.i61 = getelementptr inbounds %struct.bna, ptr %62, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i61, ptr noundef %msgq_cmd.i55.sink) #10
  br label %return

return:                                           ; preds = %return.sink.split, %if.end12.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_start_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 4, label %do.body6
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_start_stop_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %fsm3 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_rx_sm_stopped, ptr %fsm3, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 19
  %3 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body2.sw.epilog_crit_edge, label %if.then.i

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 20
  %5 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop_cbarg.i, align 4
  %7 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %4(ptr noundef %6, ptr noundef %rx) #10
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm7 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %8 = ptrtoint ptr %fsm7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bna_rx_sm_rxf_start_wait, ptr %fsm7, align 4
  %rx_post_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 18
  %9 = ptrtoint ptr %rx_post_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_post_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %11 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bnad.i, align 4
  tail call void %10(ptr noundef %14, ptr noundef %rx) #10
  %rxf.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %start_cbfn.i.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %start_cbfn.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bna_rx_cb_rxf_started, ptr %start_cbfn.i.i, align 4
  %rx.i.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %16 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx.i.i, align 4
  %start_cbarg.i.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %start_cbarg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %start_cbarg.i.i, align 4
  %19 = ptrtoint ptr %rxf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxf.i, align 4
  tail call void %20(ptr noundef %rxf.i, i32 noundef 1) #10
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1400, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %do.body6, %if.then.i, %do.body2.sw.epilog_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bna_rx_sm_start_wait_entry(ptr noundef %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11
  %0 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 1
  %3 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %4 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 21, ptr %num_entries.i, align 1
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %7 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna.i, align 4
  %enet.i = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 10
  %call.i = tail call i32 @bna_enet_mtu_get(ptr noundef %enet.i) #10
  %conv5.i = trunc i32 %call.i to i16
  %rx_cfg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5
  %frame_size.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv5.i, ptr %frame_size.i, align 1
  %num_paths.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 5
  %10 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_paths.i, align 4
  %conv6.i = trunc i32 %11 to i8
  %num_queue_sets.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 1
  %12 = ptrtoint ptr %num_queue_sets.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6.i, ptr %num_queue_sets.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp419.i = icmp sgt i32 %11, 0
  br i1 %cmp419.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %rxp_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 6
  %multi_buffer120.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rxp.0422.i = phi ptr [ null, %for.body.lr.ph.i ], [ %cond.i, %if.end.i.for.body.i_crit_edge ]
  %i.0420.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %rxp.0422.i, null
  %cond.in.i = select i1 %tobool.not.i, ptr %rxp_q.i, ptr %rxp.0422.i
  %13 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %type.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %15, label %do.body132.i [
    i32 1, label %do.end21.thread415.i
    i32 2, label %for.body.i.do.body24.i_crit_edge
    i32 3, label %for.body.i.do.body24.i_crit_edge7
  ]

for.body.i.do.body24.i_crit_edge7:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24.i

for.body.i.do.body24.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24.i

do.end21.thread415.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rxq.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 2
  %17 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxq.i, align 4
  br label %do.body65.i

do.body24.i:                                      ; preds = %for.body.i.do.body24.i_crit_edge, %for.body.i.do.body24.i_crit_edge7
  %q1.1412.in.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 2
  %19 = ptrtoint ptr %q1.1412.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %q1.1412.i = load ptr, ptr %q1.1412.in.i, align 4
  %q0.1414.in.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %q0.1414.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %q0.1414.i = load ptr, ptr %q0.1414.in.i, align 4
  %qpt.i = getelementptr inbounds %struct.bna_rxq, ptr %q1.1412.i, i32 0, i32 5
  %kv_qpt_ptr.i = getelementptr inbounds %struct.bna_rxq, ptr %q1.1412.i, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %kv_qpt_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kv_qpt_ptr.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %cur_q_addr.sroa.0.0.copyload.i = load i32, ptr %22, align 4
  %cur_q_addr.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %22, i32 4
  %24 = ptrtoint ptr %cur_q_addr.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %cur_q_addr.sroa.5.0.copyload.i = load i32, ptr %cur_q_addr.sroa.5.0..sroa_idx.i, align 4
  %lsb.i = getelementptr inbounds %struct.bna_rxq, ptr %q1.1412.i, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsb.i, align 4
  %qs.i = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3, i32 %i.0420.i, i32 1
  %27 = ptrtoint ptr %qs.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %qs.i, align 1
  %28 = ptrtoint ptr %qpt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qpt.i, align 8
  %addr_hi.i = getelementptr inbounds %struct.anon.1, ptr %qs.i, i32 0, i32 1
  %30 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %addr_hi.i, align 1
  %first_entry.i = getelementptr inbounds %struct.bfi_enet_q, ptr %qs.i, i32 0, i32 1
  %31 = ptrtoint ptr %first_entry.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %cur_q_addr.sroa.5.0.copyload.i, ptr %first_entry.i, align 1
  %addr_hi45.i = getelementptr inbounds %struct.bfi_enet_q, ptr %qs.i, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %addr_hi45.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %cur_q_addr.sroa.0.0.copyload.i, ptr %addr_hi45.i, align 1
  %page_count.i = getelementptr inbounds %struct.bna_rxq, ptr %q1.1412.i, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_count.i, align 4
  %conv47.i = trunc i32 %34 to i16
  %pages.i = getelementptr inbounds %struct.bfi_enet_q, ptr %qs.i, i32 0, i32 2
  %35 = ptrtoint ptr %pages.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %conv47.i, ptr %pages.i, align 1
  %page_size.i = getelementptr inbounds %struct.bna_rxq, ptr %q1.1412.i, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %page_size.i, align 8
  %conv53.i = trunc i32 %37 to i16
  %page_sz.i = getelementptr inbounds %struct.bfi_enet_q, ptr %qs.i, i32 0, i32 3
  %38 = ptrtoint ptr %page_sz.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv53.i, ptr %page_sz.i, align 1
  %buffer_size.i = getelementptr inbounds %struct.bna_rxq, ptr %q1.1412.i, i32 0, i32 1
  %39 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer_size.i, align 8
  %conv60.i = trunc i32 %40 to i16
  %rx_buffer_size.i = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3, i32 %i.0420.i, i32 1, i32 1
  %41 = ptrtoint ptr %rx_buffer_size.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %conv60.i, ptr %rx_buffer_size.i, align 1
  br label %do.body65.i

do.body65.i:                                      ; preds = %do.body24.i, %do.end21.thread415.i
  %q0.1413.i = phi ptr [ %q0.1414.i, %do.body24.i ], [ %18, %do.end21.thread415.i ]
  %qpt67.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 5
  %kv_qpt_ptr68.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %kv_qpt_ptr68.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kv_qpt_ptr68.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %cur_q_addr66.sroa.0.0.copyload.i = load i32, ptr %43, align 4
  %cur_q_addr66.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %43, i32 4
  %45 = ptrtoint ptr %cur_q_addr66.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cur_q_addr66.sroa.5.0.copyload.i = load i32, ptr %cur_q_addr66.sroa.5.0..sroa_idx.i, align 4
  %lsb71.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %lsb71.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lsb71.i, align 4
  %arrayidx73.i = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3, i32 %i.0420.i
  %48 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %arrayidx73.i, align 1
  %49 = ptrtoint ptr %qpt67.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qpt67.i, align 8
  %addr_hi85.i = getelementptr inbounds %struct.anon.1, ptr %arrayidx73.i, i32 0, i32 1
  %51 = ptrtoint ptr %addr_hi85.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %addr_hi85.i, align 1
  %first_entry91.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx73.i, i32 0, i32 1
  %52 = ptrtoint ptr %first_entry91.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %cur_q_addr66.sroa.5.0.copyload.i, ptr %first_entry91.i, align 1
  %addr_hi99.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx73.i, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %addr_hi99.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %cur_q_addr66.sroa.0.0.copyload.i, ptr %addr_hi99.i, align 1
  %page_count101.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %page_count101.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_count101.i, align 4
  %conv102.i = trunc i32 %55 to i16
  %pages107.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx73.i, i32 0, i32 2
  %56 = ptrtoint ptr %pages107.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %conv102.i, ptr %pages107.i, align 1
  %page_size109.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %page_size109.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page_size109.i, align 8
  %conv110.i = trunc i32 %58 to i16
  %page_sz115.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx73.i, i32 0, i32 3
  %59 = ptrtoint ptr %page_sz115.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %conv110.i, ptr %page_sz115.i, align 1
  %multi_buffer.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 4
  %60 = ptrtoint ptr %multi_buffer.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %multi_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool118.not.i = icmp eq i32 %61, 0
  br i1 %tobool118.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %multi_buffer120.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %multi_buffer120.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bna.i, align 4
  %enet122.i = getelementptr inbounds %struct.bna, ptr %64, i32 0, i32 10
  %call123.i = tail call i32 @bna_enet_mtu_get(ptr noundef %enet122.i) #10
  %buffer_size124.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 1
  %65 = ptrtoint ptr %buffer_size124.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call123.i, ptr %buffer_size124.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %buffer_size125.i = getelementptr inbounds %struct.bna_rxq, ptr %q0.1413.i, i32 0, i32 1
  %66 = ptrtoint ptr %buffer_size125.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buffer_size125.i, align 8
  %conv126.i = trunc i32 %67 to i16
  %rx_buffer_size130.i = getelementptr inbounds %struct.bfi_enet_rxq, ptr %arrayidx73.i, i32 0, i32 1
  %68 = ptrtoint ptr %rx_buffer_size130.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %conv126.i, ptr %rx_buffer_size130.i, align 1
  %cq.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3
  %kv_qpt_ptr144.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %kv_qpt_ptr144.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %kv_qpt_ptr144.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %cur_q_addr142.sroa.0.0.copyload.i = load i32, ptr %70, align 4
  %cur_q_addr142.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %70, i32 4
  %72 = ptrtoint ptr %cur_q_addr142.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %cur_q_addr142.sroa.5.0.copyload.i = load i32, ptr %cur_q_addr142.sroa.5.0..sroa_idx.i, align 4
  %lsb148.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %lsb148.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lsb148.i, align 4
  %cq151.i = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3, i32 %i.0420.i, i32 2
  %75 = ptrtoint ptr %cq151.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %cq151.i, align 1
  %76 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cq.i, align 4
  %addr_hi164.i = getelementptr inbounds %struct.anon.1, ptr %cq151.i, i32 0, i32 1
  %78 = ptrtoint ptr %addr_hi164.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %addr_hi164.i, align 1
  %first_entry170.i = getelementptr inbounds %struct.bfi_enet_q, ptr %cq151.i, i32 0, i32 1
  %79 = ptrtoint ptr %first_entry170.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %cur_q_addr142.sroa.5.0.copyload.i, ptr %first_entry170.i, align 1
  %addr_hi178.i = getelementptr inbounds %struct.bfi_enet_q, ptr %cq151.i, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %addr_hi178.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %cur_q_addr142.sroa.0.0.copyload.i, ptr %addr_hi178.i, align 1
  %page_count181.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 0, i32 2
  %81 = ptrtoint ptr %page_count181.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %page_count181.i, align 4
  %conv182.i = trunc i32 %82 to i16
  %pages187.i = getelementptr inbounds %struct.bfi_enet_q, ptr %cq151.i, i32 0, i32 2
  %83 = ptrtoint ptr %pages187.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %conv182.i, ptr %pages187.i, align 1
  %page_size190.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 0, i32 3
  %84 = ptrtoint ptr %page_size190.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %page_size190.i, align 4
  %conv191.i = trunc i32 %85 to i16
  %page_sz196.i = getelementptr inbounds %struct.bfi_enet_q, ptr %cq151.i, i32 0, i32 3
  %86 = ptrtoint ptr %page_sz196.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %conv191.i, ptr %page_sz196.i, align 1
  %ib.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 2
  %lsb200.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 2, i32 0, i32 1
  %87 = ptrtoint ptr %lsb200.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lsb200.i, align 4
  %ib203.i = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3, i32 %i.0420.i, i32 3
  %89 = ptrtoint ptr %ib203.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %ib203.i, align 1
  %90 = ptrtoint ptr %ib.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ib.i, align 4
  %addr_hi213.i = getelementptr inbounds %struct.anon.1, ptr %ib203.i, i32 0, i32 1
  %92 = ptrtoint ptr %addr_hi213.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %addr_hi213.i, align 1
  %intr_vector.i = getelementptr inbounds %struct.bna_rxp, ptr %cond.i, i32 0, i32 3, i32 2, i32 4
  %93 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %intr_vector.i, align 4
  %conv216.i = trunc i32 %94 to i16
  %intr.i = getelementptr %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 3, i32 %i.0420.i, i32 3, i32 1
  %95 = ptrtoint ptr %intr.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %conv216.i, ptr %intr.i, align 1
  %inc.i = add nuw nsw i32 %i.0420.i, 1
  %96 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_paths.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %97
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.body132.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bna_tx_rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1661, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %rxp.0.lcssa.i = phi ptr [ null, %entry.for.end.i_crit_edge ], [ %cond.i, %if.end.i.for.end.i_crit_edge ]
  %ib_cfg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4
  %98 = ptrtoint ptr %ib_cfg.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %ib_cfg.i, align 1
  %int_enabled.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %int_enabled.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %int_enabled.i, align 1
  %int_pkt_enabled.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 2
  %100 = ptrtoint ptr %int_pkt_enabled.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %int_pkt_enabled.i, align 1
  %continuous_coalescing.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 3
  %101 = ptrtoint ptr %continuous_coalescing.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %continuous_coalescing.i, align 1
  %intr_type.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0.lcssa.i, i32 0, i32 3, i32 2, i32 3
  %102 = ptrtoint ptr %intr_type.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %intr_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp225.i = icmp eq i32 %103, 2
  %conv228.i = zext i1 %cmp225.i to i8
  %msix.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 4
  %104 = ptrtoint ptr %msix.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv228.i, ptr %msix.i, align 1
  %coalescing_timeo.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0.lcssa.i, i32 0, i32 3, i32 2, i32 5
  %105 = ptrtoint ptr %coalescing_timeo.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %coalescing_timeo.i, align 4
  %conv232.i = zext i8 %106 to i32
  %coalescing_timeout.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 6
  %107 = ptrtoint ptr %coalescing_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %conv232.i, ptr %coalescing_timeout.i, align 1
  %interpkt_timeo.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0.lcssa.i, i32 0, i32 3, i32 2, i32 7
  %108 = ptrtoint ptr %interpkt_timeo.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %interpkt_timeo.i, align 4
  %inter_pkt_timeout.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 7
  %110 = ptrtoint ptr %inter_pkt_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %inter_pkt_timeout.i, align 1
  %interpkt_count.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0.lcssa.i, i32 0, i32 3, i32 2, i32 6
  %111 = ptrtoint ptr %interpkt_count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %interpkt_count.i, align 4
  %conv239.i = trunc i32 %112 to i8
  %inter_pkt_count.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 4, i32 8
  %113 = ptrtoint ptr %inter_pkt_count.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv239.i, ptr %inter_pkt_count.i, align 1
  %type241.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.0.lcssa.i, i32 0, i32 1
  %114 = ptrtoint ptr %type241.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type241.i, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %115, label %do.body264.i [
    i32 2, label %sw.bb242.i
    i32 3, label %sw.bb244.i
    i32 1, label %sw.bb259.i
  ]

sw.bb242.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 2, ptr %rx_cfg.i, align 1
  br label %bna_bfi_rx_enet_start.exit

sw.bb244.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 3, ptr %rx_cfg.i, align 1
  %hds_cfg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 7
  %119 = ptrtoint ptr %hds_cfg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hds_cfg.i, align 4
  %conv247.i = trunc i32 %120 to i8
  %hds.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5, i32 3
  %type249.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5, i32 3, i32 2
  %121 = ptrtoint ptr %type249.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv247.i, ptr %type249.i, align 1
  %forced_offset.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 7, i32 1
  %122 = ptrtoint ptr %forced_offset.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %forced_offset.i, align 4
  %conv251.i = trunc i32 %123 to i8
  %force_offset.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5, i32 3, i32 1
  %124 = ptrtoint ptr %force_offset.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv251.i, ptr %force_offset.i, align 1
  %125 = ptrtoint ptr %hds.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv251.i, ptr %hds.i, align 1
  br label %bna_bfi_rx_enet_start.exit

sw.bb259.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %rx_cfg.i, align 1
  br label %bna_bfi_rx_enet_start.exit

do.body264.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bna_tx_rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1705, 0\0A.popsection", ""() #10, !srcloc !110
  unreachable

bna_bfi_rx_enet_start.exit:                       ; preds = %sw.bb259.i, %sw.bb244.i, %sw.bb242.i
  %vlan_strip_status.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 27
  %127 = ptrtoint ptr %vlan_strip_status.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vlan_strip_status.i, align 4
  %conv273.i = trunc i32 %128 to i8
  %strip_vlan.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 5, i32 5
  %129 = ptrtoint ptr %strip_vlan.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv273.i, ptr %strip_vlan.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10
  %cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 1
  %130 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 2
  %131 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 3
  %132 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1324, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 4
  %133 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %134 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %135, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_start_stop_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %event, label %do.end4 [
    i32 3, label %entry.do.body_crit_edge
    i32 5, label %entry.do.body_crit_edge9
    i32 4, label %sw.bb1
  ]

entry.do.body_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge9
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_stopped, ptr %fsm, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 19
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.sw.epilog_crit_edge, label %if.then.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 20
  %4 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg.i, align 4
  %6 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %3(ptr noundef %5, ptr noundef %rx) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bna_rx_enet_stop(ptr noundef %rx)
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1463, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4, %sw.bb1, %if.then.i, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_rxf_start_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %event, label %do.end16 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 6, label %do.body11
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_rxf_stop_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %fsm3 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_rx_sm_failed, ptr %fsm3, align 4
  %rxf = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %3 = ptrtoint ptr %rxf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxf, align 4
  tail call void %4(ptr noundef %rxf, i32 noundef 3) #10
  %rx_stall_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 16
  %5 = ptrtoint ptr %rx_stall_cbfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_stall_cbfn, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body2.do.end7_crit_edge, label %if.then

do.body2.do.end7_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %7 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bnad, align 4
  tail call void %6(ptr noundef %10, ptr noundef %rx) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %do.body2.do.end7_crit_edge
  %rx_cleanup_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 17
  %11 = ptrtoint ptr %rx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_cleanup_cbfn, align 4
  %bna8 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %13 = ptrtoint ptr %bna8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bna8, align 4
  %bnad9 = getelementptr inbounds %struct.bna, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %bnad9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bnad9, align 4
  tail call void %12(ptr noundef %16, ptr noundef %rx) #10
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  %fsm12 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %17 = ptrtoint ptr %fsm12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bna_rx_sm_started, ptr %fsm12, align 4
  %type.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 4
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  %rxp_q.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 6
  %20 = ptrtoint ptr %rxp_q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %rxp.049.i = load ptr, ptr %rxp_q.i, align 4
  %cmp2.not50.i = icmp eq ptr %rxp.049.i, %rxp_q.i
  br i1 %cmp2.not50.i, label %do.body11.bna_rx_sm_started_entry.exit_crit_edge, label %for.body.lr.ph.i

do.body11.bna_rx_sm_started_entry.exit_crit_edge: ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rx_sm_started_entry.exit

for.body.lr.ph.i:                                 ; preds = %do.body11
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rxp.051.i = phi ptr [ %rxp.049.i, %for.body.lr.ph.i ], [ %rxp.0.i, %if.end28.i.for.body.i_crit_edge ]
  %intr_type.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.051.i, i32 0, i32 3, i32 2, i32 3
  %21 = ptrtoint ptr %intr_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intr_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp5.i = icmp eq i32 %22, 1
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bna.i, align 4
  %fn_int_mask.i = getelementptr inbounds %struct.bna, ptr %24, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %fn_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fn_int_mask.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !111
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bna.i, align 4
  %fn_int_mask11.i = getelementptr inbounds %struct.bna, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %fn_int_mask11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fn_int_mask11.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #10, !srcloc !114
  %intr_vector.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.051.i, i32 0, i32 3, i32 2, i32 4
  %33 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_vector.i, align 4
  %neg.i = xor i32 %34, -1
  %and.i = and i32 %28, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %36 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bna.i, align 4
  %fn_int_mask17.i = getelementptr inbounds %struct.bna, ptr %37, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %fn_int_mask17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fn_int_mask17.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #10, !srcloc !114
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %coalescing_timeo.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.051.i, i32 0, i32 3, i32 2, i32 5
  %40 = ptrtoint ptr %coalescing_timeo.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %coalescing_timeo.i, align 4
  %conv18.i = zext i8 %41 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 16
  %or.i = or i32 %shl.i, -2147483648
  %doorbell_ack.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.051.i, i32 0, i32 3, i32 2, i32 2, i32 1
  %42 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i, ptr %doorbell_ack.i, align 4
  br i1 %cmp.i, label %do.body21.i, label %if.end.i.if.end28.i_crit_edge

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.body21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %door_bell.i = getelementptr inbounds %struct.bna_rxp, ptr %rxp.051.i, i32 0, i32 3, i32 2, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %doorbell_ack.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %46 = ptrtoint ptr %door_bell.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %door_bell.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !114
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.body21.i, %if.end.i.if.end28.i_crit_edge
  %48 = ptrtoint ptr %rxp.051.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %rxp.0.i = load ptr, ptr %rxp.051.i, align 4
  %cmp2.not.i = icmp eq ptr %rxp.0.i, %rxp_q.i
  br i1 %cmp2.not.i, label %if.end28.i.bna_rx_sm_started_entry.exit_crit_edge, label %if.end28.i.for.body.i_crit_edge

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end28.i.bna_rx_sm_started_entry.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_rx_sm_started_entry.exit

bna_rx_sm_started_entry.exit:                     ; preds = %if.end28.i.bna_rx_sm_started_entry.exit_crit_edge, %do.body11.bna_rx_sm_started_entry.exit_crit_edge
  %bna34.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %49 = ptrtoint ptr %bna34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bna34.i, align 4
  %ethport.i = getelementptr inbounds %struct.bna, ptr %50, i32 0, i32 9
  tail call void @bna_ethport_cb_rx_started(ptr noundef %ethport.i) #10
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1524, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %bna_rx_sm_started_entry.exit, %do.end7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bna_rx_enet_stop(ptr noundef %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxp_q = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 6
  %0 = ptrtoint ptr %rxp_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %rxp.033 = load ptr, ptr %rxp_q, align 4
  %cmp.not34 = icmp eq ptr %rxp.033, %rxp_q
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %rxp.035 = phi ptr [ %rxp.033, %for.body.lr.ph ], [ %rxp.0, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  tail call void @arm_heavy_mb() #10
  %door_bell = getelementptr inbounds %struct.bna_rxp, ptr %rxp.035, i32 0, i32 3, i32 2, i32 2
  %1 = ptrtoint ptr %door_bell to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %door_bell, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 64) #10, !srcloc !114
  %intr_type = getelementptr inbounds %struct.bna_rxp, ptr %rxp.035, i32 0, i32 3, i32 2, i32 3
  %3 = ptrtoint ptr %intr_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna, align 4
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn_int_mask, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !111
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bna, align 4
  %fn_int_mask11 = getelementptr inbounds %struct.bna, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %fn_int_mask11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn_int_mask11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #10, !srcloc !114
  %intr_vector = getelementptr inbounds %struct.bna_rxp, ptr %rxp.035, i32 0, i32 3, i32 2, i32 4
  %15 = ptrtoint ptr %intr_vector to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intr_vector, align 4
  %or = or i32 %16, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bna, align 4
  %fn_int_mask17 = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %fn_int_mask17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fn_int_mask17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #10, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %22 = ptrtoint ptr %rxp.035 to i32
  call void @__asan_load4_noabort(i32 %22)
  %rxp.0 = load ptr, ptr %rxp.035, align 4
  %cmp.not = icmp eq ptr %rxp.0, %rxp_q
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11
  %23 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rid.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 1
  %26 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %27 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 11, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10
  %cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 3
  %32 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 10, i32 4
  %33 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %34 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_rxf_stop_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %event, label %do.end23 [
    i32 3, label %do.body
    i32 6, label %sw.bb6
    i32 7, label %do.body9
  ]

do.body:                                          ; preds = %entry
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_cleanup_wait, ptr %fsm, align 4
  %rxf = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %2 = ptrtoint ptr %rxf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxf, align 4
  tail call void %3(ptr noundef %rxf, i32 noundef 3) #10
  %rx_stall_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 16
  %4 = ptrtoint ptr %rx_stall_cbfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_stall_cbfn, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body.do.end3_crit_edge, label %if.then

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %6 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bnad, align 4
  tail call void %5(ptr noundef %9, ptr noundef %rx) #10
  br label %do.end3

do.end3:                                          ; preds = %if.then, %do.body.do.end3_crit_edge
  %rx_cleanup_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 17
  %10 = ptrtoint ptr %rx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_cleanup_cbfn, align 4
  %bna4 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %12 = ptrtoint ptr %bna4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bna4, align 4
  %bnad5 = getelementptr inbounds %struct.bna, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %bnad5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bnad5, align 4
  tail call void %11(ptr noundef %15, ptr noundef %rx) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rxf7 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bna_rx_cb_rxf_stopped, ptr %stop_cbfn.i, align 4
  %rx.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %17 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx.i, align 4
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 6
  %19 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %stop_cbarg.i, align 4
  %20 = ptrtoint ptr %rxf7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxf7, align 4
  tail call void %21(ptr noundef %rxf7, i32 noundef 2) #10
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  %fsm10 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %22 = ptrtoint ptr %fsm10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bna_rx_sm_stop_wait, ptr %fsm10, align 4
  %rx_stall_cbfn13 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 16
  %23 = ptrtoint ptr %rx_stall_cbfn13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_stall_cbfn13, align 4
  %tobool14.not = icmp eq ptr %24, null
  br i1 %tobool14.not, label %do.body9.do.end20_crit_edge, label %if.then15

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %bna17 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %25 = ptrtoint ptr %bna17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bna17, align 4
  %bnad18 = getelementptr inbounds %struct.bna, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %bnad18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bnad18, align 4
  tail call void %24(ptr noundef %28, ptr noundef %rx) #10
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body9.do.end20_crit_edge
  tail call fastcc void @bna_rx_enet_stop(ptr noundef %rx)
  br label %sw.epilog

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1438, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end23, %do.end20, %sw.bb6, %do.end3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_failed(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %event, label %do.end12 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge20
    i32 7, label %entry.sw.epilog_crit_edge21
    i32 8, label %do.body7
  ]

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_quiesce_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_rx_sm_cleanup_wait, ptr %fsm3, align 4
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  %fsm8 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %3 = ptrtoint ptr %fsm8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_rx_sm_stopped, ptr %fsm8, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 19
  %4 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body7.sw.epilog_crit_edge, label %if.then.i

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 20
  %6 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_cbarg.i, align 4
  %8 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %5(ptr noundef %7, ptr noundef %rx) #10
  br label %sw.epilog

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1581, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %if.then.i, %do.body7.sw.epilog_crit_edge, %do.body2, %do.body, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_started(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %event, label %do.end16 [
    i32 2, label %do.body
    i32 3, label %do.body2
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_rxf_stop_wait, ptr %fsm, align 4
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %2 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bna, align 4
  %ethport = getelementptr inbounds %struct.bna, ptr %3, i32 0, i32 9
  tail call void @bna_ethport_cb_rx_stopped(ptr noundef %ethport) #10
  %rxf = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 5
  %4 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bna_rx_cb_rxf_stopped, ptr %stop_cbfn.i, align 4
  %rx.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 33
  %5 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx.i, align 4
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8, i32 6
  %7 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %stop_cbarg.i, align 4
  %8 = ptrtoint ptr %rxf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxf, align 4
  tail call void %9(ptr noundef %rxf, i32 noundef 2) #10
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %fsm3 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %10 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bna_rx_sm_failed, ptr %fsm3, align 4
  %bna5 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %11 = ptrtoint ptr %bna5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bna5, align 4
  %ethport6 = getelementptr inbounds %struct.bna, ptr %12, i32 0, i32 9
  tail call void @bna_ethport_cb_rx_stopped(ptr noundef %ethport6) #10
  %rxf7 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 8
  %13 = ptrtoint ptr %rxf7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rxf7, align 4
  tail call void %14(ptr noundef %rxf7, i32 noundef 3) #10
  %rx_stall_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 16
  %15 = ptrtoint ptr %rx_stall_cbfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_stall_cbfn, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.body2.do.end11_crit_edge, label %if.then

do.body2.do.end11_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %bna5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna5, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bnad, align 4
  tail call void %16(ptr noundef %20, ptr noundef %rx) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then, %do.body2.do.end11_crit_edge
  %rx_cleanup_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 17
  %21 = ptrtoint ptr %rx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_cleanup_cbfn, align 4
  %23 = ptrtoint ptr %bna5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bna5, align 4
  %bnad13 = getelementptr inbounds %struct.bna, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %bnad13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bnad13, align 4
  tail call void %22(ptr noundef %26, ptr noundef %rx) #10
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1499, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %do.end11, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_cleanup_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %event, label %do.end4 [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 7, label %entry.sw.epilog_crit_edge8
    i32 8, label %do.body
  ]

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_stopped, ptr %fsm, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 19
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.sw.epilog_crit_edge, label %if.then.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 20
  %4 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg.i, align 4
  %6 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %3(ptr noundef %5, ptr noundef %rx) #10
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1548, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4, %if.then.i, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_stop_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %event, label %do.end4 [
    i32 3, label %entry.do.body_crit_edge
    i32 5, label %entry.do.body_crit_edge12
    i32 4, label %sw.bb1
  ]

entry.do.body_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_cleanup_wait, ptr %fsm, align 4
  %rx_cleanup_cbfn = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 17
  %2 = ptrtoint ptr %rx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_cleanup_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 21
  %4 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bnad, align 4
  tail call void %3(ptr noundef %7, ptr noundef %rx) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bna_rx_enet_stop(ptr noundef %rx)
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1378, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4, %sw.bb1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_cb_rxf_stopped(ptr noundef %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  tail call void %1(ptr noundef %rx, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_sm_quiesce_wait(ptr noundef %rx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 8, label %do.body6
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_rx_sm_cleanup_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_rx_sm_failed, ptr %fsm3, align 4
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm7 = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %3 = ptrtoint ptr %fsm7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_rx_sm_start_wait, ptr %fsm7, align 4
  tail call fastcc void @bna_rx_sm_start_wait_entry(ptr noundef %rx)
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 1607, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %do.body6, %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_ethport_cb_rx_stopped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bna_ethport_cb_rx_started(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_rx_cb_rxf_started(ptr noundef %rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fsm = getelementptr inbounds %struct.bna_rx, ptr %rx, i32 0, i32 3
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 4
  tail call void %1(ptr noundef %rx, i32 noundef 6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bna_enet_mtu_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_start_wait(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %event, label %do.end22 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb7
    i32 8, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -9
  store i32 %and, ptr %flags, align 4
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %3 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_tx_sm_stop_wait, ptr %fsm, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 4
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 4
  %and3 = and i32 %5, -9
  store i32 %and3, ptr %flags2, align 4
  %fsm5 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %6 = ptrtoint ptr %fsm5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bna_tx_sm_stopped, ptr %fsm5, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 14
  %7 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb1.sw.epilog_crit_edge, label %if.then.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 15
  %9 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop_cbarg.i, align 4
  %11 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %8(ptr noundef %10, ptr noundef %tx) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %flags8 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 4
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags8, align 4
  %and9 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %do.body15, label %if.then

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i32 %13, -9
  %14 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and11, ptr %flags8, align 4
  %fsm13 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %15 = ptrtoint ptr %fsm13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bna_tx_sm_prio_stop_wait, ptr %fsm13, align 4
  %tx_stall_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 11
  %16 = ptrtoint ptr %tx_stall_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_stall_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %18 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bnad.i, align 4
  tail call void %17(ptr noundef %21, ptr noundef %tx) #10
  tail call fastcc void @bna_tx_enet_stop(ptr noundef %tx) #10
  br label %sw.epilog

do.body15:                                        ; preds = %sw.bb7
  %fsm16 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %22 = ptrtoint ptr %fsm16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bna_tx_sm_started, ptr %fsm16, align 4
  %type.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 5
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  %txq_q.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  %25 = ptrtoint ptr %txq_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %txq.054.i = load ptr, ptr %txq_q.i, align 4
  %cmp2.not55.i = icmp eq ptr %txq.054.i, %txq_q.i
  br i1 %cmp2.not55.i, label %do.body15.bna_tx_sm_started_entry.exit_crit_edge, label %for.body.lr.ph.i

do.body15.bna_tx_sm_started_entry.exit_crit_edge: ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_tx_sm_started_entry.exit

for.body.lr.ph.i:                                 ; preds = %do.body15
  %bna.i37 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %txq.056.i = phi ptr [ %txq.054.i, %for.body.lr.ph.i ], [ %txq.0.i, %if.end29.i.for.body.i_crit_edge ]
  %priority.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 1
  %26 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %priority.i, align 8
  %tcb.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 3
  %28 = ptrtoint ptr %tcb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tcb.i, align 8
  %priority4.i = getelementptr inbounds %struct.bna_tcb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %priority4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %priority4.i, align 4
  %intr_type.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %intr_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp6.i = icmp eq i32 %32, 1
  br i1 %cmp6.i, label %if.then.i38, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i38:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %bna.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bna.i37, align 4
  %fn_int_mask.i = getelementptr inbounds %struct.bna, ptr %34, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %fn_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fn_int_mask.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !111
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %bna.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bna.i37, align 4
  %fn_int_mask12.i = getelementptr inbounds %struct.bna, ptr %40, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %fn_int_mask12.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fn_int_mask12.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 -1) #10, !srcloc !114
  %intr_vector.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %intr_vector.i, align 4
  %neg.i = xor i32 %44, -1
  %and.i = and i32 %38, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %45 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %46 = ptrtoint ptr %bna.i37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bna.i37, align 4
  %fn_int_mask18.i = getelementptr inbounds %struct.bna, ptr %47, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %fn_int_mask18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fn_int_mask18.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #10, !srcloc !114
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i38, %for.body.i.if.end.i_crit_edge
  %coalescing_timeo.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %coalescing_timeo.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %coalescing_timeo.i, align 4
  %conv19.i = zext i8 %51 to i32
  %shl.i = shl nuw nsw i32 %conv19.i, 16
  %or.i = or i32 %shl.i, -2147483648
  %doorbell_ack.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 4, i32 2, i32 1
  %52 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i, ptr %doorbell_ack.i, align 4
  br i1 %cmp.i, label %do.body22.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

do.body22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %door_bell.i = getelementptr inbounds %struct.bna_txq, ptr %txq.056.i, i32 0, i32 4, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %doorbell_ack.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %doorbell_ack.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = ptrtoint ptr %door_bell.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %door_bell.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #10, !srcloc !114
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body22.i, %if.end.i.if.end29.i_crit_edge
  %58 = ptrtoint ptr %txq.056.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %txq.0.i = load ptr, ptr %txq.056.i, align 4
  %cmp2.not.i = icmp eq ptr %txq.0.i, %txq_q.i
  br i1 %cmp2.not.i, label %if.end29.i.bna_tx_sm_started_entry.exit_crit_edge, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end29.i.bna_tx_sm_started_entry.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_tx_sm_started_entry.exit

bna_tx_sm_started_entry.exit:                     ; preds = %if.end29.i.bna_tx_sm_started_entry.exit_crit_edge, %do.body15.bna_tx_sm_started_entry.exit_crit_edge
  %tx_resume_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 12
  %59 = ptrtoint ptr %tx_resume_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_resume_cbfn.i, align 4
  %bna35.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %61 = ptrtoint ptr %bna35.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bna35.i, align 4
  %bnad.i39 = getelementptr inbounds %struct.bna, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %bnad.i39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bnad.i39, align 4
  tail call void %60(ptr noundef %64, ptr noundef %tx) #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags19 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 4
  %65 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags19, align 4
  %or = or i32 %66, 8
  store i32 %or, ptr %flags19, align 4
  br label %sw.epilog

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 2863, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %sw.bb18, %bna_tx_sm_started_entry.exit, %if.then, %if.then.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bna_tx_sm_start_wait_entry(ptr noundef %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17
  %0 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 17, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rid.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 1
  %3 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %4 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 6, ptr %num_entries.i, align 1
  %num_txq.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 6
  %7 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_txq.i, align 4
  %conv5.i = trunc i32 %8 to i8
  %num_queues.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 1
  %9 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5.i, ptr %num_queues.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp163.i = icmp sgt i32 %8, 0
  br i1 %cmp163.i, label %for.body.lr.ph.i, label %entry.bna_bfi_tx_enet_start.exit_crit_edge

entry.bna_bfi_tx_enet_start.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_bfi_tx_enet_start.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %txq_q.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %txq.0165.i = phi ptr [ null, %for.body.lr.ph.i ], [ %cond.i, %for.body.i.for.body.i_crit_edge ]
  %i.0164.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %txq.0165.i, null
  %cond.in.i = select i1 %tobool.not.i, ptr %txq_q.i, ptr %txq.0165.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %qpt.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 2
  %kv_qpt_ptr.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %kv_qpt_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kv_qpt_ptr.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %cur_q_addr.sroa.0.0.copyload.i = load i32, ptr %12, align 4
  %cur_q_addr.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %12, i32 4
  %14 = ptrtoint ptr %cur_q_addr.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cur_q_addr.sroa.5.0.copyload.i = load i32, ptr %cur_q_addr.sroa.5.0..sroa_idx.i, align 4
  %lsb.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lsb.i, align 4
  %arrayidx.i = getelementptr %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 3, i32 %i.0164.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx.i, align 1
  %18 = ptrtoint ptr %qpt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qpt.i, align 4
  %addr_hi.i = getelementptr inbounds %struct.anon.1, ptr %arrayidx.i, i32 0, i32 1
  %20 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %addr_hi.i, align 1
  %first_entry.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx.i, i32 0, i32 1
  %21 = ptrtoint ptr %first_entry.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %cur_q_addr.sroa.5.0.copyload.i, ptr %first_entry.i, align 1
  %addr_hi34.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx.i, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %addr_hi34.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %cur_q_addr.sroa.0.0.copyload.i, ptr %addr_hi34.i, align 1
  %page_count.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_count.i, align 4
  %conv36.i = trunc i32 %24 to i16
  %pages.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx.i, i32 0, i32 2
  %25 = ptrtoint ptr %pages.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %conv36.i, ptr %pages.i, align 1
  %page_size.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_size.i, align 4
  %conv42.i = trunc i32 %27 to i16
  %page_sz.i = getelementptr inbounds %struct.bfi_enet_q, ptr %arrayidx.i, i32 0, i32 3
  %28 = ptrtoint ptr %page_sz.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %conv42.i, ptr %page_sz.i, align 1
  %priority.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 1
  %29 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %priority.i, align 8
  %priority52.i = getelementptr inbounds %struct.bfi_enet_txq, ptr %arrayidx.i, i32 0, i32 1
  %31 = ptrtoint ptr %priority52.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %priority52.i, align 1
  %ib.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 4
  %lsb53.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %lsb53.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lsb53.i, align 4
  %ib56.i = getelementptr %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 3, i32 %i.0164.i, i32 1
  %34 = ptrtoint ptr %ib56.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %ib56.i, align 1
  %35 = ptrtoint ptr %ib.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ib.i, align 4
  %addr_hi65.i = getelementptr inbounds %struct.anon.1, ptr %ib56.i, i32 0, i32 1
  %37 = ptrtoint ptr %addr_hi65.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %addr_hi65.i, align 1
  %intr_vector.i = getelementptr inbounds %struct.bna_txq, ptr %cond.i, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %intr_vector.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intr_vector.i, align 4
  %conv67.i = trunc i32 %39 to i16
  %intr.i = getelementptr %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 3, i32 %i.0164.i, i32 1, i32 1
  %40 = ptrtoint ptr %intr.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %conv67.i, ptr %intr.i, align 1
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %41 = ptrtoint ptr %num_txq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_txq.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %42
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bna_bfi_tx_enet_start.exit_crit_edge

for.body.i.bna_bfi_tx_enet_start.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bna_bfi_tx_enet_start.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bna_bfi_tx_enet_start.exit:                       ; preds = %for.body.i.bna_bfi_tx_enet_start.exit_crit_edge, %entry.bna_bfi_tx_enet_start.exit_crit_edge
  %txq.0.lcssa.i = phi ptr [ null, %entry.bna_bfi_tx_enet_start.exit_crit_edge ], [ %cond.i, %for.body.i.bna_bfi_tx_enet_start.exit_crit_edge ]
  %ib_cfg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4
  %43 = ptrtoint ptr %ib_cfg.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %ib_cfg.i, align 1
  %int_enabled.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %int_enabled.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %int_enabled.i, align 1
  %int_pkt_enabled.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %int_pkt_enabled.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %int_pkt_enabled.i, align 1
  %continuous_coalescing.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %continuous_coalescing.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %continuous_coalescing.i, align 1
  %intr_type.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0.lcssa.i, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %intr_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %intr_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp75.i = icmp eq i32 %48, 2
  %conv78.i = zext i1 %cmp75.i to i8
  %msix.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %msix.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv78.i, ptr %msix.i, align 1
  %coalescing_timeo.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0.lcssa.i, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %coalescing_timeo.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %coalescing_timeo.i, align 4
  %conv81.i = zext i8 %51 to i32
  %coalescing_timeout.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %coalescing_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %conv81.i, ptr %coalescing_timeout.i, align 1
  %interpkt_timeo.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0.lcssa.i, i32 0, i32 4, i32 7
  %53 = ptrtoint ptr %interpkt_timeo.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interpkt_timeo.i, align 4
  %inter_pkt_timeout.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 7
  %55 = ptrtoint ptr %inter_pkt_timeout.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %inter_pkt_timeout.i, align 1
  %interpkt_count.i = getelementptr inbounds %struct.bna_txq, ptr %txq.0.lcssa.i, i32 0, i32 4, i32 6
  %56 = ptrtoint ptr %interpkt_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %interpkt_count.i, align 4
  %conv86.i = trunc i32 %57 to i8
  %inter_pkt_count.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 4, i32 8
  %58 = ptrtoint ptr %inter_pkt_count.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv86.i, ptr %inter_pkt_count.i, align 1
  %tx_cfg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 5
  %59 = ptrtoint ptr %tx_cfg.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %tx_cfg.i, align 1
  %txf_vlan_id.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 8
  %60 = ptrtoint ptr %txf_vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %txf_vlan_id.i, align 4
  %vlan_id.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %vlan_id.i, align 1
  %admit_tagged_frame.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %admit_tagged_frame.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %admit_tagged_frame.i, align 1
  %apply_vlan_filter.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 5, i32 4
  %64 = ptrtoint ptr %apply_vlan_filter.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %apply_vlan_filter.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16
  %cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 1
  %65 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 2
  %66 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 3
  %67 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 328, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 4
  %68 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %69 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %70, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_stop_wait(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %event, label %do.end4 [
    i32 3, label %entry.do.body_crit_edge
    i32 5, label %entry.do.body_crit_edge12
    i32 4, label %sw.bb1
    i32 8, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.do.body_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_cleanup_wait, ptr %fsm, align 4
  %tx_cleanup_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 13
  %2 = ptrtoint ptr %tx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_cleanup_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %4 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bnad, align 4
  tail call void %3(ptr noundef %7, ptr noundef %tx) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bna_tx_enet_stop(ptr noundef %tx)
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 2934, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4, %sw.bb1, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_prio_stop_wait(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 5, label %do.body6
    i32 8, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_stop_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_tx_sm_failed, ptr %fsm3, align 4
  %tx_cleanup_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 13
  %3 = ptrtoint ptr %tx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_cleanup_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %5 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bnad, align 4
  tail call void %4(ptr noundef %8, ptr noundef %tx) #10
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm7 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %9 = ptrtoint ptr %fsm7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bna_tx_sm_prio_cleanup_wait, ptr %fsm7, align 4
  %tx_cleanup_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 13
  %10 = ptrtoint ptr %tx_cleanup_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_cleanup_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %12 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bnad.i, align 4
  tail call void %11(ptr noundef %15, ptr noundef %tx) #10
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 2990, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %do.body6, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_started(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %event, label %do.end16 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 8, label %do.body11
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_stop_wait, ptr %fsm, align 4
  %tx_stall_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 11
  %2 = ptrtoint ptr %tx_stall_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_stall_cbfn, align 4
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %4 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bna, align 4
  %bnad = getelementptr inbounds %struct.bna, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bnad, align 4
  tail call void %3(ptr noundef %7, ptr noundef %tx) #10
  tail call fastcc void @bna_tx_enet_stop(ptr noundef %tx)
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %8 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bna_tx_sm_failed, ptr %fsm3, align 4
  %tx_stall_cbfn5 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 11
  %9 = ptrtoint ptr %tx_stall_cbfn5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_stall_cbfn5, align 4
  %bna6 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %11 = ptrtoint ptr %bna6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bna6, align 4
  %bnad7 = getelementptr inbounds %struct.bna, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %bnad7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bnad7, align 4
  tail call void %10(ptr noundef %14, ptr noundef %tx) #10
  %tx_cleanup_cbfn = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 13
  %15 = ptrtoint ptr %tx_cleanup_cbfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_cleanup_cbfn, align 4
  %17 = ptrtoint ptr %bna6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bna6, align 4
  %bnad9 = getelementptr inbounds %struct.bna, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %bnad9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bnad9, align 4
  tail call void %16(ptr noundef %20, ptr noundef %tx) #10
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm12 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %21 = ptrtoint ptr %fsm12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @bna_tx_sm_prio_stop_wait, ptr %fsm12, align 4
  %tx_stall_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 11
  %22 = ptrtoint ptr %tx_stall_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_stall_cbfn.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %24 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bna.i, align 4
  %bnad.i = getelementptr inbounds %struct.bna, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %bnad.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bnad.i, align 4
  tail call void %23(ptr noundef %27, ptr noundef %tx) #10
  tail call fastcc void @bna_tx_enet_stop(ptr noundef %tx) #10
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 2902, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %do.body11, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_cleanup_wait(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %event, label %do.end4 [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 8, label %entry.sw.epilog_crit_edge8
    i32 7, label %do.body
  ]

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_stopped, ptr %fsm, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 14
  %2 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.sw.epilog_crit_edge, label %if.then.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 15
  %4 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbarg.i, align 4
  %6 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %3(ptr noundef %5, ptr noundef %tx) #10
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 2957, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4, %if.then.i, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bna_tx_enet_stop(ptr noundef %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_q = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 7
  %0 = ptrtoint ptr %txq_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %txq.033 = load ptr, ptr %txq_q, align 4
  %cmp.not34 = icmp eq ptr %txq.033, %txq_q
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bna = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %txq.035 = phi ptr [ %txq.033, %for.body.lr.ph ], [ %txq.0, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @arm_heavy_mb() #10
  %door_bell = getelementptr inbounds %struct.bna_txq, ptr %txq.035, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %door_bell to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %door_bell, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 64) #10, !srcloc !114
  %intr_type = getelementptr inbounds %struct.bna_txq, ptr %txq.035, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %intr_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bna, align 4
  %fn_int_mask = getelementptr inbounds %struct.bna, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %fn_int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn_int_mask, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !111
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bna, align 4
  %fn_int_mask11 = getelementptr inbounds %struct.bna, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %fn_int_mask11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn_int_mask11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #10, !srcloc !114
  %intr_vector = getelementptr inbounds %struct.bna_txq, ptr %txq.035, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %intr_vector to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intr_vector, align 4
  %or = or i32 %16, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %bna to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bna, align 4
  %fn_int_mask17 = getelementptr inbounds %struct.bna, ptr %19, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %fn_int_mask17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fn_int_mask17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #10, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %22 = ptrtoint ptr %txq.035 to i32
  call void @__asan_load4_noabort(i32 %22)
  %txq.0 = load ptr, ptr %txq.035, align 4
  %cmp.not = icmp eq ptr %txq.0, %txq_q
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %bfi_enet_cmd.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17
  %23 = ptrtoint ptr %bfi_enet_cmd.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 24, ptr %bfi_enet_cmd.i, align 1
  %msg_id.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 18, ptr %msg_id.i, align 1
  %msg_token.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %msg_token.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %msg_token.i, align 1
  %rid.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 1
  %26 = ptrtoint ptr %rid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rid.i, align 4
  %conv.i = trunc i32 %27 to i8
  %enet_id.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %enet_id.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %enet_id.i, align 1
  %num_entries.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 17, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 1, ptr %num_entries.i, align 1
  %msgq_cmd.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16
  %cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %cbfn.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cbfn.i, align 4
  %cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 2
  %31 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cbarg.i, align 4
  %msg_size.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 3
  %32 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %msg_size.i, align 4
  %msg_hdr.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 16, i32 4
  %33 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bfi_enet_cmd.i, ptr %msg_hdr.i, align 4
  %bna.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 18
  %34 = ptrtoint ptr %bna.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bna.i, align 4
  %msgq.i = getelementptr inbounds %struct.bna, ptr %35, i32 0, i32 8
  tail call void @bfa_msgq_cmd_post(ptr noundef %msgq.i, ptr noundef %msgq_cmd.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_failed(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %event, label %do.end11 [
    i32 1, label %do.body
    i32 2, label %do.body2
    i32 3, label %entry.sw.epilog_crit_edge
    i32 7, label %do.body6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_quiesce_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_tx_sm_cleanup_wait, ptr %fsm3, align 4
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %fsm7 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %3 = ptrtoint ptr %fsm7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_tx_sm_stopped, ptr %fsm7, align 4
  %stop_cbfn.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 14
  %4 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_cbfn.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body6.sw.epilog_crit_edge, label %if.then.i

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %stop_cbarg.i = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 15
  %6 = ptrtoint ptr %stop_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_cbarg.i, align 4
  %8 = ptrtoint ptr %stop_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %stop_cbfn.i, align 4
  store ptr null, ptr %stop_cbarg.i, align 4
  tail call void %5(ptr noundef %7, ptr noundef %tx) #10
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 3051, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %if.then.i, %do.body6.sw.epilog_crit_edge, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_prio_cleanup_wait(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 8, label %entry.sw.epilog_crit_edge
    i32 7, label %do.body6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_cleanup_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_tx_sm_failed, ptr %fsm3, align 4
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm7 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %3 = ptrtoint ptr %fsm7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_tx_sm_start_wait, ptr %fsm7, align 4
  tail call fastcc void @bna_tx_sm_start_wait_entry(ptr noundef %tx)
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 3021, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %do.body6, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_sm_quiesce_wait(ptr noundef %tx, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %event, label %do.end11 [
    i32 2, label %do.body
    i32 3, label %do.body2
    i32 7, label %do.body6
    i32 8, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bna_tx_sm_cleanup_wait, ptr %fsm, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm3 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %fsm3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bna_tx_sm_failed, ptr %fsm3, align 4
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fsm7 = getelementptr inbounds %struct.bna_tx, ptr %tx, i32 0, i32 3
  %3 = ptrtoint ptr %fsm7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bna_tx_sm_start_wait, ptr %fsm7, align 4
  tail call fastcc void @bna_tx_sm_start_wait_entry(ptr noundef %tx)
  br label %sw.epilog

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 3081, i32 noundef %event) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %do.body6, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bna_tx_mod_cb_tx_stopped(ptr nocapture noundef %arg, ptr nocapture noundef readnone %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wc_count.i = getelementptr inbounds %struct.bna_tx_mod, ptr %arg, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wc_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bfa_wc_down.exit_crit_edge

entry.bfa_wc_down.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bfa_wc_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_stop_wc = getelementptr inbounds %struct.bna_tx_mod, ptr %arg, i32 0, i32 6
  %2 = ptrtoint ptr %tx_stop_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_stop_wc, align 4
  %wc_cbarg.i = getelementptr inbounds %struct.bna_tx_mod, ptr %arg, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %wc_cbarg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc_cbarg.i, align 4
  tail call void %3(ptr noundef %5) #10
  br label %bfa_wc_down.exit

bfa_wc_down.exit:                                 ; preds = %if.then.i, %entry.bfa_wc_down.exit_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @bna_napi_dim_vector, !1, !"bna_napi_dim_vector", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2745, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 88, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bna_rxf_sm_stopped._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @bna_rxf_sm_stopped._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 128, i32 3}
!10 = !{ptr @bna_rxf_sm_cfg_wait._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @bna_rxf_sm_cfg_wait._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 174, i32 3}
!14 = !{ptr @bna_rxf_sm_last_resp_wait._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @bna_rxf_sm_last_resp_wait._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 154, i32 3}
!18 = !{ptr @bna_rxf_sm_started._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @bna_rxf_sm_started._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1348, i32 3}
!22 = !{ptr @bna_rx_sm_stopped._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bna_rx_sm_stopped._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1400, i32 3}
!26 = !{ptr @bna_rx_sm_start_wait._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bna_rx_sm_start_wait._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1463, i32 3}
!30 = !{ptr @bna_rx_sm_start_stop_wait._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bna_rx_sm_start_stop_wait._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1524, i32 3}
!34 = !{ptr @bna_rx_sm_rxf_start_wait._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bna_rx_sm_rxf_start_wait._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1438, i32 3}
!38 = !{ptr @bna_rx_sm_rxf_stop_wait._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bna_rx_sm_rxf_stop_wait._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1548, i32 3}
!42 = !{ptr @bna_rx_sm_cleanup_wait._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bna_rx_sm_cleanup_wait._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1378, i32 3}
!46 = !{ptr @bna_rx_sm_stop_wait._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bna_rx_sm_stop_wait._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1581, i32 3}
!50 = !{ptr @bna_rx_sm_failed._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bna_rx_sm_failed._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1607, i32 3}
!54 = !{ptr @bna_rx_sm_quiesce_wait._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bna_rx_sm_quiesce_wait._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 1499, i32 3}
!58 = !{ptr @bna_rx_sm_started._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bna_rx_sm_started._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2826, i32 3}
!62 = !{ptr @bna_tx_sm_stopped._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bna_tx_sm_stopped._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2863, i32 3}
!66 = !{ptr @bna_tx_sm_start_wait._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bna_tx_sm_start_wait._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2934, i32 3}
!70 = !{ptr @bna_tx_sm_stop_wait._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bna_tx_sm_stop_wait._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2957, i32 3}
!74 = !{ptr @bna_tx_sm_cleanup_wait._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bna_tx_sm_cleanup_wait._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2990, i32 3}
!78 = !{ptr @bna_tx_sm_prio_stop_wait._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @bna_tx_sm_prio_stop_wait._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 3051, i32 3}
!82 = !{ptr @bna_tx_sm_failed._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bna_tx_sm_failed._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 3081, i32 3}
!86 = !{ptr @bna_tx_sm_quiesce_wait._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bna_tx_sm_quiesce_wait._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 3021, i32 3}
!90 = !{ptr @bna_tx_sm_prio_cleanup_wait._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @bna_tx_sm_prio_cleanup_wait._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/brocade/bna/bna_tx_rx.c", i32 2902, i32 3}
!94 = !{ptr @bna_tx_sm_started._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bna_tx_sm_started._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i32 0, i32 33}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2156754583, i64 2156755093, i64 2156754620, i64 2156754676, i64 2156754710, i64 2156754734, i64 2156754775, i64 2156754796, i64 2156754824, i64 2156754858}
!108 = !{i8 0, i8 2}
!109 = !{i64 2156739920, i64 2156740430, i64 2156739957, i64 2156740013, i64 2156740047, i64 2156740071, i64 2156740112, i64 2156740133, i64 2156740161, i64 2156740195}
!110 = !{i64 2156742995, i64 2156743505, i64 2156743032, i64 2156743088, i64 2156743122, i64 2156743146, i64 2156743187, i64 2156743208, i64 2156743236, i64 2156743270}
!111 = !{i64 5091965}
!112 = !{i64 2156715541}
!113 = !{i64 2156715778}
!114 = !{i64 5091547}
!115 = !{i64 2156716296}
!116 = !{i64 2156717078}
!117 = !{i64 2156749152}
!118 = !{i64 2156750065}
!119 = !{i64 2156750302}
!120 = !{i64 2156750820}
!121 = !{i64 2156801726}
!122 = !{i64 2156801963}
!123 = !{i64 2156802481}
!124 = !{i64 2156803263}
!125 = !{i64 2156829950}
!126 = !{i64 2156830863}
!127 = !{i64 2156831100}
!128 = !{i64 2156831618}
